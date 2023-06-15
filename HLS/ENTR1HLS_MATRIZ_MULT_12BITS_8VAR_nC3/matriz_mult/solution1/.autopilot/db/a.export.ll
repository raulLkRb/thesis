; ModuleID = 'C:/Users/Raul/Documents/RIGIDEZ_VIVADO/PCA_IMPL/ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3/matriz_mult/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@wrapped_mmult_hw_str = internal unnamed_addr constant [17 x i8] c"wrapped_mmult_hw\00"
@vectorMedia1 = internal unnamed_addr constant [8 x float] [float 0x40248AAAA0000000, float 0x402322BE20000000, float 0x403FA8AF80000000, float 0x403D522220000000, float 0x4043DE6660000000, float 0x40502F46C0000000, float 0x405EB3B200000000, float 0x4068AD1AE0000000]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@coeff = internal constant [24 x float] [float 0x3F76EF6000000000, float 0x3F7BA260A0000000, float 0x3F93563EC0000000, float 0x3F942F2A40000000, float 0x3FBFFF1280000000, float 0x3FD081E880000000, float 0x3FDBFBFD00000000, float 0x3FEB434340000000, float 0x3FCF6E9FE0000000, float 0x3FCC4BB940000000, float 0x3FE61182C0000000, float 0x3FE3B21780000000, float 0xBFACAFA0A0000000, float 0x3F7ADA71C0000000, float 0xBFC5F734E0000000, float 0x3FAF7240C0000000, float 0x3FA09D1440000000, float 0x3F86446AE0000000, float 0x3FC54F4B60000000, float 0x3FB5EFB740000000, float 0x3FC51E4BE0000000, float 0xBFD3E7BB20000000, float 0x3FEADF02A0000000, float 0xBFD77CC500000000]
@p_str7 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"CONTROL_BUS\00", align 1
@p_str4 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str3 = private unnamed_addr constant [3 x i8] c"L3\00", align 1
@p_str2 = private unnamed_addr constant [3 x i8] c"L2\00", align 1
@p_str10 = private unnamed_addr constant [17 x i8] c"RD_Loop_Into_Buf\00", align 1
@p_str1 = private unnamed_addr constant [3 x i8] c"L1\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @wrapped_mmult_hw(i32* %in_stream_data_V, i4* %in_stream_keep_V, i4* %in_stream_strb_V, i4* %in_stream_user_V, i1* %in_stream_last_V, i5* %in_stream_id_V, i5* %in_stream_dest_V, i32* %out_stream_data_V, i4* %out_stream_keep_V, i4* %out_stream_strb_V, i4* %out_stream_user_V, i1* %out_stream_last_V, i5* %out_stream_id_V, i5* %out_stream_dest_V) {
.preheader117.preheader:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_stream_data_V), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_stream_keep_V), !map !100
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_stream_strb_V), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %in_stream_user_V), !map !108
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %in_stream_last_V), !map !112
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %in_stream_id_V), !map !116
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %in_stream_dest_V), !map !120
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_stream_data_V), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_stream_keep_V), !map !130
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_stream_strb_V), !map !134
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %out_stream_user_V), !map !138
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %out_stream_last_V), !map !142
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %out_stream_id_V), !map !146
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %out_stream_dest_V), !map !150
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @wrapped_mmult_hw_str) nounwind
  %dato_V = alloca [4 x i32], align 4
  %X_MAT_0 = alloca [8 x float], align 4
  %X_OUT_0 = alloca [3 x float], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [12 x i8]* @p_str5, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_stream_data_V, i4* %in_stream_keep_V, i4* %in_stream_strb_V, i4* %in_stream_user_V, i1* %in_stream_last_V, i5* %in_stream_id_V, i5* %in_stream_dest_V, [5 x i8]* @p_str6, i32 1, i32 1, [5 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_stream_data_V, i4* %out_stream_keep_V, i4* %out_stream_strb_V, i4* %out_stream_user_V, i1* %out_stream_last_V, i5* %out_stream_id_V, i5* %out_stream_dest_V, [5 x i8]* @p_str6, i32 1, i32 1, [5 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @read_data(i32* %in_stream_data_V, i4* %in_stream_keep_V, i4* %in_stream_strb_V, i4* %in_stream_user_V, i1* %in_stream_last_V, i5* %in_stream_id_V, i5* %in_stream_dest_V, [4 x i32]* %dato_V)
  call fastcc void @Block_.preheader117.([4 x i32]* %dato_V, [8 x float]* %X_MAT_0)
  call fastcc void @Loop_L1_proc([3 x float]* %X_OUT_0, [8 x float]* %X_MAT_0)
  call fastcc void @Loop_3_proc([3 x float]* %X_OUT_0, i32* %out_stream_data_V, i4* %out_stream_keep_V, i4* %out_stream_strb_V, i4* %out_stream_user_V, i1* %out_stream_last_V, i5* %out_stream_id_V, i5* %out_stream_dest_V)
  ret void
}

define internal fastcc void @read_data(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V, [4 x i32]* nocapture %buf_V) {
  call void (...)* @_ssdm_op_SpecInterface(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V, [5 x i8]* @p_str6, i32 1, i32 1, [5 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %2 ]
  %tmp = icmp eq i3 %i, -4
  %i_1 = add i3 %i, 1
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str10) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str10)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_s = zext i3 %i to i32
  %empty_5 = call { i32, i4, i4, i4, i1, i5, i5 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V)
  %p_Val2_s = extractvalue { i32, i4, i4, i4, i1, i5, i5 } %empty_5, 0
  %buf_V_addr = getelementptr [4 x i32]* %buf_V, i32 0, i32 %tmp_s
  store i32 %p_Val2_s, i32* %buf_V_addr, align 4
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str10, i32 %tmp_2)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i5P.i5P.i1P.i4P.i4P.i4P.i32P(i5*, i5*, i1*, i4*, i4*, i4*, i32*, i5, i5, i1, i4, i4, i4, i32) {
entry:
  store i5 %7, i5* %0
  store i5 %8, i5* %1
  store i1 %9, i1* %2
  store i4 %10, i4* %3
  store i4 %11, i4* %4
  store i4 %12, i4* %5
  store i32 %13, i32* %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i32, i4, i4, i4, i1, i5, i5 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32*, i4*, i4*, i4*, i1*, i5*, i5*) {
entry:
  %empty = load i32* %0
  %empty_7 = load i4* %1
  %empty_8 = load i4* %2
  %empty_9 = load i4* %3
  %empty_10 = load i1* %4
  %empty_11 = load i5* %5
  %empty_12 = load i5* %6
  %mrv_0 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv_0, i4 %empty_7, 1
  %mrv2 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv1, i4 %empty_8, 2
  %mrv3 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv2, i4 %empty_9, 3
  %mrv4 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv3, i1 %empty_10, 4
  %mrv5 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv4, i5 %empty_11, 5
  %mrv6 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv5, i5 %empty_12, 6
  ret { i32, i4, i4, i4, i1, i5, i5 } %mrv6
}

define weak i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i12
  ret i12 %empty_13
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_14 = zext i3 %1 to i5
  %empty_15 = shl i5 %empty, 3
  %empty_16 = or i5 %empty_15, %empty_14
  ret i5 %empty_16
}

declare void @_GLOBAL__I_a() nounwind

define internal fastcc void @Loop_L1_proc([3 x float]* nocapture %X_OUT_0, [8 x float]* nocapture %X_MAT_0) {
newFuncRoot:
  br label %.preheader225

mmult_hw.exit.exitStub:                           ; preds = %.preheader225
  ret void

.preheader225:                                    ; preds = %0, %newFuncRoot
  %ia_0_i = phi i2 [ %ia, %0 ], [ 0, %newFuncRoot ]
  %ia_0_i_cast = zext i2 %ia_0_i to i32
  %tmp = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %ia_0_i, i3 0)
  %tmp_2_cast = zext i5 %tmp to i6
  %exitcond2_i = icmp eq i2 %ia_0_i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  %ia = add i2 %ia_0_i, 1
  br i1 %exitcond2_i, label %mmult_hw.exit.exitStub, label %2

; <label>:0                                       ; preds = %1
  %X_OUT_0_addr = getelementptr [3 x float]* %X_OUT_0, i32 0, i32 %ia_0_i_cast
  store float %sum_0_i, float* %X_OUT_0_addr, align 4
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([3 x i8]* @p_str2, i32 %tmp_1)
  br label %.preheader225

; <label>:1                                       ; preds = %3, %2
  %sum_0_i = phi float [ 0.000000e+00, %2 ], [ %sum, %3 ]
  %ib_0_i = phi i4 [ 0, %2 ], [ %ib, %3 ]
  %ib_0_i_cast = zext i4 %ib_0_i to i32
  %ib_0_i_cast_cast = zext i4 %ib_0_i to i6
  %tmp_3 = add i6 %tmp_2_cast, %ib_0_i_cast_cast
  %tmp_3_cast = zext i6 %tmp_3 to i32
  %coeff_addr = getelementptr [24 x float]* @coeff, i32 0, i32 %tmp_3_cast
  %exitcond_i = icmp eq i4 %ib_0_i, -8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %ib = add i4 %ib_0_i, 1
  br i1 %exitcond_i, label %0, label %3

; <label>:2                                       ; preds = %.preheader225
  call void (...)* @_ssdm_op_SpecLoopName([3 x i8]* @p_str1) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([3 x i8]* @p_str2)
  br label %1

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([3 x i8]* @p_str3) nounwind
  %coeff_load = load float* %coeff_addr, align 4
  %X_MAT_0_addr = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 %ib_0_i_cast
  %X_MAT_0_load = load float* %X_MAT_0_addr, align 4
  %tmp_8 = fmul float %coeff_load, %X_MAT_0_load
  %sum = fadd float %sum_0_i, %tmp_8
  br label %1
}

define internal fastcc void @Loop_3_proc([3 x float]* nocapture %X_OUT_0, i32* %out_stream_data_V, i4* %out_stream_keep_V, i4* %out_stream_strb_V, i4* %out_stream_user_V, i1* %out_stream_last_V, i5* %out_stream_id_V, i5* %out_stream_dest_V) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i5* %out_stream_dest_V, i5* %out_stream_id_V, i1* %out_stream_last_V, i4* %out_stream_user_V, i4* %out_stream_strb_V, i4* %out_stream_keep_V, i32* %out_stream_data_V, [5 x i8]* @p_str6, i32 1, i32 1, [5 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %mmult_hw.exit

.exitStub:                                        ; preds = %mmult_hw.exit
  ret void

mmult_hw.exit:                                    ; preds = %0, %newFuncRoot
  %indvars_iv = phi i3 [ %indvars_iv_next, %0 ], [ 1, %newFuncRoot ]
  %k_1 = phi i3 [ %indvars_iv, %0 ], [ 0, %newFuncRoot ]
  %exitcond4 = icmp eq i3 %indvars_iv, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3)
  br i1 %exitcond4, label %.exitStub, label %0

; <label>:0                                       ; preds = %mmult_hw.exit
  %k_1_cast3 = zext i3 %k_1 to i32
  %X_OUT_0_addr = getelementptr [3 x float]* %X_OUT_0, i32 0, i32 %k_1_cast3
  %last_assign = icmp eq i3 %k_1, 2
  %X_OUT_0_load = load float* %X_OUT_0_addr, align 4
  %val_assign = bitcast float %X_OUT_0_load to i32
  call void @_ssdm_op_Write.axis.volatile.i5P.i5P.i1P.i4P.i4P.i4P.i32P(i5* %out_stream_dest_V, i5* %out_stream_id_V, i1* %out_stream_last_V, i4* %out_stream_user_V, i4* %out_stream_strb_V, i4* %out_stream_keep_V, i32* %out_stream_data_V, i5 0, i5 0, i1 %last_assign, i4 0, i4 -1, i4 -1, i32 %val_assign)
  %indvars_iv_next = add i3 %indvars_iv, 1
  br label %mmult_hw.exit
}

define internal fastcc void @Block_.preheader117.([4 x i32]* nocapture %dato_V, [8 x float]* nocapture %X_MAT_0) {
newFuncRoot:
  %dato_V_addr = getelementptr [4 x i32]* %dato_V, i32 0, i32 0
  %dato_V_load = load i32* %dato_V_addr, align 4
  %tmp_1 = trunc i32 %dato_V_load to i12
  %temp_V_cast = zext i12 %tmp_1 to i32
  %dp = sitofp i32 %temp_V_cast to float
  %X_MAT_0_addr = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 0
  store float %dp, float* %X_MAT_0_addr, align 4
  %p_Val2_128_cast = call i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32 %dato_V_load, i32 12, i32 23)
  %temp_V_1_cast = zext i12 %p_Val2_128_cast to i32
  %dp_1 = sitofp i32 %temp_V_1_cast to float
  %X_MAT_0_addr_1 = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 1
  store float %dp_1, float* %X_MAT_0_addr_1, align 4
  %dato_V_addr_1 = getelementptr [4 x i32]* %dato_V, i32 0, i32 1
  %dato_V_load_1 = load i32* %dato_V_addr_1, align 4
  %tmp_2 = trunc i32 %dato_V_load_1 to i12
  %temp_V_2_cast = zext i12 %tmp_2 to i32
  %dp_2 = sitofp i32 %temp_V_2_cast to float
  %X_MAT_0_addr_2 = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 2
  store float %dp_2, float* %X_MAT_0_addr_2, align 4
  %p_Val2_329_cast = call i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32 %dato_V_load_1, i32 12, i32 23)
  %temp_V_3_cast = zext i12 %p_Val2_329_cast to i32
  %dp_3 = sitofp i32 %temp_V_3_cast to float
  %X_MAT_0_addr_3 = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 3
  store float %dp_3, float* %X_MAT_0_addr_3, align 4
  %dato_V_addr_2 = getelementptr [4 x i32]* %dato_V, i32 0, i32 2
  %dato_V_load_2 = load i32* %dato_V_addr_2, align 4
  %tmp_3 = trunc i32 %dato_V_load_2 to i12
  %temp_V_4_cast = zext i12 %tmp_3 to i32
  %dp_4 = sitofp i32 %temp_V_4_cast to float
  %X_MAT_0_addr_4 = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 4
  store float %dp_4, float* %X_MAT_0_addr_4, align 4
  %p_Val2_530_cast = call i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32 %dato_V_load_2, i32 12, i32 23)
  %temp_V_5_cast = zext i12 %p_Val2_530_cast to i32
  %dp_5 = sitofp i32 %temp_V_5_cast to float
  %X_MAT_0_addr_5 = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 5
  store float %dp_5, float* %X_MAT_0_addr_5, align 4
  %dato_V_addr_3 = getelementptr [4 x i32]* %dato_V, i32 0, i32 3
  %dato_V_load_3 = load i32* %dato_V_addr_3, align 4
  %tmp_4 = trunc i32 %dato_V_load_3 to i12
  %temp_V_6_cast = zext i12 %tmp_4 to i32
  %dp_6 = sitofp i32 %temp_V_6_cast to float
  %X_MAT_0_addr_6 = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 6
  store float %dp_6, float* %X_MAT_0_addr_6, align 4
  %p_Val2_731_cast = call i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32 %dato_V_load_3, i32 12, i32 23)
  %temp_V_7_cast = zext i12 %p_Val2_731_cast to i32
  %dp_7 = sitofp i32 %temp_V_7_cast to float
  %X_MAT_0_addr_7 = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 7
  store float %dp_7, float* %X_MAT_0_addr_7, align 4
  br label %.preheader117

.preheader225.exitStub:                           ; preds = %.preheader117
  ret void

.preheader117:                                    ; preds = %.preheader.preheader, %newFuncRoot
  %i = phi i4 [ %i_1, %.preheader.preheader ], [ 0, %newFuncRoot ]
  %i_cast = zext i4 %i to i32
  %exitcond2 = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_1 = add i4 %i, 1
  br i1 %exitcond2, label %.preheader225.exitStub, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader117
  %vectorMedia1_addr = getelementptr inbounds [8 x float]* @vectorMedia1, i32 0, i32 %i_cast
  %X_MAT_0_addr_8 = getelementptr [8 x float]* %X_MAT_0, i32 0, i32 %i_cast
  %X_MAT_0_load = load float* %X_MAT_0_addr_8, align 4
  %vectorMedia1_load = load float* %vectorMedia1_addr, align 4
  %tmp = fsub float %X_MAT_0_load, %vectorMedia1_load
  store float %tmp, float* %X_MAT_0_addr_8, align 4
  br label %.preheader117
}

!opencl.kernels = !{!0, !7, !13, !17, !17, !23, !23, !29, !17, !17, !23, !23, !32, !17, !17, !23, !23, !34, !17, !17, !23, !23, !36, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !38, !23, !23, !23, !23, !23, !40, !43, !43, !45, !47, !23, !47, !23, !43, !43, !49, !23, !23, !23, !51, !51, !52, !52, !54, !51, !51, !56, !23, !58, !58, !23, !23, !62, !65, !65, !67, !69, !69, !23, !23, !71, !74, !77, !77, !79, !81, !81, !69, !23, !82, !23, !23, !84}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!87}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"T [8]*", metadata !"T [1]*", metadata !"T [1]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b", metadata !"out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"AXI_VAL*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"in_stream", metadata !"out_stream"}
!13 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"float &", metadata !"_Bool"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"v", metadata !"last"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!19 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!21 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space"}
!25 = metadata !{metadata !"kernel_arg_access_qual"}
!26 = metadata !{metadata !"kernel_arg_type"}
!27 = metadata !{metadata !"kernel_arg_type_qual"}
!28 = metadata !{metadata !"kernel_arg_name"}
!29 = metadata !{null, metadata !18, metadata !19, metadata !30, metadata !21, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!32 = metadata !{null, metadata !18, metadata !19, metadata !33, metadata !21, metadata !31, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!34 = metadata !{null, metadata !18, metadata !19, metadata !35, metadata !21, metadata !31, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!36 = metadata !{null, metadata !18, metadata !19, metadata !37, metadata !21, metadata !31, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!38 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !39, metadata !6}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!40 = metadata !{null, metadata !14, metadata !9, metadata !41, metadata !11, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true> &", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!43 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !44, metadata !6}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!45 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !31, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!47 = metadata !{null, metadata !18, metadata !19, metadata !48, metadata !21, metadata !31, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!49 = metadata !{null, metadata !14, metadata !9, metadata !50, metadata !11, metadata !42, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!51 = metadata !{null, metadata !18, metadata !19, metadata !46, metadata !21, metadata !44, metadata !6}
!52 = metadata !{null, metadata !18, metadata !19, metadata !53, metadata !21, metadata !44, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!54 = metadata !{null, metadata !18, metadata !19, metadata !55, metadata !21, metadata !31, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!56 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !57, metadata !6}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!58 = metadata !{null, metadata !59, metadata !9, metadata !60, metadata !11, metadata !61, metadata !6}
!59 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!62 = metadata !{null, metadata !14, metadata !9, metadata !63, metadata !11, metadata !64, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &", metadata !"int"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!65 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !66, metadata !6}
!66 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!67 = metadata !{null, metadata !18, metadata !19, metadata !68, metadata !21, metadata !31, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!69 = metadata !{null, metadata !18, metadata !19, metadata !70, metadata !21, metadata !44, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !72, metadata !11, metadata !73, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"struct ap_fixed<32, 32, 6, 3, 0>*"}
!73 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"buf"}
!74 = metadata !{null, metadata !18, metadata !19, metadata !75, metadata !21, metadata !76, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_axiu<sizeof(int) * 8, 4, 5, 5> &"}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"e"}
!77 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !78, metadata !6}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!79 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !80, metadata !6}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!81 = metadata !{null, metadata !18, metadata !19, metadata !68, metadata !21, metadata !44, metadata !6}
!82 = metadata !{null, metadata !18, metadata !19, metadata !83, metadata !21, metadata !44, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!84 = metadata !{null, metadata !18, metadata !19, metadata !85, metadata !21, metadata !86, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<32, 4, 5, 5> &"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !""}
!87 = metadata !{metadata !88, [1 x i32]* @llvm_global_ctors_0}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 31, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"llvm.global_ctors.0", metadata !92, metadata !"", i32 0, i32 31}
!92 = metadata !{metadata !93}
!93 = metadata !{i32 0, i32 0, i32 1}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 31, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"in_stream.data.V", metadata !98, metadata !"uint32", i32 0, i32 31}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 3, i32 1}
!100 = metadata !{metadata !101}
!101 = metadata !{i32 0, i32 3, metadata !102}
!102 = metadata !{metadata !103}
!103 = metadata !{metadata !"in_stream.keep.V", metadata !98, metadata !"uint4", i32 0, i32 3}
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 3, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"in_stream.strb.V", metadata !98, metadata !"uint4", i32 0, i32 3}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 3, metadata !110}
!110 = metadata !{metadata !111}
!111 = metadata !{metadata !"in_stream.user.V", metadata !98, metadata !"uint4", i32 0, i32 3}
!112 = metadata !{metadata !113}
!113 = metadata !{i32 0, i32 0, metadata !114}
!114 = metadata !{metadata !115}
!115 = metadata !{metadata !"in_stream.last.V", metadata !98, metadata !"uint1", i32 0, i32 0}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 0, i32 4, metadata !118}
!118 = metadata !{metadata !119}
!119 = metadata !{metadata !"in_stream.id.V", metadata !98, metadata !"uint5", i32 0, i32 4}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 4, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"in_stream.dest.V", metadata !98, metadata !"uint5", i32 0, i32 4}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 31, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"out_stream.data.V", metadata !128, metadata !"uint32", i32 0, i32 31}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 2, i32 1}
!130 = metadata !{metadata !131}
!131 = metadata !{i32 0, i32 3, metadata !132}
!132 = metadata !{metadata !133}
!133 = metadata !{metadata !"out_stream.keep.V", metadata !128, metadata !"uint4", i32 0, i32 3}
!134 = metadata !{metadata !135}
!135 = metadata !{i32 0, i32 3, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"out_stream.strb.V", metadata !128, metadata !"uint4", i32 0, i32 3}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 3, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"out_stream.user.V", metadata !128, metadata !"uint4", i32 0, i32 3}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 0, metadata !144}
!144 = metadata !{metadata !145}
!145 = metadata !{metadata !"out_stream.last.V", metadata !128, metadata !"uint1", i32 0, i32 0}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 4, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"out_stream.id.V", metadata !128, metadata !"uint5", i32 0, i32 4}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 0, i32 4, metadata !152}
!152 = metadata !{metadata !153}
!153 = metadata !{metadata !"out_stream.dest.V", metadata !128, metadata !"uint5", i32 0, i32 4}
