//===- InstructionCost.h ----------------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
/// \file
/// This file defines an InstructionCost class that is used when calculating
/// the cost of an instruction, or a group of instructions. In addition to a
/// numeric value representing the cost the class also contains a state that
/// can be used to encode particular properties, such as a cost being invalid.
/// Operations on InstructionCost implement saturation arithmetic, so that
/// accumulating costs on large cost-values don't overflow.
///
//===----------------------------------------------------------------------===//

#ifndef LLVM_SUPPORT_INSTRUCTIONCOST_H
#define LLVM_SUPPORT_INSTRUCTIONCOST_H

#include "llvm/Support/Compiler.h"
#include "llvm/Support/MathExtras.h"
#include <limits>
#include <numeric>
#include <tuple>

namespace llvm {

class raw_ostream;

class InstructionCost {
public:
  using CostType = int64_t;
  using UCostType = uint64_t;

  /// CostState describes the state of a cost.
  enum CostState {
    Valid,  /// < The cost value represents a valid cost, even when the
            /// cost-value is large.
    Invalid /// < Invalid indicates there is no way to represent the cost as a
            /// numeric value. This state exists to represent a possible issue,
            /// e.g. if the cost-model knows the operation cannot be expanded
            /// into a valid code-sequence by the code-generator.  While some
            /// passes may assert that the calculated cost must be valid, it is
            /// up to individual passes how to interpret an Invalid cost. For
            /// example, a transformation pass could choose not to perform a
            /// transformation if the resulting cost would end up Invalid.
            /// Because some passes may assert a cost is Valid, it is not
            /// recommended to use Invalid costs to model 'Unknown'.
            /// Note that Invalid is semantically different from a (very) high,
            /// but valid cost, which intentionally indicates no issue, but
            /// rather a strong preference not to select a certain operation.
  };

private:
  CostType Value = 0;
  CostType Denominator = 1;
  CostState State = Valid;

  void propagateState(const InstructionCost &RHS) {
    if (RHS.State == Invalid)
      State = Invalid;
  }

  static constexpr CostType MaxValue = std::numeric_limits<CostType>::max();
  static constexpr CostType MinValue = std::numeric_limits<CostType>::min();

public:
  // A default constructed InstructionCost is a valid zero cost
  InstructionCost() = default;

  InstructionCost(CostState) = delete;
  InstructionCost(CostType Val) : Value(Val), Denominator(1), State(Valid) {}
  InstructionCost(CostType Numerator, CostType Denominator)
      : Value(Numerator), Denominator(Denominator), State(Valid) {
    assert(Denominator != 0 && "Denominator cannot be 0");
  }
  InstructionCost(CostType Numerator, CostType Denominator, CostState State)
      : Value(Numerator), Denominator(Denominator), State(State) {
    assert(Denominator != 0 && "Denominator cannot be 0");
  }

  static InstructionCost getMax() { return MaxValue; }
  static InstructionCost getMin() { return MinValue; }
  static InstructionCost getInvalid(CostType Val = 0) {
    InstructionCost Tmp(Val);
    Tmp.setInvalid();
    return Tmp;
  }

  bool isValid() const { return State == Valid; }
  void setValid() { State = Valid; }
  void setInvalid() { State = Invalid; }
  CostState getState() const { return State; }

  /// This function is intended to be used as sparingly as possible, since the
  /// class provides the full range of operator support required for arithmetic
  /// and comparisons.
  /// Rounds down fractional values
  CostType getValue() const {
    assert(isValid());
    return Value / Denominator;
  }

  CostType matchDenominator(const InstructionCost &Other) {
    CostType NewDenominator;
    if (MulOverflow(Denominator, Other.Denominator, NewDenominator)) {
      Denominator = 1;
      Value = 0;
      return 0;
    }
    CostType ThisNumerator, OtherNumerator;
    if (MulOverflow(Value, Other.Denominator, ThisNumerator)) {
      if (Value > 0)
        ThisNumerator = MaxValue;
      else
        ThisNumerator = MinValue;
    }
    if (MulOverflow(Denominator, Other.Value, OtherNumerator)) {
      if (Other.Value > 0)
        OtherNumerator = MaxValue;
      else
        OtherNumerator = MinValue;
    }
    Value = ThisNumerator;
    return OtherNumerator;
  }

  void simplifyFraction() {
    if (Value != 0) [[likely]] {
      UCostType GCD = std::gcd<UCostType, UCostType>((UCostType)Value,
                                                     (UCostType)Denominator);
      if ((CostType)GCD == MinValue) [[unlikely]] {
        Value = 1;
        Denominator = 1;
        return;
      }
      Value /= GCD;
      Denominator /= GCD;
    } else
      Denominator = 1;
  }

  /// For all of the arithmetic operators provided here any invalid state is
  /// perpetuated and cannot be removed. Once a cost becomes invalid it stays
  /// invalid, and it also inherits any invalid state from the RHS.
  /// Arithmetic work on the actual values is implemented with saturation,
  /// to avoid overflow when using more extreme cost values.

  InstructionCost &operator+=(const InstructionCost &RHS) {
    propagateState(RHS);
    CostType RHSNumerator = matchDenominator(RHS);

    // Saturating addition.
    InstructionCost::CostType Result;
    if (AddOverflow(Value, RHSNumerator, Result))
      Result = RHS.Value > 0 ? MaxValue : MinValue;

    Value = Result;
    simplifyFraction();
    return *this;
  }

  InstructionCost &operator+=(const CostType RHS) {
    InstructionCost RHS2(RHS);
    *this += RHS2;
    return *this;
  }

  InstructionCost &operator-=(const InstructionCost &RHS) {
    propagateState(RHS);
    CostType RHSNumerator = matchDenominator(RHS);

    // Saturating subtract.
    InstructionCost::CostType Result;
    if (SubOverflow(Value, RHSNumerator, Result))
      Result = RHS.Value > 0 ? MinValue : MaxValue;
    Value = Result;
    simplifyFraction();
    return *this;
  }

  InstructionCost &operator-=(const CostType RHS) {
    InstructionCost RHS2(RHS);
    *this -= RHS2;
    return *this;
  }

  InstructionCost &operator*=(const InstructionCost &RHS) {
    propagateState(RHS);

    InstructionCost::CostType ResDenominator;
    if (MulOverflow(Denominator, RHS.Denominator, ResDenominator)) {
      Value = 0;
      Denominator = 1;
      return *this;
    }

    // Saturating multiply.
    InstructionCost::CostType Result;
    if (MulOverflow(Value, RHS.Value, Result)) {
      ResDenominator = 1;
      if ((Value > 0 && RHS.Value > 0) || (Value < 0 && RHS.Value < 0))
        Result = MaxValue;
      else
        Result = MinValue;
    }

    Value = Result;
    Denominator = ResDenominator;
    simplifyFraction();
    return *this;
  }

  InstructionCost &operator*=(const CostType RHS) {
    InstructionCost RHS2(RHS);
    *this *= RHS2;
    return *this;
  }

  InstructionCost &operator/=(const InstructionCost &RHS) {
    InstructionCost InvRHS(RHS.Denominator, RHS.Value, RHS.Valid);
    *this *= InvRHS;
    return *this;
  }

  InstructionCost &operator/=(const CostType RHS) {
    InstructionCost RHS2(RHS);
    *this /= RHS2;
    return *this;
  }

  InstructionCost &operator++() {
    *this += Denominator;
    return *this;
  }

  InstructionCost operator++(int) {
    InstructionCost Copy = *this;
    ++*this;
    return Copy;
  }

  InstructionCost &operator--() {
    *this -= Denominator;
    return *this;
  }

  InstructionCost operator--(int) {
    InstructionCost Copy = *this;
    --*this;
    return Copy;
  }

  static std::pair<CostType, CostType>
  getEqualizedNumerators(const InstructionCost &IC0,
                         const InstructionCost &IC1) {
    CostType N0, N1;
    if (MulOverflow(IC0.Value, IC1.Denominator, N0)) {
      if (IC0.Value > 0)
        N0 = MaxValue;
      else
        N0 = MinValue;
    }
    if (MulOverflow(IC1.Value, IC0.Denominator, N1)) {
      if (IC1.Value > 0)
        N1 = MaxValue;
      else
        N1 = MinValue;
    }
    return {N0, N1};
  }

  /// For the comparison operators we have chosen to use lexicographical
  /// ordering where valid costs are always considered to be less than invalid
  /// costs. This avoids having to add asserts to the comparison operators that
  /// the states are valid and users can test for validity of the cost
  /// explicitly.
  bool operator<(const InstructionCost &RHS) const {
    auto [Numerator, RHSNumerator] = getEqualizedNumerators(*this, RHS);
    return std::tie(State, Numerator) < std::tie(RHS.State, RHSNumerator);
  }

  bool operator==(const InstructionCost &RHS) const {
    auto [Numerator, RHSNumerator] = getEqualizedNumerators(*this, RHS);
    return State == RHS.State && Numerator == RHSNumerator;
  }

  bool operator!=(const InstructionCost &RHS) const { return !(*this == RHS); }

  bool operator==(const CostType RHS) const {
    InstructionCost RHS2(RHS);
    return *this == RHS2;
  }

  bool operator!=(const CostType RHS) const { return !(*this == RHS); }

  bool operator>(const InstructionCost &RHS) const { return RHS < *this; }

  bool operator<=(const InstructionCost &RHS) const { return !(RHS < *this); }

  bool operator>=(const InstructionCost &RHS) const { return !(*this < RHS); }

  bool operator<(const CostType RHS) const {
    InstructionCost RHS2(RHS);
    return *this < RHS2;
  }

  bool operator>(const CostType RHS) const {
    InstructionCost RHS2(RHS);
    return *this > RHS2;
  }

  bool operator<=(const CostType RHS) const {
    InstructionCost RHS2(RHS);
    return *this <= RHS2;
  }

  bool operator>=(const CostType RHS) const {
    InstructionCost RHS2(RHS);
    return *this >= RHS2;
  }

  LLVM_ABI void print(raw_ostream &OS) const;

  template <class Function>
  auto map(const Function &F) const -> InstructionCost {
    if (isValid())
      return F(Value);
    return getInvalid();
  }
};

inline InstructionCost operator+(const InstructionCost &LHS,
                                 const InstructionCost &RHS) {
  InstructionCost LHS2(LHS);
  LHS2 += RHS;
  return LHS2;
}

inline InstructionCost operator-(const InstructionCost &LHS,
                                 const InstructionCost &RHS) {
  InstructionCost LHS2(LHS);
  LHS2 -= RHS;
  return LHS2;
}

inline InstructionCost operator*(const InstructionCost &LHS,
                                 const InstructionCost &RHS) {
  InstructionCost LHS2(LHS);
  LHS2 *= RHS;
  return LHS2;
}

inline InstructionCost operator/(const InstructionCost &LHS,
                                 const InstructionCost &RHS) {
  InstructionCost LHS2(LHS);
  LHS2 /= RHS;
  return LHS2;
}

inline raw_ostream &operator<<(raw_ostream &OS, const InstructionCost &V) {
  V.print(OS);
  return OS;
}

} // namespace llvm

#endif
