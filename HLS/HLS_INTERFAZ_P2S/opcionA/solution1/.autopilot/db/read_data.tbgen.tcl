set moduleName read_data
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {read_data}
set C_modelType { int 32 }
set C_modelArgList {
	{ input_data_V int 32 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Data } }  }
	{ input_keep_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Keep } }  }
	{ input_strb_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Strb } }  }
	{ input_user_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma1 User } }  }
	{ input_last_V int 1 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Last } }  }
	{ input_id_V int 5 regular {axi_s 0 volatile  { input_AX_ALGpalma1 ID } }  }
	{ input_dest_V int 5 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "input_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "input_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "input_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_AX_ALGpalma1_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_AX_ALGpalma1_TVALID sc_in sc_logic 1 invld 0 } 
	{ input_AX_ALGpalma1_TREADY sc_out sc_logic 1 inacc 6 } 
	{ input_AX_ALGpalma1_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_AX_ALGpalma1_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_AX_ALGpalma1_TUSER sc_in sc_lv 4 signal 3 } 
	{ input_AX_ALGpalma1_TLAST sc_in sc_lv 1 signal 4 } 
	{ input_AX_ALGpalma1_TID sc_in sc_lv 5 signal 5 } 
	{ input_AX_ALGpalma1_TDEST sc_in sc_lv 5 signal 6 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
	{ input_AX_ALGpalma1_TDATA_blk_n sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_data_V", "role": "alma1_TDATA" }} , 
 	{ "name": "input_AX_ALGpalma1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_data_V", "role": "alma1_TVALID" }} , 
 	{ "name": "input_AX_ALGpalma1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_dest_V", "role": "alma1_TREADY" }} , 
 	{ "name": "input_AX_ALGpalma1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_keep_V", "role": "alma1_TKEEP" }} , 
 	{ "name": "input_AX_ALGpalma1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_strb_V", "role": "alma1_TSTRB" }} , 
 	{ "name": "input_AX_ALGpalma1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_user_V", "role": "alma1_TUSER" }} , 
 	{ "name": "input_AX_ALGpalma1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_last_V", "role": "alma1_TLAST" }} , 
 	{ "name": "input_AX_ALGpalma1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_id_V", "role": "Gpalma1_TID" }} , 
 	{ "name": "input_AX_ALGpalma1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_dest_V", "role": "alma1_TDEST" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TDATA_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_AX_ALGpalma1_TDATA_blk_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "read_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "input_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_AX_ALGpalma1_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "input_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_dest_V", "Type" : "Axis", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	read_data {
		input_data_V {Type I LastRead 0 FirstWrite -1}
		input_keep_V {Type I LastRead 0 FirstWrite -1}
		input_strb_V {Type I LastRead 0 FirstWrite -1}
		input_user_V {Type I LastRead 0 FirstWrite -1}
		input_last_V {Type I LastRead 0 FirstWrite -1}
		input_id_V {Type I LastRead 0 FirstWrite -1}
		input_dest_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_data_V { axis {  { input_AX_ALGpalma1_TDATA in_data 0 32 }  { input_AX_ALGpalma1_TVALID in_vld 0 1 } } }
	input_keep_V { axis {  { input_AX_ALGpalma1_TKEEP in_data 0 4 } } }
	input_strb_V { axis {  { input_AX_ALGpalma1_TSTRB in_data 0 4 } } }
	input_user_V { axis {  { input_AX_ALGpalma1_TUSER in_data 0 4 } } }
	input_last_V { axis {  { input_AX_ALGpalma1_TLAST in_data 0 1 } } }
	input_id_V { axis {  { input_AX_ALGpalma1_TID in_data 0 5 } } }
	input_dest_V { axis {  { input_AX_ALGpalma1_TREADY in_acc 1 1 }  { input_AX_ALGpalma1_TDEST in_data 0 5 } } }
}
