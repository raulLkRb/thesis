set moduleName Loop_3_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Loop_3_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ X_OUT_0 float 32 regular {array 3 { 1 3 } 1 1 }  }
	{ out_stream_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_user_V int 4 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_id_V int 5 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_dest_V int 5 regular {axi_s 1 volatile  { out_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X_OUT_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
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
	{ X_OUT_0_address0 sc_out sc_lv 2 signal 0 } 
	{ X_OUT_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ X_OUT_0_q0 sc_in sc_lv 32 signal 0 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 1 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 1 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 1 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 2 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 3 } 
	{ out_stream_TUSER sc_out sc_lv 4 signal 4 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 5 } 
	{ out_stream_TID sc_out sc_lv 5 signal 6 } 
	{ out_stream_TDEST sc_out sc_lv 5 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "X_OUT_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "X_OUT_0", "role": "address0" }} , 
 	{ "name": "X_OUT_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_OUT_0", "role": "ce0" }} , 
 	{ "name": "X_OUT_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_OUT_0", "role": "q0" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Loop_3_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "X_OUT_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "out_stream_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Loop_3_proc {
		X_OUT_0 {Type I LastRead 1 FirstWrite -1}
		out_stream_data_V {Type O LastRead -1 FirstWrite 2}
		out_stream_keep_V {Type O LastRead -1 FirstWrite 2}
		out_stream_strb_V {Type O LastRead -1 FirstWrite 2}
		out_stream_user_V {Type O LastRead -1 FirstWrite 2}
		out_stream_last_V {Type O LastRead -1 FirstWrite 2}
		out_stream_id_V {Type O LastRead -1 FirstWrite 2}
		out_stream_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	X_OUT_0 { ap_memory {  { X_OUT_0_address0 mem_address 1 2 }  { X_OUT_0_ce0 mem_ce 1 1 }  { X_OUT_0_q0 mem_dout 0 32 } } }
	out_stream_data_V { axis {  { out_stream_TDATA out_data 1 32 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
	out_stream_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_user_V { axis {  { out_stream_TUSER out_data 1 4 } } }
	out_stream_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_id_V { axis {  { out_stream_TID out_data 1 5 } } }
	out_stream_dest_V { axis {  { out_stream_TDEST out_data 1 5 } } }
}
