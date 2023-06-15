set C_TypeInfoList {{ 
"axi_algorithm" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input_AX_ALG": [[], {"array": ["0", [4]]}] }, {"output_AX_ALGdedo0": [[], {"array": ["0", [1]]}] }, {"output_AX_ALGpalma0": [[], {"array": ["0", [1]]}] }, {"output_AX_ALGdedo1": [[], {"array": ["0", [1]]}] }, {"output_AX_ALGpalma1": [[], {"array": ["0", [1]]}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}]
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
	{ output_AX_ALGdedo0_data_V int 32 regular {axi_s 1 volatile  { output_AX_ALGdedo0 Data } }  }
	{ output_AX_ALGdedo0_keep_V int 4 regular {axi_s 1 volatile  { output_AX_ALGdedo0 Keep } }  }
	{ output_AX_ALGdedo0_strb_V int 4 regular {axi_s 1 volatile  { output_AX_ALGdedo0 Strb } }  }
	{ output_AX_ALGdedo0_user_V int 4 regular {axi_s 1 volatile  { output_AX_ALGdedo0 User } }  }
	{ output_AX_ALGdedo0_last_V int 1 regular {axi_s 1 volatile  { output_AX_ALGdedo0 Last } }  }
	{ output_AX_ALGdedo0_id_V int 5 regular {axi_s 1 volatile  { output_AX_ALGdedo0 ID } }  }
	{ output_AX_ALGdedo0_dest_V int 5 regular {axi_s 1 volatile  { output_AX_ALGdedo0 Dest } }  }
	{ output_AX_ALGpalma0_data_V int 32 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Data } }  }
	{ output_AX_ALGpalma0_keep_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Keep } }  }
	{ output_AX_ALGpalma0_strb_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Strb } }  }
	{ output_AX_ALGpalma0_user_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma0 User } }  }
	{ output_AX_ALGpalma0_last_V int 1 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Last } }  }
	{ output_AX_ALGpalma0_id_V int 5 regular {axi_s 1 volatile  { output_AX_ALGpalma0 ID } }  }
	{ output_AX_ALGpalma0_dest_V int 5 regular {axi_s 1 volatile  { output_AX_ALGpalma0 Dest } }  }
	{ output_AX_ALGdedo1_data_V int 32 regular {axi_s 1 volatile  { output_AX_ALGdedo1 Data } }  }
	{ output_AX_ALGdedo1_keep_V int 4 regular {axi_s 1 volatile  { output_AX_ALGdedo1 Keep } }  }
	{ output_AX_ALGdedo1_strb_V int 4 regular {axi_s 1 volatile  { output_AX_ALGdedo1 Strb } }  }
	{ output_AX_ALGdedo1_user_V int 4 regular {axi_s 1 volatile  { output_AX_ALGdedo1 User } }  }
	{ output_AX_ALGdedo1_last_V int 1 regular {axi_s 1 volatile  { output_AX_ALGdedo1 Last } }  }
	{ output_AX_ALGdedo1_id_V int 5 regular {axi_s 1 volatile  { output_AX_ALGdedo1 ID } }  }
	{ output_AX_ALGdedo1_dest_V int 5 regular {axi_s 1 volatile  { output_AX_ALGdedo1 Dest } }  }
	{ output_AX_ALGpalma1_data_V int 32 regular {axi_s 1 volatile  { output_AX_ALGpalma1 Data } }  }
	{ output_AX_ALGpalma1_keep_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma1 Keep } }  }
	{ output_AX_ALGpalma1_strb_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma1 Strb } }  }
	{ output_AX_ALGpalma1_user_V int 4 regular {axi_s 1 volatile  { output_AX_ALGpalma1 User } }  }
	{ output_AX_ALGpalma1_last_V int 1 regular {axi_s 1 volatile  { output_AX_ALGpalma1 Last } }  }
	{ output_AX_ALGpalma1_id_V int 5 regular {axi_s 1 volatile  { output_AX_ALGpalma1 ID } }  }
	{ output_AX_ALGpalma1_dest_V int 5 regular {axi_s 1 volatile  { output_AX_ALGpalma1 Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_AX_ALG_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_AX_ALG.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALG.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALG.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALG.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_AX_ALG.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALG.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALG_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALG.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo0_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_AX_ALGdedo0.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo0_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGdedo0.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo0_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGdedo0.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo0_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGdedo0.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo0_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output_AX_ALGdedo0.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo0_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALGdedo0.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo0_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALGdedo0.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma0_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_AX_ALGpalma0.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma0_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGpalma0.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma0_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGpalma0.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma0_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGpalma0.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma0_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output_AX_ALGpalma0.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma0_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALGpalma0.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma0_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALGpalma0.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo1_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_AX_ALGdedo1.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo1_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGdedo1.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo1_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGdedo1.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo1_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGdedo1.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo1_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output_AX_ALGdedo1.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo1_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALGdedo1.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGdedo1_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALGdedo1.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma1_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_AX_ALGpalma1.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma1_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGpalma1.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma1_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGpalma1.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma1_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALGpalma1.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma1_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output_AX_ALGpalma1.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma1_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALGpalma1.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALGpalma1_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALGpalma1.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
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
	{ output_AX_ALGdedo0_TDATA sc_out sc_lv 32 signal 7 } 
	{ output_AX_ALGdedo0_TKEEP sc_out sc_lv 4 signal 8 } 
	{ output_AX_ALGdedo0_TSTRB sc_out sc_lv 4 signal 9 } 
	{ output_AX_ALGdedo0_TUSER sc_out sc_lv 4 signal 10 } 
	{ output_AX_ALGdedo0_TLAST sc_out sc_lv 1 signal 11 } 
	{ output_AX_ALGdedo0_TID sc_out sc_lv 5 signal 12 } 
	{ output_AX_ALGdedo0_TDEST sc_out sc_lv 5 signal 13 } 
	{ output_AX_ALGpalma0_TDATA sc_out sc_lv 32 signal 14 } 
	{ output_AX_ALGpalma0_TKEEP sc_out sc_lv 4 signal 15 } 
	{ output_AX_ALGpalma0_TSTRB sc_out sc_lv 4 signal 16 } 
	{ output_AX_ALGpalma0_TUSER sc_out sc_lv 4 signal 17 } 
	{ output_AX_ALGpalma0_TLAST sc_out sc_lv 1 signal 18 } 
	{ output_AX_ALGpalma0_TID sc_out sc_lv 5 signal 19 } 
	{ output_AX_ALGpalma0_TDEST sc_out sc_lv 5 signal 20 } 
	{ output_AX_ALGdedo1_TDATA sc_out sc_lv 32 signal 21 } 
	{ output_AX_ALGdedo1_TKEEP sc_out sc_lv 4 signal 22 } 
	{ output_AX_ALGdedo1_TSTRB sc_out sc_lv 4 signal 23 } 
	{ output_AX_ALGdedo1_TUSER sc_out sc_lv 4 signal 24 } 
	{ output_AX_ALGdedo1_TLAST sc_out sc_lv 1 signal 25 } 
	{ output_AX_ALGdedo1_TID sc_out sc_lv 5 signal 26 } 
	{ output_AX_ALGdedo1_TDEST sc_out sc_lv 5 signal 27 } 
	{ output_AX_ALGpalma1_TDATA sc_out sc_lv 32 signal 28 } 
	{ output_AX_ALGpalma1_TKEEP sc_out sc_lv 4 signal 29 } 
	{ output_AX_ALGpalma1_TSTRB sc_out sc_lv 4 signal 30 } 
	{ output_AX_ALGpalma1_TUSER sc_out sc_lv 4 signal 31 } 
	{ output_AX_ALGpalma1_TLAST sc_out sc_lv 1 signal 32 } 
	{ output_AX_ALGpalma1_TID sc_out sc_lv 5 signal 33 } 
	{ output_AX_ALGpalma1_TDEST sc_out sc_lv 5 signal 34 } 
	{ input_AX_ALG_TVALID sc_in sc_logic 1 invld 6 } 
	{ input_AX_ALG_TREADY sc_out sc_logic 1 inacc 6 } 
	{ output_AX_ALGdedo0_TVALID sc_out sc_logic 1 outvld 13 } 
	{ output_AX_ALGdedo0_TREADY sc_in sc_logic 1 outacc 13 } 
	{ output_AX_ALGpalma0_TVALID sc_out sc_logic 1 outvld 20 } 
	{ output_AX_ALGpalma0_TREADY sc_in sc_logic 1 outacc 20 } 
	{ output_AX_ALGdedo1_TVALID sc_out sc_logic 1 outvld 27 } 
	{ output_AX_ALGdedo1_TREADY sc_in sc_logic 1 outacc 27 } 
	{ output_AX_ALGpalma1_TVALID sc_out sc_logic 1 outvld 34 } 
	{ output_AX_ALGpalma1_TREADY sc_in sc_logic 1 outacc 34 } 
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
 	{ "name": "output_AX_ALGdedo0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_AX_ALGdedo0_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGdedo0_keep_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGdedo0_strb_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo0_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGdedo0_user_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_AX_ALGdedo0_last_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo0_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALGdedo0_id_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo0_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALGdedo0_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_AX_ALGpalma0_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGpalma0_keep_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGpalma0_strb_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGpalma0_user_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_AX_ALGpalma0_last_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALGpalma0_id_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALGpalma0_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_AX_ALGdedo1_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGdedo1_keep_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGdedo1_strb_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGdedo1_user_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_AX_ALGdedo1_last_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALGdedo1_id_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALGdedo1_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_AX_ALGpalma1_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGpalma1_keep_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGpalma1_strb_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALGpalma1_user_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_AX_ALGpalma1_last_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALGpalma1_id_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALGpalma1_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALG_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_AX_ALGdedo0_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_AX_ALGdedo0_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_AX_ALGpalma0_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma0_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_AX_ALGpalma0_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_AX_ALGdedo1_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGdedo1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_AX_ALGdedo1_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_AX_ALGpalma1_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALGpalma1_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_AX_ALGpalma1_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
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
			{"ID" : "4", "Name" : "write_data21_U0"},
			{"ID" : "5", "Name" : "write_data22_U0"},
			{"ID" : "6", "Name" : "write_data23_U0"},
			{"ID" : "7", "Name" : "write_data_U0"}],
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
			{"Name" : "output_AX_ALGdedo0_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "write_data21_U0", "Port" : "output_data_V"}]},
			{"Name" : "output_AX_ALGdedo0_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "write_data21_U0", "Port" : "output_keep_V"}]},
			{"Name" : "output_AX_ALGdedo0_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "write_data21_U0", "Port" : "output_strb_V"}]},
			{"Name" : "output_AX_ALGdedo0_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "write_data21_U0", "Port" : "output_user_V"}]},
			{"Name" : "output_AX_ALGdedo0_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "write_data21_U0", "Port" : "output_last_V"}]},
			{"Name" : "output_AX_ALGdedo0_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "write_data21_U0", "Port" : "output_id_V"}]},
			{"Name" : "output_AX_ALGdedo0_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "write_data21_U0", "Port" : "output_dest_V"}]},
			{"Name" : "output_AX_ALGpalma0_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "write_data22_U0", "Port" : "output_data_V"}]},
			{"Name" : "output_AX_ALGpalma0_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "write_data22_U0", "Port" : "output_keep_V"}]},
			{"Name" : "output_AX_ALGpalma0_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "write_data22_U0", "Port" : "output_strb_V"}]},
			{"Name" : "output_AX_ALGpalma0_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "write_data22_U0", "Port" : "output_user_V"}]},
			{"Name" : "output_AX_ALGpalma0_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "write_data22_U0", "Port" : "output_last_V"}]},
			{"Name" : "output_AX_ALGpalma0_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "write_data22_U0", "Port" : "output_id_V"}]},
			{"Name" : "output_AX_ALGpalma0_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "write_data22_U0", "Port" : "output_dest_V"}]},
			{"Name" : "output_AX_ALGdedo1_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "write_data23_U0", "Port" : "output_data_V"}]},
			{"Name" : "output_AX_ALGdedo1_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "write_data23_U0", "Port" : "output_keep_V"}]},
			{"Name" : "output_AX_ALGdedo1_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "write_data23_U0", "Port" : "output_strb_V"}]},
			{"Name" : "output_AX_ALGdedo1_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "write_data23_U0", "Port" : "output_user_V"}]},
			{"Name" : "output_AX_ALGdedo1_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "write_data23_U0", "Port" : "output_last_V"}]},
			{"Name" : "output_AX_ALGdedo1_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "write_data23_U0", "Port" : "output_id_V"}]},
			{"Name" : "output_AX_ALGdedo1_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "write_data23_U0", "Port" : "output_dest_V"}]},
			{"Name" : "output_AX_ALGpalma1_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "write_data_U0", "Port" : "output_data_V"}]},
			{"Name" : "output_AX_ALGpalma1_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "write_data_U0", "Port" : "output_keep_V"}]},
			{"Name" : "output_AX_ALGpalma1_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "write_data_U0", "Port" : "output_strb_V"}]},
			{"Name" : "output_AX_ALGpalma1_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "write_data_U0", "Port" : "output_user_V"}]},
			{"Name" : "output_AX_ALGpalma1_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "write_data_U0", "Port" : "output_last_V"}]},
			{"Name" : "output_AX_ALGpalma1_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "write_data_U0", "Port" : "output_id_V"}]},
			{"Name" : "output_AX_ALGpalma1_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "write_data_U0", "Port" : "output_dest_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dato_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_data_U0", "Parent" : "0",
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
					{"Name" : "input_AX_ALG_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "input_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "buf_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "1"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_arrayctor_loop_U0", "Parent" : "0",
		"CDFG" : "Block_arrayctor_loop",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "dato", "Type" : "Memory", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "1"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data21_U0", "Parent" : "0",
		"CDFG" : "write_data21",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "8"},
			{"Name" : "output_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_AX_ALGdedo0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data22_U0", "Parent" : "0",
		"CDFG" : "write_data22",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "9"},
			{"Name" : "output_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_AX_ALGpalma0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data23_U0", "Parent" : "0",
		"CDFG" : "write_data23",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "10"},
			{"Name" : "output_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_AX_ALGdedo1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_data_U0", "Parent" : "0",
		"CDFG" : "write_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "AlignedPipeline" : "1", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "0",
		"Port" : [
			{"Name" : "buf_0_V_read", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "11"},
			{"Name" : "output_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_AX_ALGpalma1_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dedo0_0_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.palma0_0_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dedo1_0_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.palma1_0_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axi_algorithm {
		input_AX_ALG_data_V {Type I LastRead 1 FirstWrite -1}
		input_AX_ALG_keep_V {Type I LastRead 1 FirstWrite -1}
		input_AX_ALG_strb_V {Type I LastRead 1 FirstWrite -1}
		input_AX_ALG_user_V {Type I LastRead 1 FirstWrite -1}
		input_AX_ALG_last_V {Type I LastRead 1 FirstWrite -1}
		input_AX_ALG_id_V {Type I LastRead 1 FirstWrite -1}
		input_AX_ALG_dest_V {Type I LastRead 1 FirstWrite -1}
		output_AX_ALGdedo0_data_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo0_keep_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo0_strb_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo0_user_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo0_last_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo0_id_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo0_dest_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma0_data_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma0_keep_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma0_strb_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma0_user_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma0_last_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma0_id_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma0_dest_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo1_data_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo1_keep_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo1_strb_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo1_user_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo1_last_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo1_id_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGdedo1_dest_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma1_data_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma1_keep_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma1_strb_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma1_user_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma1_last_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma1_id_V {Type O LastRead -1 FirstWrite 0}
		output_AX_ALGpalma1_dest_V {Type O LastRead -1 FirstWrite 0}}
	read_data {
		input_data_V {Type I LastRead 1 FirstWrite -1}
		input_keep_V {Type I LastRead 1 FirstWrite -1}
		input_strb_V {Type I LastRead 1 FirstWrite -1}
		input_user_V {Type I LastRead 1 FirstWrite -1}
		input_last_V {Type I LastRead 1 FirstWrite -1}
		input_id_V {Type I LastRead 1 FirstWrite -1}
		input_dest_V {Type I LastRead 1 FirstWrite -1}
		buf_V {Type O LastRead -1 FirstWrite 2}}
	Block_arrayctor_loop {
		dato {Type I LastRead 2 FirstWrite -1}}
	write_data21 {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_data_V {Type O LastRead -1 FirstWrite 0}
		output_keep_V {Type O LastRead -1 FirstWrite 0}
		output_strb_V {Type O LastRead -1 FirstWrite 0}
		output_user_V {Type O LastRead -1 FirstWrite 0}
		output_last_V {Type O LastRead -1 FirstWrite 0}
		output_id_V {Type O LastRead -1 FirstWrite 0}
		output_dest_V {Type O LastRead -1 FirstWrite 0}}
	write_data22 {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_data_V {Type O LastRead -1 FirstWrite 0}
		output_keep_V {Type O LastRead -1 FirstWrite 0}
		output_strb_V {Type O LastRead -1 FirstWrite 0}
		output_user_V {Type O LastRead -1 FirstWrite 0}
		output_last_V {Type O LastRead -1 FirstWrite 0}
		output_id_V {Type O LastRead -1 FirstWrite 0}
		output_dest_V {Type O LastRead -1 FirstWrite 0}}
	write_data23 {
		p_read {Type I LastRead 0 FirstWrite -1}
		output_data_V {Type O LastRead -1 FirstWrite 0}
		output_keep_V {Type O LastRead -1 FirstWrite 0}
		output_strb_V {Type O LastRead -1 FirstWrite 0}
		output_user_V {Type O LastRead -1 FirstWrite 0}
		output_last_V {Type O LastRead -1 FirstWrite 0}
		output_id_V {Type O LastRead -1 FirstWrite 0}
		output_dest_V {Type O LastRead -1 FirstWrite 0}}
	write_data {
		buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		output_data_V {Type O LastRead -1 FirstWrite 0}
		output_keep_V {Type O LastRead -1 FirstWrite 0}
		output_strb_V {Type O LastRead -1 FirstWrite 0}
		output_user_V {Type O LastRead -1 FirstWrite 0}
		output_last_V {Type O LastRead -1 FirstWrite 0}
		output_id_V {Type O LastRead -1 FirstWrite 0}
		output_dest_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "7"}
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
	output_AX_ALGdedo0_data_V { axis {  { output_AX_ALGdedo0_TDATA out_data 1 32 } } }
	output_AX_ALGdedo0_keep_V { axis {  { output_AX_ALGdedo0_TKEEP out_data 1 4 } } }
	output_AX_ALGdedo0_strb_V { axis {  { output_AX_ALGdedo0_TSTRB out_data 1 4 } } }
	output_AX_ALGdedo0_user_V { axis {  { output_AX_ALGdedo0_TUSER out_data 1 4 } } }
	output_AX_ALGdedo0_last_V { axis {  { output_AX_ALGdedo0_TLAST out_data 1 1 } } }
	output_AX_ALGdedo0_id_V { axis {  { output_AX_ALGdedo0_TID out_data 1 5 } } }
	output_AX_ALGdedo0_dest_V { axis {  { output_AX_ALGdedo0_TDEST out_data 1 5 }  { output_AX_ALGdedo0_TVALID out_vld 1 1 }  { output_AX_ALGdedo0_TREADY out_acc 0 1 } } }
	output_AX_ALGpalma0_data_V { axis {  { output_AX_ALGpalma0_TDATA out_data 1 32 } } }
	output_AX_ALGpalma0_keep_V { axis {  { output_AX_ALGpalma0_TKEEP out_data 1 4 } } }
	output_AX_ALGpalma0_strb_V { axis {  { output_AX_ALGpalma0_TSTRB out_data 1 4 } } }
	output_AX_ALGpalma0_user_V { axis {  { output_AX_ALGpalma0_TUSER out_data 1 4 } } }
	output_AX_ALGpalma0_last_V { axis {  { output_AX_ALGpalma0_TLAST out_data 1 1 } } }
	output_AX_ALGpalma0_id_V { axis {  { output_AX_ALGpalma0_TID out_data 1 5 } } }
	output_AX_ALGpalma0_dest_V { axis {  { output_AX_ALGpalma0_TDEST out_data 1 5 }  { output_AX_ALGpalma0_TVALID out_vld 1 1 }  { output_AX_ALGpalma0_TREADY out_acc 0 1 } } }
	output_AX_ALGdedo1_data_V { axis {  { output_AX_ALGdedo1_TDATA out_data 1 32 } } }
	output_AX_ALGdedo1_keep_V { axis {  { output_AX_ALGdedo1_TKEEP out_data 1 4 } } }
	output_AX_ALGdedo1_strb_V { axis {  { output_AX_ALGdedo1_TSTRB out_data 1 4 } } }
	output_AX_ALGdedo1_user_V { axis {  { output_AX_ALGdedo1_TUSER out_data 1 4 } } }
	output_AX_ALGdedo1_last_V { axis {  { output_AX_ALGdedo1_TLAST out_data 1 1 } } }
	output_AX_ALGdedo1_id_V { axis {  { output_AX_ALGdedo1_TID out_data 1 5 } } }
	output_AX_ALGdedo1_dest_V { axis {  { output_AX_ALGdedo1_TDEST out_data 1 5 }  { output_AX_ALGdedo1_TVALID out_vld 1 1 }  { output_AX_ALGdedo1_TREADY out_acc 0 1 } } }
	output_AX_ALGpalma1_data_V { axis {  { output_AX_ALGpalma1_TDATA out_data 1 32 } } }
	output_AX_ALGpalma1_keep_V { axis {  { output_AX_ALGpalma1_TKEEP out_data 1 4 } } }
	output_AX_ALGpalma1_strb_V { axis {  { output_AX_ALGpalma1_TSTRB out_data 1 4 } } }
	output_AX_ALGpalma1_user_V { axis {  { output_AX_ALGpalma1_TUSER out_data 1 4 } } }
	output_AX_ALGpalma1_last_V { axis {  { output_AX_ALGpalma1_TLAST out_data 1 1 } } }
	output_AX_ALGpalma1_id_V { axis {  { output_AX_ALGpalma1_TID out_data 1 5 } } }
	output_AX_ALGpalma1_dest_V { axis {  { output_AX_ALGpalma1_TDEST out_data 1 5 }  { output_AX_ALGpalma1_TVALID out_vld 1 1 }  { output_AX_ALGpalma1_TREADY out_acc 0 1 } } }
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
