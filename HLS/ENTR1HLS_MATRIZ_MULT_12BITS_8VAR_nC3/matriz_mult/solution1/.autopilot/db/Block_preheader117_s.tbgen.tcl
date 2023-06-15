set moduleName Block_preheader117_s
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Block_.preheader117.}
set C_modelType { void 0 }
set C_modelArgList {
	{ dato_V int 32 regular {array 4 { 1 3 } 1 1 }  }
	{ X_MAT_0 float 32 regular {array 8 { 2 0 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dato_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_MAT_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
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
	{ dato_V_address0 sc_out sc_lv 2 signal 0 } 
	{ dato_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ dato_V_q0 sc_in sc_lv 32 signal 0 } 
	{ X_MAT_0_address0 sc_out sc_lv 3 signal 1 } 
	{ X_MAT_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_MAT_0_we0 sc_out sc_logic 1 signal 1 } 
	{ X_MAT_0_d0 sc_out sc_lv 32 signal 1 } 
	{ X_MAT_0_q0 sc_in sc_lv 32 signal 1 } 
	{ X_MAT_0_address1 sc_out sc_lv 3 signal 1 } 
	{ X_MAT_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ X_MAT_0_we1 sc_out sc_logic 1 signal 1 } 
	{ X_MAT_0_d1 sc_out sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dato_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dato_V", "role": "address0" }} , 
 	{ "name": "dato_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dato_V", "role": "ce0" }} , 
 	{ "name": "dato_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dato_V", "role": "q0" }} , 
 	{ "name": "X_MAT_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "address0" }} , 
 	{ "name": "X_MAT_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "ce0" }} , 
 	{ "name": "X_MAT_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "we0" }} , 
 	{ "name": "X_MAT_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "d0" }} , 
 	{ "name": "X_MAT_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "q0" }} , 
 	{ "name": "X_MAT_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "address1" }} , 
 	{ "name": "X_MAT_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "ce1" }} , 
 	{ "name": "X_MAT_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "we1" }} , 
 	{ "name": "X_MAT_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_MAT_0", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "Block_preheader117_s",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "dato_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "X_MAT_0", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "vectorMedia1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vectorMedia1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapped_mmult_hw_cud_U8", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapped_mmult_hw_dEe_U9", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapped_mmult_hw_dEe_U10", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Block_preheader117_s {
		dato_V {Type I LastRead 3 FirstWrite -1}
		X_MAT_0 {Type IO LastRead 10 FirstWrite 6}
		vectorMedia1 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "74", "Max" : "74"}
	, {"Name" : "Interval", "Min" : "74", "Max" : "74"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dato_V { ap_memory {  { dato_V_address0 mem_address 1 2 }  { dato_V_ce0 mem_ce 1 1 }  { dato_V_q0 mem_dout 0 32 } } }
	X_MAT_0 { ap_memory {  { X_MAT_0_address0 mem_address 1 3 }  { X_MAT_0_ce0 mem_ce 1 1 }  { X_MAT_0_we0 mem_we 1 1 }  { X_MAT_0_d0 mem_din 1 32 }  { X_MAT_0_q0 mem_dout 0 32 }  { X_MAT_0_address1 mem_address 1 3 }  { X_MAT_0_ce1 mem_ce 1 1 }  { X_MAT_0_we1 mem_we 1 1 }  { X_MAT_0_d1 mem_din 1 32 } } }
}
