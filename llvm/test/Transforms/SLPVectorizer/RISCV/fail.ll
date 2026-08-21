target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

define ptr @test(i32 %0) {
entry:
  %and = and i32 %0, 1
  %idxprom = zext i32 %and to i64
  %arrayidx60 = getelementptr [8 x i8], ptr null, i64 %idxprom
  %1 = load ptr, ptr %arrayidx60, align 8
  tail call void null(ptr null, i32 0, i32 0)
  %tobool64.not = icmp eq i32 %0, 0
  %tobool205.not = icmp eq i32 0, 0
  %.pre4212 = load i32, ptr null, align 16
  %2 = load i32, ptr null, align 8
  %cmp217 = icmp slt i32 %.pre4212, %2
  %tobool223.not = icmp eq i32 0, 0
  %idxprom3.i = sext i32 0 to i64
  %arrayidx4.i = getelementptr [48 x i8], ptr null, i64 %idxprom3.i
  ret ptr %arrayidx4.i
}
