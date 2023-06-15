#include "axi_algorithm.h"

/* serial2parallel INTERFACE */
void axi_algorithm(AXI_VAL input_AX_ALG[N_MOMENT], AXI_VAL output_AX_ALGdedo0[1],AXI_VAL output_AX_ALGpalma0[1],AXI_VAL output_AX_ALGdedo1[1],AXI_VAL output_AX_ALGpalma1[1])
{
#pragma HLS INTERFACE axis port=output_AX_ALGpalma1
#pragma HLS INTERFACE axis port=output_AX_ALGdedo1
#pragma HLS INTERFACE axis port=output_AX_ALGpalma0
#pragma HLS INTERFACE axis port=output_AX_ALGdedo0
#pragma HLS DATAFLOW
#pragma HLS INTERFACE ap_ctrl_none port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=input_AX_ALG


	dataW32_apt dato[N_MOMENT];
	dataW32_apt dedo0[1];
	dataW32_apt palma0[1];
	dataW32_apt dedo1[1];
	dataW32_apt palma1[1];

	// Read input data. Fill the internal buffer
	read_data<dataW32_apt, N_MOMENT, 4, 5, 5>(input_AX_ALG,dato);

	// Intermedio
	dedo0[0] = dato[0];
	palma0[0] = dato[1];
	dedo1[0] = dato[2];
	palma1[0] = dato[3];

	// Write out the results
	write_data<dataW32_apt, 1, 4, 5, 5>(dedo0, output_AX_ALGdedo0);
	write_data<dataW32_apt, 1, 4, 5, 5>(palma0, output_AX_ALGpalma0);
	write_data<dataW32_apt, 1, 4, 5, 5>(dedo1, output_AX_ALGdedo1);
	write_data<dataW32_apt, 1, 4, 5, 5>(palma1, output_AX_ALGpalma1);

	return;
}



