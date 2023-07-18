#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("input_AX_ALG_TDATA", 32, hls_in, 0, "axis", "in_data", 1),
	Port_Property("input_AX_ALG_TKEEP", 4, hls_in, 1, "axis", "in_data", 1),
	Port_Property("input_AX_ALG_TSTRB", 4, hls_in, 2, "axis", "in_data", 1),
	Port_Property("input_AX_ALG_TUSER", 4, hls_in, 3, "axis", "in_data", 1),
	Port_Property("input_AX_ALG_TLAST", 1, hls_in, 4, "axis", "in_data", 1),
	Port_Property("input_AX_ALG_TID", 5, hls_in, 5, "axis", "in_data", 1),
	Port_Property("input_AX_ALG_TDEST", 5, hls_in, 6, "axis", "in_data", 1),
	Port_Property("output_AX_ALG_TDATA", 32, hls_out, 7, "axis", "out_data", 1),
	Port_Property("output_AX_ALG_TKEEP", 4, hls_out, 8, "axis", "out_data", 1),
	Port_Property("output_AX_ALG_TSTRB", 4, hls_out, 9, "axis", "out_data", 1),
	Port_Property("output_AX_ALG_TUSER", 4, hls_out, 10, "axis", "out_data", 1),
	Port_Property("output_AX_ALG_TLAST", 1, hls_out, 11, "axis", "out_data", 1),
	Port_Property("output_AX_ALG_TID", 5, hls_out, 12, "axis", "out_data", 1),
	Port_Property("output_AX_ALG_TDEST", 5, hls_out, 13, "axis", "out_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("input_AX_ALG_TVALID", 1, hls_in, 6, "axis", "in_vld", 1),
	Port_Property("input_AX_ALG_TREADY", 1, hls_out, 6, "axis", "in_acc", 1),
	Port_Property("output_AX_ALG_TVALID", 1, hls_out, 13, "axis", "out_vld", 1),
	Port_Property("output_AX_ALG_TREADY", 1, hls_in, 13, "axis", "out_acc", 1),
};
const char* HLS_Design_Meta::dut_name = "goertzel_algorithm_simpler";
