set C_TypeInfoList {{ 
"wrapped_mmult_hw" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in_stream": [[], {"array": ["0", [4]]}] }, {"out_stream": [[], {"array": ["0", [3]]}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}]
}}
set moduleName wrapped_mmult_hw
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {wrapped_mmult_hw}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_data_V int 32 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_keep_V int 4 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_strb_V int 4 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_user_V int 4 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_id_V int 5 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_dest_V int 5 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ out_stream_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_user_V int 4 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_id_V int 5 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_dest_V int 5 regular {axi_s 1 volatile  { out_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "in_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "in_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "in_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_stream.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "out_stream.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out_stream.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "out_stream.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} , 
 	{ "Name" : "out_stream_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "out_stream.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 2,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ in_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 4 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 5 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 5 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 8 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 9 } 
	{ out_stream_TUSER sc_out sc_lv 4 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_stream_TID sc_out sc_lv 5 signal 12 } 
	{ out_stream_TDEST sc_out sc_lv 5 signal 13 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "in_stream_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "out_stream_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "10", "14"],
		"CDFG" : "wrapped_mmult_hw",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "4", "Name" : "read_data_U0"}],
		"OutputProcess" : [
			{"ID" : "14", "Name" : "Loop_3_proc_U0"}],
		"Port" : [
			{"Name" : "in_stream_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_data_U0", "Port" : "input_data_V"}]},
			{"Name" : "in_stream_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_data_U0", "Port" : "input_keep_V"}]},
			{"Name" : "in_stream_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_data_U0", "Port" : "input_strb_V"}]},
			{"Name" : "in_stream_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_data_U0", "Port" : "input_user_V"}]},
			{"Name" : "in_stream_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_data_U0", "Port" : "input_last_V"}]},
			{"Name" : "in_stream_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_data_U0", "Port" : "input_id_V"}]},
			{"Name" : "in_stream_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "read_data_U0", "Port" : "input_dest_V"}]},
			{"Name" : "out_stream_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_3_proc_U0", "Port" : "out_stream_data_V"}]},
			{"Name" : "out_stream_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_3_proc_U0", "Port" : "out_stream_keep_V"}]},
			{"Name" : "out_stream_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_3_proc_U0", "Port" : "out_stream_strb_V"}]},
			{"Name" : "out_stream_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_3_proc_U0", "Port" : "out_stream_user_V"}]},
			{"Name" : "out_stream_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_3_proc_U0", "Port" : "out_stream_last_V"}]},
			{"Name" : "out_stream_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_3_proc_U0", "Port" : "out_stream_id_V"}]},
			{"Name" : "out_stream_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "14", "SubInstance" : "Loop_3_proc_U0", "Port" : "out_stream_dest_V"}]},
			{"Name" : "vectorMedia1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "Block_preheader117_U0", "Port" : "vectorMedia1"}]},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Loop_L1_proc_U0", "Port" : "coeff"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dato_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.X_MAT_0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.X_OUT_0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data_U0", "Parent" : "0",
		"CDFG" : "read_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "input_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "1"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_preheader117_U0", "Parent" : "0", "Child" : ["6", "7", "8", "9"],
		"CDFG" : "Block_preheader117_s",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "dato_V", "Type" : "Memory", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "1"},
			{"Name" : "X_MAT_0", "Type" : "Memory", "Direction" : "IO", "DependentProc" : "10", "DependentChan" : "2"},
			{"Name" : "vectorMedia1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_preheader117_U0.vectorMedia1_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_preheader117_U0.wrapped_mmult_hw_cud_U8", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_preheader117_U0.wrapped_mmult_hw_dEe_U9", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Block_preheader117_U0.wrapped_mmult_hw_dEe_U10", "Parent" : "5"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_L1_proc_U0", "Parent" : "0", "Child" : ["11", "12", "13"],
		"CDFG" : "Loop_L1_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "X_OUT_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "14", "DependentChan" : "3"},
			{"Name" : "X_MAT_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "2"},
			{"Name" : "coeff", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_L1_proc_U0.coeff_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_L1_proc_U0.wrapped_mmult_hw_eOg_U14", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_L1_proc_U0.wrapped_mmult_hw_fYi_U15", "Parent" : "10"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_3_proc_U0", "Parent" : "0",
		"CDFG" : "Loop_3_proc",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "X_OUT_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "10", "DependentChan" : "3"},
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
	wrapped_mmult_hw {
		in_stream_data_V {Type I LastRead 1 FirstWrite -1}
		in_stream_keep_V {Type I LastRead 1 FirstWrite -1}
		in_stream_strb_V {Type I LastRead 1 FirstWrite -1}
		in_stream_user_V {Type I LastRead 1 FirstWrite -1}
		in_stream_last_V {Type I LastRead 1 FirstWrite -1}
		in_stream_id_V {Type I LastRead 1 FirstWrite -1}
		in_stream_dest_V {Type I LastRead 1 FirstWrite -1}
		out_stream_data_V {Type O LastRead -1 FirstWrite 2}
		out_stream_keep_V {Type O LastRead -1 FirstWrite 2}
		out_stream_strb_V {Type O LastRead -1 FirstWrite 2}
		out_stream_user_V {Type O LastRead -1 FirstWrite 2}
		out_stream_last_V {Type O LastRead -1 FirstWrite 2}
		out_stream_id_V {Type O LastRead -1 FirstWrite 2}
		out_stream_dest_V {Type O LastRead -1 FirstWrite 2}
		vectorMedia1 {Type I LastRead -1 FirstWrite -1}
		coeff {Type I LastRead -1 FirstWrite -1}}
	read_data {
		input_data_V {Type I LastRead 1 FirstWrite -1}
		input_keep_V {Type I LastRead 1 FirstWrite -1}
		input_strb_V {Type I LastRead 1 FirstWrite -1}
		input_user_V {Type I LastRead 1 FirstWrite -1}
		input_last_V {Type I LastRead 1 FirstWrite -1}
		input_id_V {Type I LastRead 1 FirstWrite -1}
		input_dest_V {Type I LastRead 1 FirstWrite -1}
		buf_V {Type O LastRead -1 FirstWrite 2}}
	Block_preheader117_s {
		dato_V {Type I LastRead 3 FirstWrite -1}
		X_MAT_0 {Type IO LastRead 10 FirstWrite 6}
		vectorMedia1 {Type I LastRead -1 FirstWrite -1}}
	Loop_L1_proc {
		X_OUT_0 {Type O LastRead -1 FirstWrite 2}
		X_MAT_0 {Type I LastRead 3 FirstWrite -1}
		coeff {Type I LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "364", "Max" : "364"}
	, {"Name" : "Interval", "Min" : "272", "Max" : "272"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_data_V { axis {  { in_stream_TDATA in_data 0 32 } } }
	in_stream_keep_V { axis {  { in_stream_TKEEP in_data 0 4 } } }
	in_stream_strb_V { axis {  { in_stream_TSTRB in_data 0 4 } } }
	in_stream_user_V { axis {  { in_stream_TUSER in_data 0 4 } } }
	in_stream_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_id_V { axis {  { in_stream_TID in_data 0 5 } } }
	in_stream_dest_V { axis {  { in_stream_TDEST in_data 0 5 }  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 } } }
	out_stream_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_user_V { axis {  { out_stream_TUSER out_data 1 4 } } }
	out_stream_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_id_V { axis {  { out_stream_TID out_data 1 5 } } }
	out_stream_dest_V { axis {  { out_stream_TDEST out_data 1 5 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
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
