define dso_local void @wide_gather(ptr noalias noundef writeonly captures(none) initializes((0, 64)) %x, ptr noalias noundef readonly captures(none) %y) local_unnamed_addr #0 {
entry:
  %arrayidx.1 = getelementptr inbounds nuw i8, ptr %y, i64 48
  %arrayidx.2 = getelementptr inbounds nuw i8, ptr %y, i64 8
  %arrayidx.3 = getelementptr inbounds nuw i8, ptr %y, i64 16
  %arrayidx.4 = getelementptr inbounds nuw i8, ptr %y, i64 112
  %arrayidx.5 = getelementptr inbounds nuw i8, ptr %y, i64 24
  %arrayidx.6 = getelementptr inbounds nuw i8, ptr %y, i64 56
  %arrayidx.7 = getelementptr inbounds nuw i8, ptr %y, i64 64
  %arrayidx.8 = getelementptr inbounds nuw i8, ptr %y, i64 48
  %arrayidx.9 = getelementptr inbounds nuw i8, ptr %y, i64 72
  %arrayidx.10 = getelementptr inbounds nuw i8, ptr %y, i64 80
  %arrayidx.11 = getelementptr inbounds nuw i8, ptr %y, i64 88
  %arrayidx.12 = getelementptr inbounds nuw i8, ptr %y, i64 120
  %arrayidx.13 = getelementptr inbounds nuw i8, ptr %y, i64 104
  %arrayidx.14 = getelementptr inbounds nuw i8, ptr %y, i64 32
  %arrayidx.15 = getelementptr inbounds nuw i8, ptr %y, i64 96

  %arrayidx2.1 = getelementptr inbounds nuw i8, ptr %x, i64 8
  %arrayidx2.2 = getelementptr inbounds nuw i8, ptr %x, i64 16
  %arrayidx2.3 = getelementptr inbounds nuw i8, ptr %x, i64 24
  %arrayidx2.4 = getelementptr inbounds nuw i8, ptr %x, i64 32
  %arrayidx2.5 = getelementptr inbounds nuw i8, ptr %x, i64 40
  %arrayidx2.6 = getelementptr inbounds nuw i8, ptr %x, i64 48
  %arrayidx2.7 = getelementptr inbounds nuw i8, ptr %x, i64 56
  %arrayidx2.8 = getelementptr inbounds nuw i8, ptr %x, i64 64
  %arrayidx2.9 = getelementptr inbounds nuw i8, ptr %x, i64 72
  %arrayidx2.10 = getelementptr inbounds nuw i8, ptr %x, i64 80
  %arrayidx2.11 = getelementptr inbounds nuw i8, ptr %x, i64 88
  %arrayidx2.12 = getelementptr inbounds nuw i8, ptr %x, i64 96
  %arrayidx2.13 = getelementptr inbounds nuw i8, ptr %x, i64 104
  %arrayidx2.14 = getelementptr inbounds nuw i8, ptr %x, i64 112
  %arrayidx2.15 = getelementptr inbounds nuw i8, ptr %x, i64 120

  %0 = load i64, ptr %y, align 8, !tbaa !10
  %1 = load i64, ptr %arrayidx.1 , align 8, !tbaa !10
  %2 = load i64, ptr %arrayidx.2 , align 8, !tbaa !10
  %3 = load i64, ptr %arrayidx.3 , align 8, !tbaa !10
  %4 = load i64, ptr %arrayidx.4 , align 8, !tbaa !10
  %5 = load i64, ptr %arrayidx.5 , align 8, !tbaa !10
  %6 = load i64, ptr %arrayidx.6 , align 8, !tbaa !10
  %7 = load i64, ptr %arrayidx.7 , align 8, !tbaa !10
  %8 = load i64, ptr %arrayidx.8 , align 8, !tbaa !10
  %9 = load i64, ptr %arrayidx.9 , align 8, !tbaa !10
  %10 = load i64, ptr %arrayidx.10 , align 8, !tbaa !10
  %11 = load i64, ptr %arrayidx.11 , align 8, !tbaa !10
  %12 = load i64, ptr %arrayidx.12 , align 8, !tbaa !10
  %13 = load i64, ptr %arrayidx.13 , align 8, !tbaa !10
  %14 = load i64, ptr %arrayidx.14 , align 8, !tbaa !10
  %15 = load i64, ptr %arrayidx.15 , align 8, !tbaa !10

  %add = add nsw i64 %0, 1
  %add.1 = add nsw i64 %1 , 1
  %add.2 = add nsw i64 %2 , 1
  %add.3 = add nsw i64 %3 , 1
  %add.4 = add nsw i64 %4 , 1
  %add.5 = add nsw i64 %5 , 1
  %add.6 = add nsw i64 %6 , 1
  %add.7 = add nsw i64 %7 , 1
  %add.8 = add nsw i64 %8 , 1
  %add.9 = add nsw i64 %9 , 1
  %add.10 = add nsw i64 %10 , 1
  %add.11 = add nsw i64 %11 , 1
  %add.12 = add nsw i64 %12 , 1
  %add.13 = add nsw i64 %13 , 1
  %add.14 = add nsw i64 %14 , 1
  %add.15 = add nsw i64 %15 , 1

  store i64 %add, ptr %x, align 8, !tbaa !10
  store i64 %add.1 , ptr %arrayidx2.1 , align 8, !tbaa !10
  store i64 %add.2 , ptr %arrayidx2.2 , align 8, !tbaa !10
  store i64 %add.3 , ptr %arrayidx2.3 , align 8, !tbaa !10
  store i64 %add.4 , ptr %arrayidx2.4 , align 8, !tbaa !10
  store i64 %add.5 , ptr %arrayidx2.5 , align 8, !tbaa !10
  store i64 %add.6 , ptr %arrayidx2.6 , align 8, !tbaa !10
  store i64 %add.7 , ptr %arrayidx2.7 , align 8, !tbaa !10
  store i64 %add.8 , ptr %arrayidx2.8 , align 8, !tbaa !10
  store i64 %add.9 , ptr %arrayidx2.9 , align 8, !tbaa !10
  store i64 %add.10 , ptr %arrayidx2.10 , align 8, !tbaa !10
  store i64 %add.11 , ptr %arrayidx2.11 , align 8, !tbaa !10
  store i64 %add.12 , ptr %arrayidx2.12 , align 8, !tbaa !10
  store i64 %add.13 , ptr %arrayidx2.13 , align 8, !tbaa !10
  store i64 %add.14 , ptr %arrayidx2.14 , align 8, !tbaa !10
  store i64 %add.15 , ptr %arrayidx2.15 , align 8, !tbaa !10
  ret void
}

!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}