set C_TypeInfoList {{ 
"goertzel_algorithm_simpler" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input_AX_ALG": [[], {"array": ["0", [1]]}] }, {"output_AX_ALG": [[], {"array": ["0", [16]]}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}]
}}
set moduleName goertzel_algorithm_simpler
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {goertzel_algorithm_simpler}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_AX_ALG_data_V int 32 regular {axi_s 0 volatile  { input_AX_ALG Data } }  }
	{ input_AX_ALG_keep_V int 4 regular {axi_s 0 volatile  { input_AX_ALG Keep } }  }
	{ input_AX_ALG_strb_V int 4 regular {axi_s 0 volatile  { input_AX_ALG Strb } }  }
	{ input_AX_ALG_user_V int 4 regular {axi_s 0 volatile  { input_AX_ALG User } }  }
	{ input_AX_ALG_last_V int 1 regular {axi_s 0 volatile  { input_AX_ALG Last } }  }
	{ input_AX_ALG_id_V int 5 regular {axi_s 0 volatile  { input_AX_ALG ID } }  }
	{ input_AX_ALG_dest_V int 5 regular {axi_s 0 volatile  { input_AX_ALG Dest } }  }
	{ output_AX_ALG_data_V int 32 regular {axi_s 1 volatile  { output_AX_ALG Data } }  }
	{ output_AX_ALG_keep_V int 4 regular {axi_s 1 volatile  { output_AX_ALG Keep } }  }
	{ output_AX_ALG_strb_V int 4 regular {axi_s 1 volatile  { output_AX_ALG Strb } }  }
	{ output_AX_ALG_user_V int 4 regular {axi_s 1 volatile  { output_AX_ALG User } }  }
	{ output_AX_ALG_last_V int 1 regular {axi_s 1 volatile  { output_AX_ALG Last } }  }
	{ output_AX_ALG_id_V int 5 regular {axi_s 1 volatile  { output_AX_ALG ID } }  }
	{ output_AX_ALG_dest_V int 5 regular {axi_s 1 volatile  { output_AX_ALG Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_AX_ALG_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_AX_ALG.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALG.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALG.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALG.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_AX_ALG.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALG.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALG.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_AX_ALG.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output_AX_ALG.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALG.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALG.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 15,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ input_AX_ALG_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_AX_ALG_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_AX_ALG_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_AX_ALG_TUSER sc_in sc_lv 4 signal 3 } 
	{ input_AX_ALG_TLAST sc_in sc_lv 1 signal 4 } 
	{ input_AX_ALG_TID sc_in sc_lv 5 signal 5 } 
	{ input_AX_ALG_TDEST sc_in sc_lv 5 signal 6 } 
	{ output_AX_ALG_TDATA sc_out sc_lv 32 signal 7 } 
	{ output_AX_ALG_TKEEP sc_out sc_lv 4 signal 8 } 
	{ output_AX_ALG_TSTRB sc_out sc_lv 4 signal 9 } 
	{ output_AX_ALG_TUSER sc_out sc_lv 4 signal 10 } 
	{ output_AX_ALG_TLAST sc_out sc_lv 1 signal 11 } 
	{ output_AX_ALG_TID sc_out sc_lv 5 signal 12 } 
	{ output_AX_ALG_TDEST sc_out sc_lv 5 signal 13 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ input_AX_ALG_TVALID sc_in sc_logic 1 invld 6 } 
	{ input_AX_ALG_TREADY sc_out sc_logic 1 inacc 6 } 
	{ output_AX_ALG_TVALID sc_out sc_logic 1 outvld 13 } 
	{ output_AX_ALG_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "input_AX_ALG_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_AX_ALG_data_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALG_keep_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALG_strb_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALG_user_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_AX_ALG_last_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALG_id_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_AX_ALG_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_keep_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_strb_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_user_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_AX_ALG_last_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALG_id_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "goertzel_algorithm_simpler",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "1", "Name" : "read_data_U0"}],
		"OutputProcess" : [
			{"ID" : "9", "Name" : "Loop_2_proc_U0"}],
		"Port" : [
			{"Name" : "input_AX_ALG_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data_U0", "Port" : "input_data_V"}]},
			{"Name" : "input_AX_ALG_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data_U0", "Port" : "input_keep_V"}]},
			{"Name" : "input_AX_ALG_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data_U0", "Port" : "input_strb_V"}]},
			{"Name" : "input_AX_ALG_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data_U0", "Port" : "input_user_V"}]},
			{"Name" : "input_AX_ALG_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data_U0", "Port" : "input_last_V"}]},
			{"Name" : "input_AX_ALG_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data_U0", "Port" : "input_id_V"}]},
			{"Name" : "input_AX_ALG_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "read_data_U0", "Port" : "input_dest_V"}]},
			{"Name" : "output_AX_ALG_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Loop_2_proc_U0", "Port" : "output_AX_ALG_data_V"}]},
			{"Name" : "output_AX_ALG_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Loop_2_proc_U0", "Port" : "output_AX_ALG_keep_V"}]},
			{"Name" : "output_AX_ALG_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Loop_2_proc_U0", "Port" : "output_AX_ALG_strb_V"}]},
			{"Name" : "output_AX_ALG_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Loop_2_proc_U0", "Port" : "output_AX_ALG_user_V"}]},
			{"Name" : "output_AX_ALG_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Loop_2_proc_U0", "Port" : "output_AX_ALG_last_V"}]},
			{"Name" : "output_AX_ALG_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Loop_2_proc_U0", "Port" : "output_AX_ALG_id_V"}]},
			{"Name" : "output_AX_ALG_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "Loop_2_proc_U0", "Port" : "output_AX_ALG_dest_V"}]},
			{"Name" : "arrayAuxiliar_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "devuelveAuxArray_U0", "Port" : "arrayAuxiliar_V"}]},
			{"Name" : "REAL_PARTE_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_g1_proc_U0", "Port" : "REAL_PARTE_W_V"}]},
			{"Name" : "IMAGINARIO_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Loop_g1_proc_U0", "Port" : "IMAGINARIO_W_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data_U0", "Parent" : "0",
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
			{"Name" : "buf_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "buf_0_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.devuelveAuxArray_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "devuelveAuxArray",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "1",
		"StartFifo" : "start_for_devuelvfYi_U",
		"Port" : [
			{"Name" : "aux_array_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "aux_array_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bufIn_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "10",
				"BlockSignal" : [
					{"Name" : "bufIn_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "arrayAuxiliar_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.devuelveAuxArray_U0.arrayAuxiliar_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_g1_proc_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Loop_g1_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "2",
		"StartFifo" : "start_for_Loop_g1g8j_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_goertzelInterno_simp_fu_79"}],
		"Port" : [
			{"Name" : "aux_array_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_goertzelInterno_simp_fu_79", "Port" : "aux_array_V"}]},
			{"Name" : "y_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "y_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "REAL_PARTE_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_goertzelInterno_simp_fu_79", "Port" : "REAL_PARTE_W_V"}]},
			{"Name" : "IMAGINARIO_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_goertzelInterno_simp_fu_79", "Port" : "IMAGINARIO_W_V"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_g1_proc_U0.grp_goertzelInterno_simp_fu_79", "Parent" : "4", "Child" : ["6", "7", "8"],
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
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_g1_proc_U0.grp_goertzelInterno_simp_fu_79.REAL_PARTE_W_V_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_g1_proc_U0.grp_goertzelInterno_simp_fu_79.IMAGINARIO_W_V_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.Loop_g1_proc_U0.grp_goertzelInterno_simp_fu_79.goertzel_algoritheOg_U11", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_2_proc_U0", "Parent" : "0",
		"CDFG" : "Loop_2_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "4",
		"StartFifo" : "start_for_Loop_2_hbi_U",
		"Port" : [
			{"Name" : "y_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "12",
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
			{"Name" : "output_AX_ALG_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bufIn_0_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.aux_array_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_devuelvfYi_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Loop_g1g8j_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Loop_2_hbi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	goertzel_algorithm_simpler {
		input_AX_ALG_data_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALG_keep_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALG_strb_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALG_user_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALG_last_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALG_id_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALG_dest_V {Type I LastRead 0 FirstWrite -1}
		output_AX_ALG_data_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_keep_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_strb_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_user_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_last_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_id_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_dest_V {Type O LastRead -1 FirstWrite 2}
		arrayAuxiliar_V {Type IO LastRead -1 FirstWrite -1}
		REAL_PARTE_W_V {Type I LastRead -1 FirstWrite -1}
		IMAGINARIO_W_V {Type I LastRead -1 FirstWrite -1}}
	read_data {
		input_data_V {Type I LastRead 0 FirstWrite -1}
		input_keep_V {Type I LastRead 0 FirstWrite -1}
		input_strb_V {Type I LastRead 0 FirstWrite -1}
		input_user_V {Type I LastRead 0 FirstWrite -1}
		input_last_V {Type I LastRead 0 FirstWrite -1}
		input_id_V {Type I LastRead 0 FirstWrite -1}
		input_dest_V {Type I LastRead 0 FirstWrite -1}
		buf_0_V {Type O LastRead -1 FirstWrite 1}}
	devuelveAuxArray {
		aux_array_V {Type O LastRead -1 FirstWrite 2}
		bufIn_0_V {Type I LastRead 2 FirstWrite -1}
		arrayAuxiliar_V {Type IO LastRead -1 FirstWrite -1}}
	Loop_g1_proc {
		aux_array_V {Type I LastRead 7 FirstWrite -1}
		y_V {Type O LastRead -1 FirstWrite 2}
		REAL_PARTE_W_V {Type I LastRead -1 FirstWrite -1}
		IMAGINARIO_W_V {Type I LastRead -1 FirstWrite -1}}
	goertzelInterno_simp {
		indiceK {Type I LastRead 0 FirstWrite -1}
		aux_array_V {Type I LastRead 7 FirstWrite -1}
		REAL_PARTE_W_V {Type I LastRead -1 FirstWrite -1}
		IMAGINARIO_W_V {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "114745", "Max" : "114745"}
	, {"Name" : "Interval", "Min" : "114746", "Max" : "114746"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_AX_ALG_data_V { axis {  { input_AX_ALG_TDATA in_data 0 32 } } }
	input_AX_ALG_keep_V { axis {  { input_AX_ALG_TKEEP in_data 0 4 } } }
	input_AX_ALG_strb_V { axis {  { input_AX_ALG_TSTRB in_data 0 4 } } }
	input_AX_ALG_user_V { axis {  { input_AX_ALG_TUSER in_data 0 4 } } }
	input_AX_ALG_last_V { axis {  { input_AX_ALG_TLAST in_data 0 1 } } }
	input_AX_ALG_id_V { axis {  { input_AX_ALG_TID in_data 0 5 } } }
	input_AX_ALG_dest_V { axis {  { input_AX_ALG_TDEST in_data 0 5 }  { input_AX_ALG_TVALID in_vld 0 1 }  { input_AX_ALG_TREADY in_acc 1 1 } } }
	output_AX_ALG_data_V { axis {  { output_AX_ALG_TDATA out_data 1 32 } } }
	output_AX_ALG_keep_V { axis {  { output_AX_ALG_TKEEP out_data 1 4 } } }
	output_AX_ALG_strb_V { axis {  { output_AX_ALG_TSTRB out_data 1 4 } } }
	output_AX_ALG_user_V { axis {  { output_AX_ALG_TUSER out_data 1 4 } } }
	output_AX_ALG_last_V { axis {  { output_AX_ALG_TLAST out_data 1 1 } } }
	output_AX_ALG_id_V { axis {  { output_AX_ALG_TID out_data 1 5 } } }
	output_AX_ALG_dest_V { axis {  { output_AX_ALG_TDEST out_data 1 5 }  { output_AX_ALG_TVALID out_vld 1 1 }  { output_AX_ALG_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
