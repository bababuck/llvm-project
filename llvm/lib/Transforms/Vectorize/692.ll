define dso_local void @wide_gather(ptr noalias noundef writeonly captures(none) initializes((0, 64)) %x, ptr noalias noundef readonly captures(none) %y) local_unnamed_addr #0 {
entry:
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %y, i64 24
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %y, i64 800
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %y, i64 16
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %y, i64 808
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %y, i64 8
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %y, i64 816
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %y, i64 824

  %arrayidx2.1 = getelementptr inbounds nuw i8, ptr %x, i64 24
  %arrayidx2.2 = getelementptr inbounds nuw i8, ptr %x, i64 8
  %arrayidx2.3 = getelementptr inbounds nuw i8, ptr %x, i64 16

  %0 = load i64, ptr %y, align 8, !tbaa !10
  %1 = load i64, ptr %arrayidx.1, align 8, !tbaa !10
  %2 = load i64, ptr %arrayidx.2, align 8, !tbaa !10
  %3 = load i64, ptr %arrayidx.3, align 8, !tbaa !10
  %4 = load i64, ptr %arrayidx.4, align 8, !tbaa !10
  %5 = load i64, ptr %arrayidx.5, align 8, !tbaa !10
  %6 = load i64, ptr %arrayidx.6, align 8, !tbaa !10
;  %7 = load i64, ptr %x, align 8, !tbaa !10
  %7 = load i64, ptr %arrayidx.7, align 8, !tbaa !10

  %add = add nsw i64 %0, %5
  %add.1 = add nsw i64 %1, %6
  %add.2 = add nsw i64 %2, %7
  %add.3 = add nsw i64 %3, %4
  store i64 %add, ptr %x, align 8, !tbaa !10
  store i64 %add.1, ptr %arrayidx2.1, align 8, !tbaa !10
  store i64 %add.2, ptr %arrayidx2.2, align 8, !tbaa !10
  store i64 %add.3, ptr %arrayidx2.3, align 8, !tbaa !10
  ret void
}

!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}