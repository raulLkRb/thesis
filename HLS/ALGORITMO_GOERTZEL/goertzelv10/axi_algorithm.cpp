#include "axi_algorithm.h"
#include <iostream>
#include <iomanip>

using namespace std;
#define ArrayLength(x) (sizeof(x)/sizeof(x[0]))

//T REAL_PARTE_W[IND_TAM] = {1.99961618433165, 1.99948901898802, 1.99928635179171, 1.99893402645212};
//T IMAGINARIO_W[IND_TAM] = {0.0195902741106209, 0.0226034452369172, 0.0267118117102913, 0.0326448996472928};

//T REAL_PARTE_W[IND_TAM] = {1.99961618433165, 1.99948901898802, 1.99928635179171, 1.99893402645212, 1.99961618433165, 1.99948901898802, 1.99928635179171, 1.99893402645212};
//T IMAGINARIO_W[IND_TAM] = {0.0195902741106209, 0.0226034452369172, 0.0267118117102913, 0.0326448996472928, 0.0195902741106209, 0.0226034452369172, 0.0267118117102913, 0.0326448996472928};

T REAL_PARTE_W[IND_TAM] = {1.99961618433165, 1.99948901898802, 1.99928635179171, 1.99893402645212, 1.99823818581299, 1.99654829765745, 1.99042656371498, 1.91545125040055};
T IMAGINARIO_W[IND_TAM] = {0.0195902741106209, 0.0226034452369172, 0.0267118117102913, 0.0326448996472928, 0.0419647255406311, 0.0587258357138352, 0.0977267804362991, 0.287683205687688};


//T REAL_PARTE_W[IND_TAM] = {1.99961618433165, 1.99948901898802, 1.99928635179171, 1.99893402645212, 1.99823818581299, 1.99654829765745, 1.99042656371498, 1.91545125040055, 1.92635524601251, 1.99387357409745, 1.99846605483584, 1.99949890920323, 1.99982946041725, 1.99994925650484, 1.99999091675701, 2};
//T IMAGINARIO_W[IND_TAM] = {0.0195902741106209, 0.0226034452369172, 0.0267118117102913, 0.0326448996472928, 0.0419647255406311, 0.0587258357138352, 0.0977267804362991, 0.287683205687688, -0.268865889506318, -0.0782115249114065, -0.0391581015527919, -0.0223836552818480, -0.0130588020816835, -0.00712340167574830, -0.00301383847712118, -2.44929359829471e-16};

//T cprodRealPart(mycomplex c1, mycomplex c2)
//{
//#pragma HLS ALLOCATION instances=mul limit=1 operation
//
//	return (T)(c1.real*c2.real) - (T)(c1.imag*c2.imag);
//}
//
//T cprodImaginaryPart(mycomplex c1, mycomplex c2)
//{
//#pragma HLS ALLOCATION instances=mul limit=1 operation
//
//	return (T)(c1.imag*c2.real) + (T)(c1.real*c2.imag);
//}

void devuelveAuxArray(dataW32_apt *aux_array,dataW32_apt *bufIn)
{
	int i = 0;
	static dataW32_apt arrayAuxiliar[2*M];
//#pragma HLS RESOURCE variable=arrayAuxiliar core=RAM_2P_BRAM

	// Desplazamos array a la izquierda
	lp3: for(i=0; i<2*M-1; i++)
	{
#pragma HLS PIPELINE
		arrayAuxiliar[i] = arrayAuxiliar[i+1];
		aux_array[i] = arrayAuxiliar[i];
	}
	arrayAuxiliar[2*M-1] = (dataW32_apt)bufIn[0];
	aux_array[2*M-1] = arrayAuxiliar[2*M-1];
}



void goertzelInterno_simpler(dataW32_apt *y_vector, unsigned int indiceK, dataW32_apt *aux_array)
{
#pragma HLS ALLOCATION instances=mul limit=1 operation
	// Inicialización de variables
	int i = 0;
	T d1,d2,y;

	d1 = 0;
	d2 = 0;

	// LOOP
	lg1: for(i=0; i<2*M-1; i++)
	{
//#pragma HLS PIPELINE
//#pragma HLS UNROLL
		y = (T)aux_array[i] + REAL_PARTE_W[indiceK]*d1 - d2;
		d2 = d1;
		d1 = y;
	}

	// Resultados SIN FLOAT
	y_vector[0] = (T)(REAL_PARTE_W[indiceK]*d1);
	y_vector[0] = (T)((y_vector[0]>>1) & 0xFFFFFFFF);
	y_vector[0] = (T)(y_vector[0] - d2);
	y_vector[1] = (T)(IMAGINARIO_W[indiceK]*d1);
}

void goertzel_algorithm_simpler(AXI_VAL input_AX_ALG[1], AXI_VAL output_AX_ALG[IND_TAM*2])
{

#pragma HLS DATAFLOW
#pragma HLS INTERFACE ap_ctrl_none port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=input_AX_ALG
#pragma HLS INTERFACE axis port=output_AX_ALG

	// Inicialización
	unsigned int i = 0;
	dataW32_apt aux_array[2*M];

	dataW32_apt bufIn[1];
	dataW32_apt vectorAuxiliar[2];

	int j = 0;
	int jj = 0;

	dataW32_apt y[IND_TAM*2];

	// Read input data. Fill the internal buffer
	read_data<dataW32_apt, 1, 4, 5, 5>(input_AX_ALG,bufIn);

	devuelveAuxArray(aux_array,bufIn);

	// Main loop
	jj = IND_TAM;
	g1: for(j=0; j<IND_TAM; j++)
	{
//#pragma HLS PIPELINE
		goertzelInterno_simpler(vectorAuxiliar, j, aux_array);
		y[j] = vectorAuxiliar[0];
		y[jj] = vectorAuxiliar[1];
		jj = jj + 1;
	}

	for(int k=0; k<IND_TAM*2; k++)
	{
#pragma HLS PIPELINE
		output_AX_ALG[k] = push_stream<dataW32_apt,4,5,5>(y[k],k == (IND_TAM*2-1));
	}

	return;
}






