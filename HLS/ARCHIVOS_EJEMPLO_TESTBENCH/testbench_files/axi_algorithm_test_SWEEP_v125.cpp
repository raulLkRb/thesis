#include <iostream>
#include <iomanip>
using namespace std;

#include "axi_algorithm.h"
#include "stimTestM125.h"

#define N_TRAIN M


#ifdef FLOAT_DATA
#define ABS_ERR_THRESH 0.0
#else
#define ABS_ERR_THRESH 0.001
#endif


/* VARIABLES GLOBALES */
// Define input
dataW32_apt buf_in[1];
dataW32_apt buf_DISTANCEX_out[M/2];

// Definimos num_rows y num_cols
int num_rows;
int num_cols;

unsigned int contador = 0;

FILE *fp;

unsigned int i = 0, k = 0, ii = 0;



// Main
int main () {

/* VELOCIDAD 125 , M-256*/

	// Definimos num_rows y num_cols
	num_rows = sizeof(data_in_extern_V125) / sizeof(data_in_extern_V125[0]);
	num_cols = sizeof(data_in_extern_V125[0]) / sizeof(data_in_extern_V125[0][0]);

	contador = 0;

	// Abrimos fichero de escritura
	fp = fopen("descriptors_V125_1024.dat","w");

	// Algorithm Application
	// Primer bucle --> textura
	for(ii=0; ii<num_rows; ii++)
	{
		fprintf(fp,"#TEX %d \r\n",ii);
		for(i=0; i<num_cols; i++)
		{
			buf_in[0] = data_in_extern_V125[ii][i];// & 0x0000FFFF;

			sweep_algorithm(buf_in[0], buf_DISTANCEX_out);

			if(i>=num_cols-N_TRAIN && i<num_cols)
			{
				for(k=0; k<M/2; k++)
				{
					fprintf(fp,"%li; \r\n",(long int)buf_DISTANCEX_out[k]);
				}
				fprintf(fp,"\r\n");
			}
		}
		fprintf(fp,"\r\n");
	}

	// Cerramos el fichero de escritura
	fclose(fp);





	// Return 0 if the test passes
	return 0;
}









