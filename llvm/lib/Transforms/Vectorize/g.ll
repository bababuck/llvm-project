; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable vscale_range(8,1024)
define internal range(i64 0, 17873935899049984) i64 @x264_pixel_var_8x8(ptr noundef readonly captures(none) %0, i32 noundef signext %1) #18 {
  %3 = sext i32 %1 to i64
  %4 = tail call <8 x i64> @llvm.experimental.vp.strided.load.v8i64.p0.i64(ptr align 1 %0, i64 %3, <8 x i1> splat (i1 true), i32 8)
  %5 = bitcast <8 x i64> %4 to <64 x i8>
  %6 = zext <64 x i8> %5 to <64 x i32>
  %7 = mul nuw nsw <64 x i32> %6, %6
  %8 = call i32 @llvm.vector.reduce.add.v64i32(<64 x i32> %6)
  %9 = tail call i32 @llvm.vector.reduce.add.v64i32(<64 x i32> %7)
  %10 = zext nneg i32 %8 to i64
  %11 = zext nneg i32 %9 to i64
  %12 = shl nuw nsw i64 %11, 32
  %13 = or disjoint i64 %12, %10
  ret i64 %13
}
