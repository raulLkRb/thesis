set moduleName read_data
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {read_data}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_data_V int 32 regular {axi_s 0 volatile  { input_AX_ALG Data } }  }
	{ input_keep_V int 4 regular {axi_s 0 volatile  { input_AX_ALG Keep } }  }
	{ input_strb_V int 4 regular {axi_s 0 volatile  { input_AX_ALG Strb } }  }
	{ input_user_V int 4 regular {axi_s 0 volatile  { input_AX_ALG User } }  }
	{ input_last_V int 1 regular {axi_s 0 volatile  { input_AX_ALG Last } }  }
	{ input_id_V int 5 regular {axi_s 0 volatile  { input_AX_ALG ID } }  }
	{ input_dest_V int 5 regular {axi_s 0 volatile  { input_AX_ALG Dest } }  }
	{ buf_0_V int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "input_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "buf_0_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf_0_V_din sc_out sc_lv 32 signal 7 } 
	{ buf_0_V_full_n sc_in sc_logic 1 signal 7 } 
	{ buf_0_V_write sc_out sc_logic 1 signal 7 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ input_AX_ALG_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_AX_ALG_TVALID sc_in sc_logic 1 invld 6 } 
	{ input_AX_ALG_TREADY sc_out sc_logic 1 inacc 6 } 
	{ input_AX_ALG_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_AX_ALG_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_AX_ALG_TUSER sc_in sc_lv 4 signal 3 } 
	{ input_AX_ALG_TLAST sc_in sc_lv 1 signal 4 } 
	{ input_AX_ALG_TID sc_in sc_lv 5 signal 5 } 
	{ input_AX_ALG_TDEST sc_in sc_lv 5 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf_0_V", "role": "din" }} , 
 	{ "name": "buf_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_0_V", "role": "full_n" }} , 
 	{ "name": "buf_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_0_V", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_data_V", "role": "TDATA" }} , 
 	{ "name": "input_AX_ALG_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_dest_V", "role": "TVALID" }} , 
 	{ "name": "input_AX_ALG_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_dest_V", "role": "TREADY" }} , 
 	{ "name": "input_AX_ALG_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_keep_V", "role": "TKEEP" }} , 
 	{ "name": "input_AX_ALG_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_strb_V", "role": "TSTRB" }} , 
 	{ "name": "input_AX_ALG_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_user_V", "role": "TUSER" }} , 
 	{ "name": "input_AX_ALG_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_last_V", "role": "TLAST" }} , 
 	{ "name": "input_AX_ALG_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_id_V", "role": "G_TID" }} , 
 	{ "name": "input_AX_ALG_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_dest_V", "role": "TDEST" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "read_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "input_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_AX_ALG_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "buf_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "buf_0_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	read_data {
		input_data_V {Type I LastRead 0 FirstWrite -1}
		input_keep_V {Type I LastRead 0 FirstWrite -1}
		input_strb_V {Type I LastRead 0 FirstWrite -1}
		input_user_V {Type I LastRead 0 FirstWrite -1}
		input_last_V {Type I LastRead 0 FirstWrite -1}
		input_id_V {Type I LastRead 0 FirstWrite -1}
		input_dest_V {Type I LastRead 0 FirstWrite -1}
		buf_0_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_data_V { axis {  { input_AX_ALG_TDATA in_data 0 32 } } }
	input_keep_V { axis {  { input_AX_ALG_TKEEP in_data 0 4 } } }
	input_strb_V { axis {  { input_AX_ALG_TSTRB in_data 0 4 } } }
	input_user_V { axis {  { input_AX_ALG_TUSER in_data 0 4 } } }
	input_last_V { axis {  { input_AX_ALG_TLAST in_data 0 1 } } }
	input_id_V { axis {  { input_AX_ALG_TID in_data 0 5 } } }
	input_dest_V { axis {  { input_AX_ALG_TVALID in_vld 0 1 }  { input_AX_ALG_TREADY in_acc 1 1 }  { input_AX_ALG_TDEST in_data 0 5 } } }
	buf_0_V { ap_fifo {  { buf_0_V_din fifo_data 1 32 }  { buf_0_V_full_n fifo_status 0 1 }  { buf_0_V_write fifo_update 1 1 } } }
}
