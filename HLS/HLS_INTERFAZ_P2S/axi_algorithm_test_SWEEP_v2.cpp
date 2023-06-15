#include <iostream>
#include <iomanip>
using namespace std;

#include "axi_algorithm.h"
//#include "stimTestM2.h"

#define N_TRAIN M


#ifdef FLOAT_DATA
#define ABS_ERR_THRESH 0.0
#else
#define ABS_ERR_THRESH 0.001
#endif


/* VARIABLES GLOBALES */
// Define input

//FILE *fp;

unsigned int i = 0, k = 0, ii = 0;

bool t_valid = 1;
bool full_fifo = 0;
int M00_dedo = 12e4;
int M00_palma = 4e5;
AXI_VAL output_AX_ALG[N_MOMENT];
bool t_ready;

dataW32_apt dato_out[N_MOMENT];

// Main
int main () {

/* VELOCIDAD 2 , M-256*/

	// Definimos num_rows y num_cols
//	num_rows = sizeof(data_in_extern_V2) / sizeof(data_in_extern_V2[0]);
//	num_cols = sizeof(data_in_extern_V2[0]) / sizeof(data_in_extern_V2[0][0]);



	// Abrimos fichero de escritura
//	fp = fopen("descriptors_V2_1024.dat","w");

//	printf("t_ready is: %d \r\n",12);

	opcionA(t_valid, M00_dedo, M00_palma, output_AX_ALG);

	for(i=0; i<N_MOMENT; i++)
	{
		dato_out[i] = (dataW32_apt)output_AX_ALG[i].data;
		printf("dato_out[%d] is: %d \r\n",i,(int)dato_out[i]);
	}

	printf("t_ready is: %d \r\n",t_ready);

	// Cerramos el fichero de escritura
//	fclose(fp);


	// Return 0 if the test passes
	return 0;
}









