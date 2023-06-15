set C_TypeInfoList {{ 
"axi_algorithm" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input_AX_ALG": [[], {"array": ["0", [1]]}] }, {"output_AX_ALG": [[], {"array": ["0", [4]]}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}]
}}
set moduleName axi_algorithm
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {axi_algorithm}
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
 	{ "Name" : "output_AX_ALG_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_AX_ALG.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output_AX_ALG.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALG.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALG.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
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
	{ input_AX_ALG_TVALID sc_in sc_logic 1 invld 6 } 
	{ input_AX_ALG_TREADY sc_out sc_logic 1 inacc 6 } 
	{ output_AX_ALG_TVALID sc_out sc_logic 1 outvld 13 } 
	{ output_AX_ALG_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
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
 	{ "name": "input_AX_ALG_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "13", "14", "15"],
		"CDFG" : "axi_algorithm",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "2", "Name" : "read_data_U0"}],
		"OutputProcess" : [
			{"ID" : "13", "Name" : "write_data_U0"}],
		"Port" : [
			{"Name" : "input_AX_ALG_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_data_U0", "Port" : "input_data_V"}]},
			{"Name" : "input_AX_ALG_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_data_U0", "Port" : "input_keep_V"}]},
			{"Name" : "input_AX_ALG_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_data_U0", "Port" : "input_strb_V"}]},
			{"Name" : "input_AX_ALG_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_data_U0", "Port" : "input_user_V"}]},
			{"Name" : "input_AX_ALG_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_data_U0", "Port" : "input_last_V"}]},
			{"Name" : "input_AX_ALG_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_data_U0", "Port" : "input_id_V"}]},
			{"Name" : "input_AX_ALG_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_data_U0", "Port" : "input_dest_V"}]},
			{"Name" : "output_AX_ALG_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_data_U0", "Port" : "output_data_V"}]},
			{"Name" : "output_AX_ALG_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_data_U0", "Port" : "output_keep_V"}]},
			{"Name" : "output_AX_ALG_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_data_U0", "Port" : "output_strb_V"}]},
			{"Name" : "output_AX_ALG_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_data_U0", "Port" : "output_user_V"}]},
			{"Name" : "output_AX_ALG_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_data_U0", "Port" : "output_last_V"}]},
			{"Name" : "output_AX_ALG_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_data_U0", "Port" : "output_id_V"}]},
			{"Name" : "output_AX_ALG_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "write_data_U0", "Port" : "output_dest_V"}]},
			{"Name" : "aux_array_V_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "sweep_algorithm_DECM_U0", "Port" : "aux_array_V_1"}]},
			{"Name" : "sum_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "sweep_algorithm_DECM_U0", "Port" : "sum_V"}]},
			{"Name" : "aux_array_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "sweep_algorithm_DECM_U0", "Port" : "aux_array_V"}]},
			{"Name" : "vector_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "sweep_algorithm_DECM_U0", "Port" : "vector_V_0"}]},
			{"Name" : "derivada_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "sweep_algorithm_DECM_U0", "Port" : "derivada_V_0"}]},
			{"Name" : "contador", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "sweep_algorithm_DECM_U0", "Port" : "contador"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_DISTANCEX_out_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data_U0", "Parent" : "0",
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
			{"Name" : "input_dest_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_arrayctor_loop_U0", "Parent" : "0",
		"CDFG" : "Block_arrayctor_loop",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0", "Parent" : "0", "Child" : ["5", "6", "7", "9", "10", "11", "12"],
		"CDFG" : "sweep_algorithm_DECM",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "15"},
			{"Name" : "currentGroupX_OUT_V", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "13", "DependentChan" : "1"},
			{"Name" : "aux_array_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sum_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "aux_array_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_meanFilterInTime_fu_494", "Port" : "aux_array_V"}]},
			{"Name" : "vector_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "derivada_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "contador", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0.aux_array_V_1_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0.sum_V_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0.grp_meanFilterInTime_fu_494", "Parent" : "4", "Child" : ["8"],
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
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0.grp_meanFilterInTime_fu_494.aux_array_V_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0.axi_algorithm_maceOg_U11", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0.axi_algorithm_macfYi_U12", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0.axi_algorithm_maceOg_U13", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sweep_algorithm_DECM_U0.axi_algorithm_macfYi_U14", "Parent" : "4"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data_U0", "Parent" : "0",
		"CDFG" : "write_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "1"},
			{"Name" : "output_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_AX_ALG_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_Tj_in_0_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_Val2_cast_loc_ch_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axi_algorithm {
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
		aux_array_V_1 {Type IO LastRead -1 FirstWrite -1}
		sum_V {Type IO LastRead -1 FirstWrite -1}
		aux_array_V {Type IO LastRead -1 FirstWrite -1}
		vector_V_0 {Type IO LastRead -1 FirstWrite -1}
		derivada_V_0 {Type IO LastRead -1 FirstWrite -1}
		contador {Type IO LastRead -1 FirstWrite -1}}
	read_data {
		input_data_V {Type I LastRead 0 FirstWrite -1}
		input_keep_V {Type I LastRead 0 FirstWrite -1}
		input_strb_V {Type I LastRead 0 FirstWrite -1}
		input_user_V {Type I LastRead 0 FirstWrite -1}
		input_last_V {Type I LastRead 0 FirstWrite -1}
		input_id_V {Type I LastRead 0 FirstWrite -1}
		input_dest_V {Type I LastRead 0 FirstWrite -1}}
	Block_arrayctor_loop {
		p_read {Type I LastRead 0 FirstWrite -1}}
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
		aux_array_V {Type IO LastRead -1 FirstWrite -1}}
	write_data {
		buf_V {Type I LastRead 1 FirstWrite -1}
		output_data_V {Type O LastRead -1 FirstWrite 2}
		output_keep_V {Type O LastRead -1 FirstWrite 2}
		output_strb_V {Type O LastRead -1 FirstWrite 2}
		output_user_V {Type O LastRead -1 FirstWrite 2}
		output_last_V {Type O LastRead -1 FirstWrite 2}
		output_id_V {Type O LastRead -1 FirstWrite 2}
		output_dest_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16402", "Max" : "19531"}
	, {"Name" : "Interval", "Min" : "16395", "Max" : "19524"}
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
