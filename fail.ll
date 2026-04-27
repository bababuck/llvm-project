
; Function Attrs: inlinehint nounwind uwtable vscale_range(8,1024)
define internal fastcc void @x264_macroblock_load_pic_pointers(ptr noundef captures(none) %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext range(i32 0, 3) %3) unnamed_addr #18 {
  %5 = alloca [2 x i32], align 4
  %6 = icmp eq i32 %3, 0
  %7 = select i1 %6, i32 16, i32 8
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 14688
  %9 = load ptr, ptr %8, align 16
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 104
  %11 = icmp ne i32 %3, 0
  %12 = zext i1 %11 to i32
  %13 = zext i1 %11 to i64
  %14 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 16436
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %15, %17
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = and i32 %2, -2
  %22 = mul nsw i32 %15, %21
  %23 = add nsw i32 %22, %1
  %24 = select i1 %6, i32 4, i32 3
  %25 = shl i32 %23, %24
  %26 = trunc i32 %2 to i1
  %27 = select i1 %26, i32 %15, i32 0
  %28 = add nsw i32 %25, %27
  br label %34

29:                                               ; preds = %4
  %30 = mul nsw i32 %15, %2
  %31 = add nsw i32 %30, %1
  %32 = select i1 %6, i32 4, i32 3
  %33 = shl i32 %31, %32
  br label %34

34:                                               ; preds = %29, %20
  %35 = phi i32 [ %28, %20 ], [ %33, %29 ]
  %36 = getelementptr inbounds nuw i8, ptr %9, i64 152
  %37 = zext nneg i32 %3 to i64
  %38 = getelementptr inbounds nuw [8 x i8], ptr %36, i64 %37
  %39 = load ptr, ptr %38, align 8
  %40 = sext i32 %35 to i64
  %41 = getelementptr inbounds i8, ptr %39, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 31184
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 7268
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [24 x i8], ptr %42, i64 %46
  %48 = getelementptr inbounds nuw [8 x i8], ptr %47, i64 %37
  %49 = load ptr, ptr %48, align 8
  %50 = shl nsw i32 %1, 4
  %51 = ashr exact i32 %50, %12
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  store i32 %35, ptr %5, align 4
  %54 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %55 = getelementptr inbounds nuw i8, ptr %0, i64 14704
  %56 = getelementptr inbounds nuw i8, ptr %0, i64 14864
  br i1 %19, label %63, label %57

57:                                               ; preds = %34
  %58 = shl i32 %2, 1
  %59 = and i32 %58, 2
  %60 = sub nsw i32 1, %59
  %61 = mul nsw i32 %15, %60
  %62 = add nsw i32 %35, %61
  br label %63

63:                                               ; preds = %57, %34
  %64 = phi i32 [ %62, %57 ], [ %35, %34 ]
  store i32 %64, ptr %54, align 4
  %65 = getelementptr inbounds nuw i8, ptr %0, i64 25008
  %66 = getelementptr inbounds nuw [4 x i8], ptr %65, i64 %37
  store i32 %18, ptr %66, align 4
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 14680
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds nuw i8, ptr %68, i64 152
  %70 = getelementptr inbounds nuw [8 x i8], ptr %69, i64 %37
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds i8, ptr %71, i64 %40
  %73 = getelementptr inbounds nuw i8, ptr %0, i64 21368
  %74 = getelementptr inbounds nuw [8 x i8], ptr %73, i64 %37
  store ptr %72, ptr %74, align 8
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 32720
  %76 = select i1 %11, i64 3, i64 0
  %77 = getelementptr inbounds nuw [8 x i8], ptr %75, i64 %76
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds nuw i8, ptr %0, i64 21344
  %80 = getelementptr inbounds nuw [8 x i8], ptr %79, i64 %37
  %81 = load ptr, ptr %80, align 8
  tail call void %78(ptr noundef %81, i32 noundef signext 16, ptr noundef %72, i32 noundef signext %18, i32 noundef signext %7) #59
  %82 = getelementptr inbounds nuw i8, ptr %0, i64 21392
  %83 = getelementptr inbounds nuw [8 x i8], ptr %82, i64 %37
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds i8, ptr %84, i64 -33
  %86 = getelementptr inbounds i8, ptr %53, i64 -1
  %87 = select i1 %6, i64 25, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %85, ptr noundef nonnull align 1 dereferenceable(13) %86, i64 %87, i1 false)
  %88 = load i32, ptr %16, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %63
  %91 = sext i32 %18 to i64
  %92 = zext nneg i32 %7 to i64
  br label %93

93:                                               ; preds = %93, %90
  %94 = phi i64 [ 0, %90 ], [ %103, %93 ]
  %95 = mul nsw i64 %94, %91
  %96 = getelementptr i8, ptr %41, i64 %95
  %97 = getelementptr i8, ptr %96, i64 -1
  %98 = load i8, ptr %97, align 1
  %99 = load ptr, ptr %83, align 8
  %100 = shl nsw i64 %94, 5
  %101 = getelementptr i8, ptr %99, i64 %100
  %102 = getelementptr i8, ptr %101, i64 -1
  store i8 %98, ptr %102, align 1
  %103 = add nuw nsw i64 %94, 1
  %104 = icmp eq i64 %103, %92
  br i1 %104, label %105, label %93, !llvm.loop !426

105:                                              ; preds = %93, %63
  %106 = getelementptr inbounds nuw i8, ptr %0, i64 21416
  %107 = load i32, ptr %106, align 8
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i32, ptr %16, align 4
  %111 = getelementptr inbounds nuw i8, ptr %0, i64 21424
  %112 = add nuw nsw i32 %3, 3
  %113 = select i1 %6, i32 0, i32 %112
  %114 = zext nneg i32 %113 to i64
  %115 = zext nneg i32 %107 to i64
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 24496
  br label %132

117:                                              ; preds = %175, %105
  %118 = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %119 = load i32, ptr %118, align 16
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %208

121:                                              ; preds = %117
  %122 = getelementptr inbounds nuw i8, ptr %0, i64 21420
  %123 = load i32, ptr %122, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %208

125:                                              ; preds = %121
  %126 = load i32, ptr %16, align 4
  %127 = getelementptr inbounds nuw i8, ptr %0, i64 22960
  %128 = add nuw nsw i32 %3, 3
  %129 = select i1 %6, i32 0, i32 %128
  %130 = zext nneg i32 %129 to i64
  %131 = zext nneg i32 %123 to i64
  br label %178

132:                                              ; preds = %175, %109
  %133 = phi i64 [ 0, %109 ], [ %176, %175 ]
  %134 = trunc nuw nsw i64 %133 to i32
  %135 = lshr i32 %134, %110
  %136 = zext nneg i32 %135 to i64
  %137 = getelementptr inbounds nuw [8 x i8], ptr %55, i64 %136
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds nuw i8, ptr %138, i64 152
  %140 = getelementptr inbounds nuw [8 x i8], ptr %139, i64 %37
  %141 = load ptr, ptr %140, align 8
  %142 = and i64 %133, 1
  %143 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %142
  %144 = load i32, ptr %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %141, i64 %145
  %147 = getelementptr inbounds nuw [48 x i8], ptr %111, i64 %133
  %148 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %114
  store ptr %146, ptr %148, align 8
  br i1 %6, label %154, label %175

149:                                              ; preds = %154
  %150 = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %133
  %151 = getelementptr inbounds nuw i8, ptr %150, i64 7632
  %152 = load ptr, ptr %151, align 16
  %153 = icmp eq ptr %152, null
  br i1 %153, label %170, label %164

154:                                              ; preds = %132, %154
  %155 = phi i64 [ %162, %154 ], [ 1, %132 ]
  %156 = load ptr, ptr %137, align 8
  %157 = getelementptr inbounds nuw i8, ptr %156, i64 176
  %158 = getelementptr inbounds nuw [8 x i8], ptr %157, i64 %155
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds i8, ptr %159, i64 %145
  %161 = getelementptr inbounds nuw [8 x i8], ptr %147, i64 %155
  store ptr %160, ptr %161, align 8
  %162 = add nuw nsw i64 %155, 1
  %163 = icmp eq i64 %162, 4
  br i1 %163, label %149, label %154, !llvm.loop !427

164:                                              ; preds = %149
  %165 = load ptr, ptr %67, align 8
  %166 = getelementptr inbounds nuw i8, ptr %165, i64 3392
  %167 = getelementptr inbounds nuw [8 x i8], ptr %166, i64 %136
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds i8, ptr %168, i64 %145
  br label %172

170:                                              ; preds = %149
  %171 = load ptr, ptr %147, align 16
  br label %172

172:                                              ; preds = %170, %164
  %173 = phi ptr [ %171, %170 ], [ %169, %164 ]
  %174 = getelementptr inbounds nuw [8 x i8], ptr %116, i64 %133
  store ptr %173, ptr %174, align 8
  br label %175

175:                                              ; preds = %172, %132
  %176 = add nuw nsw i64 %133, 1
  %177 = icmp eq i64 %176, %115
  br i1 %177, label %117, label %132, !llvm.loop !428

178:                                              ; preds = %205, %125
  %179 = phi i64 [ 0, %125 ], [ %206, %205 ]
  %180 = trunc nuw nsw i64 %179 to i32
  %181 = lshr i32 %180, %126
  %182 = zext nneg i32 %181 to i64
  %183 = getelementptr inbounds nuw [8 x i8], ptr %56, i64 %182
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds nuw i8, ptr %184, i64 152
  %186 = getelementptr inbounds nuw [8 x i8], ptr %185, i64 %37
  %187 = load ptr, ptr %186, align 8
  %188 = and i64 %179, 1
  %189 = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %188
  %190 = load i32, ptr %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %187, i64 %191
  %193 = getelementptr inbounds nuw [48 x i8], ptr %127, i64 %179
  %194 = getelementptr inbounds nuw [8 x i8], ptr %193, i64 %130
  store ptr %192, ptr %194, align 8
  br i1 %6, label %195, label %205

195:                                              ; preds = %178, %195
  %196 = phi i64 [ %203, %195 ], [ 1, %178 ]
  %197 = load ptr, ptr %183, align 8
  %198 = getelementptr inbounds nuw i8, ptr %197, i64 176
  %199 = getelementptr inbounds nuw [8 x i8], ptr %198, i64 %196
  %200 = load ptr, ptr %199, align 8
  %201 = getelementptr inbounds i8, ptr %200, i64 %191
  %202 = getelementptr inbounds nuw [8 x i8], ptr %193, i64 %196
  store ptr %201, ptr %202, align 8
  %203 = add nuw nsw i64 %196, 1
  %204 = icmp eq i64 %203, 4
  br i1 %204, label %205, label %195, !llvm.loop !429

205:                                              ; preds = %195, %178
  %206 = add nuw nsw i64 %179, 1
  %207 = icmp eq i64 %206, %131
  br i1 %207, label %208, label %178, !llvm.loop !430

208:                                              ; preds = %205, %121, %117
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  ret void
}