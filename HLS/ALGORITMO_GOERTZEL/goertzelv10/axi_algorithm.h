#ifndef AXI_ALGORITHM_H_
#define AXI_ALGORITHM_H_

#include <stdio.h>
#include <ap_int.h>
#include <assert.h>
#include <ap_axi_sdata.h>
#include <string.h>
#include <math.h>
#include <complex>

//#include "hls_math.h"



// Tamaño del vector de indices
//#define IND_TAM 64
//#define IND_TAM 32
//#define IND_TAM 16
#define IND_TAM 8
//#define IND_TAM 4


// Mínimo tamaño necesario para explorar textura de 13 mm --> M = 13mm/(10mm/s*0.005s), Ts no es exactamente 0.005s pero aproximadamente sí
#define M 1024
//#define M 512
//#define M 128

#define LENGTH (2*M+1)*3

#define PI 3.141592

/* Definitions with Arbitrary Precision Types - HLS */
#define WRD_INT0_LEN 0
#define WRD_INT5_LEN 5
#define WRD_16_LEN 16
#define WRD_INT16_LEN 16
#define WRD_32_LEN 32
#define WRD_INT32_LEN 32
#define WRD_36_LEN 36
#define WRD_INT36_LEN 36
#define WRD_40_LEN 40
#define WRD_INT40_LEN 40
#define WRD_42_LEN 42
#define WRD_INT42_LEN 42
#define WRD_64_LEN 64
#define WRD_INT63_LEN 64
#define WRD_24_LEN 24
#define WRD_INT24_LEN 24
#define WRD_48_LEN 48
#define WRD_INT48_LEN 48
#define WRD_29_LEN 29
#define WRD_INT29_LEN 29
#define WRD_30_LEN 30
#define WRD_INT30_LEN 30
#define WRD_60_LEN 60
#define WRD_INT60_LEN 60
#define WRD_50_LEN 50
#define WRD_INT50_LEN 50

typedef ap_fixed<WRD_16_LEN,WRD_INT16_LEN,AP_TRN_ZERO,AP_WRAP> dataW16_apt;
//typedef int dataW32_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT32_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_apt;
//typedef float dataW32_apt;
typedef ap_fixed<WRD_36_LEN,WRD_INT36_LEN,AP_TRN_ZERO,AP_WRAP> dataW36_apt;
typedef ap_fixed<WRD_40_LEN,WRD_INT40_LEN,AP_TRN_ZERO,AP_WRAP> dataW40_apt;
typedef ap_fixed<WRD_42_LEN,WRD_INT42_LEN,AP_TRN_ZERO,AP_WRAP> dataW42_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT0_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_0_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT5_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_5_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT16_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_16_apt;
typedef ap_fixed<WRD_42_LEN,WRD_INT32_LEN,AP_TRN_ZERO,AP_WRAP> dataW42_32_apt;
typedef ap_fixed<WRD_64_LEN,WRD_INT32_LEN,AP_TRN_ZERO,AP_WRAP> dataW64_32_apt;
typedef ap_fixed<WRD_42_LEN,WRD_INT16_LEN,AP_TRN_ZERO,AP_WRAP> dataW42_16_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT24_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_24_apt;
typedef ap_fixed<WRD_48_LEN,WRD_INT32_LEN,AP_TRN_ZERO,AP_WRAP> dataW48_32_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT29_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_29_apt;
typedef ap_fixed<WRD_32_LEN,WRD_INT30_LEN,AP_TRN_ZERO,AP_WRAP> dataW32_30_apt;
typedef ap_fixed<WRD_60_LEN,WRD_INT32_LEN,AP_TRN_ZERO,AP_WRAP> dataW60_32_apt;
typedef ap_fixed<WRD_50_LEN,WRD_INT32_LEN,AP_TRN_ZERO,AP_WRAP> dataW50_32_apt;

//typedef dataW50_32_apt T;

// **************** //typedef dataW64_32_apt T;
//typedef float T;


typedef dataW64_32_apt T;



struct mycomplex
{
	T real;
	T imag;
};


/* CONSTANTES REAL_W, IMAG_W */
//// Pre-Load constants arrays with M = 1024 and IND_TAM = 16;
//T A_constants[IND_TAM] = {0.0195915273825183, 0.0226053704222188, 0.0267149893032605, 0.0326507006506377, 0.0419770522256748, 0.0587596430710237, 0.0978830097919257, 0.291806897355365, 6.01096993720674, 6.20489382477018, 6.24401719149108, 6.26079978233643, 6.27012613391147, 6.27606184525884, 6.28017146413989, 6.28318530717959};
//T B_constants[IND_TAM] = {1.99961618433165, 1.99948901898802, 1.99928635179171, 1.99893402645212, 1.99823818581299, 1.99654829765745, 1.99042656371498, 1.91545125040055, 1.92635524601251, 1.99387357409745, 1.99846605483584, 1.99949890920323, 1.99982946041725, 1.99994925650484, 1.99999091675701, 2};
////mycomplex C_constants[IND_TAM], D_constants[IND_TAM];
//T C_COEFFS_REAL[IND_TAM] = {0.999808092165827, 0.999744509494012, 0.999643175895856, 0.999467013226059, 0.999119092906496, 0.998274148828723, 0.995213281857490, 0.957725625200274, 0.963177623006253, 0.996936787048724, 0.999233027417920, 0.999749454601613, 0.999914730208627, 0.999974628252420, 0.999995458378504, 1};
//T C_COEFFS_IMAG[IND_TAM] = {-0.0195902741106209, -0.0226034452369172, -0.0267118117102913, -0.0326448996472928, -0.0419647255406311, -0.0587258357138352, -0.0977267804362991, -0.287683205687688, 0.268865889506318, 0.0782115249114065, 0.0391581015527919, 0.0223836552818480, 0.0130588020816835, 0.00712340167574830, 0.00301383847712118, 2.44929359829471e-16};
//T D_COEFFS_REAL[IND_TAM] = {-0.740590279521104, -0.659459681782189, -0.288144256586750, -0.650511579823883, -0.450006008925152, 0.621242887920050, 0.767791857232201, 0.910578551258576, -0.396621614985895, -0.999141520910774, 0.0664711008500033, -0.266804563858512, -0.0285862295831329, -0.430060338408557, 0.993526244581334, 1};
//T D_COEFFS_IMAG[IND_TAM] = {-0.671956872037822, -0.751739933822684, 0.957587012963349, 0.759496336077427, 0.893025527032266, -0.783618066540554, 0.640699355367186, -0.413336064223573, -0.917982186388157, -0.0414273000822482, -0.997788350679536, 0.963750654839865, 0.999591330233621, 0.902800146947218, -0.113602822711900, 1.16217514382782e-12};


//T A_constants[IND_TAM] = {0.0195915273825183, 0.0226053704222188, 0.0267149893032605, 0.0326507006506377, 0.0419770522256748, 0.0587596430710237, 0.0978830097919257, 0.291806897355365};
//T B_constants[IND_TAM] = {1.99961618433165, 1.99948901898802, 1.99928635179171, 1.99893402645212, 1.99823818581299, 1.99654829765745, 1.99042656371498, 1.91545125040055};
////mycomplex C_constants[IND_TAM], D_constants[IND_TAM];
//T C_COEFFS_REAL[IND_TAM] = {0.999808092165827, 0.999744509494012, 0.999643175895856, 0.999467013226059, 0.999119092906496, 0.998274148828723, 0.995213281857490, 0.957725625200274};
//T C_COEFFS_IMAG[IND_TAM] = {-0.0195902741106209, -0.0226034452369172, -0.0267118117102913, -0.0326448996472928, -0.0419647255406311, -0.0587258357138352, -0.0977267804362991, -0.287683205687688};
//T D_COEFFS_REAL[IND_TAM] = {-0.740590279521104, -0.659459681782189, -0.288144256586750, -0.650511579823883, -0.450006008925152, 0.621242887920050, 0.767791857232201, 0.910578551258576};
//T D_COEFFS_IMAG[IND_TAM] = {-0.671956872037822, -0.751739933822684, 0.957587012963349, 0.759496336077427, 0.893025527032266, -0.783618066540554, 0.640699355367186, -0.413336064223573};



//dataW32_16_apt REAL_PARTE_W[IND_TAM] = {1.99961618433165, 1.99948901898802, 1.99928635179171, 1.99893402645212, 1.99823818581299, 1.99654829765745, 1.99042656371498, 1.91545125040055};
//dataW32_16_apt IMAGINARIO_W[IND_TAM] = {0.0195902741106209, 0.0226034452369172, 0.0267118117102913, 0.0326448996472928, 0.0419647255406311, 0.0587258357138352, 0.0977267804362991, 0.287683205687688};




/* Type definition for push_stream and pop_stream ap_axiu */
typedef ap_axiu<32,4,5,5> AXI_VAL;

// Funciones para síntesis lógica en hardware - Nuevas para un tactel
//void goertzel_algorithm(AXI_VAL input_AX_ALG[1], AXI_VAL output_AX_ALG[IND_TAM], AXI_VAL output_AX_ALG1[IND_TAM]);
void goertzel_algorithm_simpler(AXI_VAL input_AX_ALG[1], AXI_VAL output_AX_ALG[IND_TAM*2]);//, AXI_VAL output_AX_ALG1[IND_TAM]);
//void goertzel_algorithm_simpler(AXI_VAL input_AX_ALG[1], AXI_VAL output_AX_ALG[IND_TAM], AXI_VAL output_AX_ALG1[IND_TAM]);
//void goertzelInterno(T *y_vector, unsigned int indiceK, dataW32_apt *aux_array);
void goertzelInterno_simpler(dataW32_apt *y_vector, unsigned int indiceK, dataW32_apt *aux_array);
void devuelveAuxArray(dataW32_apt *aux_array,dataW32_apt *bufIn);

// Math functions
//T cprodRealPart(mycomplex c1, mycomplex c2);
//T cprodImaginaryPart(mycomplex c1, mycomplex c2);


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
//	e.strb = 0;
	e.keep = 15; //e.strb;
//	e.keep = 0; //e.strb;
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
//#pragma HLS UNROLL
		buf[i] = pop_stream<dataW32_apt,U,TI,TD>(input[i]);
	}
	return;
}

/* Function prototype - write data */
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
//#pragma HLS UNROLL
		output[i] = push_stream<dataW32_apt,U,TI,TD>(buf[i],i==(DIM-1));
	}
	return;
}

#endif
