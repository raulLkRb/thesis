set moduleName Loop_2_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Loop_2_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ y_V int 32 regular {fifo 0 volatile }  }
	{ output_AX_ALG_data_V int 32 regular {axi_s 1 volatile  { output_AX_ALG Data } }  }
	{ output_AX_ALG_keep_V int 4 regular {axi_s 1 volatile  { output_AX_ALG Keep } }  }
	{ output_AX_ALG_strb_V int 4 regular {axi_s 1 volatile  { output_AX_ALG Strb } }  }
	{ output_AX_ALG_user_V int 4 regular {axi_s 1 volatile  { output_AX_ALG User } }  }
	{ output_AX_ALG_last_V int 1 regular {axi_s 1 volatile  { output_AX_ALG Last } }  }
	{ output_AX_ALG_id_V int 5 regular {axi_s 1 volatile  { output_AX_ALG ID } }  }
	{ output_AX_ALG_dest_V int 5 regular {axi_s 1 volatile  { output_AX_ALG Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_AX_ALG_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_AX_ALG_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_AX_ALG_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_AX_ALG_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_AX_ALG_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_AX_ALG_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_AX_ALG_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ y_V_dout sc_in sc_lv 32 signal 0 } 
	{ y_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ y_V_read sc_out sc_logic 1 signal 0 } 
	{ output_AX_ALG_TDATA sc_out sc_lv 32 signal 1 } 
	{ output_AX_ALG_TVALID sc_out sc_logic 1 outvld 1 } 
	{ output_AX_ALG_TREADY sc_in sc_logic 1 outacc 1 } 
	{ output_AX_ALG_TKEEP sc_out sc_lv 4 signal 2 } 
	{ output_AX_ALG_TSTRB sc_out sc_lv 4 signal 3 } 
	{ output_AX_ALG_TUSER sc_out sc_lv 4 signal 4 } 
	{ output_AX_ALG_TLAST sc_out sc_lv 1 signal 5 } 
	{ output_AX_ALG_TID sc_out sc_lv 5 signal 6 } 
	{ output_AX_ALG_TDEST sc_out sc_lv 5 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "y_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_V", "role": "dout" }} , 
 	{ "name": "y_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "empty_n" }} , 
 	{ "name": "y_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "read" }} , 
 	{ "name": "output_AX_ALG_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_AX_ALG_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_AX_ALG_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_AX_ALG_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_keep_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_strb_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_user_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_AX_ALG_last_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALG_id_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_2_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "y_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_AX_ALG_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_AX_ALG_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_AX_ALG_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_AX_ALG_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_AX_ALG_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_AX_ALG_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_AX_ALG_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_AX_ALG_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_2_proc {
		y_V {Type I LastRead 2 FirstWrite -1}
		output_AX_ALG_data_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_keep_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_strb_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_user_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_last_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_id_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19", "Max" : "19"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "19"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y_V { ap_fifo {  { y_V_dout fifo_data 0 32 }  { y_V_empty_n fifo_status 0 1 }  { y_V_read fifo_update 1 1 } } }
	output_AX_ALG_data_V { axis {  { output_AX_ALG_TDATA out_data 1 32 }  { output_AX_ALG_TVALID out_vld 1 1 }  { output_AX_ALG_TREADY out_acc 0 1 } } }
	output_AX_ALG_keep_V { axis {  { output_AX_ALG_TKEEP out_data 1 4 } } }
	output_AX_ALG_strb_V { axis {  { output_AX_ALG_TSTRB out_data 1 4 } } }
	output_AX_ALG_user_V { axis {  { output_AX_ALG_TUSER out_data 1 4 } } }
	output_AX_ALG_last_V { axis {  { output_AX_ALG_TLAST out_data 1 1 } } }
	output_AX_ALG_id_V { axis {  { output_AX_ALG_TID out_data 1 5 } } }
	output_AX_ALG_dest_V { axis {  { output_AX_ALG_TDEST out_data 1 5 } } }
}
