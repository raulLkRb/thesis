set C_TypeInfoList {{ 
"opcionA" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input_AX_ALGdedo0": [[], {"array": ["0", [1]]}] }, {"input_AX_ALGpalma0": [[], {"array": ["0", [1]]}] }, {"input_AX_ALGdedo1": [[], {"array": ["0", [1]]}] }, {"input_AX_ALGpalma1": [[], {"array": ["0", [1]]}] }, {"output_AX_ALG": [[], {"array": ["0", [4]]}] }],[],""], 
"0": [ "AXI_VAL", {"typedef": [[[],"1"],""]}], 
"1": [ "ap_axiu<32, 4, 5, 5>", {"struct": [[],[{"D":[[], {"scalar": { "int": 32}}]},{"U":[[], {"scalar": { "int": 4}}]},{"TI":[[], {"scalar": { "int": 5}}]},{"TD":[[], {"scalar": { "int": 5}}]}],[{ "data": [[], "2"]},{ "keep": [[], "3"]},{ "strb": [[], "3"]},{ "user": [[], "3"]},{ "last": [[], "4"]},{ "id": [[], "5"]},{ "dest": [[], "5"]}],""]}], 
"2": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"5": [ "ap_uint<5>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 5}}]],""]}}], 
"3": [ "ap_uint<4>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 4}}]],""]}}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}]
}}
set moduleName opcionA
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {opcionA}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_AX_ALGdedo0_data_V int 32 regular {axi_s 0 volatile  { input_AX_ALGdedo0 Data } }  }
	{ input_AX_ALGdedo0_keep_V int 4 regular {axi_s 0 volatile  { input_AX_ALGdedo0 Keep } }  }
	{ input_AX_ALGdedo0_strb_V int 4 regular {axi_s 0 volatile  { input_AX_ALGdedo0 Strb } }  }
	{ input_AX_ALGdedo0_user_V int 4 regular {axi_s 0 volatile  { input_AX_ALGdedo0 User } }  }
	{ input_AX_ALGdedo0_last_V int 1 regular {axi_s 0 volatile  { input_AX_ALGdedo0 Last } }  }
	{ input_AX_ALGdedo0_id_V int 5 regular {axi_s 0 volatile  { input_AX_ALGdedo0 ID } }  }
	{ input_AX_ALGdedo0_dest_V int 5 regular {axi_s 0 volatile  { input_AX_ALGdedo0 Dest } }  }
	{ input_AX_ALGpalma0_data_V int 32 regular {axi_s 0 volatile  { input_AX_ALGpalma0 Data } }  }
	{ input_AX_ALGpalma0_keep_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma0 Keep } }  }
	{ input_AX_ALGpalma0_strb_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma0 Strb } }  }
	{ input_AX_ALGpalma0_user_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma0 User } }  }
	{ input_AX_ALGpalma0_last_V int 1 regular {axi_s 0 volatile  { input_AX_ALGpalma0 Last } }  }
	{ input_AX_ALGpalma0_id_V int 5 regular {axi_s 0 volatile  { input_AX_ALGpalma0 ID } }  }
	{ input_AX_ALGpalma0_dest_V int 5 regular {axi_s 0 volatile  { input_AX_ALGpalma0 Dest } }  }
	{ input_AX_ALGdedo1_data_V int 32 regular {axi_s 0 volatile  { input_AX_ALGdedo1 Data } }  }
	{ input_AX_ALGdedo1_keep_V int 4 regular {axi_s 0 volatile  { input_AX_ALGdedo1 Keep } }  }
	{ input_AX_ALGdedo1_strb_V int 4 regular {axi_s 0 volatile  { input_AX_ALGdedo1 Strb } }  }
	{ input_AX_ALGdedo1_user_V int 4 regular {axi_s 0 volatile  { input_AX_ALGdedo1 User } }  }
	{ input_AX_ALGdedo1_last_V int 1 regular {axi_s 0 volatile  { input_AX_ALGdedo1 Last } }  }
	{ input_AX_ALGdedo1_id_V int 5 regular {axi_s 0 volatile  { input_AX_ALGdedo1 ID } }  }
	{ input_AX_ALGdedo1_dest_V int 5 regular {axi_s 0 volatile  { input_AX_ALGdedo1 Dest } }  }
	{ input_AX_ALGpalma1_data_V int 32 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Data } }  }
	{ input_AX_ALGpalma1_keep_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Keep } }  }
	{ input_AX_ALGpalma1_strb_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Strb } }  }
	{ input_AX_ALGpalma1_user_V int 4 regular {axi_s 0 volatile  { input_AX_ALGpalma1 User } }  }
	{ input_AX_ALGpalma1_last_V int 1 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Last } }  }
	{ input_AX_ALGpalma1_id_V int 5 regular {axi_s 0 volatile  { input_AX_ALGpalma1 ID } }  }
	{ input_AX_ALGpalma1_dest_V int 5 regular {axi_s 0 volatile  { input_AX_ALGpalma1 Dest } }  }
	{ output_AX_ALG_data_V int 32 regular {axi_s 1 volatile  { output_AX_ALG Data } }  }
	{ output_AX_ALG_keep_V int 4 regular {axi_s 1 volatile  { output_AX_ALG Keep } }  }
	{ output_AX_ALG_strb_V int 4 regular {axi_s 1 volatile  { output_AX_ALG Strb } }  }
	{ output_AX_ALG_user_V int 4 regular {axi_s 1 volatile  { output_AX_ALG User } }  }
	{ output_AX_ALG_last_V int 1 regular {axi_s 1 volatile  { output_AX_ALG Last } }  }
	{ output_AX_ALG_id_V int 5 regular {axi_s 1 volatile  { output_AX_ALG ID } }  }
	{ output_AX_ALG_dest_V int 5 regular {axi_s 1 volatile  { output_AX_ALG Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_AX_ALGdedo0_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_AX_ALGdedo0.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo0_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGdedo0.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo0_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGdedo0.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo0_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGdedo0.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo0_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_AX_ALGdedo0.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo0_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALGdedo0.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo0_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALGdedo0.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma0_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_AX_ALGpalma0.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma0_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGpalma0.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma0_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGpalma0.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma0_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGpalma0.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma0_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_AX_ALGpalma0.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma0_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALGpalma0.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma0_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALGpalma0.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo1_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_AX_ALGdedo1.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo1_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGdedo1.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo1_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGdedo1.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo1_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGdedo1.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo1_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_AX_ALGdedo1.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo1_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALGdedo1.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGdedo1_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALGdedo1.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma1_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_AX_ALGpalma1.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma1_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGpalma1.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma1_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGpalma1.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma1_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input_AX_ALGpalma1.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma1_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input_AX_ALGpalma1.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma1_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALGpalma1.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_AX_ALGpalma1_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "READONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "input_AX_ALGpalma1.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_AX_ALG.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_user_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output_AX_ALG.user.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output_AX_ALG.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_id_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALG.id.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} , 
 	{ "Name" : "output_AX_ALG_dest_V", "interface" : "axis", "bitwidth" : 5, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":4,"cElement": [{"cName": "output_AX_ALG.dest.V","cData": "uint5","bit_use": { "low": 0,"up": 4},"cArray": [{"low" : 0,"up" : 3,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 47
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ input_AX_ALGdedo0_TDATA sc_in sc_lv 32 signal 0 } 
	{ input_AX_ALGdedo0_TVALID sc_in sc_logic 1 invld 6 } 
	{ input_AX_ALGdedo0_TREADY sc_out sc_logic 1 inacc 6 } 
	{ input_AX_ALGdedo0_TKEEP sc_in sc_lv 4 signal 1 } 
	{ input_AX_ALGdedo0_TSTRB sc_in sc_lv 4 signal 2 } 
	{ input_AX_ALGdedo0_TUSER sc_in sc_lv 4 signal 3 } 
	{ input_AX_ALGdedo0_TLAST sc_in sc_lv 1 signal 4 } 
	{ input_AX_ALGdedo0_TID sc_in sc_lv 5 signal 5 } 
	{ input_AX_ALGdedo0_TDEST sc_in sc_lv 5 signal 6 } 
	{ input_AX_ALGpalma0_TDATA sc_in sc_lv 32 signal 7 } 
	{ input_AX_ALGpalma0_TVALID sc_in sc_logic 1 invld 13 } 
	{ input_AX_ALGpalma0_TREADY sc_out sc_logic 1 inacc 13 } 
	{ input_AX_ALGpalma0_TKEEP sc_in sc_lv 4 signal 8 } 
	{ input_AX_ALGpalma0_TSTRB sc_in sc_lv 4 signal 9 } 
	{ input_AX_ALGpalma0_TUSER sc_in sc_lv 4 signal 10 } 
	{ input_AX_ALGpalma0_TLAST sc_in sc_lv 1 signal 11 } 
	{ input_AX_ALGpalma0_TID sc_in sc_lv 5 signal 12 } 
	{ input_AX_ALGpalma0_TDEST sc_in sc_lv 5 signal 13 } 
	{ input_AX_ALGdedo1_TDATA sc_in sc_lv 32 signal 14 } 
	{ input_AX_ALGdedo1_TVALID sc_in sc_logic 1 invld 20 } 
	{ input_AX_ALGdedo1_TREADY sc_out sc_logic 1 inacc 20 } 
	{ input_AX_ALGdedo1_TKEEP sc_in sc_lv 4 signal 15 } 
	{ input_AX_ALGdedo1_TSTRB sc_in sc_lv 4 signal 16 } 
	{ input_AX_ALGdedo1_TUSER sc_in sc_lv 4 signal 17 } 
	{ input_AX_ALGdedo1_TLAST sc_in sc_lv 1 signal 18 } 
	{ input_AX_ALGdedo1_TID sc_in sc_lv 5 signal 19 } 
	{ input_AX_ALGdedo1_TDEST sc_in sc_lv 5 signal 20 } 
	{ input_AX_ALGpalma1_TDATA sc_in sc_lv 32 signal 21 } 
	{ input_AX_ALGpalma1_TVALID sc_in sc_logic 1 invld 27 } 
	{ input_AX_ALGpalma1_TREADY sc_out sc_logic 1 inacc 27 } 
	{ input_AX_ALGpalma1_TKEEP sc_in sc_lv 4 signal 22 } 
	{ input_AX_ALGpalma1_TSTRB sc_in sc_lv 4 signal 23 } 
	{ input_AX_ALGpalma1_TUSER sc_in sc_lv 4 signal 24 } 
	{ input_AX_ALGpalma1_TLAST sc_in sc_lv 1 signal 25 } 
	{ input_AX_ALGpalma1_TID sc_in sc_lv 5 signal 26 } 
	{ input_AX_ALGpalma1_TDEST sc_in sc_lv 5 signal 27 } 
	{ output_AX_ALG_TDATA sc_out sc_lv 32 signal 28 } 
	{ output_AX_ALG_TVALID sc_out sc_logic 1 outvld 34 } 
	{ output_AX_ALG_TREADY sc_in sc_logic 1 outacc 34 } 
	{ output_AX_ALG_TKEEP sc_out sc_lv 4 signal 29 } 
	{ output_AX_ALG_TSTRB sc_out sc_lv 4 signal 30 } 
	{ output_AX_ALG_TUSER sc_out sc_lv 4 signal 31 } 
	{ output_AX_ALG_TLAST sc_out sc_lv 1 signal 32 } 
	{ output_AX_ALG_TID sc_out sc_lv 5 signal 33 } 
	{ output_AX_ALG_TDEST sc_out sc_lv 5 signal 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_AX_ALGdedo0_data_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_AX_ALGdedo0_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_AX_ALGdedo0_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGdedo0_keep_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGdedo0_strb_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGdedo0_user_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_AX_ALGdedo0_last_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALGdedo0_id_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo0_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALGdedo0_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_AX_ALGpalma0_data_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_AX_ALGpalma0_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_AX_ALGpalma0_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGpalma0_keep_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGpalma0_strb_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGpalma0_user_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_AX_ALGpalma0_last_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALGpalma0_id_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma0_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALGpalma0_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_AX_ALGdedo1_data_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_AX_ALGdedo1_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_AX_ALGdedo1_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGdedo1_keep_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGdedo1_strb_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGdedo1_user_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_AX_ALGdedo1_last_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALGdedo1_id_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGdedo1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALGdedo1_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_AX_ALGpalma1_data_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_AX_ALGpalma1_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "input_AX_ALGpalma1_dest_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGpalma1_keep_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGpalma1_strb_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_AX_ALGpalma1_user_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_AX_ALGpalma1_last_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALGpalma1_id_V", "role": "default" }} , 
 	{ "name": "input_AX_ALGpalma1_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "input_AX_ALGpalma1_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_AX_ALG_data_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_keep_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_strb_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_AX_ALG_user_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_AX_ALG_last_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALG_id_V", "role": "default" }} , 
 	{ "name": "output_AX_ALG_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "output_AX_ALG_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "4", "5", "6"],
		"CDFG" : "opcionA",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_write_data_fu_96"}],
		"Port" : [
			{"Name" : "input_AX_ALGdedo0_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_AX_ALGdedo0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dedo0_0_V_read_data_fu_118", "Port" : "input_data_V"}]},
			{"Name" : "input_AX_ALGdedo0_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dedo0_0_V_read_data_fu_118", "Port" : "input_keep_V"}]},
			{"Name" : "input_AX_ALGdedo0_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dedo0_0_V_read_data_fu_118", "Port" : "input_strb_V"}]},
			{"Name" : "input_AX_ALGdedo0_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dedo0_0_V_read_data_fu_118", "Port" : "input_user_V"}]},
			{"Name" : "input_AX_ALGdedo0_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dedo0_0_V_read_data_fu_118", "Port" : "input_last_V"}]},
			{"Name" : "input_AX_ALGdedo0_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dedo0_0_V_read_data_fu_118", "Port" : "input_id_V"}]},
			{"Name" : "input_AX_ALGdedo0_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dedo0_0_V_read_data_fu_118", "Port" : "input_dest_V"}]},
			{"Name" : "input_AX_ALGpalma0_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_AX_ALGpalma0_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "palma0_0_V_read_data_fu_137", "Port" : "input_data_V"}]},
			{"Name" : "input_AX_ALGpalma0_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "palma0_0_V_read_data_fu_137", "Port" : "input_keep_V"}]},
			{"Name" : "input_AX_ALGpalma0_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "palma0_0_V_read_data_fu_137", "Port" : "input_strb_V"}]},
			{"Name" : "input_AX_ALGpalma0_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "palma0_0_V_read_data_fu_137", "Port" : "input_user_V"}]},
			{"Name" : "input_AX_ALGpalma0_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "palma0_0_V_read_data_fu_137", "Port" : "input_last_V"}]},
			{"Name" : "input_AX_ALGpalma0_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "palma0_0_V_read_data_fu_137", "Port" : "input_id_V"}]},
			{"Name" : "input_AX_ALGpalma0_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "palma0_0_V_read_data_fu_137", "Port" : "input_dest_V"}]},
			{"Name" : "input_AX_ALGdedo1_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_AX_ALGdedo1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dedo1_0_V_read_data_fu_156", "Port" : "input_data_V"}]},
			{"Name" : "input_AX_ALGdedo1_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dedo1_0_V_read_data_fu_156", "Port" : "input_keep_V"}]},
			{"Name" : "input_AX_ALGdedo1_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dedo1_0_V_read_data_fu_156", "Port" : "input_strb_V"}]},
			{"Name" : "input_AX_ALGdedo1_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dedo1_0_V_read_data_fu_156", "Port" : "input_user_V"}]},
			{"Name" : "input_AX_ALGdedo1_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dedo1_0_V_read_data_fu_156", "Port" : "input_last_V"}]},
			{"Name" : "input_AX_ALGdedo1_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dedo1_0_V_read_data_fu_156", "Port" : "input_id_V"}]},
			{"Name" : "input_AX_ALGdedo1_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dedo1_0_V_read_data_fu_156", "Port" : "input_dest_V"}]},
			{"Name" : "input_AX_ALGpalma1_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "input_AX_ALGpalma1_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "palma1_0_V_read_data_fu_175", "Port" : "input_data_V"}]},
			{"Name" : "input_AX_ALGpalma1_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "palma1_0_V_read_data_fu_175", "Port" : "input_keep_V"}]},
			{"Name" : "input_AX_ALGpalma1_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "palma1_0_V_read_data_fu_175", "Port" : "input_strb_V"}]},
			{"Name" : "input_AX_ALGpalma1_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "palma1_0_V_read_data_fu_175", "Port" : "input_user_V"}]},
			{"Name" : "input_AX_ALGpalma1_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "palma1_0_V_read_data_fu_175", "Port" : "input_last_V"}]},
			{"Name" : "input_AX_ALGpalma1_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "palma1_0_V_read_data_fu_175", "Port" : "input_id_V"}]},
			{"Name" : "input_AX_ALGpalma1_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "palma1_0_V_read_data_fu_175", "Port" : "input_dest_V"}]},
			{"Name" : "output_AX_ALG_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_data_fu_96", "Port" : "output_data_V"}]},
			{"Name" : "output_AX_ALG_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_data_fu_96", "Port" : "output_keep_V"}]},
			{"Name" : "output_AX_ALG_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_data_fu_96", "Port" : "output_strb_V"}]},
			{"Name" : "output_AX_ALG_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_data_fu_96", "Port" : "output_user_V"}]},
			{"Name" : "output_AX_ALG_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_data_fu_96", "Port" : "output_last_V"}]},
			{"Name" : "output_AX_ALG_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_data_fu_96", "Port" : "output_id_V"}]},
			{"Name" : "output_AX_ALG_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_write_data_fu_96", "Port" : "output_dest_V"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "dedo0_0_V_read_data_fu_118", "SubBlockPort" : ["input_AX_ALGpalma1_TDATA_blk_n"]},
			{"SubInstance" : "palma0_0_V_read_data_fu_137", "SubBlockPort" : ["input_AX_ALGpalma1_TDATA_blk_n"]},
			{"SubInstance" : "dedo1_0_V_read_data_fu_156", "SubBlockPort" : ["input_AX_ALGpalma1_TDATA_blk_n"]},
			{"SubInstance" : "palma1_0_V_read_data_fu_175", "SubBlockPort" : ["input_AX_ALGpalma1_TDATA_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_data_fu_96", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "write_data",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "buf_0_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_1_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_2_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_3_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "output_AX_ALG_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "output_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_data_fu_96.opcionA_mux_42_32_1_U7", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dedo0_0_V_read_data_fu_118", "Parent" : "0",
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
			{"Name" : "input_dest_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.palma0_0_V_read_data_fu_137", "Parent" : "0",
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
			{"Name" : "input_dest_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dedo1_0_V_read_data_fu_156", "Parent" : "0",
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
			{"Name" : "input_dest_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.palma1_0_V_read_data_fu_175", "Parent" : "0",
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
	opcionA {
		input_AX_ALGdedo0_data_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo0_keep_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo0_strb_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo0_user_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo0_last_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo0_id_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo0_dest_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma0_data_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma0_keep_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma0_strb_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma0_user_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma0_last_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma0_id_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma0_dest_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo1_data_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo1_keep_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo1_strb_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo1_user_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo1_last_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo1_id_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGdedo1_dest_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma1_data_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma1_keep_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma1_strb_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma1_user_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma1_last_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma1_id_V {Type I LastRead 0 FirstWrite -1}
		input_AX_ALGpalma1_dest_V {Type I LastRead 0 FirstWrite -1}
		output_AX_ALG_data_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_keep_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_strb_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_user_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_last_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_id_V {Type O LastRead -1 FirstWrite 2}
		output_AX_ALG_dest_V {Type O LastRead -1 FirstWrite 2}}
	write_data {
		buf_0_V_read {Type I LastRead 0 FirstWrite -1}
		buf_1_V_read {Type I LastRead 0 FirstWrite -1}
		buf_2_V_read {Type I LastRead 0 FirstWrite -1}
		buf_3_V_read {Type I LastRead 0 FirstWrite -1}
		output_data_V {Type O LastRead -1 FirstWrite 2}
		output_keep_V {Type O LastRead -1 FirstWrite 2}
		output_strb_V {Type O LastRead -1 FirstWrite 2}
		output_user_V {Type O LastRead -1 FirstWrite 2}
		output_last_V {Type O LastRead -1 FirstWrite 2}
		output_id_V {Type O LastRead -1 FirstWrite 2}
		output_dest_V {Type O LastRead -1 FirstWrite 2}}
	read_data {
		input_data_V {Type I LastRead 0 FirstWrite -1}
		input_keep_V {Type I LastRead 0 FirstWrite -1}
		input_strb_V {Type I LastRead 0 FirstWrite -1}
		input_user_V {Type I LastRead 0 FirstWrite -1}
		input_last_V {Type I LastRead 0 FirstWrite -1}
		input_id_V {Type I LastRead 0 FirstWrite -1}
		input_dest_V {Type I LastRead 0 FirstWrite -1}}
	read_data {
		input_data_V {Type I LastRead 0 FirstWrite -1}
		input_keep_V {Type I LastRead 0 FirstWrite -1}
		input_strb_V {Type I LastRead 0 FirstWrite -1}
		input_user_V {Type I LastRead 0 FirstWrite -1}
		input_last_V {Type I LastRead 0 FirstWrite -1}
		input_id_V {Type I LastRead 0 FirstWrite -1}
		input_dest_V {Type I LastRead 0 FirstWrite -1}}
	read_data {
		input_data_V {Type I LastRead 0 FirstWrite -1}
		input_keep_V {Type I LastRead 0 FirstWrite -1}
		input_strb_V {Type I LastRead 0 FirstWrite -1}
		input_user_V {Type I LastRead 0 FirstWrite -1}
		input_last_V {Type I LastRead 0 FirstWrite -1}
		input_id_V {Type I LastRead 0 FirstWrite -1}
		input_dest_V {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "9", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_AX_ALGdedo0_data_V { axis {  { input_AX_ALGdedo0_TDATA in_data 0 32 } } }
	input_AX_ALGdedo0_keep_V { axis {  { input_AX_ALGdedo0_TKEEP in_data 0 4 } } }
	input_AX_ALGdedo0_strb_V { axis {  { input_AX_ALGdedo0_TSTRB in_data 0 4 } } }
	input_AX_ALGdedo0_user_V { axis {  { input_AX_ALGdedo0_TUSER in_data 0 4 } } }
	input_AX_ALGdedo0_last_V { axis {  { input_AX_ALGdedo0_TLAST in_data 0 1 } } }
	input_AX_ALGdedo0_id_V { axis {  { input_AX_ALGdedo0_TID in_data 0 5 } } }
	input_AX_ALGdedo0_dest_V { axis {  { input_AX_ALGdedo0_TVALID in_vld 0 1 }  { input_AX_ALGdedo0_TREADY in_acc 1 1 }  { input_AX_ALGdedo0_TDEST in_data 0 5 } } }
	input_AX_ALGpalma0_data_V { axis {  { input_AX_ALGpalma0_TDATA in_data 0 32 } } }
	input_AX_ALGpalma0_keep_V { axis {  { input_AX_ALGpalma0_TKEEP in_data 0 4 } } }
	input_AX_ALGpalma0_strb_V { axis {  { input_AX_ALGpalma0_TSTRB in_data 0 4 } } }
	input_AX_ALGpalma0_user_V { axis {  { input_AX_ALGpalma0_TUSER in_data 0 4 } } }
	input_AX_ALGpalma0_last_V { axis {  { input_AX_ALGpalma0_TLAST in_data 0 1 } } }
	input_AX_ALGpalma0_id_V { axis {  { input_AX_ALGpalma0_TID in_data 0 5 } } }
	input_AX_ALGpalma0_dest_V { axis {  { input_AX_ALGpalma0_TVALID in_vld 0 1 }  { input_AX_ALGpalma0_TREADY in_acc 1 1 }  { input_AX_ALGpalma0_TDEST in_data 0 5 } } }
	input_AX_ALGdedo1_data_V { axis {  { input_AX_ALGdedo1_TDATA in_data 0 32 } } }
	input_AX_ALGdedo1_keep_V { axis {  { input_AX_ALGdedo1_TKEEP in_data 0 4 } } }
	input_AX_ALGdedo1_strb_V { axis {  { input_AX_ALGdedo1_TSTRB in_data 0 4 } } }
	input_AX_ALGdedo1_user_V { axis {  { input_AX_ALGdedo1_TUSER in_data 0 4 } } }
	input_AX_ALGdedo1_last_V { axis {  { input_AX_ALGdedo1_TLAST in_data 0 1 } } }
	input_AX_ALGdedo1_id_V { axis {  { input_AX_ALGdedo1_TID in_data 0 5 } } }
	input_AX_ALGdedo1_dest_V { axis {  { input_AX_ALGdedo1_TVALID in_vld 0 1 }  { input_AX_ALGdedo1_TREADY in_acc 1 1 }  { input_AX_ALGdedo1_TDEST in_data 0 5 } } }
	input_AX_ALGpalma1_data_V { axis {  { input_AX_ALGpalma1_TDATA in_data 0 32 } } }
	input_AX_ALGpalma1_keep_V { axis {  { input_AX_ALGpalma1_TKEEP in_data 0 4 } } }
	input_AX_ALGpalma1_strb_V { axis {  { input_AX_ALGpalma1_TSTRB in_data 0 4 } } }
	input_AX_ALGpalma1_user_V { axis {  { input_AX_ALGpalma1_TUSER in_data 0 4 } } }
	input_AX_ALGpalma1_last_V { axis {  { input_AX_ALGpalma1_TLAST in_data 0 1 } } }
	input_AX_ALGpalma1_id_V { axis {  { input_AX_ALGpalma1_TID in_data 0 5 } } }
	input_AX_ALGpalma1_dest_V { axis {  { input_AX_ALGpalma1_TVALID in_vld 0 1 }  { input_AX_ALGpalma1_TREADY in_acc 1 1 }  { input_AX_ALGpalma1_TDEST in_data 0 5 } } }
	output_AX_ALG_data_V { axis {  { output_AX_ALG_TDATA out_data 1 32 } } }
	output_AX_ALG_keep_V { axis {  { output_AX_ALG_TKEEP out_data 1 4 } } }
	output_AX_ALG_strb_V { axis {  { output_AX_ALG_TSTRB out_data 1 4 } } }
	output_AX_ALG_user_V { axis {  { output_AX_ALG_TUSER out_data 1 4 } } }
	output_AX_ALG_last_V { axis {  { output_AX_ALG_TLAST out_data 1 1 } } }
	output_AX_ALG_id_V { axis {  { output_AX_ALG_TID out_data 1 5 } } }
	output_AX_ALG_dest_V { axis {  { output_AX_ALG_TVALID out_vld 1 1 }  { output_AX_ALG_TREADY out_acc 0 1 }  { output_AX_ALG_TDEST out_data 1 5 } } }
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
