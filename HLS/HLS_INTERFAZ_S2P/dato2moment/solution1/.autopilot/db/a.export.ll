; ModuleID = 'C:/Users/Raul/Documents/RIGIDEZ_VIVADO/HLS_INTERFAZ_INIT_SIMPLE_MAXMOM/dato2moment/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@axi_algorithm_str = internal unnamed_addr constant [14 x i8] c"axi_algorithm\00"
@p_str6 = private unnamed_addr constant [17 x i8] c"RD_Loop_Into_Buf\00", align 1
@p_str5 = private unnamed_addr constant [15 x i8] c"WR_Loop_To_Int\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"CONTROL_BUS\00", align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define internal fastcc void @write_data23(i32 %p_read, i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V) {
.critedge:
  %p_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str5) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, i32 %p_read_1, i4 -1, i4 -1, i4 0, i1 true, i5 0, i5 0)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str5, i32 %tmp)
  ret void
}

define internal fastcc void @write_data22(i32 %p_read, i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V) {
.critedge:
  %p_read_2 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str5) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, i32 %p_read_2, i4 -1, i4 -1, i4 0, i1 true, i5 0, i5 0)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str5, i32 %tmp)
  ret void
}

define internal fastcc void @write_data21(i32 %p_read, i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V) {
.critedge:
  %p_read_3 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str5) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, i32 %p_read_3, i4 -1, i4 -1, i4 0, i1 true, i5 0, i5 0)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str5, i32 %tmp)
  ret void
}

define internal fastcc void @write_data(i32 %buf_0_V_read, i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V) {
.critedge:
  %buf_0_V_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %buf_0_V_read)
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str5) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  call void @_ssdm_op_Write.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32* %output_data_V, i4* %output_keep_V, i4* %output_strb_V, i4* %output_user_V, i1* %output_last_V, i5* %output_id_V, i5* %output_dest_V, i32 %buf_0_V_read_1, i4 -1, i4 -1, i4 0, i1 true, i5 0, i5 0)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str5, i32 %tmp)
  ret void
}

define internal fastcc void @read_data(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V, [4 x i32]* nocapture %buf_V) {
  call void (...)* @_ssdm_op_SpecInterface(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i3 [ 0, %0 ], [ %i_1, %2 ]
  %tmp = icmp eq i3 %i, -4
  %i_1 = add i3 %i, 1
  br i1 %tmp, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str6) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_1 = zext i3 %i to i32
  %empty_2 = call { i32, i4, i4, i4, i1, i5, i5 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i4P.i1P.i5P.i5P(i32* %input_data_V, i4* %input_keep_V, i4* %input_strb_V, i4* %input_user_V, i1* %input_last_V, i5* %input_id_V, i5* %input_dest_V)
  %p_Val2_s = extractvalue { i32, i4, i4, i4, i1, i5, i5 } %empty_2, 0
  %buf_V_addr = getelementptr [4 x i32]* %buf_V, i32 0, i32 %tmp_1
  store i32 %p_Val2_s, i32* %buf_V_addr, align 4
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str6, i32 %tmp_2)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @axi_algorithm(i32* %input_AX_ALG_data_V, i4* %input_AX_ALG_keep_V, i4* %input_AX_ALG_strb_V, i4* %input_AX_ALG_user_V, i1* %input_AX_ALG_last_V, i5* %input_AX_ALG_id_V, i5* %input_AX_ALG_dest_V, i32* %output_AX_ALGdedo0_data_V, i4* %output_AX_ALGdedo0_keep_V, i4* %output_AX_ALGdedo0_strb_V, i4* %output_AX_ALGdedo0_user_V, i1* %output_AX_ALGdedo0_last_V, i5* %output_AX_ALGdedo0_id_V, i5* %output_AX_ALGdedo0_dest_V, i32* %output_AX_ALGpalma0_data_V, i4* %output_AX_ALGpalma0_keep_V, i4* %output_AX_ALGpalma0_strb_V, i4* %output_AX_ALGpalma0_user_V, i1* %output_AX_ALGpalma0_last_V, i5* %output_AX_ALGpalma0_id_V, i5* %output_AX_ALGpalma0_dest_V, i32* %output_AX_ALGdedo1_data_V, i4* %output_AX_ALGdedo1_keep_V, i4* %output_AX_ALGdedo1_strb_V, i4* %output_AX_ALGdedo1_user_V, i1* %output_AX_ALGdedo1_last_V, i5* %output_AX_ALGdedo1_id_V, i5* %output_AX_ALGdedo1_dest_V, i32* %output_AX_ALGpalma1_data_V, i4* %output_AX_ALGpalma1_keep_V, i4* %output_AX_ALGpalma1_strb_V, i4* %output_AX_ALGpalma1_user_V, i1* %output_AX_ALGpalma1_last_V, i5* %output_AX_ALGpalma1_id_V, i5* %output_AX_ALGpalma1_dest_V) {
arrayctor.loop1.preheader:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %input_AX_ALG_data_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %input_AX_ALG_keep_V), !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %input_AX_ALG_strb_V), !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %input_AX_ALG_user_V), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %input_AX_ALG_last_V), !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %input_AX_ALG_id_V), !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %input_AX_ALG_dest_V), !map !97
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_AX_ALGdedo0_data_V), !map !101
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGdedo0_keep_V), !map !105
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGdedo0_strb_V), !map !109
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGdedo0_user_V), !map !113
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_AX_ALGdedo0_last_V), !map !117
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALGdedo0_id_V), !map !121
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALGdedo0_dest_V), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_AX_ALGpalma0_data_V), !map !129
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGpalma0_keep_V), !map !133
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGpalma0_strb_V), !map !137
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGpalma0_user_V), !map !141
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_AX_ALGpalma0_last_V), !map !145
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALGpalma0_id_V), !map !149
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALGpalma0_dest_V), !map !153
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_AX_ALGdedo1_data_V), !map !157
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGdedo1_keep_V), !map !161
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGdedo1_strb_V), !map !165
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGdedo1_user_V), !map !169
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_AX_ALGdedo1_last_V), !map !173
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALGdedo1_id_V), !map !177
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALGdedo1_dest_V), !map !181
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %output_AX_ALGpalma1_data_V), !map !185
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGpalma1_keep_V), !map !189
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGpalma1_strb_V), !map !193
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %output_AX_ALGpalma1_user_V), !map !197
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %output_AX_ALGpalma1_last_V), !map !201
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALGpalma1_id_V), !map !205
  call void (...)* @_ssdm_op_SpecBitsMap(i5* %output_AX_ALGpalma1_dest_V), !map !209
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @axi_algorithm_str) nounwind
  %dato = alloca [4 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_AX_ALGpalma1_data_V, i4* %output_AX_ALGpalma1_keep_V, i4* %output_AX_ALGpalma1_strb_V, i4* %output_AX_ALGpalma1_user_V, i1* %output_AX_ALGpalma1_last_V, i5* %output_AX_ALGpalma1_id_V, i5* %output_AX_ALGpalma1_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_AX_ALGdedo1_data_V, i4* %output_AX_ALGdedo1_keep_V, i4* %output_AX_ALGdedo1_strb_V, i4* %output_AX_ALGdedo1_user_V, i1* %output_AX_ALGdedo1_last_V, i5* %output_AX_ALGdedo1_id_V, i5* %output_AX_ALGdedo1_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_AX_ALGpalma0_data_V, i4* %output_AX_ALGpalma0_keep_V, i4* %output_AX_ALGpalma0_strb_V, i4* %output_AX_ALGpalma0_user_V, i1* %output_AX_ALGpalma0_last_V, i5* %output_AX_ALGpalma0_id_V, i5* %output_AX_ALGpalma0_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32* %output_AX_ALGdedo0_data_V, i4* %output_AX_ALGdedo0_keep_V, i4* %output_AX_ALGdedo0_strb_V, i4* %output_AX_ALGdedo0_user_V, i1* %output_AX_ALGdedo0_last_V, i5* %output_AX_ALGdedo0_id_V, i5* %output_AX_ALGdedo0_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [12 x i8]* @p_str4, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %input_AX_ALG_data_V, i4* %input_AX_ALG_keep_V, i4* %input_AX_ALG_strb_V, i4* %input_AX_ALG_user_V, i1* %input_AX_ALG_last_V, i5* %input_AX_ALG_id_V, i5* %input_AX_ALG_dest_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  call fastcc void @read_data(i32* %input_AX_ALG_data_V, i4* %input_AX_ALG_keep_V, i4* %input_AX_ALG_strb_V, i4* %input_AX_ALG_user_V, i1* %input_AX_ALG_last_V, i5* %input_AX_ALG_id_V, i5* %input_AX_ALG_dest_V, [4 x i32]* %dato)
  %call_ret = call fastcc { i32, i32, i32, i32 } @Block_arrayctor.loop([4 x i32]* %dato)
  %dedo0_0_V = extractvalue { i32, i32, i32, i32 } %call_ret, 0
  %palma0_0_V = extractvalue { i32, i32, i32, i32 } %call_ret, 1
  %dedo1_0_V = extractvalue { i32, i32, i32, i32 } %call_ret, 2
  %palma1_0_V = extractvalue { i32, i32, i32, i32 } %call_ret, 3
  call fastcc void @write_data21(i32 %dedo0_0_V, i32* %output_AX_ALGdedo0_data_V, i4* %output_AX_ALGdedo0_keep_V, i4* %output_AX_ALGdedo0_strb_V, i4* %output_AX_ALGdedo0_user_V, i1* %output_AX_ALGdedo0_last_V, i5* %output_AX_ALGdedo0_id_V, i5* %output_AX_ALGdedo0_dest_V)
  call fastcc void @write_data22(i32 %palma0_0_V, i32* %output_AX_ALGpalma0_data_V, i4* %output_AX_ALGpalma0_keep_V, i4* %output_AX_ALGpalma0_strb_V, i4* %output_AX_ALGpalma0_user_V, i1* %output_AX_ALGpalma0_last_V, i5* %output_AX_ALGpalma0_id_V, i5* %output_AX_ALGpalma0_dest_V)
  call fastcc void @write_data23(i32 %dedo1_0_V, i32* %output_AX_ALGdedo1_data_V, i4* %output_AX_ALGdedo1_keep_V, i4* %output_AX_ALGdedo1_strb_V, i4* %output_AX_ALGdedo1_user_V, i1* %output_AX_ALGdedo1_last_V, i5* %output_AX_ALGdedo1_id_V, i5* %output_AX_ALGdedo1_dest_V)
  call fastcc void @write_data(i32 %palma1_0_V, i32* %output_AX_ALGpalma1_data_V, i4* %output_AX_ALGpalma1_keep_V, i4* %output_AX_ALGpalma1_strb_V, i4* %output_AX_ALGpalma1_user_V, i1* %output_AX_ALGpalma1_last_V, i5* %output_AX_ALGpalma1_id_V, i5* %output_AX_ALGpalma1_dest_V)
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
  %empty_4 = load i4* %1
  %empty_5 = load i4* %2
  %empty_6 = load i4* %3
  %empty_7 = load i1* %4
  %empty_8 = load i5* %5
  %empty_9 = load i5* %6
  %mrv_0 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv_0, i4 %empty_4, 1
  %mrv2 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv1, i4 %empty_5, 2
  %mrv3 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv2, i4 %empty_6, 3
  %mrv4 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv3, i1 %empty_7, 4
  %mrv5 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv4, i5 %empty_8, 5
  %mrv6 = insertvalue { i32, i4, i4, i4, i1, i5, i5 } %mrv5, i5 %empty_9, 6
  ret { i32, i4, i4, i4, i1, i5, i5 } %mrv6
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare void @_GLOBAL__I_a() nounwind

define internal fastcc { i32, i32, i32, i32 } @Block_arrayctor.loop([4 x i32]* nocapture %dato) readonly {
newFuncRoot:
  %dato_addr = getelementptr [4 x i32]* %dato, i32 0, i32 0
  %dedo0_0_V = load i32* %dato_addr, align 4
  %dato_addr_1 = getelementptr [4 x i32]* %dato, i32 0, i32 1
  %palma0_0_V = load i32* %dato_addr_1, align 4
  %dato_addr_2 = getelementptr [4 x i32]* %dato, i32 0, i32 2
  %dedo1_0_V = load i32* %dato_addr_2, align 4
  %dato_addr_3 = getelementptr [4 x i32]* %dato, i32 0, i32 3
  %palma1_0_V = load i32* %dato_addr_3, align 4
  %mrv = insertvalue { i32, i32, i32, i32 } undef, i32 %dedo0_0_V, 0
  %mrv_1 = insertvalue { i32, i32, i32, i32 } %mrv, i32 %palma0_0_V, 1
  %mrv_2 = insertvalue { i32, i32, i32, i32 } %mrv_1, i32 %dedo1_0_V, 2
  %mrv_3 = insertvalue { i32, i32, i32, i32 } %mrv_2, i32 %palma1_0_V, 3
  ret { i32, i32, i32, i32 } %mrv_3
}

!opencl.kernels = !{!0, !7, !13, !17, !17, !23, !23, !29, !17, !17, !23, !23, !32, !17, !17, !23, !23, !34, !17, !17, !23, !23, !36, !23, !23, !23, !38, !41, !41, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !23, !43, !46, !48, !51, !54, !54, !56, !58, !58, !60, !60, !62, !23, !23, !23, !23}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!64}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"AXI_VAL*", metadata !"AXI_VAL*", metadata !"AXI_VAL*", metadata !"AXI_VAL*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"input_AX_ALG", metadata !"output_AX_ALGdedo0", metadata !"output_AX_ALGpalma0", metadata !"output_AX_ALGdedo1", metadata !"output_AX_ALGpalma1"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_fixed<32, 32, 6, 3, 0>*", metadata !"AXI_VAL*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"output"}
!13 = metadata !{null, metadata !14, metadata !9, metadata !15, metadata !11, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_fixed<32, 32, 6, 3, 0> &", metadata !"_Bool"}
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
!38 = metadata !{null, metadata !18, metadata !19, metadata !39, metadata !21, metadata !40, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!41 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !42, metadata !6}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!43 = metadata !{null, metadata !18, metadata !19, metadata !44, metadata !21, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axiu<32, 4, 5, 5> &"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !""}
!46 = metadata !{null, metadata !18, metadata !19, metadata !47, metadata !21, metadata !42, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 32, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"AXI_VAL*", metadata !"struct ap_fixed<32, 32, 6, 3, 0>*"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"buf"}
!51 = metadata !{null, metadata !18, metadata !19, metadata !52, metadata !21, metadata !53, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_axiu<sizeof(int) * 8, 4, 5, 5> &"}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"e"}
!54 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !55, metadata !6}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!56 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !57, metadata !6}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!58 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !59, metadata !6}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!60 = metadata !{null, metadata !18, metadata !19, metadata !61, metadata !21, metadata !42, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!62 = metadata !{null, metadata !18, metadata !19, metadata !63, metadata !21, metadata !42, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)6, (enum ap_o_mode)3, 0> &"}
!64 = metadata !{metadata !65, [1 x i32]* @llvm_global_ctors_0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"llvm.global_ctors.0", metadata !69, metadata !"", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, i32 1}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 31, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"input_AX_ALG.data.V", metadata !75, metadata !"uint32", i32 0, i32 31}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 3, i32 1}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 3, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"input_AX_ALG.keep.V", metadata !75, metadata !"uint4", i32 0, i32 3}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 3, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"input_AX_ALG.strb.V", metadata !75, metadata !"uint4", i32 0, i32 3}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 3, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"input_AX_ALG.user.V", metadata !75, metadata !"uint4", i32 0, i32 3}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 0, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"input_AX_ALG.last.V", metadata !75, metadata !"uint1", i32 0, i32 0}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 4, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"input_AX_ALG.id.V", metadata !75, metadata !"uint5", i32 0, i32 4}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 4, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"input_AX_ALG.dest.V", metadata !75, metadata !"uint5", i32 0, i32 4}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 31, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"output_AX_ALGdedo0.data.V", metadata !69, metadata !"uint32", i32 0, i32 31}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 3, metadata !107}
!107 = metadata !{metadata !108}
!108 = metadata !{metadata !"output_AX_ALGdedo0.keep.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!109 = metadata !{metadata !110}
!110 = metadata !{i32 0, i32 3, metadata !111}
!111 = metadata !{metadata !112}
!112 = metadata !{metadata !"output_AX_ALGdedo0.strb.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 3, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"output_AX_ALGdedo0.user.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 0, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"output_AX_ALGdedo0.last.V", metadata !69, metadata !"uint1", i32 0, i32 0}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 4, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"output_AX_ALGdedo0.id.V", metadata !69, metadata !"uint5", i32 0, i32 4}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 4, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"output_AX_ALGdedo0.dest.V", metadata !69, metadata !"uint5", i32 0, i32 4}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 31, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"output_AX_ALGpalma0.data.V", metadata !69, metadata !"uint32", i32 0, i32 31}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 3, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"output_AX_ALGpalma0.keep.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!137 = metadata !{metadata !138}
!138 = metadata !{i32 0, i32 3, metadata !139}
!139 = metadata !{metadata !140}
!140 = metadata !{metadata !"output_AX_ALGpalma0.strb.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 3, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"output_AX_ALGpalma0.user.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 0, metadata !147}
!147 = metadata !{metadata !148}
!148 = metadata !{metadata !"output_AX_ALGpalma0.last.V", metadata !69, metadata !"uint1", i32 0, i32 0}
!149 = metadata !{metadata !150}
!150 = metadata !{i32 0, i32 4, metadata !151}
!151 = metadata !{metadata !152}
!152 = metadata !{metadata !"output_AX_ALGpalma0.id.V", metadata !69, metadata !"uint5", i32 0, i32 4}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 0, i32 4, metadata !155}
!155 = metadata !{metadata !156}
!156 = metadata !{metadata !"output_AX_ALGpalma0.dest.V", metadata !69, metadata !"uint5", i32 0, i32 4}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 0, i32 31, metadata !159}
!159 = metadata !{metadata !160}
!160 = metadata !{metadata !"output_AX_ALGdedo1.data.V", metadata !69, metadata !"uint32", i32 0, i32 31}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 0, i32 3, metadata !163}
!163 = metadata !{metadata !164}
!164 = metadata !{metadata !"output_AX_ALGdedo1.keep.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 0, i32 3, metadata !167}
!167 = metadata !{metadata !168}
!168 = metadata !{metadata !"output_AX_ALGdedo1.strb.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!169 = metadata !{metadata !170}
!170 = metadata !{i32 0, i32 3, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"output_AX_ALGdedo1.user.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!173 = metadata !{metadata !174}
!174 = metadata !{i32 0, i32 0, metadata !175}
!175 = metadata !{metadata !176}
!176 = metadata !{metadata !"output_AX_ALGdedo1.last.V", metadata !69, metadata !"uint1", i32 0, i32 0}
!177 = metadata !{metadata !178}
!178 = metadata !{i32 0, i32 4, metadata !179}
!179 = metadata !{metadata !180}
!180 = metadata !{metadata !"output_AX_ALGdedo1.id.V", metadata !69, metadata !"uint5", i32 0, i32 4}
!181 = metadata !{metadata !182}
!182 = metadata !{i32 0, i32 4, metadata !183}
!183 = metadata !{metadata !184}
!184 = metadata !{metadata !"output_AX_ALGdedo1.dest.V", metadata !69, metadata !"uint5", i32 0, i32 4}
!185 = metadata !{metadata !186}
!186 = metadata !{i32 0, i32 31, metadata !187}
!187 = metadata !{metadata !188}
!188 = metadata !{metadata !"output_AX_ALGpalma1.data.V", metadata !69, metadata !"uint32", i32 0, i32 31}
!189 = metadata !{metadata !190}
!190 = metadata !{i32 0, i32 3, metadata !191}
!191 = metadata !{metadata !192}
!192 = metadata !{metadata !"output_AX_ALGpalma1.keep.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 0, i32 3, metadata !195}
!195 = metadata !{metadata !196}
!196 = metadata !{metadata !"output_AX_ALGpalma1.strb.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!197 = metadata !{metadata !198}
!198 = metadata !{i32 0, i32 3, metadata !199}
!199 = metadata !{metadata !200}
!200 = metadata !{metadata !"output_AX_ALGpalma1.user.V", metadata !69, metadata !"uint4", i32 0, i32 3}
!201 = metadata !{metadata !202}
!202 = metadata !{i32 0, i32 0, metadata !203}
!203 = metadata !{metadata !204}
!204 = metadata !{metadata !"output_AX_ALGpalma1.last.V", metadata !69, metadata !"uint1", i32 0, i32 0}
!205 = metadata !{metadata !206}
!206 = metadata !{i32 0, i32 4, metadata !207}
!207 = metadata !{metadata !208}
!208 = metadata !{metadata !"output_AX_ALGpalma1.id.V", metadata !69, metadata !"uint5", i32 0, i32 4}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 0, i32 4, metadata !211}
!211 = metadata !{metadata !212}
!212 = metadata !{metadata !"output_AX_ALGpalma1.dest.V", metadata !69, metadata !"uint5", i32 0, i32 4}
