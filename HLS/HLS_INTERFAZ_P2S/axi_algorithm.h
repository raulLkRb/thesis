#ifndef AXI_ALGORITHM_H_
#define AXI_ALGORITHM_H_

#include <stdio.h>
#include <stdlib.h>
#include <ap_int.h>
#include <assert.h>
#include <ap_axi_sdata.h>
#include <string.h>
#include <math.h>
//#include "ap_cint.h"
//#include "hls_math.h"

typedef int coef_t;
typedef int data_t;
typedef int acc_t;

// Definimos N_MOMENT
#define N_MOMENT 4 			// 6 momentos del dedo y 6 momentos de la palma

// Definemos la frecuencia de muestreo (sample time)
#define TS 0.005

// Definimos DECIMATE_FACTOR
//#define DECIMATE_FACTOR 2

// Definimos TH_SAMPLES
//#define SMALL_TH_SAMPLES 9
#define SMALL_TH_SAMPLES 36

// Definimos NORMALIZE_FACTOR
//#define NORMALIZE_FACTOR 36

/* Definitions with Arbitrary Precision Types - HLS */
#define WRD_INT0_LEN 0
#define WRD_INT5_LEN 5
#define WRD_16_LEN 16
#define WRD_INT16_LEN 16
#define WRD_32_LEN 32
#define WRD_INT32_LEN 32
#define WRD_36_LEN 36
#define WRD_INT36_LEN 36
#define WRD_38_LEN 38
#define WRD_INT38_LEN 38
#define WRD_40_LEN 40
#define WRD_INT40_LEN 40
#define WRD_42_LEN 42
#define WRD_INT42_LEN 42
#define WRD_64_LEN 64
#define WRD_INT64_LEN 64
#define WRD_12_LEN 12
#define WRD_INT12_LEN 12
#define WRD_28_LEN 28
#define WRD_INT28_LEN 28
#define WRD_0_LEN 0
#define WRD_INT0_LEN 0
#define WRD_1_LEN 1
#define WRD_INT1_LEN 1
#define WRD_8_LEN 8
#define WRD_INT8_LEN 8

/* Definiciones de tipos - Punto Fijo */
typedef ap_fixed<WRD_1_LEN,WRD_INT1_LEN,AP_TRN_ZERO,AP_WRAP> dataW1_apt;
typedef ap_fixed<WRD_16_LEN,WRD_INT16_LEN,AP_TRN_ZERO,AP_WRAP> dataW16_apt;
//typedef int dataW32_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT32_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_apt;
typedef ap_fixed<WRD_8_LEN,WRD_INT8_LEN,AP_TRN_ZERO,AP_WRAP> dataW8_apt;
typedef ap_fixed<WRD_38_LEN,WRD_INT38_LEN,AP_TRN_ZERO,AP_WRAP> dataW38_apt;
//typedef float dataW32_apt;
typedef ap_fixed<WRD_36_LEN,WRD_INT36_LEN,AP_TRN_ZERO,AP_WRAP> dataW36_apt;
typedef ap_fixed<WRD_40_LEN,WRD_INT40_LEN,AP_TRN_ZERO,AP_WRAP> dataW40_apt;
typedef ap_fixed<WRD_42_LEN,WRD_INT42_LEN,AP_TRN_ZERO,AP_WRAP> dataW42_apt;
typedef ap_fixed<WRD_64_LEN,WRD_INT64_LEN,AP_TRN_ZERO,AP_WRAP> dataW64_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT0_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_0_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT5_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_5_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT12_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_12_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT28_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_28_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT0_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_0_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT1_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_1_apt;

/* Type definition for push_stream and pop_stream ap_axiu */
typedef ap_axiu<32,4,5,5> AXI_VAL;
typedef ap_axiu<8,4,5,5> AXI_VAL2;

/* Function header */
//void axi_algorithm(AXI_VAL input_AX_ALG[1], AXI_VAL output_AX_ALG[NGTEST], unsigned int full_fifo);
//bool opcionA(bool t_valid, int M00_dedo, int M01_dedo, int M10_dedo, int M02_dedo, int M20_dedo, int M11_dedo, int M00_palma, int M01_palma, int M10_palma, int M02_palma, int M20_palma, int M11_palma, AXI_VAL output_AX_ALG[N_MOMENT], bool full_fifo);
//void opcionA(bool t_valid, int M00_dedo, int M00_palma, AXI_VAL output_AX_ALG[N_MOMENT]);
//void opcionA(int M00_dedo, int M00_palma, AXI_VAL output_AX_ALG[N_MOMENT]);
//void opcionA(int M00_dedo, int M00_palma, int M01_dedo, int M01_palma, bool& t_ready, bool t_valid, AXI_VAL output_AX_ALG[N_MOMENT]);
//void opcionA(int M00_dedo, int M00_palma, int M01_dedo, int M01_palma, AXI_VAL output_AX_ALG[N_MOMENT]);
//void opcionA(int M00_dedo, int M00_palma, int M01_dedo, int M01_palma, int M10_dedo, int M10_palma, int M02_dedo, int M02_palma, int M20_dedo, int M20_palma, int M11_dedo, int M11_palma, AXI_VAL output_AX_ALG[N_MOMENT]);
void opcionA(AXI_VAL input_AX_ALGdedo0[1], AXI_VAL input_AX_ALGpalma0[1], AXI_VAL input_AX_ALGdedo1[1], AXI_VAL input_AX_ALGpalma1[1], AXI_VAL output_AX_ALG[N_MOMENT]);


/* Functions to insert (push_stream) and extract (pop_stream) elements from an axi stream: includes conversion to correct data type */
template <typename dataW32_apt, int U, int TI, int TD>
dataW32_apt pop_stream(ap_axiu <sizeof(int)*8,U,TI,TD> const &e)
{
#pragma HLS INLINE

	assert(sizeof(dataW32_apt) == sizeof(int));
	union
	{
		int ival;
		int oval;
	} converter;
	converter.ival = e.data;
	dataW32_apt ret = converter.oval;

	volatile ap_uint<sizeof(dataW32_apt)> strb = e.strb;
	volatile ap_uint<sizeof(dataW32_apt)> keep = e.keep;
	volatile ap_uint<U> user = e.user;
	volatile ap_uint<1> last = e.last;
	volatile ap_uint<TI> id = e.id;
	volatile ap_uint<TD> dest = e.dest;

	return ret;
}

template <typename dataW32_apt, int U, int TI, int TD> ap_axiu <sizeof(int)*8,U,TI,TD> push_stream(dataW32_apt const &v, bool last = false)
{
#pragma HLS INLINE
	ap_axiu<sizeof(dataW32_apt)*8,U,TI,TD> e;

	assert(sizeof(dataW32_apt) == sizeof(int));
	union
	{
		int oval;
		int ival;
	} converter;
	converter.ival = v;
	e.data = converter.oval;

	// set it to sizeof(dataW32_apt) ones
	e.strb = -1;
	e.keep = 15; // KEEP es 1byte, que indica qué bytes son válidos en TDATA.
	e.user = 0;
	e.last = last ? 1 : 0;
	e.id = 0;
	e.dest = 0;
	return e;
}

/* Function prototypes - read_data, read_simple_data */
template <typename dataW32_apt, int DIM, int U, int TI, int TD>
void read_data(
		AXI_VAL input[DIM],
		dataW32_apt buf[DIM])
{
	unsigned short i = 0;

RD_Loop_Into_Buf:
	for(i=0; i<DIM; i++)
	{
#pragma HLS PIPELINE II=1
		buf[i] = pop_stream<dataW32_apt,U,TI,TD>(input[i]);
	}
	return;
}

template <typename dataW32_apt, int U, int TI, int TD>
void read_simple_data(
		AXI_VAL input,
		dataW32_apt buf)
{
	unsigned short i = 0;

RD_Loop_Into_Buf:
	buf = pop_stream<dataW32_apt,U,TI,TD>(input);
	return;
}

/* Function prototypes - write data, write_simple_data */
template <typename dataW32_apt, int DIM, int U, int TI, int TD>
void write_data(
		dataW32_apt buf[DIM],
		AXI_VAL output[DIM])
{
	unsigned short i = 0;

WR_Loop_To_Int:
	for(i=0; i<DIM; i++)
	{
#pragma HLS PIPELINE II=1
		output[i] = push_stream<dataW32_apt,U,TI,TD>(buf[i],i==(DIM-1));
	}
}


#endif
