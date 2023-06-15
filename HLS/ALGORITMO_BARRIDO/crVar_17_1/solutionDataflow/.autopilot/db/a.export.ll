; ModuleID = 'C:/Users/Raul/Documents/thesis_rep/thesis/HLS/ALGORITMO_BARRIDO/crVar_17_1/solutionDataflow/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@vector_V_0 = internal unnamed_addr global i32 0
@sum_V = internal unnamed_addr global [1024 x i42] zeroinitializer
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@derivada_V_0 = internal unnamed_addr global i32 0
@contador = internal unnamed_addr global i32 0, align 4
@axi_algorithm_str = internal unnamed_addr constant [14 x i8] c"axi_algorithm\00"
@aux_array_V_1 = internal unnamed_addr global [2049 x i24] zeroinitializer
@aux_array_V = internal global [8 x i32] zeroinitializer
@p_str9 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str6 = private unnamed_addr constant [4 x i8] c"lp4\00", align 1
@p_str5 = private unnamed_addr constant [4 x i8] c"lp3\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [12 x i8] c"CONTROL_BUS\00", align 1
@p_str13 = private unnamed_addr constant [17 x i8] c"RD_Loop_Into_Buf\00", align 1
@p_str12 = private unnamed_addr constant [15 x i8] c"WR_Loop_To_Int\00", align 1
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc void @write_data([4 x i32]* nocapture %buf_V, i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V) {
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %2 ]
  %tmp = icmp eq i3 %i, -4
  %i_1 = add i3 %i, 1
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str12) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str12)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_1 = zext i3 %i to i32
  %last_assign = icmp eq i3 %i, 3
  %buf_V_addr = getelementptr [4 x i32]* %buf_V, i32 0, i32 %tmp_1
  %p_Val2_s = load i32* %buf_V_addr, align 4
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, i32 %p_Val2_s, i4 -1, i4 -1, i4 0, i1 %last_assign, i5 0, i5 0)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str12, i32 %tmp_2)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define internal fastcc void @sweep_algorithm_DECM(i24 %p_read, [4 x i32]* nocapture %currentGroupX_OUT_V) {
entry:
  call void (...)* @_ssdm_op_SpecMemCore([8 x i32]* @aux_array_V, [1 x i8]* @p_str, [12 x i8]* @p_str9, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_read_1 = call i24 @_ssdm_op_Read.ap_auto.i24(i24 %p_read)
  br label %0

; <label>:0                                       ; preds = %1, %entry
  %i_i = phi i12 [ 0, %entry ], [ %i, %1 ]
  %tmp_5_i = icmp eq i12 %i_i, -2048
  %i = add i12 %i_i, 1
  br i1 %tmp_5_i, label %2, label %1

; <label>:1                                       ; preds = %0
  %i_cast36_i = zext i12 %i_i to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048)
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str5) nounwind
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %i_4_cast_i = zext i12 %i to i32
  %aux_array_V_1_addr = getelementptr [2049 x i24]* @aux_array_V_1, i32 0, i32 %i_4_cast_i
  %aux_array_V_1_load = load i24* %aux_array_V_1_addr, align 4
  %aux_array_V_1_addr_1 = getelementptr [2049 x i24]* @aux_array_V_1, i32 0, i32 %i_cast36_i
  store i24 %aux_array_V_1_load, i24* %aux_array_V_1_addr_1, align 4
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str5, i32 %tmp_i)
  br label %0

; <label>:2                                       ; preds = %0
  store i24 %p_read_1, i24* getelementptr inbounds ([2049 x i24]* @aux_array_V_1, i32 0, i32 2048), align 16
  br label %5

; <label>:3                                       ; preds = %6, %4
  %indPar_1_i = phi i32 [ %indPar_i, %4 ], [ %this_assign_0_i, %6 ]
  %cont32_2_i = phi i32 [ %p_i, %4 ], [ %cont_i, %6 ]
  %contNuevo_1_i = phi i32 [ 1, %4 ], [ %phitmp_i, %6 ]
  %contNuevoSuma_2_i = phi i32 [ %contNuevoSuma_3_i, %4 ], [ %contNuevoSuma_1_i, %6 ]
  %ind16_2_i = phi i32 [ %p_ind_i_cast, %4 ], [ %ind_i, %6 ]
  %tmp_9 = trunc i32 %ind16_2_i to i3
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str6, i32 %tmp_3_i)
  %tmp_1_i = add i12 1026, %i_1_cast_i_cast
  %tmp_1_cast_i = zext i12 %tmp_1_i to i32
  %aux_array_V_1_load_5 = load i24* getelementptr inbounds ([2049 x i24]* @aux_array_V_1, i32 0, i32 1024), align 16
  %tmp_10 = trunc i24 %aux_array_V_1_load_5 to i16
  %aux_array_V_1_addr_4 = getelementptr [2049 x i24]* @aux_array_V_1, i32 0, i32 %tmp_1_cast_i
  %aux_array_V_1_load_6 = load i24* %aux_array_V_1_addr_4, align 8
  %tmp_11 = trunc i24 %aux_array_V_1_load_6 to i16
  %p_Val2_2_1_i = sub i16 %tmp_10, %tmp_11
  %OP1_V_i = sext i16 %p_Val2_2_1_i to i32
  %p_Val2_3_1_i = mul nsw i32 %OP1_V_i, %OP1_V_i
  %i_5_1_i = add i11 2, %i_1_i119_cast
  %tmp_12 = trunc i11 %i_5_1_i to i10
  %i_5_1_i_cast = zext i11 %i_5_1_i to i32
  %aux_array_V_1_load_7 = load i24* getelementptr inbounds ([2049 x i24]* @aux_array_V_1, i32 0, i32 0), align 16
  %tmp_13 = trunc i24 %aux_array_V_1_load_7 to i16
  %aux_array_V_1_addr_5 = getelementptr [2049 x i24]* @aux_array_V_1, i32 0, i32 %i_5_1_i_cast
  %aux_array_V_1_load_8 = load i24* %aux_array_V_1_addr_5, align 8
  %tmp_14 = trunc i24 %aux_array_V_1_load_8 to i16
  %p_Val2_6_1_i = sub i16 %tmp_13, %tmp_14
  %OP1_V_1_1_i = sext i16 %p_Val2_6_1_i to i32
  %p_Val2_7_1_i = mul nsw i32 %OP1_V_1_1_i, %OP1_V_1_1_i
  %sum_V_addr_1 = getelementptr [1024 x i42]* @sum_V, i32 0, i32 %i_5_cast_i
  %sum_V_load_1 = load i42* %sum_V_addr_1, align 8
  %tmp_13_1_i = sext i32 %p_Val2_3_1_i to i42
  %p_Val2_10_1_i = add i42 %sum_V_load_1, %tmp_13_1_i
  %tmp_15_1_i = sext i32 %p_Val2_7_1_i to i42
  %p_Val2_12_1_i = sub i42 %p_Val2_10_1_i, %tmp_15_1_i
  store i42 %p_Val2_12_1_i, i42* %sum_V_addr_1, align 8
  %p_0_1_i = call i32 @_ssdm_op_PartSelect.i32.i42.i32.i32(i42 %p_Val2_12_1_i, i32 10, i32 41)
  %y_inout_0_V = call fastcc i32 @meanFilterInTime(i32 %p_0_1_i, i1 false)
  %tmp_19_1_i = icmp eq i32 %contNuevo_1_i, 0
  br i1 %tmp_19_1_i, label %7, label %8

; <label>:4                                       ; preds = %5
  %vector_V_0_load = load i32* @vector_V_0, align 4
  %derivada_V_0_load = load i32* @derivada_V_0, align 4
  %p_Val2_1 = select i1 %reset_assign, i32 0, i32 %vector_V_0_load
  %p_Val2_i_i = sub i32 %valorAuxVinout_0_V, %p_Val2_1
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %derivada_V_0_load, i32 31)
  %not_reset_i = xor i1 %reset_assign, true
  %tmp_3_i_i = icmp sgt i32 %p_Val2_i_i, 0
  %tmp_4_i_i = icmp sgt i32 %this_assign_0_i, 9
  %tmp = and i1 %tmp_7, %not_reset_i
  %tmp9 = and i1 %tmp_3_i_i, %tmp_4_i_i
  %minimoX_0 = and i1 %tmp9, %tmp
  store i32 %p_Val2_i_i, i32* @derivada_V_0, align 4
  store i32 %valorAuxVinout_0_V, i32* @vector_V_0, align 4
  %currentGroupX_OUT_V_s = getelementptr [4 x i32]* %currentGroupX_OUT_V, i32 0, i32 %ind_i
  %currentGroupX_OUT_V_1 = load i32* %currentGroupX_OUT_V_s, align 4
  %p_Val2_17_i = call i32 @_ssdm_op_BitSet.i32.i32.i32.i1(i32 %currentGroupX_OUT_V_1, i32 %cont_i, i1 %minimoX_0)
  store i32 %p_Val2_17_i, i32* %currentGroupX_OUT_V_s, align 4
  %cont32_i = add i32 1, %cont_i
  %tmp_21_i = icmp eq i32 %cont32_i, 32
  %tmp_8 = trunc i32 %ind_i to i3
  %ind16_i_cast = add i3 1, %tmp_8
  %p_i = select i1 %tmp_21_i, i32 0, i32 %cont32_i
  %p_ind_i = select i1 %tmp_21_i, i3 %ind16_i_cast, i3 %tmp_8
  %p_ind_i_cast = zext i3 %p_ind_i to i32
  %indPar_i = add i32 1, %this_assign_0_i
  %currentGroupX_OUT_V_2 = getelementptr [4 x i32]* %currentGroupX_OUT_V, i32 0, i32 %contNuevoSuma_1_i
  %currentGroupX_OUT_V_3 = load i32* %currentGroupX_OUT_V_2, align 4
  %p_Val2_1814_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %currentGroupX_OUT_V_3, i32 1, i32 31)
  %tmp_1 = zext i31 %p_Val2_1814_i to i32
  store i32 %tmp_1, i32* %currentGroupX_OUT_V_2, align 4
  %contNuevoSuma_3_i = add nsw i32 1, %contNuevoSuma_1_i
  br label %3

; <label>:5                                       ; preds = %2, %.backedge.i.backedge
  %ind_i = phi i32 [ 0, %2 ], [ %ind_i_be, %.backedge.i.backedge ]
  %i_1_i = phi i10 [ 0, %2 ], [ %tmp_12, %.backedge.i.backedge ]
  %contNuevoSuma_i = phi i32 [ 0, %2 ], [ %contNuevoSuma_i_be, %.backedge.i.backedge ]
  %contNuevo_i = phi i32 [ 0, %2 ], [ %contNuevo_i_be, %.backedge.i.backedge ]
  %cont_i = phi i32 [ 0, %2 ], [ %cont_i_be, %.backedge.i.backedge ]
  %this_assign_0_i = phi i32 [ 0, %2 ], [ %this_assign_0_i_be, %.backedge.i.backedge ]
  %i_1_i119_cast = zext i10 %i_1_i to i11
  %i_1_i_cast = zext i10 %i_1_i to i32
  %i_1_cast_i_cast = zext i10 %i_1_i to i12
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str6) nounwind
  %tmp_3_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_i_13 = add i11 -1023, %i_1_i119_cast
  %tmp_cast_i = zext i11 %tmp_i_13 to i32
  %aux_array_V_1_load_1 = load i24* getelementptr inbounds ([2049 x i24]* @aux_array_V_1, i32 0, i32 1024), align 16
  %tmp_3 = trunc i24 %aux_array_V_1_load_1 to i16
  %aux_array_V_1_addr_2 = getelementptr [2049 x i24]* @aux_array_V_1, i32 0, i32 %tmp_cast_i
  %aux_array_V_1_load_2 = load i24* %aux_array_V_1_addr_2, align 4
  %tmp_4 = trunc i24 %aux_array_V_1_load_2 to i16
  %p_Val2_2_i = sub i16 %tmp_3, %tmp_4
  %OP1_V_i_14 = sext i16 %p_Val2_2_i to i32
  %p_Val2_3_i = mul nsw i32 %OP1_V_i_14, %OP1_V_i_14
  %i_5_i = or i10 %i_1_i, 1
  %i_5_cast_i = zext i10 %i_5_i to i32
  %aux_array_V_1_load_3 = load i24* getelementptr inbounds ([2049 x i24]* @aux_array_V_1, i32 0, i32 0), align 16
  %tmp_5 = trunc i24 %aux_array_V_1_load_3 to i16
  %aux_array_V_1_addr_3 = getelementptr [2049 x i24]* @aux_array_V_1, i32 0, i32 %i_5_cast_i
  %aux_array_V_1_load_4 = load i24* %aux_array_V_1_addr_3, align 4
  %tmp_6 = trunc i24 %aux_array_V_1_load_4 to i16
  %p_Val2_6_i = sub i16 %tmp_5, %tmp_6
  %OP1_V_1_i = sext i16 %p_Val2_6_i to i32
  %p_Val2_7_i = mul nsw i32 %OP1_V_1_i, %OP1_V_1_i
  %sum_V_addr = getelementptr [1024 x i42]* @sum_V, i32 0, i32 %i_1_i_cast
  %sum_V_load = load i42* %sum_V_addr, align 16
  %tmp_13_i = sext i32 %p_Val2_3_i to i42
  %p_Val2_10_i = add i42 %sum_V_load, %tmp_13_i
  %tmp_15_i = sext i32 %p_Val2_7_i to i42
  %p_Val2_12_i = sub i42 %p_Val2_10_i, %tmp_15_i
  store i42 %p_Val2_12_i, i42* %sum_V_addr, align 16
  %p_0_i = call i32 @_ssdm_op_PartSelect.i32.i42.i32.i32(i42 %p_Val2_12_i, i32 10, i32 41)
  %reset_assign = icmp eq i10 %i_1_i, 0
  %contNuevoSuma_1_i = select i1 %reset_assign, i32 0, i32 %contNuevoSuma_i
  %valorAuxVinout_0_V = call fastcc i32 @meanFilterInTime(i32 %p_0_i, i1 %reset_assign)
  %tmp_19_i = icmp eq i32 %contNuevo_i, 0
  br i1 %tmp_19_i, label %4, label %6

; <label>:6                                       ; preds = %5
  %tmp_22_i = icmp eq i32 %contNuevo_i, 7
  %contNuevo_0_op_i = add i32 %contNuevo_i, 1
  %phitmp_i = select i1 %tmp_22_i, i32 1, i32 %contNuevo_0_op_i
  br label %3

; <label>:7                                       ; preds = %3
  %p_Val2_3 = load i32* @vector_V_0, align 4
  %derivada_V_0_load_1 = load i32* @derivada_V_0, align 4
  %p_Val2_i_i3 = sub i32 %y_inout_0_V, %p_Val2_3
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %derivada_V_0_load_1, i32 31)
  %tmp_3_i_i5 = icmp sgt i32 %p_Val2_i_i3, 0
  %tmp_4_i_i7 = icmp sgt i32 %indPar_1_i, 9
  %tmp2 = and i1 %tmp_3_i_i5, %tmp_4_i_i7
  %minimoX_0_1 = and i1 %tmp2, %tmp_15
  store i32 %p_Val2_i_i3, i32* @derivada_V_0, align 4
  store i32 %y_inout_0_V, i32* @vector_V_0, align 4
  %currentGroupX_OUT_V_4 = getelementptr [4 x i32]* %currentGroupX_OUT_V, i32 0, i32 %ind16_2_i
  %currentGroupX_OUT_V_5 = load i32* %currentGroupX_OUT_V_4, align 4
  %p_Val2_17_1_i = call i32 @_ssdm_op_BitSet.i32.i32.i32.i1(i32 %currentGroupX_OUT_V_5, i32 %cont32_2_i, i1 %minimoX_0_1)
  store i32 %p_Val2_17_1_i, i32* %currentGroupX_OUT_V_4, align 4
  %cont32_1_i = add i32 %cont32_2_i, 1
  %tmp_21_1_i = icmp eq i32 %cont32_1_i, 32
  %ind16_1_i_cast = add i3 %tmp_9, 1
  %p_1_i = select i1 %tmp_21_1_i, i32 0, i32 %cont32_1_i
  %p_ind_1_i = select i1 %tmp_21_1_i, i3 %ind16_1_i_cast, i3 %tmp_9
  %p_ind_1_i_cast = zext i3 %p_ind_1_i to i32
  %indPar_i_15 = add i32 %indPar_1_i, 1
  %currentGroupX_OUT_V_6 = getelementptr [4 x i32]* %currentGroupX_OUT_V, i32 0, i32 %contNuevoSuma_2_i
  %currentGroupX_OUT_V_7 = load i32* %currentGroupX_OUT_V_6, align 4
  %p_Val2_1814_1_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %currentGroupX_OUT_V_7, i32 1, i32 31)
  %tmp_2 = zext i31 %p_Val2_1814_1_i to i32
  store i32 %tmp_2, i32* %currentGroupX_OUT_V_6, align 4
  %contNuevoSuma_3_1_i = add nsw i32 %contNuevoSuma_2_i, 1
  br label %.backedge.i.backedge

; <label>:8                                       ; preds = %3
  %tmp_22_1_i = icmp eq i32 %contNuevo_1_i, 7
  %contNuevo_0_op_1_i = add i32 %contNuevo_1_i, 1
  %phitmp_1_i = select i1 %tmp_22_1_i, i32 1, i32 %contNuevo_0_op_1_i
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %8, %7
  %this_assign_0_i_be = phi i32 [ %indPar_i_15, %7 ], [ %indPar_1_i, %8 ]
  %cont_i_be = phi i32 [ %p_1_i, %7 ], [ %cont32_2_i, %8 ]
  %contNuevo_i_be = phi i32 [ 1, %7 ], [ %phitmp_1_i, %8 ]
  %contNuevoSuma_i_be = phi i32 [ %contNuevoSuma_3_1_i, %7 ], [ %contNuevoSuma_2_i, %8 ]
  %ind_i_be = phi i32 [ %p_ind_1_i_cast, %7 ], [ %ind16_2_i, %8 ]
  %tmp_7_i = icmp eq i11 %i_5_1_i, -1024
  br i1 %tmp_7_i, label %9, label %5

; <label>:9                                       ; preds = %.backedge.i.backedge
  %contador_load = load i32* @contador, align 4
  %tmp_8_i = add nsw i32 %contador_load, 1
  %tmp_9_i = icmp eq i32 %tmp_8_i, 2049
  br i1 %tmp_9_i, label %.preheader278.i.preheader, label %sweep_algorithm_DECMINV3.exit

.preheader278.i.preheader:                        ; preds = %9
  br label %.preheader278.i

.preheader278.i:                                  ; preds = %.preheader278.i.preheader, %10
  %i_2_i = phi i11 [ %i_2, %10 ], [ 0, %.preheader278.i.preheader ]
  %tmp_1_i_16 = icmp eq i11 %i_2_i, -1024
  %i_2 = add i11 %i_2_i, 1
  br i1 %tmp_1_i_16, label %.preheader.i.preheader, label %10

.preheader.i.preheader:                           ; preds = %.preheader278.i
  br label %.preheader.i

; <label>:10                                      ; preds = %.preheader278.i
  %i_2_cast35_i = zext i11 %i_2_i to i32
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1024, i64 1024, i64 1024)
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %sum_V_addr_2 = getelementptr [1024 x i42]* @sum_V, i32 0, i32 %i_2_cast35_i
  store i42 0, i42* %sum_V_addr_2, align 8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_6_i)
  br label %.preheader278.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %11
  %i_3_i = phi i12 [ %i_3, %11 ], [ 0, %.preheader.i.preheader ]
  %tmp_2_i = icmp eq i12 %i_3_i, -2047
  %i_3 = add i12 %i_3_i, 1
  br i1 %tmp_2_i, label %sweep_algorithm_DECMINV3.exit.loopexit, label %11

; <label>:11                                      ; preds = %.preheader.i
  %i_3_cast34_i = zext i12 %i_3_i to i32
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2049, i64 2049, i64 2049)
  %tmp_10_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %aux_array_V_1_addr_6 = getelementptr [2049 x i24]* @aux_array_V_1, i32 0, i32 %i_3_cast34_i
  store i24 0, i24* %aux_array_V_1_addr_6, align 4
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_10_i)
  br label %.preheader.i

sweep_algorithm_DECMINV3.exit.loopexit:           ; preds = %.preheader.i
  br label %sweep_algorithm_DECMINV3.exit

sweep_algorithm_DECMINV3.exit:                    ; preds = %sweep_algorithm_DECMINV3.exit.loopexit, %9
  %contador_new_i = phi i32 [ %tmp_8_i, %9 ], [ 0, %sweep_algorithm_DECMINV3.exit.loopexit ]
  store i32 %contador_new_i, i32* @contador, align 4
  ret void
}

define internal fastcc i32 @read_data(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V) {
.critedge:
  call void (...)* @_ssdm_op_SpecInterface(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str13) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str13)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %empty = call { i32, i4, i4, i4, i1, i5, i5 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V)
  %p_Val2_s = extractvalue { i32, i4, i4, i4, i1, i5, i5 } %empty, 0
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str13, i32 %tmp)
  ret i32 %p_Val2_s
}

define internal fastcc i32 @meanFilterInTime(i32 %x_V, i1 %reset) {
entry:
  call void (...)* @_ssdm_op_SpecMemCore([8 x i32]* @aux_array_V, [1 x i8]* @p_str, [12 x i8]* @p_str9, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %reset_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %reset)
  %x_V_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %x_V)
  call void (...)* @_ssdm_op_SpecMemCore([8 x i32]* @aux_array_V, [1 x i8]* @p_str, [12 x i8]* @p_str9, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  br i1 %reset_read, label %.preheader.i, label %meanFilterInTime.exit

.preheader.i:                                     ; preds = %entry
  store i32 0, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 4), align 16
  store i32 0, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 5), align 4
  store i32 0, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 6), align 8
  br label %meanFilterInTime.exit

meanFilterInTime.exit:                            ; preds = %.preheader.i, %entry
  %aux_array_V_load = load i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 1), align 4
  store i32 %aux_array_V_load, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 0), align 16
  %tmp_31_cast_i = sext i32 %aux_array_V_load to i33
  %aux_array_V_load_1 = load i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 2), align 8
  store i32 %aux_array_V_load_1, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 1), align 4
  %tmp_31_1_cast_i = sext i32 %aux_array_V_load_1 to i33
  %aux_array_V_load_2 = load i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 3), align 4
  store i32 %aux_array_V_load_2, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 2), align 8
  %tmp_31_2_cast_i = sext i32 %aux_array_V_load_2 to i33
  %aux_array_V_load_3 = load i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 4), align 16
  store i32 %aux_array_V_load_3, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 3), align 4
  %tmp_31_3_cast_i = sext i32 %aux_array_V_load_3 to i33
  %aux_array_V_load_4 = load i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 5), align 4
  store i32 %aux_array_V_load_4, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 4), align 16
  %tmp_31_4_cast_i = sext i32 %aux_array_V_load_4 to i33
  %aux_array_V_load_5 = load i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 6), align 8
  store i32 %aux_array_V_load_5, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 5), align 4
  %tmp_31_5_cast_i = sext i32 %aux_array_V_load_5 to i33
  %aux_array_V_load_6 = load i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 7), align 4
  store i32 %aux_array_V_load_6, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 6), align 8
  %tmp_31_6_cast_i = sext i32 %aux_array_V_load_6 to i33
  store i32 %x_V_read, i32* getelementptr inbounds ([8 x i32]* @aux_array_V, i32 0, i32 7), align 4
  %tmp_cast_i = sext i32 %x_V_read to i33
  %tmp1 = add i33 %tmp_31_cast_i, %tmp_31_1_cast_i
  %tmp2 = add i33 %tmp_31_2_cast_i, %tmp_31_3_cast_i
  %tmp = add i33 %tmp2, %tmp1
  %tmp4 = add i33 %tmp_31_4_cast_i, %tmp_31_5_cast_i
  %tmp5 = add i33 %tmp_31_6_cast_i, %tmp_cast_i
  %tmp3 = add i33 %tmp5, %tmp4
  %p_Val2_i = add i33 %tmp3, %tmp
  %y_0_V_write_assign = call i32 @_ssdm_op_PartSelect.i32.i33.i32.i32(i33 %p_Val2_i, i32 1, i32 32)
  ret i32 %y_0_V_write_assign
}

declare i42 @llvm.part.select.i42(i42, i32, i32) nounwind readnone

declare i33 @llvm.part.select.i33(i33, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @axi_algorithm(i32* %input_AX_ALG_data_V, i4* %input_AX_ALG_keep_V, i4* %input_AX_ALG_strb_V, i4* %input_AX_ALG_user_V, i1* %input_AX_ALG_last_V, i5* %input_AX_ALG_id_V, i5* %input_AX_ALG_dest_V, i32* %output_AX_ALG_data_V, i4* %output_AX_ALG_keep_V, i4* %output_AX_ALG_strb_V, i4* %output_AX_ALG_user_V, i1* %output_AX_ALG_last_V, i5* %output_AX_ALG_id_V, i5* %output_AX_ALG_dest_V) {
arrayctor.loop1.preheader:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input_AX_ALG_data_V), !map !113
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %input_AX_ALG_keep_V), !map !117
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %input_AX_ALG_strb_V), !map !121
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %input_AX_ALG_user_V), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_AX_ALG_last_V), !map !129
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %input_AX_ALG_id_V), !map !133
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %input_AX_ALG_dest_V), !map !137
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_AX_ALG_data_V), !map !141
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALG_keep_V), !map !147
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALG_strb_V), !map !151
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALG_user_V), !map !155
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_AX_ALG_last_V), !map !159
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALG_id_V), !map !163
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALG_dest_V), !map !167
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @axi_algorithm_str) nounwind
  %buf_DISTANCEX_out_V = alloca [4 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [12 x i8]* @p_str2, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %input_AX_ALG_data_V, i4* %input_AX_ALG_keep_V, i4* %input_AX_ALG_strb_V, i4* %input_AX_ALG_user_V, i1* %input_AX_ALG_last_V, i5* %input_AX_ALG_id_V, i5* %input_AX_ALG_dest_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_AX_ALG_data_V, i4* %output_AX_ALG_keep_V, i4* %output_AX_ALG_strb_V, i4* %output_AX_ALG_user_V, i1* %output_AX_ALG_last_V, i5* %output_AX_ALG_id_V, i5* %output_AX_ALG_dest_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %buf_Tj_in_0_V = call fastcc i32 @read_data(i32* %input_AX_ALG_data_V, i4* %input_AX_ALG_keep_V, i4* %input_AX_ALG_strb_V, i4* %input_AX_ALG_user_V, i1* %input_AX_ALG_last_V, i5* %input_AX_ALG_id_V, i5* %input_AX_ALG_dest_V)
  %p_Val2_cast_loc_ch = call fastcc i24 @Block_arrayctor.loop(i32 %buf_Tj_in_0_V)
  call fastcc void @sweep_algorithm_DECM(i24 %p_Val2_cast_loc_ch, [4 x i32]* %buf_DISTANCEX_out_V)
  call fastcc void @write_data([4 x i32]* %buf_DISTANCEX_out_V, i32* %output_AX_ALG_data_V, i4* %output_AX_ALG_keep_V, i4* %output_AX_ALG_strb_V, i4* %output_AX_ALG_user_V, i1* %output_AX_ALG_last_V, i5* %output_AX_ALG_id_V, i5* %output_AX_ALG_dest_V)
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32*, i4*, i4*, i4*, i1*, i5*, i5*, i32, i4, i4, i4, i1, i5, i5) {
entry:
  store i32 %7, i32* %0
  store i4 %8, i4* %1
  store i4 %9, i4* %2
  store i4 %10, i4* %3
  store i1 %11, i1* %4
  store i5 %12, i5* %5
  store i5 %13, i5* %6
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

define weak void @_ssdm_op_SpecMemCore(...) {
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
  %empty_22 = load i4* %1
  %empty_23 = load i4* %2
  %empty_24 = load i4* %3
  %empty_25 = load i1* %4
  %empty_26 = load i5* %5
  %empty_27 = load i5* %6
  %mrv_0 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv_0, i4 %empty_22, 1
  %mrv2 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv1, i4 %empty_23, 2
  %mrv3 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv2, i4 %empty_24, 3
  %mrv4 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv3, i1 %empty_25, 4
  %mrv5 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv4, i5 %empty_26, 5
  %mrv6 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv5, i5 %empty_27, 6
  ret { i32, i4, i4, i4, i1, i5, i5 } %mrv6
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i24 @_ssdm_op_Read.ap_auto.i24(i24) {
entry:
  ret i24 %0
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i32 @_ssdm_op_PartSelect.i32.i42.i32.i32(i42, i32, i32) nounwind readnone {
entry:
  %empty = call i42 @llvm.part.select.i42(i42 %0, i32 %1, i32 %2)
  %empty_28 = trunc i42 %empty to i32
  ret i32 %empty_28
}

define weak i32 @_ssdm_op_PartSelect.i32.i33.i32.i32(i33, i32, i32) nounwind readnone {
entry:
  %empty = call i33 @llvm.part.select.i33(i33 %0, i32 %1, i32 %2)
  %empty_29 = trunc i33 %empty to i32
  ret i32 %empty_29
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_30 = trunc i32 %empty to i31
  ret i31 %empty_30
}

declare i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i24.i32.i32(i24, i32, i32) nounwind readnone

declare i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_BitSet.i32.i32.i32.i1(i32, i32, i1) nounwind readnone {
entry:
  %empty = icmp ne i1 %2, false
  %empty_31 = zext i1 %empty to i32
  %empty_32 = bitcast i32 %1 to i32
  %empty_33 = shl i32 %empty_31, %empty_32
  %empty_34 = shl i32 1, %empty_32
  %empty_35 = xor i32 %empty_34, -1
  %empty_36 = and i32 %empty_35, %0
  %empty_37 = or i32 %empty_33, %empty_36
  ret i32 %empty_37
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_38 = and i32 %0, %empty
  %empty_39 = icmp ne i32 %empty_38, 0
  ret i1 %empty_39
}

declare void @_ssdm_SpecLoopRewind(...) nounwind

declare void @_GLOBAL__I_a() nounwind

define internal fastcc i24 @Block_arrayctor.loop(i32 %p_read) readnone {
newFuncRoot:
  %p_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read)
  %p_Val2_s = trunc i32 %p_read_2 to i24
  ret i24 %p_Val2_s
}

!opencl.kernels = !{!0, !7, !11, !17, !23, !27, !27, !33, !39, !42, !42, !42, !33, !45, !47, !47, !33, !48, !48, !33, !33, !45, !47, !47, !33, !33, !50, !50, !53, !55, !55, !33, !56, !56, !47, !48, !48, !48, !58, !33, !33, !60, !60, !60, !62, !48, !48, !33, !42, !42, !33, !33, !62, !63, !65, !65, !65, !66, !33, !33, !68, !68, !68, !33, !45, !47, !47, !33, !33, !33, !70, !70, !71, !65, !65, !23, !39, !33, !33, !70, !70, !71, !65, !48, !72, !75, !78, !78, !33, !33, !80, !78, !78, !33, !33, !82, !78, !78, !33, !33, !84, !78, !78, !33, !86, !33, !33, !33, !88, !91, !91, !33, !33, !33, !33, !33, !33, !33, !33, !33, !33, !92, !65, !65, !23, !39, !47, !47, !95, !58, !33, !33, !68, !68, !68, !97, !99, !56, !56, !100, !103, !33, !33, !33}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!106}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"AXI_VAL*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"input_AX_ALG", metadata !"output_AX_ALG"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !2, metadata !9, metadata !4, metadata !10, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!9 = metadata !{metadata !"kernel_arg_type", metadata !"dataW32_apt", metadata !"dataW32_apt*"}
!10 = metadata !{metadata !"kernel_arg_name", metadata !"inputVal", metadata !"currentGroupX_OUT"}
!11 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !6}
!12 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!13 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"dataW32_apt*", metadata !"dataW32_apt", metadata !"uint"}
!15 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x", metadata !"reset"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0, i32 0}
!19 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"dataW32_apt*", metadata !"_Bool*", metadata !"dataW32_apt", metadata !"uint"}
!21 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"signalVal", metadata !"minimoX", metadata !"currentSample", metadata !"reset"}
!23 = metadata !{null, metadata !24, metadata !2, metadata !25, metadata !4, metadata !26, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &", metadata !"int"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!33 = metadata !{null, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space"}
!35 = metadata !{metadata !"kernel_arg_access_qual"}
!36 = metadata !{metadata !"kernel_arg_type"}
!37 = metadata !{metadata !"kernel_arg_type_qual"}
!38 = metadata !{metadata !"kernel_arg_name"}
!39 = metadata !{null, metadata !28, metadata !29, metadata !40, metadata !31, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!42 = metadata !{null, metadata !28, metadata !29, metadata !43, metadata !31, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<43, 43, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!45 = metadata !{null, metadata !28, metadata !29, metadata !46, metadata !31, metadata !41, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!47 = metadata !{null, metadata !28, metadata !29, metadata !46, metadata !31, metadata !44, metadata !6}
!48 = metadata !{null, metadata !28, metadata !29, metadata !49, metadata !31, metadata !44, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<42, 42, true, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!50 = metadata !{null, metadata !28, metadata !29, metadata !51, metadata !31, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!53 = metadata !{null, metadata !28, metadata !29, metadata !51, metadata !31, metadata !54, metadata !6}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!55 = metadata !{null, metadata !28, metadata !29, metadata !51, metadata !31, metadata !32, metadata !6}
!56 = metadata !{null, metadata !28, metadata !29, metadata !57, metadata !31, metadata !44, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!58 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !59, metadata !6}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!60 = metadata !{null, metadata !28, metadata !29, metadata !61, metadata !31, metadata !44, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<44, 44, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!62 = metadata !{null, metadata !28, metadata !29, metadata !49, metadata !31, metadata !41, metadata !6}
!63 = metadata !{null, metadata !28, metadata !29, metadata !64, metadata !31, metadata !44, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<42, 42, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!65 = metadata !{null, metadata !28, metadata !29, metadata !40, metadata !31, metadata !44, metadata !6}
!66 = metadata !{null, metadata !28, metadata !29, metadata !67, metadata !31, metadata !41, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<16, 16, true, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!68 = metadata !{null, metadata !28, metadata !29, metadata !69, metadata !31, metadata !44, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!70 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !52, metadata !6}
!71 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !54, metadata !6}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !74, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<32, 32, 6, 3, 0>*", metadata !"AXI_VAL*"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"output"}
!75 = metadata !{null, metadata !24, metadata !2, metadata !76, metadata !4, metadata !77, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_fixed<32, 32, 6, 3, 0> &", metadata !"_Bool"}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"v", metadata !"last"}
!78 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !79, metadata !6}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!80 = metadata !{null, metadata !28, metadata !29, metadata !81, metadata !31, metadata !41, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<5> &"}
!82 = metadata !{null, metadata !28, metadata !29, metadata !83, metadata !31, metadata !41, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!84 = metadata !{null, metadata !28, metadata !29, metadata !85, metadata !31, metadata !41, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!86 = metadata !{null, metadata !28, metadata !29, metadata !87, metadata !31, metadata !41, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!88 = metadata !{null, metadata !28, metadata !29, metadata !89, metadata !31, metadata !90, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!90 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!91 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !44, metadata !6}
!92 = metadata !{null, metadata !28, metadata !29, metadata !93, metadata !31, metadata !94, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<32, 4, 5, 5> &"}
!94 = metadata !{metadata !"kernel_arg_name", metadata !""}
!95 = metadata !{null, metadata !28, metadata !29, metadata !96, metadata !31, metadata !44, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!97 = metadata !{null, metadata !24, metadata !2, metadata !98, metadata !4, metadata !26, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &", metadata !"uint"}
!99 = metadata !{null, metadata !28, metadata !29, metadata !57, metadata !31, metadata !41, metadata !6}
!100 = metadata !{null, metadata !1, metadata !2, metadata !101, metadata !4, metadata !102, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"struct ap_fixed<32, 32, 6, 3, 0>*"}
!102 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"buf"}
!103 = metadata !{null, metadata !28, metadata !29, metadata !104, metadata !31, metadata !105, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_axiu<sizeof(int) * 8, 4, 5, 5> &"}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"e"}
!106 = metadata !{metadata !107, [1 x i32]* @llvm_global_ctors_0}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 31, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"llvm.global_ctors.0", metadata !111, metadata !"", i32 0, i32 31}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 0, i32 1}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"input_AX_ALG.data.V", metadata !111, metadata !"uint32", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 3, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"input_AX_ALG.keep.V", metadata !111, metadata !"uint4", i32 0, i32 3}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 3, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"input_AX_ALG.strb.V", metadata !111, metadata !"uint4", i32 0, i32 3}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 3, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"input_AX_ALG.user.V", metadata !111, metadata !"uint4", i32 0, i32 3}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 0, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"input_AX_ALG.last.V", metadata !111, metadata !"uint1", i32 0, i32 0}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 4, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"input_AX_ALG.id.V", metadata !111, metadata !"uint5", i32 0, i32 4}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 0, i32 4, metadata !139}
!139 = metadata !{metadata !140}
!140 = metadata !{metadata !"input_AX_ALG.dest.V", metadata !111, metadata !"uint5", i32 0, i32 4}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 31, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"output_AX_ALG.data.V", metadata !145, metadata !"uint32", i32 0, i32 31}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 3, i32 1}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 3, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"output_AX_ALG.keep.V", metadata !145, metadata !"uint4", i32 0, i32 3}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 3, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"output_AX_ALG.strb.V", metadata !145, metadata !"uint4", i32 0, i32 3}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 3, metadata !157}
!157 = metadata !{metadata !158}
!158 = metadata !{metadata !"output_AX_ALG.user.V", metadata !145, metadata !"uint4", i32 0, i32 3}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 0, i32 0, metadata !161}
!161 = metadata !{metadata !162}
!162 = metadata !{metadata !"output_AX_ALG.last.V", metadata !145, metadata !"uint1", i32 0, i32 0}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 4, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"output_AX_ALG.id.V", metadata !145, metadata !"uint5", i32 0, i32 4}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 4, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"output_AX_ALG.dest.V", metadata !145, metadata !"uint5", i32 0, i32 4}
