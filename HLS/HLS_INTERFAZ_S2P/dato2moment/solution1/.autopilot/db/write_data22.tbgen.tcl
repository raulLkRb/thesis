set moduleName write_data22
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {write_data22}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 32 regular  }
	{ output_data_V int 32 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Data } }  }
	{ output_keep_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Keep } }  }
	{ output_strb_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Strb } }  }
	{ output_user_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma0 User } }  }
	{ output_last_V int 1 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Last } }  }
	{ output_id_V int 5 regular {axi_s 1 volatile  { output_AX_ALGpalma0 ID } }  }
	{ output_dest_V int 5 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_AX_ALGpalma0_TREADY sc_in sc_logic 1 outacc 7 } 
	{ p_read sc_in sc_lv 32 signal 0 } 
	{ output_AX_ALGpalma0_TDATA sc_out sc_lv 32 signal 1 } 
	{ output_AX_ALGpalma0_TVALID sc_out sc_logic 1 outvld 7 } 
	{ output_AX_ALGpalma0_TKEEP sc_out sc_lv 4 signal 2 } 
	{ output_AX_ALGpalma0_TSTRB sc_out sc_lv 4 signal 3 } 
	{ output_AX_ALGpalma0_TUSER sc_out sc_lv 4 signal 4 } 
	{ output_AX_ALGpalma0_TLAST sc_out sc_lv 1 signal 5 } 
	{ output_AX_ALGpalma0_TID sc_out sc_lv 5 signal 6 } 
	{ output_AX_ALGpalma0_TDEST sc_out sc_lv 5 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_dest_V", "role": "alma0_TREADY" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_data_V", "role": "alma0_TDATA" }} , 
 	{ "name": "output_AX_ALGpalma0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_dest_V", "role": "alma0_TVALID" }} , 
 	{ "name": "output_AX_ALGpalma0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_keep_V", "role": "alma0_TKEEP" }} , 
 	{ "name": "output_AX_ALGpalma0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_strb_V", "role": "alma0_TSTRB" }} , 
 	{ "name": "output_AX_ALGpalma0_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_user_V", "role": "alma0_TUSER" }} , 
 	{ "name": "output_AX_ALGpalma0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_last_V", "role": "alma0_TLAST" }} , 
 	{ "name": "output_AX_ALGpalma0_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_id_V", "role": "Gpalma0_TID" }} , 
 	{ "name": "output_AX_ALGpalma0_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_dest_V", "role": "alma0_TDEST" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "write_data22",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "output_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_AX_ALGpalma0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_dest_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	write_data22 {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_data_V {Type O LastRead -1 FirstWrite 0}
		output_keep_V {Type O LastRead -1 FirstWrite 0}
		output_strb_V {Type O LastRead -1 FirstWrite 0}
		output_user_V {Type O LastRead -1 FirstWrite 0}
		output_last_V {Type O LastRead -1 FirstWrite 0}
		output_id_V {Type O LastRead -1 FirstWrite 0}
		output_dest_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 32 } } }
	output_data_V { axis {  { output_AX_ALGpalma0_TDATA out_data 1 32 } } }
	output_keep_V { axis {  { output_AX_ALGpalma0_TKEEP out_data 1 4 } } }
	output_strb_V { axis {  { output_AX_ALGpalma0_TSTRB out_data 1 4 } } }
	output_user_V { axis {  { output_AX_ALGpalma0_TUSER out_data 1 4 } } }
	output_last_V { axis {  { output_AX_ALGpalma0_TLAST out_data 1 1 } } }
	output_id_V { axis {  { output_AX_ALGpalma0_TID out_data 1 5 } } }
	output_dest_V { axis {  { output_AX_ALGpalma0_TREADY out_acc 0 1 }  { output_AX_ALGpalma0_TVALID out_vld 1 1 }  { output_AX_ALGpalma0_TDEST out_data 1 5 } } }
}
