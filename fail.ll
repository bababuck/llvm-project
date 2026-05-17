; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable vscale_range(8,1024)
define internal void @mc_chroma(ptr noundef writeonly captures(none) %dst, i32 noundef signext %i_dst_stride, ptr noundef readonly captures(none) %src, i32 noundef signext %i_src_stride, i32 noundef signext %mvx, i32 noundef signext %mvy, i32 noundef signext %i_width, i32 noundef signext %i_height) #0 {
entry:
  %idxprom = sext i32 %i_src_stride to i64
  %cmp78 = icmp sgt i32 %i_height, 0
  br i1 %cmp78, label %for.cond10.preheader.lr.ph, label %for.cond.cleanup

for.cond10.preheader.lr.ph:                       ; preds = %entry
  %and1 = and i32 %mvy, 7
  %sub2 = sub nuw nsw i32 8, %and1
  %and = and i32 %mvx, 7
  %sub = sub nuw nsw i32 8, %and
  %factor.op.mul = mul nuw nsw i32 %sub, %and1
  %factor.op.mul72 = mul nuw nsw i32 %and, %and1
  %factor.op.mul73 = mul nuw nsw i32 %sub, %sub2
  %factor.op.mul74 = mul nuw nsw i32 %and, %sub2
  %cmp1175 = icmp sgt i32 %i_width, 0
  %idx.ext39 = sext i32 %i_dst_stride to i64
  br i1 %cmp1175, label %for.cond10.preheader.us.preheader, label %for.cond.cleanup

for.cond10.preheader.us.preheader:                ; preds = %for.cond10.preheader.lr.ph
  %shr = ashr i32 %mvy, 3
  %mul8 = mul i32 %shr, %i_src_stride
  %shr9 = ashr i32 %mvx, 3
  %add = add i32 %mul8, %shr9
  %idx.ext = sext i32 %add to i64
  %add.ptr = getelementptr i8, ptr %src, i64 %idx.ext
  %wide.trip.count = zext nneg i32 %i_width to i64
  %0 = add nsw i32 %i_height, -1
  %1 = zext i32 %0 to i64
  %2 = mul nsw i64 %idx.ext39, %1
  %3 = getelementptr i8, ptr %dst, i64 %2
  %scevgep = getelementptr i8, ptr %3, i64 %wide.trip.count
  %4 = getelementptr i8, ptr %src, i64 %idxprom
  %scevgep85 = getelementptr i8, ptr %4, i64 %idx.ext
  %5 = zext nneg i32 %i_height to i64
  %6 = mul nsw i64 %5, %idxprom
  %7 = getelementptr i8, ptr %src, i64 %6
  %8 = getelementptr i8, ptr %7, i64 %idx.ext
  %9 = getelementptr i8, ptr %8, i64 %wide.trip.count
  %scevgep86 = getelementptr i8, ptr %9, i64 1
  %10 = mul nsw i64 %idxprom, %1
  %11 = getelementptr i8, ptr %src, i64 %10
  %12 = getelementptr i8, ptr %11, i64 %idx.ext
  %13 = getelementptr i8, ptr %12, i64 %wide.trip.count
  %scevgep87 = getelementptr i8, ptr %13, i64 1
  br label %for.cond10.preheader.us

for.cond10.preheader.us:                          ; preds = %for.cond10.preheader.us.preheader, %for.cond10.for.cond.cleanup12_crit_edge.us
  %y.081.us = phi i32 [ %inc44.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ 0, %for.cond10.preheader.us.preheader ]
  %dst.addr.080.us = phi ptr [ %add.ptr40.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ %dst, %for.cond10.preheader.us.preheader ]
  %src.addr.079.us = phi ptr [ %srcp.082.us, %for.cond10.for.cond.cleanup12_crit_edge.us ], [ %add.ptr, %for.cond10.preheader.us.preheader ]
  %srcp.082.us = getelementptr inbounds i8, ptr %src.addr.079.us, i64 %idxprom
  %bound0 = icmp ult ptr %dst, %scevgep86
  %bound1 = icmp ult ptr %scevgep85, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %14 = or i32 %i_src_stride, %i_dst_stride
  %15 = icmp slt i32 %14, 0
  %16 = or i1 %found.conflict, %15
  %bound089 = icmp ult ptr %dst, %scevgep87
  %bound190 = icmp ult ptr %add.ptr, %scevgep
  %found.conflict91 = and i1 %bound089, %bound190
  %17 = or i32 %i_src_stride, %i_dst_stride
  %18 = icmp slt i32 %17, 0
  %19 = or i1 %found.conflict91, %18
  %conflict.rdx = or i1 %16, %19
  br i1 %conflict.rdx, label %for.body13.us, label %vector.ph

vector.ph:                                        ; preds = %for.cond10.preheader.us
  %20 = trunc nuw nsw i32 %factor.op.mul73 to i16
  %21 = insertelement <vscale x 16 x i16> undef, i16 %20, i64 0
  %22 = shufflevector <vscale x 16 x i16> %21, <vscale x 16 x i16> poison, <vscale x 16 x i32> zeroinitializer
  %23 = trunc nuw nsw i32 %factor.op.mul74 to i16
  %24 = insertelement <vscale x 16 x i16> undef, i16 %23, i64 0
  %25 = shufflevector <vscale x 16 x i16> %24, <vscale x 16 x i16> poison, <vscale x 16 x i32> zeroinitializer
  %26 = trunc nuw nsw i32 %factor.op.mul to i16
  %27 = insertelement <vscale x 16 x i16> undef, i16 %26, i64 0
  %28 = shufflevector <vscale x 16 x i16> %27, <vscale x 16 x i16> poison, <vscale x 16 x i32> zeroinitializer
  %29 = trunc nuw nsw i32 %factor.op.mul72 to i16
  %30 = insertelement <vscale x 16 x i16> undef, i16 %29, i64 0
  %31 = shufflevector <vscale x 16 x i16> %30, <vscale x 16 x i16> poison, <vscale x 16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %current.iteration.next, %vector.body ]
  %avl = phi i64 [ %wide.trip.count, %vector.ph ], [ %avl.next, %vector.body ]
  %32 = call i32 @llvm.experimental.get.vector.length.i64(i64 %avl, i32 16, i1 true)
  %33 = getelementptr inbounds nuw i8, ptr %src.addr.079.us, i64 %index
  %vp.op.load = call <vscale x 16 x i8> @llvm.vp.load.nxv16i8.p0(ptr align 1 %33, <vscale x 16 x i1> splat (i1 true), i32 %32)
  %34 = zext <vscale x 16 x i8> %vp.op.load to <vscale x 16 x i16>
  %35 = mul nuw <vscale x 16 x i16> %22, %34
  %36 = add nuw nsw i64 %index, 1
  %37 = getelementptr inbounds nuw i8, ptr %src.addr.079.us, i64 %36
  %vp.op.load100 = call <vscale x 16 x i8> @llvm.vp.load.nxv16i8.p0(ptr nonnull align 1 %37, <vscale x 16 x i1> splat (i1 true), i32 %32)
  %38 = zext <vscale x 16 x i8> %vp.op.load100 to <vscale x 16 x i16>
  %39 = mul nuw nsw <vscale x 16 x i16> %25, %38
  %40 = getelementptr inbounds nuw i8, ptr %srcp.082.us, i64 %index
  %vp.op.load101 = call <vscale x 16 x i8> @llvm.vp.load.nxv16i8.p0(ptr align 1 %40, <vscale x 16 x i1> splat (i1 true), i32 %32)
  %41 = zext <vscale x 16 x i8> %vp.op.load101 to <vscale x 16 x i16>
  %42 = mul nuw nsw <vscale x 16 x i16> %28, %41
  %43 = getelementptr inbounds nuw i8, ptr %srcp.082.us, i64 %36
  %vp.op.load102 = call <vscale x 16 x i8> @llvm.vp.load.nxv16i8.p0(ptr nonnull align 1 %43, <vscale x 16 x i1> splat (i1 true), i32 %32)
  %44 = zext <vscale x 16 x i8> %vp.op.load102 to <vscale x 16 x i16>
  %45 = mul nuw nsw <vscale x 16 x i16> %31, %44
  %46 = add nuw <vscale x 16 x i16> %45, %42
  %47 = add <vscale x 16 x i16> %39, %35
  %48 = add <vscale x 16 x i16> %47, splat (i16 32)
  %49 = add <vscale x 16 x i16> %48, %46
  %50 = lshr <vscale x 16 x i16> %49, splat (i16 6)
  %51 = trunc <vscale x 16 x i16> %50 to <vscale x 16 x i8>
  %52 = getelementptr inbounds nuw i8, ptr %dst.addr.080.us, i64 %index
  call void @llvm.vp.store.nxv16i8.p0(<vscale x 16 x i8> %51, ptr align 1 %52, <vscale x 16 x i1> splat (i1 true), i32 %32)
  %53 = zext i32 %32 to i64
  %current.iteration.next = add nuw i64 %index, %53
  %avl.next = sub nuw i64 %avl, %53
  %54 = icmp eq i64 %avl.next, 0
  br i1 %54, label %for.cond10.for.cond.cleanup12_crit_edge.us, label %vector.body

for.body13.us:                                    ; preds = %for.cond10.preheader.us, %for.body13.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13.us ], [ 0, %for.cond10.preheader.us ]
  %arrayidx15.us = getelementptr inbounds nuw i8, ptr %src.addr.079.us, i64 %indvars.iv
  %55 = load i8, ptr %arrayidx15.us, align 1
  %conv.us = zext i8 %55 to i32
  %mul16.reass.us = mul nuw nsw i32 %factor.op.mul73, %conv.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx19.us = getelementptr inbounds nuw i8, ptr %src.addr.079.us, i64 %indvars.iv.next
  %56 = load i8, ptr %arrayidx19.us, align 1
  %conv20.us = zext i8 %56 to i32
  %mul21.reass.us = mul nuw nsw i32 %factor.op.mul74, %conv20.us
  %arrayidx24.us = getelementptr inbounds nuw i8, ptr %srcp.082.us, i64 %indvars.iv
  %57 = load i8, ptr %arrayidx24.us, align 1
  %conv25.us = zext i8 %57 to i32
  %mul26.reass.us = mul nuw nsw i32 %factor.op.mul, %conv25.us
  %arrayidx30.us = getelementptr inbounds nuw i8, ptr %srcp.082.us, i64 %indvars.iv.next
  %58 = load i8, ptr %arrayidx30.us, align 1
  %conv31.us = zext i8 %58 to i32
  %mul32.reass.us = mul nuw nsw i32 %factor.op.mul72, %conv31.us
  %reass.add.us = add nuw nsw i32 %mul32.reass.us, %mul26.reass.us
  %reass.add70.us = add nuw nsw i32 %mul21.reass.us, %mul16.reass.us
  %add33.us = add nuw nsw i32 %reass.add70.us, 32
  %add34.us = add nuw nsw i32 %add33.us, %reass.add.us
  %shr35.us = lshr i32 %add34.us, 6
  %conv36.us = trunc i32 %shr35.us to i8
  %arrayidx38.us = getelementptr inbounds nuw i8, ptr %dst.addr.080.us, i64 %indvars.iv
  store i8 %conv36.us, ptr %arrayidx38.us, align 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.for.cond.cleanup12_crit_edge.us, label %for.body13.us

for.cond10.for.cond.cleanup12_crit_edge.us:       ; preds = %for.body13.us, %vector.body
  %add.ptr40.us = getelementptr inbounds i8, ptr %dst.addr.080.us, i64 %idx.ext39
  %inc44.us = add nuw nsw i32 %y.081.us, 1
  %exitcond84.not = icmp eq i32 %inc44.us, %i_height
  br i1 %exitcond84.not, label %for.cond.cleanup, label %for.cond10.preheader.us

for.cond.cleanup:                                 ; preds = %for.cond10.for.cond.cleanup12_crit_edge.us, %for.cond10.preheader.lr.ph, %entry
  ret void
}
