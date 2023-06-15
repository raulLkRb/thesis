#include "axi_algorithm.h"


/* FUNCIONES HARDWARE PARA SÍNTESIS LÓGICA RTL */
void opcionA(AXI_VAL input_AX_ALGdedo0[1], AXI_VAL input_AX_ALGpalma0[1], AXI_VAL input_AX_ALGdedo1[1], AXI_VAL input_AX_ALGpalma1[1], AXI_VAL output_AX_ALG[N_MOMENT])
{

#pragma HLS INTERFACE axis port=output_AX_ALG
#pragma HLS INTERFACE ap_ctrl_none port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=input_AX_ALGdedo0
#pragma HLS INTERFACE axis port=input_AX_ALGpalma0
#pragma HLS INTERFACE axis port=input_AX_ALGdedo1
#pragma HLS INTERFACE axis port=input_AX_ALGpalma1

	dataW32_apt buf_out[N_MOMENT];
	dataW32_apt dedo0[1];
	dataW32_apt palma0[1];
	dataW32_apt dedo1[1];
	dataW32_apt palma1[1];

	// Read input data. Fill the internal buffer
	read_data<dataW32_apt, 1, 4, 5, 5>(input_AX_ALGdedo0,dedo0);
	read_data<dataW32_apt, 1, 4, 5, 5>(input_AX_ALGpalma0,palma0);
	read_data<dataW32_apt, 1, 4, 5, 5>(input_AX_ALGdedo1,dedo1);
	read_data<dataW32_apt, 1, 4, 5, 5>(input_AX_ALGpalma1,palma1);

	// Intermedio
	buf_out[0] = dedo0[0];
	buf_out[1] = palma0[0];
	buf_out[2] = dedo1[0];
	buf_out[3] = palma1[0];

	// Write out the results
	write_data<dataW32_apt, N_MOMENT, 4, 5, 5>(buf_out, output_AX_ALG);

	return;
}


//void opcionA(int M00_dedo, int M00_palma, int M01_dedo, int M01_palma, int M10_dedo, int M10_palma, int M02_dedo, int M02_palma, int M20_dedo, int M20_palma, int M11_dedo, int M11_palma, AXI_VAL output_AX_ALG[N_MOMENT])  // PARA 6
//{
//#pragma HLS INTERFACE ap_vld port=M00_palma
//#pragma HLS INTERFACE ap_vld port=M00_dedo
//#pragma HLS INTERFACE ap_vld port=M01_palma
//#pragma HLS INTERFACE ap_vld port=M01_dedo
//#pragma HLS INTERFACE ap_vld port=M10_palma
//#pragma HLS INTERFACE ap_vld port=M10_dedo
//#pragma HLS INTERFACE ap_vld port=M02_palma
//#pragma HLS INTERFACE ap_vld port=M02_dedo
//#pragma HLS INTERFACE ap_vld port=M20_palma
//#pragma HLS INTERFACE ap_vld port=M20_dedo
//#pragma HLS INTERFACE ap_vld port=M11_palma
//#pragma HLS INTERFACE ap_vld port=M11_dedo
//#pragma HLS DATAFLOW
//#pragma HLS INTERFACE ap_ctrl_none port=return bundle=CONTROL_BUS
//#pragma HLS INTERFACE axis port=output_AX_ALG
//
////	t_ready = (bool)1;
////
////	t_ready = (bool)0;
//	dataW32_apt buf_out[N_MOMENT];
//	// DEDO
//	buf_out[0] = (dataW32_apt)M00_dedo;
//	// PALMA
//	buf_out[1] = (dataW32_apt)M00_palma;
//	// DEDO
//	buf_out[2] = (dataW32_apt)M01_dedo;
//	// PALMA
//	buf_out[3] = (dataW32_apt)M01_palma;
//	// DEDO
//	buf_out[4] = (dataW32_apt)M10_dedo;
//	// PALMA
//	buf_out[5] = (dataW32_apt)M10_palma;
//	// DEDO
//	buf_out[6] = (dataW32_apt)M02_dedo;
//	// PALMA
//	buf_out[7] = (dataW32_apt)M02_palma;
//	// DEDO
//	buf_out[8] = (dataW32_apt)M20_dedo;
//	// PALMA
//	buf_out[9] = (dataW32_apt)M20_palma;
//	// DEDO
//	buf_out[10] = (dataW32_apt)M11_dedo;
//	// PALMA
//	buf_out[11] = (dataW32_apt)M11_palma;
//
//
//	// Write out the results
//	write_data<dataW32_apt, N_MOMENT, 4, 5, 5>(buf_out, output_AX_ALG);
//
//
//	return;
//}
//
//






