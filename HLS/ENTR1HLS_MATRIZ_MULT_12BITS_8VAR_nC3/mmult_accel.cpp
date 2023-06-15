#include <stdio.h>
#include <stdlib.h>

#include "mmult.h"
/* PROYECTO PCA CON 12 BITS/CARACT, 2 SENSORES (DEDO Y PALMA), 2 MOMENTOS DE LA IMAGEN POR SENSOR == 8 VARIABLES, 3 COMPONENTES PRINCIPALES (PCA) */
// ENTR1HLS_MATRIZ_MULT_12BITS_8VAR_nC3

// Procedimiento para calcular la multiplicación de matrices
// Directiva HLS INLINE para mejorar la concurrencia interna
void mmult_hw(T a[nC][nVAR], T b[nVAR][nOBS], T out[nC][nOBS])
{
	#pragma HLS INLINE
	//#pragma HLS array_partition variable=a block factor=FACTOR dim=2
	//#pragma HLS array_partition variable=b block factor=FACTOR dim=1

	// matrix multiplication of a A*B matrix
	L1:for (int ia = 0; ia < nC; ia++)
	{
		L2:for(int id = 0; id < nOBS; id++)
		{
			//#pragma HLS PIPELINE II=1
			T sum = 0;
			L3:for(int ib = 0; ib < nVAR; ib++)
			{
				sum = sum + a[ia][ib] * b[ib][id];
			}
			out[ia][id] = sum;
		}
	}
	return;
}

// Procedimiento global (concha) de nivel superior que consume datos de entrada y produce datos de salida en formato AXISTREAM
// nC es el número de componentes principales (en este caso nC = 3 componentes principales)
// nOBS es el número de observaciones (es siempre 1 observación porque calculamos en tiempo real)
// nVAR es el número de variables (en este caso 8, dos sensores de dedo y palma y dos momentos por sensor)
void wrapped_mmult_hw(AXI_VAL in_stream[nVAR*nOBS/2],AXI_VAL out_stream[nC*nOBS])
{
// Inclusión de directiva HLS DATAFLOW para mejorar la concurrencia de procesos
// Directivas HLS INTERFACE para indicar que los puertos de entrada/salida son de tipo AXISTREAM
#pragma HLS DATAFLOW
#pragma HLS INTERFACE ap_ctrl_none port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream

	int k = 0;
	int indice = 0;
	dataW32_apt dato[nVAR*nOBS/2];

#pragma HLS INLINE

	// Declaramos la matriz de coeficientes y el vector de medias para el cálculo PCA
	T coeff[nC][nVAR] = {{0.00559937946975909, 0.00674665193463833, 0.0188836866220016, 0.0197111694559539, 0.124985843601260, 0.257928970791604, 0.437255134256945, 0.851960761013718},
						 {0.245563495184605, 0.221060899979782, 0.689637546512507, 0.615489699717020, -0.0560274308544869, 0.00655598077207370, -0.171606642030279, 0.0614185544796169},
						 {0.0324484179066849, 0.0108726836258748, 0.166482378756872, 0.0856890246537720, 0.164987072847450, -0.311018729093140, 0.839722939498395, -0.366990319177711}};
	T vectorMedia[nVAR] = {10.2708333333333, 9.56785714285714, 31.6589285714286, 29.3208333333333, 39.7375000000000, 64.7386904761905, 122.807738095238, 197.409523809524};
	// Declaramos la matriz X_MAT de observaciones y la matriz X_OUT de salida
	T X_MAT[nVAR][nOBS];
	T X_OUT[nC][nOBS];

	assert(sizeof(T)*8 == 32);

	// Leemos los datos primero para trabajar con ellos
	read_data<dataW32_apt, nVAR*nOBS/2, 4, 5, 5>(in_stream,dato);

	// Primero seleccionamos una fila y vamos rellenando columnas, y así sucesivamente (stream in second matrix -- X_MAT)
	for(int j=0; j<nOBS; j++)
	{
		X_MAT[0][j] = (float)(dato[k]&0x00000FFF);
		X_MAT[1][j] = (float)((dato[k]>>12)&0x00000FFF);
		k = k + 1;
		X_MAT[2][j] = (float)(dato[k]&0x00000FFF);
		X_MAT[3][j] = (float)((dato[k]>>12)&0x00000FFF);
		k = k + 1;
		X_MAT[4][j] = (float)(dato[k]&0x00000FFF);
		X_MAT[5][j] = (float)((dato[k]>>12)&0x00000FFF);
		k = k + 1;
		X_MAT[6][j] = (float)(dato[k]&0x00000FFF);
		X_MAT[7][j] = (float)((dato[k]>>12)&0x00000FFF);
		k = k + 1;
	}

	// Restamos el vector media a los nuevos datos
	for(int i=0; i<nVAR; i++)
	{
		for(int j=0; j<nOBS; j++)
		{
// Directiva HLS PIPELINE para hacer el bucle interno lo más concurrente posible
#pragma HLS PIPELINE II=1
			X_MAT[i][j] = X_MAT[i][j]-vectorMedia[i];
		}
	}

	// Do HW multiplication
	mmult_hw(coeff,X_MAT,X_OUT);

	// Completamos el stream de salida
	k = 0;  // Indice para rellenar la matriz de salida X_OUT, lo volvemos a poner a 0
	for(int i=0; i<nC; i++)
	{
		for(int j=0; j<nOBS; j++)
		{
			#pragma HLS PIPELINE II=1
			out_stream[k] = push_stream<dataW32_apt,4,5,5>(X_OUT[i][j],k == (nC*nOBS-1));
			k = k + 1;
		}
	}

	return;
}







