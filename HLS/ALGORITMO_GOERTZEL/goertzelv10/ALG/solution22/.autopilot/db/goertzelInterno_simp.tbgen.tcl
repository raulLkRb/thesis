set moduleName goertzelInterno_simp
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {goertzelInterno_simp}
set C_modelType { int 64 }
set C_modelArgList {
	{ indiceK int 4 regular  }
	{ aux_array_V int 32 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "indiceK", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "aux_array_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ indiceK sc_in sc_lv 4 signal 0 } 
	{ aux_array_V_dout sc_in sc_lv 32 signal 1 } 
	{ aux_array_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ aux_array_V_read sc_out sc_logic 1 signal 1 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "indiceK", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "indiceK", "role": "default" }} , 
 	{ "name": "aux_array_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aux_array_V", "role": "dout" }} , 
 	{ "name": "aux_array_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aux_array_V", "role": "empty_n" }} , 
 	{ "name": "aux_array_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aux_array_V", "role": "read" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "goertzelInterno_simp",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "indiceK", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux_array_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "aux_array_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "REAL_PARTE_W_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "IMAGINARIO_W_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.REAL_PARTE_W_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.IMAGINARIO_W_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.goertzel_algoritheOg_U11", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	goertzelInterno_simp {
		indiceK {Type I LastRead 0 FirstWrite -1}
		aux_array_V {Type I LastRead 7 FirstWrite -1}
		REAL_PARTE_W_V {Type I LastRead -1 FirstWrite -1}
		IMAGINARIO_W_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14340", "Max" : "14340"}
	, {"Name" : "Interval", "Min" : "14340", "Max" : "14340"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	indiceK { ap_none {  { indiceK in_data 0 4 } } }
	aux_array_V { ap_fifo {  { aux_array_V_dout fifo_data 0 32 }  { aux_array_V_empty_n fifo_status 0 1 }  { aux_array_V_read fifo_update 1 1 } } }
}
