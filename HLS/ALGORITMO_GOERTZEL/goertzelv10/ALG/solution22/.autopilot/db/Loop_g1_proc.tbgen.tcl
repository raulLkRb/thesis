set moduleName Loop_g1_proc
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {Loop_g1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ aux_array_V int 32 regular {fifo 0 volatile }  }
	{ y_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "aux_array_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ aux_array_V_dout sc_in sc_lv 32 signal 0 } 
	{ aux_array_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ aux_array_V_read sc_out sc_logic 1 signal 0 } 
	{ y_V_din sc_out sc_lv 32 signal 1 } 
	{ y_V_full_n sc_in sc_logic 1 signal 1 } 
	{ y_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "aux_array_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "aux_array_V", "role": "dout" }} , 
 	{ "name": "aux_array_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aux_array_V", "role": "empty_n" }} , 
 	{ "name": "aux_array_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "aux_array_V", "role": "read" }} , 
 	{ "name": "y_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_V", "role": "din" }} , 
 	{ "name": "y_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "full_n" }} , 
 	{ "name": "y_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Loop_g1_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_goertzelInterno_simp_fu_79"}],
		"Port" : [
			{"Name" : "aux_array_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_goertzelInterno_simp_fu_79", "Port" : "aux_array_V"}]},
			{"Name" : "y_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "REAL_PARTE_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_goertzelInterno_simp_fu_79", "Port" : "REAL_PARTE_W_V"}]},
			{"Name" : "IMAGINARIO_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_goertzelInterno_simp_fu_79", "Port" : "IMAGINARIO_W_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_goertzelInterno_simp_fu_79", "Parent" : "0", "Child" : ["2", "3", "4"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_goertzelInterno_simp_fu_79.REAL_PARTE_W_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_goertzelInterno_simp_fu_79.IMAGINARIO_W_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_goertzelInterno_simp_fu_79.goertzel_algoritheOg_U11", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	Loop_g1_proc {
		aux_array_V {Type I LastRead 7 FirstWrite -1}
		y_V {Type O LastRead -1 FirstWrite 2}
		REAL_PARTE_W_V {Type I LastRead -1 FirstWrite -1}
		IMAGINARIO_W_V {Type I LastRead -1 FirstWrite -1}}
	goertzelInterno_simp {
		indiceK {Type I LastRead 0 FirstWrite -1}
		aux_array_V {Type I LastRead 7 FirstWrite -1}
		REAL_PARTE_W_V {Type I LastRead -1 FirstWrite -1}
		IMAGINARIO_W_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "114745", "Max" : "114745"}
	, {"Name" : "Interval", "Min" : "114745", "Max" : "114745"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	aux_array_V { ap_fifo {  { aux_array_V_dout fifo_data 0 32 }  { aux_array_V_empty_n fifo_status 0 1 }  { aux_array_V_read fifo_update 1 1 } } }
	y_V { ap_fifo {  { y_V_din fifo_data 1 32 }  { y_V_full_n fifo_status 0 1 }  { y_V_write fifo_update 1 1 } } }
}
