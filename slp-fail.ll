; *** IR Dump Before SLPVectorizerPass on get_ref.specialized.10 ***
; ModuleID = 'ld-temp.o'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "riscv64-unknown-linux-gnu"

%struct.anon.15 = type { i32, i32 }
%struct.anon.5 = type { i8, i8, i8 }
%struct.vlc_t = type { i8, i8 }
%struct.vlc_large_t = type { i16, i8, i8 }
%struct.x264_cpu_name_t = type { [16 x i8], i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_pulldown_t = type { i32, [24 x i8], float }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.x264_run_level_t = type { i32, [16 x i16], [16 x i8] }
%struct.trellis_node_t = type { i64, i32, [10 x i8] }
%struct.anon.16 = type { i16, i16 }
%struct.x264_me_t = type { i32, ptr, i32, i32, ptr, [6 x ptr], ptr, [3 x ptr], ptr, [2 x i32], [2 x i16], i32, i32, [2 x i16] }
%struct.x264_mb_analysis_t = type { i32, i32, i32, ptr, [2 x ptr], i32, i32, i32, i32, i32, [7 x i32], i32, i32, i32, [12 x [4 x i32]], [4 x i32], i32, [16 x i32], i32, i32, [7 x i32], i32, %struct.x264_mb_analysis_list_t, %struct.x264_mb_analysis_list_t, i32, i32, i32, [4 x i32], [3 x [4 x i32]], [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, [12 x i8] }
%struct.x264_mb_analysis_list_t = type { i32, [12 x i8], %struct.x264_me_t, %struct.x264_me_t, i32, [32 x [5 x [2 x i16]]], [12 x i8], [4 x %struct.x264_me_t], [4 x i32], [4 x [4 x %struct.x264_me_t]], [4 x i32], [4 x [2 x %struct.x264_me_t]], [4 x i32], [4 x [2 x %struct.x264_me_t]], i32, [12 x i8], [2 x %struct.x264_me_t], i32, [12 x i8], [2 x %struct.x264_me_t] }
%struct.x264_nal_t = type { i32, i32, i32, ptr }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_picture_t.25 = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t.23, %struct.x264_hrd_t.24, ptr }
%struct.x264_image_t.23 = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t.24 = type { double, double, double, double }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.26, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.26 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_opt_t = type { i32, i32, ptr, ptr, ptr, ptr, double, i32 }

@hpel_ref0 = internal unnamed_addr constant [16 x i8] c"\00\01\01\01\00\01\01\01\02\03\03\03\00\01\01\01", align 1
@hpel_ref1 = internal unnamed_addr constant [16 x i8] c"\00\00\00\00\02\02\03\02\02\02\03\02\02\02\03\02", align 1
@x264_mb_type_fix = internal unnamed_addr constant [19 x i8] c"\00\00\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12", align 1
@x264_size2pixel = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] zeroinitializer, [5 x i8] c"\00\06\04\00\00", [5 x i8] c"\00\05\03\00\01", [5 x i8] zeroinitializer, [5 x i8] c"\00\00\02\00\00"], align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024)
define internal fastcc ptr @get_ref.specialized.10(ptr noundef writeonly captures(ret: address, provenance) %0, ptr noundef captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5) unnamed_addr #6 {
  %7 = and i32 %5, 3
  %8 = shl nuw nsw i32 %7, 2
  %9 = and i32 %4, 3
  %10 = or disjoint i32 %8, %9
  %11 = ashr i32 %5, 2
  %12 = mul i32 %11, %3
  %13 = ashr i32 %4, 2
  %14 = add i32 %12, %13
  %15 = zext nneg i32 %10 to i64
  %16 = getelementptr inbounds nuw i8, ptr @hpel_ref0, i64 %15
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %18
  %20 = load ptr, ptr %19, align 8
  %21 = sext i32 %14 to i64
  %22 = getelementptr i8, ptr %20, i64 %21
  %23 = icmp eq i32 %7, 3
  %24 = select i1 %23, i32 %3, i32 0
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, ptr %22, i64 %25
  %27 = and i32 %10, 5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %245, label %29

29:                                               ; preds = %6
  %30 = getelementptr inbounds nuw i8, ptr @hpel_ref1, i64 %15
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %32
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr i8, ptr %34, i64 %21
  %36 = icmp eq i32 %9, 3
  %37 = zext i1 %36 to i64
  %38 = getelementptr i8, ptr %35, i64 %37
  %39 = load i32, ptr %1, align 4
  %40 = sext i32 %39 to i64
  %41 = sext i32 %3 to i64
  %42 = mul nsw i64 %40, 7
  %43 = getelementptr i8, ptr %0, i64 %42
  %44 = getelementptr i8, ptr %43, i64 8
  %45 = mul nsw i64 %41, 7
  %46 = getelementptr i8, ptr %20, i64 %45
  %47 = getelementptr i8, ptr %46, i64 %25
  %48 = getelementptr i8, ptr %47, i64 %21
  %49 = getelementptr i8, ptr %48, i64 8
  %50 = getelementptr i8, ptr %34, i64 %45
  %51 = getelementptr i8, ptr %50, i64 %21
  %52 = getelementptr i8, ptr %51, i64 %37
  %53 = getelementptr i8, ptr %52, i64 8
  %54 = icmp ult ptr %0, %49
  %55 = icmp ult ptr %26, %44
  %56 = and i1 %54, %55
  %57 = or i32 %3, %39
  %58 = icmp slt i32 %57, 0
  %59 = icmp ult ptr %0, %53
  %60 = icmp ult ptr %38, %44
  %61 = and i1 %59, %60
  %62 = or i1 %61, %58
  %63 = or i1 %56, %62
  br i1 %63, label %64, label %159

64:                                               ; preds = %64, %29
  %65 = phi i32 [ %157, %64 ], [ 0, %29 ]
  %66 = phi ptr [ %154, %64 ], [ %0, %29 ]
  %67 = phi ptr [ %155, %64 ], [ %26, %29 ]
  %68 = phi ptr [ %156, %64 ], [ %38, %29 ]
  %69 = load i8, ptr %67, align 1
  %70 = zext i8 %69 to i16
  %71 = load i8, ptr %68, align 1
  %72 = zext i8 %71 to i16
  %73 = add nuw nsw i16 %70, 1
  %74 = add nuw nsw i16 %73, %72
  %75 = lshr i16 %74, 1
  %76 = trunc nuw i16 %75 to i8
  store i8 %76, ptr %66, align 1
  %77 = getelementptr inbounds nuw i8, ptr %67, i64 1
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i16
  %80 = getelementptr inbounds nuw i8, ptr %68, i64 1
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i16
  %83 = add nuw nsw i16 %79, 1
  %84 = add nuw nsw i16 %83, %82
  %85 = lshr i16 %84, 1
  %86 = trunc nuw i16 %85 to i8
  %87 = getelementptr inbounds nuw i8, ptr %66, i64 1
  store i8 %86, ptr %87, align 1
  %88 = getelementptr inbounds nuw i8, ptr %67, i64 2
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i16
  %91 = getelementptr inbounds nuw i8, ptr %68, i64 2
  %92 = load i8, ptr %91, align 1
  %93 = zext i8 %92 to i16
  %94 = add nuw nsw i16 %90, 1
  %95 = add nuw nsw i16 %94, %93
  %96 = lshr i16 %95, 1
  %97 = trunc nuw i16 %96 to i8
  %98 = getelementptr inbounds nuw i8, ptr %66, i64 2
  store i8 %97, ptr %98, align 1
  %99 = getelementptr inbounds nuw i8, ptr %67, i64 3
  %100 = load i8, ptr %99, align 1
  %101 = zext i8 %100 to i16
  %102 = getelementptr inbounds nuw i8, ptr %68, i64 3
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i16
  %105 = add nuw nsw i16 %101, 1
  %106 = add nuw nsw i16 %105, %104
  %107 = lshr i16 %106, 1
  %108 = trunc nuw i16 %107 to i8
  %109 = getelementptr inbounds nuw i8, ptr %66, i64 3
  store i8 %108, ptr %109, align 1
  %110 = getelementptr inbounds nuw i8, ptr %67, i64 4
  %111 = load i8, ptr %110, align 1
  %112 = zext i8 %111 to i16
  %113 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i16
  %116 = add nuw nsw i16 %112, 1
  %117 = add nuw nsw i16 %116, %115
  %118 = lshr i16 %117, 1
  %119 = trunc nuw i16 %118 to i8
  %120 = getelementptr inbounds nuw i8, ptr %66, i64 4
  store i8 %119, ptr %120, align 1
  %121 = getelementptr inbounds nuw i8, ptr %67, i64 5
  %122 = load i8, ptr %121, align 1
  %123 = zext i8 %122 to i16
  %124 = getelementptr inbounds nuw i8, ptr %68, i64 5
  %125 = load i8, ptr %124, align 1
  %126 = zext i8 %125 to i16
  %127 = add nuw nsw i16 %123, 1
  %128 = add nuw nsw i16 %127, %126
  %129 = lshr i16 %128, 1
  %130 = trunc nuw i16 %129 to i8
  %131 = getelementptr inbounds nuw i8, ptr %66, i64 5
  store i8 %130, ptr %131, align 1
  %132 = getelementptr inbounds nuw i8, ptr %67, i64 6
  %133 = load i8, ptr %132, align 1
  %134 = zext i8 %133 to i16
  %135 = getelementptr inbounds nuw i8, ptr %68, i64 6
  %136 = load i8, ptr %135, align 1
  %137 = zext i8 %136 to i16
  %138 = add nuw nsw i16 %134, 1
  %139 = add nuw nsw i16 %138, %137
  %140 = lshr i16 %139, 1
  %141 = trunc nuw i16 %140 to i8
  %142 = getelementptr inbounds nuw i8, ptr %66, i64 6
  store i8 %141, ptr %142, align 1
  %143 = getelementptr inbounds nuw i8, ptr %67, i64 7
  %144 = load i8, ptr %143, align 1
  %145 = zext i8 %144 to i16
  %146 = getelementptr inbounds nuw i8, ptr %68, i64 7
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i16
  %149 = add nuw nsw i16 %145, 1
  %150 = add nuw nsw i16 %149, %148
  %151 = lshr i16 %150, 1
  %152 = trunc nuw i16 %151 to i8
  %153 = getelementptr inbounds nuw i8, ptr %66, i64 7
  store i8 %152, ptr %153, align 1
  %154 = getelementptr inbounds i8, ptr %66, i64 %40
  %155 = getelementptr inbounds i8, ptr %67, i64 %41
  %156 = getelementptr inbounds i8, ptr %68, i64 %41
  %157 = add nuw nsw i32 %65, 1
  %158 = icmp eq i32 %157, 8
  br i1 %158, label %246, label %64

159:                                              ; preds = %29
  %160 = load <8 x i8>, ptr %26, align 1, !alias.scope !481
  %161 = zext <8 x i8> %160 to <8 x i16>
  %162 = load <8 x i8>, ptr %38, align 1, !alias.scope !484
  %163 = zext <8 x i8> %162 to <8 x i16>
  %164 = add nuw nsw <8 x i16> %161, splat (i16 1)
  %165 = add nuw nsw <8 x i16> %164, %163
  %166 = lshr <8 x i16> %165, splat (i16 1)
  %167 = trunc nuw <8 x i16> %166 to <8 x i8>
  store <8 x i8> %167, ptr %0, align 1, !alias.scope !486, !noalias !488
  %168 = getelementptr inbounds i8, ptr %0, i64 %40
  %169 = getelementptr inbounds i8, ptr %26, i64 %41
  %170 = getelementptr inbounds i8, ptr %38, i64 %41
  %171 = load <8 x i8>, ptr %169, align 1, !alias.scope !481
  %172 = zext <8 x i8> %171 to <8 x i16>
  %173 = load <8 x i8>, ptr %170, align 1, !alias.scope !484
  %174 = zext <8 x i8> %173 to <8 x i16>
  %175 = add nuw nsw <8 x i16> %172, splat (i16 1)
  %176 = add nuw nsw <8 x i16> %175, %174
  %177 = lshr <8 x i16> %176, splat (i16 1)
  %178 = trunc nuw <8 x i16> %177 to <8 x i8>
  store <8 x i8> %178, ptr %168, align 1, !alias.scope !486, !noalias !488
  %179 = getelementptr inbounds i8, ptr %168, i64 %40
  %180 = getelementptr inbounds i8, ptr %169, i64 %41
  %181 = getelementptr inbounds i8, ptr %170, i64 %41
  %182 = load <8 x i8>, ptr %180, align 1, !alias.scope !481
  %183 = zext <8 x i8> %182 to <8 x i16>
  %184 = load <8 x i8>, ptr %181, align 1, !alias.scope !484
  %185 = zext <8 x i8> %184 to <8 x i16>
  %186 = add nuw nsw <8 x i16> %183, splat (i16 1)
  %187 = add nuw nsw <8 x i16> %186, %185
  %188 = lshr <8 x i16> %187, splat (i16 1)
  %189 = trunc nuw <8 x i16> %188 to <8 x i8>
  store <8 x i8> %189, ptr %179, align 1, !alias.scope !486, !noalias !488
  %190 = getelementptr inbounds i8, ptr %179, i64 %40
  %191 = getelementptr inbounds i8, ptr %180, i64 %41
  %192 = getelementptr inbounds i8, ptr %181, i64 %41
  %193 = load <8 x i8>, ptr %191, align 1, !alias.scope !481
  %194 = zext <8 x i8> %193 to <8 x i16>
  %195 = load <8 x i8>, ptr %192, align 1, !alias.scope !484
  %196 = zext <8 x i8> %195 to <8 x i16>
  %197 = add nuw nsw <8 x i16> %194, splat (i16 1)
  %198 = add nuw nsw <8 x i16> %197, %196
  %199 = lshr <8 x i16> %198, splat (i16 1)
  %200 = trunc nuw <8 x i16> %199 to <8 x i8>
  store <8 x i8> %200, ptr %190, align 1, !alias.scope !486, !noalias !488
  %201 = getelementptr inbounds i8, ptr %190, i64 %40
  %202 = getelementptr inbounds i8, ptr %191, i64 %41
  %203 = getelementptr inbounds i8, ptr %192, i64 %41
  %204 = load <8 x i8>, ptr %202, align 1, !alias.scope !481
  %205 = zext <8 x i8> %204 to <8 x i16>
  %206 = load <8 x i8>, ptr %203, align 1, !alias.scope !484
  %207 = zext <8 x i8> %206 to <8 x i16>
  %208 = add nuw nsw <8 x i16> %205, splat (i16 1)
  %209 = add nuw nsw <8 x i16> %208, %207
  %210 = lshr <8 x i16> %209, splat (i16 1)
  %211 = trunc nuw <8 x i16> %210 to <8 x i8>
  store <8 x i8> %211, ptr %201, align 1, !alias.scope !486, !noalias !488
  %212 = getelementptr inbounds i8, ptr %201, i64 %40
  %213 = getelementptr inbounds i8, ptr %202, i64 %41
  %214 = getelementptr inbounds i8, ptr %203, i64 %41
  %215 = load <8 x i8>, ptr %213, align 1, !alias.scope !481
  %216 = zext <8 x i8> %215 to <8 x i16>
  %217 = load <8 x i8>, ptr %214, align 1, !alias.scope !484
  %218 = zext <8 x i8> %217 to <8 x i16>
  %219 = add nuw nsw <8 x i16> %216, splat (i16 1)
  %220 = add nuw nsw <8 x i16> %219, %218
  %221 = lshr <8 x i16> %220, splat (i16 1)
  %222 = trunc nuw <8 x i16> %221 to <8 x i8>
  store <8 x i8> %222, ptr %212, align 1, !alias.scope !486, !noalias !488
  %223 = getelementptr inbounds i8, ptr %212, i64 %40
  %224 = getelementptr inbounds i8, ptr %213, i64 %41
  %225 = getelementptr inbounds i8, ptr %214, i64 %41
  %226 = load <8 x i8>, ptr %224, align 1, !alias.scope !481
  %227 = zext <8 x i8> %226 to <8 x i16>
  %228 = load <8 x i8>, ptr %225, align 1, !alias.scope !484
  %229 = zext <8 x i8> %228 to <8 x i16>
  %230 = add nuw nsw <8 x i16> %227, splat (i16 1)
  %231 = add nuw nsw <8 x i16> %230, %229
  %232 = lshr <8 x i16> %231, splat (i16 1)
  %233 = trunc nuw <8 x i16> %232 to <8 x i8>
  store <8 x i8> %233, ptr %223, align 1, !alias.scope !486, !noalias !488
  %234 = getelementptr inbounds i8, ptr %223, i64 %40
  %235 = getelementptr inbounds i8, ptr %224, i64 %41
  %236 = getelementptr inbounds i8, ptr %225, i64 %41
  %237 = load <8 x i8>, ptr %235, align 1, !alias.scope !481
  %238 = zext <8 x i8> %237 to <8 x i16>
  %239 = load <8 x i8>, ptr %236, align 1, !alias.scope !484
  %240 = zext <8 x i8> %239 to <8 x i16>
  %241 = add nuw nsw <8 x i16> %238, splat (i16 1)
  %242 = add nuw nsw <8 x i16> %241, %240
  %243 = lshr <8 x i16> %242, splat (i16 1)
  %244 = trunc nuw <8 x i16> %243 to <8 x i8>
  store <8 x i8> %244, ptr %234, align 1, !alias.scope !486, !noalias !488
  br label %246

245:                                              ; preds = %6
  store i32 %3, ptr %1, align 4
  br label %246

246:                                              ; preds = %64, %159, %245
  %247 = phi ptr [ %26, %245 ], [ %0, %159 ], [ %0, %64 ]
  ret ptr %247
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #56

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i32> @llvm.masked.load.v3i32.p0(ptr captures(none), <3 x i1>, <3 x i32>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr>, <8 x i1>, <8 x i32>) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #56

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr>, <16 x i1>, <16 x i32>) #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #56

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <16 x i8> @llvm.masked.load.v16i8.p0(ptr captures(none), <16 x i1>, <16 x i8>) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i8> @llvm.masked.load.v3i8.p0(ptr captures(none), <3 x i1>, <3 x i8>) #57

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #59

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <2 x i64> @llvm.experimental.vp.strided.load.v2i64.p0.i64(ptr captures(none), i64, <2 x i1>, i32) #57

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <61 x i16> @llvm.masked.load.v61i16.p0(ptr captures(none), <61 x i1>, <61 x i16>) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v16i16(<16 x i16>) #56

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <vscale x 64 x i8> @llvm.vector.interleave8.nxv64i8(<vscale x 8 x i8>, <vscale x 8 x i8>, <vscale x 8 x i8>, <vscale x 8 x i8>, <vscale x 8 x i8>, <vscale x 8 x i8>, <vscale x 8 x i8>, <vscale x 8 x i8>) #59

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.vp.store.nxv64i8.p0(<vscale x 64 x i8>, ptr captures(none), <vscale x 64 x i1>, i32) #60

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #56

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #17 = { nounwind uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(read) }
attributes #22 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #24 = { inlinehint nounwind uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #25 = { nounwind memory(readwrite, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #26 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #27 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #28 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #30 = { cold nofree nounwind uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #31 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #32 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #33 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #34 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #35 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #36 = { nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #37 = { nofree nounwind uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #38 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #40 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #41 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #42 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) }
attributes #43 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #44 = { nofree norecurse nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #46 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #47 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #48 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #49 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #50 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable vscale_range(8,1024) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #51 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #52 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #53 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #54 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="veyron-v2" "target-features"="+64bit,+a,+b,+c,+d,+f,+i,+m,+relax,+smnpm,+smstateen,+sscofpmf,+sspm,+ssstrict,+sstc,+svinval,+svnapot,+unaligned-scalar-mem,+unaligned-vector-mem,+v,+za64rs,+zaamo,+zalrsc,+zama16b,+zawrs,+zba,+zbb,+zbc,+zbkc,+zbs,+zca,+zcb,+zcd,+zcmop,+zfa,+zfbfmin,+zfhmin,+zic64b,+zicbom,+zicbop,+zicboz,+ziccamoa,+ziccif,+ziccrse,+zicntr,+zicond,+zicsr,+zifencei,+zihintntl,+zihintpause,+zihpm,+zimop,+zkt,+zmmul,+zvbb,+zvbc,+zve32f,+zve32x,+zve64d,+zve64f,+zve64x,+zvfbfmin,+zvfbfwma,+zvkb,+zvkg,+zvkn,+zvknc,+zvkned,+zvkng,+zvknha,+zvknhb,+zvkt,+zvl128b,+zvl256b,+zvl32b,+zvl512b,+zvl64b,-e,-experimental-p,-experimental-smpmpmt,-experimental-svukte,-experimental-xrivosvizip,-experimental-xsfmclic,-experimental-xsfsclic,-experimental-y,-experimental-zibi,-experimental-zicfilp,-experimental-zicfiss,-experimental-zvabd,-experimental-zvbc32e,-experimental-zvdot4a8i,-experimental-zvfbfa,-experimental-zvfofp8min,-experimental-zvkgs,-experimental-zvzip,-h,-q,-sdext,-sdtrig,-sha,-shcounterenw,-shgatpa,-shlcofideleg,-shtvala,-shvsatpa,-shvstvala,-shvstvecd,-smaia,-smcdeleg,-smcntrpmf,-smcsrind,-smctr,-smdbltrp,-smepmp,-smmpm,-smrnmi,-ssaia,-ssccfg,-ssccptr,-sscounterenw,-sscsrind,-ssctr,-ssdbltrp,-ssnpm,-ssqosid,-ssstateen,-sstvala,-sstvecd,-ssu64xl,-supm,-svade,-svadu,-svbare,-svpbmt,-svrsw60t59b,-svvptc,-xaifet,-xandesbfhcvt,-xandesperf,-xandesvbfhcvt,-xandesvdot,-xandesvpackfph,-xandesvsinth,-xandesvsintload,-xcheriot,-xcvalu,-xcvbi,-xcvbitmanip,-xcvelw,-xcvmac,-xcvmem,-xcvsimd,-xmipscbop,-xmipscmov,-xmipsexectl,-xmipslsp,-xqccmp,-xqci,-xqcia,-xqciac,-xqcibi,-xqcibm,-xqcicli,-xqcicm,-xqcics,-xqcicsr,-xqciint,-xqciio,-xqcilb,-xqcili,-xqcilia,-xqcilo,-xqcilsm,-xqcisim,-xqcisls,-xqcisync,-xsfcease,-xsfmm128t,-xsfmm16t,-xsfmm32a,-xsfmm32a16f,-xsfmm32a32f,-xsfmm32a8f,-xsfmm32a8i,-xsfmm32t,-xsfmm64a64f,-xsfmm64t,-xsfmmbase,-xsfvcp,-xsfvfbfexp16e,-xsfvfexp16e,-xsfvfexp32e,-xsfvfexpa,-xsfvfexpa64e,-xsfvfnrclipxfqf,-xsfvfwmaccqqq,-xsfvqmaccdod,-xsfvqmaccqoq,-xsifivecdiscarddlone,-xsifivecflushdlone,-xsmtvdot,-xtheadba,-xtheadbb,-xtheadbs,-xtheadcmo,-xtheadcondmov,-xtheadfmemidx,-xtheadmac,-xtheadmemidx,-xtheadmempair,-xtheadsync,-xtheadvdot,-xventanacondops,-xwchc,-za128rs,-zabha,-zacas,-zalasr,-zbkb,-zbkx,-zce,-zcf,-zclsd,-zcmp,-zcmt,-zdinx,-zfh,-zfinx,-zhinx,-zhinxmin,-ziccamoc,-zicclsm,-zilsd,-zk,-zkn,-zknd,-zkne,-zknh,-zkr,-zks,-zksed,-zksh,-ztso,-zvfh,-zvfhmin,-zvks,-zvksc,-zvksed,-zvksg,-zvksh,-zvl1024b,-zvl16384b,-zvl2048b,-zvl32768b,-zvl4096b,-zvl65536b,-zvl8192b" }
attributes #55 = { nofree nounwind }
attributes #56 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #59 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #60 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #61 = { nounwind }
attributes #62 = { nounwind allocsize(0) }
attributes #63 = { nounwind willreturn memory(read) }
attributes #64 = { cold nounwind }
attributes #65 = { nounwind willreturn memory(none) }
attributes #66 = { cold noreturn nounwind }
attributes #67 = { cold }
attributes #68 = { nounwind allocsize(1) }
attributes #69 = { noreturn nounwind }

!llvm.ident = !{!0, !1}
!llvm.module.flags = !{!2, !3, !5, !6, !7, !8, !9, !10}

!0 = !{!"clang version 23.0.0git (git@github.com:bababuck/llvm-project.git d9d66141e0b4e5938c597e5ffccfc1fc8c54c945)"}
!1 = !{!"clang version 23.0.0git (git@github.com:bababuck/llvm-project.git 30ed7929ccdac60f047619ec349bb7521c5159ca)"}
!2 = !{i32 1, !"target-abi", !"lp64d"}
!3 = distinct !{i32 6, !"riscv-isa", !4}
!4 = distinct !{!"rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_b1p0_v1p0_zic64b1p0_zicbom1p0_zicbop1p0_zicboz1p0_ziccamoa1p0_ziccif1p0_ziccrse1p0_zicntr2p0_zicond1p0_zicsr2p0_zifencei2p0_zihintntl1p0_zihintpause2p0_zihpm2p0_zimop1p0_zmmul1p0_za64rs1p0_zaamo1p0_zalrsc1p0_zama16b1p0_zawrs1p0_zfa1p0_zfbfmin1p0_zfhmin1p0_zca1p0_zcb1p0_zcd1p0_zcmop1p0_zba1p0_zbb1p0_zbc1p0_zbkc1p0_zbs1p0_zkt1p0_zvbb1p0_zvbc1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfbfmin1p0_zvfbfwma1p0_zvkb1p0_zvkg1p0_zvkn1p0_zvknc1p0_zvkned1p0_zvkng1p0_zvknha1p0_zvknhb1p0_zvkt1p0_zvl128b1p0_zvl256b1p0_zvl32b1p0_zvl512b1p0_zvl64b1p0_smnpm1p0_smstateen1p0_sscofpmf1p0_sspm1p0_ssstrict1p0_sstc1p0_svinval1p0_svnapot1p0"}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 8, !"SmallDataLimit", i32 0}
!9 = !{i32 1, !"ThinLTO", i32 0}
!10 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !12}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{!22, !18}
!23 = !{!17, !20}
!24 = distinct !{!24, !14, !25}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !12}
!31 = !{!32}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !14, !25}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = distinct !{!37, !14}
!38 = !{!39}
!39 = distinct !{!39, !36}
!40 = distinct !{!40, !14, !25}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !12}
!46 = !{!47}
!47 = distinct !{!47, !43}
!48 = !{!49}
!49 = distinct !{!49, !43}
!50 = !{!47, !42}
!51 = distinct !{!51, !14, !25}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = distinct !{!55, !14}
!56 = !{!57}
!57 = distinct !{!57, !54}
!58 = !{!59}
!59 = distinct !{!59, !54}
!60 = !{!57, !53}
!61 = distinct !{!61, !14, !25}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !12}
!65 = !{!66}
!66 = distinct !{!66, !67}
!67 = distinct !{!67, !"LVerDomain"}
!68 = !{!69}
!69 = distinct !{!69, !67}
!70 = !{!71}
!71 = distinct !{!71, !67}
!72 = !{!66, !69}
!73 = distinct !{!73, !14, !25}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !12}
!79 = !{!80}
!80 = distinct !{!80, !76}
!81 = distinct !{!81, !14, !25}
!82 = !{!83}
!83 = distinct !{!83, !84}
!84 = distinct !{!84, !"LVerDomain"}
!85 = distinct !{!85, !14}
!86 = !{!87}
!87 = distinct !{!87, !84}
!88 = distinct !{!88, !14, !25}
!89 = !{!90}
!90 = distinct !{!90, !91}
!91 = distinct !{!91, !"LVerDomain"}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !12}
!94 = !{!95}
!95 = distinct !{!95, !91}
!96 = !{!97}
!97 = distinct !{!97, !91}
!98 = !{!95, !90}
!99 = distinct !{!99, !14, !25}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = distinct !{!103, !14}
!104 = !{!105}
!105 = distinct !{!105, !102}
!106 = !{!107}
!107 = distinct !{!107, !102}
!108 = !{!105, !101}
!109 = distinct !{!109, !14, !25}
!110 = distinct !{!110, !14}
!111 = !{!112}
!112 = distinct !{!112, !113}
!113 = distinct !{!113, !"LVerDomain"}
!114 = !{!115}
!115 = distinct !{!115, !113}
!116 = !{!117}
!117 = distinct !{!117, !113}
!118 = !{!115, !112}
!119 = distinct !{!119, !14, !25}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = !{!124}
!124 = distinct !{!124, !125}
!125 = distinct !{!125, !"LVerDomain"}
!126 = !{!127}
!127 = distinct !{!127, !125}
!128 = !{!129}
!129 = distinct !{!129, !125}
!130 = !{!131}
!131 = distinct !{!131, !125}
!132 = !{!133}
!133 = distinct !{!133, !125}
!134 = !{!135}
!135 = distinct !{!135, !125}
!136 = !{!137}
!137 = distinct !{!137, !125}
!138 = !{!139, !135, !133, !131, !129, !127, !124}
!139 = distinct !{!139, !125}
!140 = !{!139}
!141 = !{!135, !133, !131, !129, !127, !124}
!142 = distinct !{!142, !14, !25}
!143 = distinct !{!143, !14}
!144 = !{!145}
!145 = distinct !{!145, !146}
!146 = distinct !{!146, !"LVerDomain"}
!147 = !{!148}
!148 = distinct !{!148, !146}
!149 = distinct !{!149, !14, !25}
!150 = distinct !{!150, !14}
!151 = !{!152}
!152 = distinct !{!152, !153}
!153 = distinct !{!153, !"LVerDomain"}
!154 = !{!155}
!155 = distinct !{!155, !153}
!156 = distinct !{!156, !14, !25}
!157 = distinct !{!157, !14}
!158 = !{!159}
!159 = distinct !{!159, !160}
!160 = distinct !{!160, !"LVerDomain"}
!161 = !{!162}
!162 = distinct !{!162, !160}
!163 = !{!164}
!164 = distinct !{!164, !160}
!165 = !{!166, !167, !168, !169, !162, !159}
!166 = distinct !{!166, !160}
!167 = distinct !{!167, !160}
!168 = distinct !{!168, !160}
!169 = distinct !{!169, !160}
!170 = !{!166}
!171 = !{!167, !168, !169, !162, !159}
!172 = !{!169}
!173 = !{!167}
!174 = !{!168, !169, !162, !159}
!175 = !{!168}
!176 = !{!169, !162, !159}
!177 = distinct !{!177, !14, !25}
!178 = distinct !{!178, !14}
!179 = distinct !{!179, !12}
!180 = distinct !{!180, !12}
!181 = distinct !{!181, !14, !25}
!182 = distinct !{!182, !12}
!183 = distinct !{!183, !14, !25}
!184 = distinct !{!184, !14}
!185 = distinct !{!185, !14, !25}
!186 = !{!187}
!187 = distinct !{!187, !188}
!188 = distinct !{!188, !"LVerDomain"}
!189 = !{!190}
!190 = distinct !{!190, !188}
!191 = !{!192}
!192 = distinct !{!192, !188}
!193 = !{!194}
!194 = distinct !{!194, !188}
!195 = !{!196}
!196 = distinct !{!196, !188}
!197 = !{!187, !190, !192, !194}
!198 = distinct !{!198, !14, !25}
!199 = distinct !{!199, !14}
!200 = !{!201}
!201 = distinct !{!201, !202}
!202 = distinct !{!202, !"LVerDomain"}
!203 = !{!204}
!204 = distinct !{!204, !202}
!205 = !{!206}
!206 = distinct !{!206, !202}
!207 = !{!204, !201}
!208 = distinct !{!208, !14, !25}
!209 = distinct !{!209, !14, !25}
!210 = distinct !{!210, !14, !25}
!212 = !{!213}
!213 = distinct !{!213, !214}
!214 = distinct !{!214, !"LVerDomain"}
!215 = !{!216}
!216 = distinct !{!216, !214}
!217 = !{!218}
!218 = distinct !{!218, !214}
!219 = !{!213, !216}
!220 = distinct !{!220, !14, !25}
!222 = distinct !{!222, !14, !25}
!223 = distinct !{!223, !224}
!224 = !{!"llvm.loop.unswitch.partial.disable"}
!225 = distinct !{!225, !224}
!226 = distinct !{!226, !224}
!227 = !{!228}
!228 = distinct !{!228, !229}
!229 = distinct !{!229, !"LVerDomain"}
!230 = !{!231}
!231 = distinct !{!231, !229}
!232 = distinct !{!232, !14}
!233 = distinct !{!233, !14, !25}
!234 = distinct !{!234, !14, !25}
!235 = distinct !{!235, !12}
!236 = distinct !{!236, !12}
!237 = distinct !{!237, !12}
!238 = distinct !{!238, !12}
!239 = distinct !{!239, !12}
!240 = distinct !{!240, !12}
!241 = distinct !{!241, !12}
!242 = distinct !{!242, !243}
!243 = !{!"llvm.loop.peeled.count", i32 1}
!244 = distinct !{!244, !243}
!245 = !{!246}
!246 = distinct !{!246, !247}
!247 = distinct !{!247, !"LVerDomain"}
!248 = !{!249, !250}
!249 = distinct !{!249, !247}
!250 = distinct !{!250, !247}
!251 = !{!249}
!252 = !{!250}
!253 = distinct !{!253, !14, !25}
!254 = distinct !{!254, !14}
!255 = !{!256}
!256 = distinct !{!256, !257}
!257 = distinct !{!257, !"LVerDomain"}
!258 = !{!259, !260}
!259 = distinct !{!259, !257}
!260 = distinct !{!260, !257}
!261 = !{!259}
!262 = !{!260}
!263 = !{!264}
!264 = distinct !{!264, !265}
!265 = distinct !{!265, !"LVerDomain"}
!266 = !{!267}
!267 = distinct !{!267, !265}
!268 = distinct !{!268, !14, !25}
!269 = distinct !{!269, !14}
!270 = !{!271}
!271 = distinct !{!271, !272}
!272 = distinct !{!272, !"LVerDomain"}
!273 = !{!274}
!274 = distinct !{!274, !272}
!275 = distinct !{!275, !14, !25}
!276 = distinct !{!276, !14}
!277 = !{!278}
!278 = distinct !{!278, !279}
!279 = distinct !{!279, !"LVerDomain"}
!280 = !{!281}
!281 = distinct !{!281, !279}
!282 = !{!283}
!283 = distinct !{!283, !279}
!284 = !{!278, !281}
!285 = distinct !{!285, !14, !25}
!286 = distinct !{!286, !14}
!287 = distinct !{!287, !12}
!288 = distinct !{!288, !12}
!289 = distinct !{!289, !12}
!290 = distinct !{!290, !12}
!291 = distinct !{null}
!292 = distinct !{null, null}
!293 = distinct !{null, null, null}
!294 = distinct !{null}
!295 = distinct !{null}
!296 = distinct !{!296, !12}
!297 = distinct !{!297, !243}
!298 = distinct !{!298, !243}
!299 = distinct !{!299, !243}
!300 = distinct !{!300, !243}
!301 = distinct !{!301, !243}
!302 = distinct !{!302, !243}
!303 = distinct !{!303, !243}
!304 = distinct !{!304, !243}
!305 = distinct !{!305, !243}
!306 = distinct !{!306, !243}
!307 = distinct !{!307, !243}
!308 = distinct !{!308, !243}
!309 = distinct !{!309, !243}
!310 = distinct !{!310, !243}
!311 = distinct !{!311, !243}
!312 = distinct !{!312, !12}
!313 = distinct !{!313, !14, !25}
!314 = distinct !{!314, !14, !25}
!315 = distinct !{!315, !14, !25}
!316 = distinct !{!316, !14, !25}
!317 = distinct !{!317, !12}
!319 = distinct !{null, null}
!320 = distinct !{null}
!321 = distinct !{null}
!322 = distinct !{!322, !243}
!323 = distinct !{null, null, null}
!324 = distinct !{null, null}
!325 = distinct !{!325, !12}
!326 = distinct !{null}
!327 = distinct !{null}
!328 = distinct !{null}
!329 = distinct !{null}
!330 = distinct !{null}
!331 = distinct !{null}
!332 = distinct !{null}
!333 = distinct !{null}
!334 = distinct !{null}
!335 = distinct !{null}
!336 = distinct !{null}
!338 = distinct !{null, null}
!339 = distinct !{null, null}
!340 = distinct !{null, null, null}
!341 = !{!342}
!342 = distinct !{!342, !343}
!343 = distinct !{!343, !"LVerDomain"}
!344 = !{!345}
!345 = distinct !{!345, !343}
!346 = !{!347}
!347 = distinct !{!347, !343}
!348 = !{!342, !345}
!349 = distinct !{null}
!350 = distinct !{null}
!351 = distinct !{!351, !12}
!352 = distinct !{!352, !12}
!353 = distinct !{!353, !224}
!354 = distinct !{!354, !12}
!355 = distinct !{!355, !243}
!356 = distinct !{!356, !12}
!357 = distinct !{!357, !12}
!358 = distinct !{!358, !224}
!359 = distinct !{!359, !14, !25}
!360 = distinct !{!360, !14, !25}
!361 = distinct !{!361, !12}
!362 = distinct !{!362, !12}
!363 = distinct !{!363, !12}
!364 = distinct !{!364, !14, !25}
!365 = distinct !{!365, !12}
!366 = distinct !{!366, !14, !25}
!367 = distinct !{!367, !12}
!368 = distinct !{!368, !14, !25}
!369 = distinct !{!369, !224}
!370 = distinct !{null, null}
!371 = distinct !{!371, !224}
!372 = distinct !{!372, !243}
!373 = distinct !{!373, !243}
!374 = distinct !{!374, !14, !25}
!375 = distinct !{!375, !14, !25}
!376 = distinct !{!376, !14, !25}
!377 = distinct !{!377, !14, !25}
!378 = distinct !{!378, !14, !25}
!379 = distinct !{!379, !14, !25}
!380 = distinct !{!380, !243}
!381 = distinct !{null}
!382 = distinct !{null}
!383 = distinct !{null}
!384 = distinct !{null}
!385 = distinct !{null, null}
!386 = distinct !{!386, !243}
!387 = distinct !{!387, !14, !25}
!388 = distinct !{!388, !243}
!389 = distinct !{!389, !243}
!390 = distinct !{!390, !14, !25}
!391 = distinct !{!391, !14, !25}
!392 = distinct !{!392, !12}
!393 = distinct !{!393, !224}
!394 = distinct !{null}
!395 = distinct !{!395, !12}
!396 = distinct !{null}
!397 = distinct !{!397, !14, !25}
!398 = distinct !{!398, !12}
!399 = distinct !{null}
!400 = distinct !{!400, !12}
!401 = distinct !{!401, !224}
!402 = distinct !{!402, !243}
!403 = distinct !{null}
!404 = distinct !{!404, !12}
!405 = distinct !{!405, !12}
!406 = distinct !{!406, !243}
!407 = distinct !{!407, !12}
!408 = distinct !{!408, !12}
!409 = distinct !{!409, !14, !25}
!410 = distinct !{!410, !14, !25}
!411 = distinct !{!411, !14, !25}
!412 = distinct !{!412, !243}
!413 = distinct !{!413, !14, !25}
!414 = !{!415}
!415 = distinct !{!415, !416}
!416 = distinct !{!416, !"LVerDomain"}
!417 = !{!418}
!418 = distinct !{!418, !416}
!419 = distinct !{!419, !14, !25}
!420 = distinct !{!420, !14}
!421 = !{!422}
!422 = distinct !{!422, !423}
!423 = distinct !{!423, !"LVerDomain"}
!424 = !{!425}
!425 = distinct !{!425, !423}
!426 = !{!427, !422}
!427 = distinct !{!427, !423}
!428 = distinct !{!428, !14, !25}
!429 = !{!430}
!430 = distinct !{!430, !431}
!431 = distinct !{!431, !"LVerDomain"}
!432 = !{!433}
!433 = distinct !{!433, !431}
!434 = !{!435, !430}
!435 = distinct !{!435, !431}
!436 = distinct !{!436, !14, !25}
!437 = distinct !{!437, !14}
!438 = !{!439}
!439 = distinct !{!439, !440}
!440 = distinct !{!440, !"LVerDomain"}
!441 = !{!442}
!442 = distinct !{!442, !440}
!443 = distinct !{!443, !14, !25}
!444 = distinct !{!444, !14}
!445 = distinct !{!445, !12}
!446 = distinct !{!446, !12}
!447 = distinct !{null}
!448 = distinct !{null, null}
!449 = distinct !{null}
!450 = distinct !{null}
!451 = distinct !{null}
!452 = distinct !{!452, !12}
!453 = distinct !{!453, !14, !25}
!454 = distinct !{null, null}
!455 = distinct !{null}
!456 = distinct !{!456, !12}
!457 = distinct !{!457, !12}
!458 = distinct !{!458, !12}
!459 = distinct !{null}
!460 = distinct !{!460, !12}
!461 = distinct !{!461, !12}
!462 = distinct !{!462, !12}
!463 = distinct !{null}
!464 = distinct !{!464, !14, !25}
!465 = distinct !{null}
!466 = distinct !{!466, !12}
!467 = distinct !{null}
!468 = distinct !{null}
!469 = distinct !{null, null}
!470 = distinct !{null}
!471 = distinct !{null, null}
!472 = distinct !{!472, !14, !25}
!473 = !{!474}
!474 = distinct !{!474, !475}
!475 = distinct !{!475, !"LVerDomain"}
!476 = !{!477}
!477 = distinct !{!477, !475}
!478 = !{!479}
!479 = distinct !{!479, !475}
!480 = !{!474, !477}
!481 = !{!482}
!482 = distinct !{!482, !483}
!483 = distinct !{!483, !"LVerDomain"}
!484 = !{!485}
!485 = distinct !{!485, !483}
!486 = !{!487}
!487 = distinct !{!487, !483}
!488 = !{!482, !485}
!489 = distinct !{!489, !14}
!490 = !{!491}
!491 = distinct !{!491, !492}
!492 = distinct !{!492, !"LVerDomain"}
!493 = !{!494}
!494 = distinct !{!494, !492}
!495 = !{!496}
!496 = distinct !{!496, !492}
!497 = !{!491, !494}
!498 = distinct !{!498, !14}
!499 = distinct !{!499, !12}
!500 = !{!501}
!501 = distinct !{!501, !502}
!502 = distinct !{!502, !"LVerDomain"}
!503 = !{!504}
!504 = distinct !{!504, !502}
!505 = !{!506}
!506 = distinct !{!506, !502}
!507 = !{!501, !504}
!508 = distinct !{!508, !14, !25}
!509 = distinct !{!509, !14}
!510 = !{!511}
!511 = distinct !{!511, !512}
!512 = distinct !{!512, !"LVerDomain"}
!513 = !{!514}
!514 = distinct !{!514, !512}
!515 = !{!516}
!516 = distinct !{!516, !512}
!517 = !{!511, !514}

