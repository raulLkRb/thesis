set moduleName sweep_algorithm_DECM
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {sweep_algorithm_DECM}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 24 regular  }
	{ currentGroupX_OUT_V int 32 regular {array 4 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "currentGroupX_OUT_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 24 signal 0 } 
	{ currentGroupX_OUT_V_address0 sc_out sc_lv 2 signal 1 } 
	{ currentGroupX_OUT_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ currentGroupX_OUT_V_we0 sc_out sc_logic 1 signal 1 } 
	{ currentGroupX_OUT_V_d0 sc_out sc_lv 32 signal 1 } 
	{ currentGroupX_OUT_V_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "currentGroupX_OUT_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "currentGroupX_OUT_V", "role": "address0" }} , 
 	{ "name": "currentGroupX_OUT_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "currentGroupX_OUT_V", "role": "ce0" }} , 
 	{ "name": "currentGroupX_OUT_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "currentGroupX_OUT_V", "role": "we0" }} , 
 	{ "name": "currentGroupX_OUT_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "currentGroupX_OUT_V", "role": "d0" }} , 
 	{ "name": "currentGroupX_OUT_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "currentGroupX_OUT_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "5", "6", "7", "8"],
		"CDFG" : "sweep_algorithm_DECM",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "currentGroupX_OUT_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "aux_array_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "aux_array_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_meanFilterInTime_fu_494", "Port" : "aux_array_V"}]},
			{"Name" : "vector_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "derivada_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "contador", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_array_V_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sum_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_meanFilterInTime_fu_494", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "meanFilterInTime",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "x_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "reset", "Type" : "None", "Direction" : "I"},
			{"Name" : "aux_array_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_meanFilterInTime_fu_494.aux_array_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axi_algorithm_maceOg_U11", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axi_algorithm_macfYi_U12", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axi_algorithm_maceOg_U13", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axi_algorithm_macfYi_U14", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sweep_algorithm_DECM {
		p_read {Type I LastRead 0 FirstWrite -1}
		currentGroupX_OUT_V {Type IO LastRead 35 FirstWrite 20}
		aux_array_V_1 {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type IO LastRead -1 FirstWrite -1}
		aux_array_V {Type IO LastRead -1 FirstWrite -1}
		vector_V_0 {Type IO LastRead -1 FirstWrite -1}
		derivada_V_0 {Type IO LastRead -1 FirstWrite -1}
		contador {Type IO LastRead -1 FirstWrite -1}}
	meanFilterInTime {
		x_V {Type I LastRead 0 FirstWrite -1}
		reset {Type I LastRead 0 FirstWrite -1}
		aux_array_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16394", "Max" : "19523"}
	, {"Name" : "Interval", "Min" : "16394", "Max" : "19523"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 24 } } }
	currentGroupX_OUT_V { ap_memory {  { currentGroupX_OUT_V_address0 mem_address 1 2 }  { currentGroupX_OUT_V_ce0 mem_ce 1 1 }  { currentGroupX_OUT_V_we0 mem_we 1 1 }  { currentGroupX_OUT_V_d0 mem_din 1 32 }  { currentGroupX_OUT_V_q0 mem_dout 0 32 } } }
}
