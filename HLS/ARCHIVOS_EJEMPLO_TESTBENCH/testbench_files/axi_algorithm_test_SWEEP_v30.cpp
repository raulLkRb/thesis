#include <iostream>
#include <iomanip>
using namespace std;

#include "axi_algorithm.h"
#include "stimTestM30.h"

//#define N_TRAIN M
//#define N_TRAIN 2977
//#define N_TRAIN 200
//#define N_TRAIN 1024
#define N_TRAIN 1

#ifdef FLOAT_DATA
#define ABS_ERR_THRESH 0.0
#else
#define ABS_ERR_THRESH 0.001
#endif

/* VARIABLES GLOBALES */
// Define input
dataW32_apt buf_in[1];
//dataW32_apt buf_DISTANCEX_out[M/2];

//dataW32_apt array64p[DEC_FACTOR];
dataW32_apt array64p[32];


//dataW32_apt buf_DISTANCEX_out[M/DEC_FACTOR];
dataW32_apt buf_DISTANCEX_out[1];
dataW32_apt buf_DISTANCEX_out_aux[M];
dataW32_apt varianza[M/DEC_FACTOR];

//dataW32_apt buf_DISTANCEX_out[M];  // DEBUG ONLY

// Definimos num_rows y num_cols
int num_rows;
int num_cols;

unsigned int contador = 0;

FILE *fp;

unsigned int i = 0, k = 0, ii = 0;


// Funcion para tener un array de 64 posiciones
void array64Pos(dataW32_apt *inBuf, dataW32_apt *array64p)
{
	unsigned int n = 0;
	unsigned int kk = 0;

	for(n=0; n<VALOR_EXTERNO; n++)
	{
		for(kk=0; kk<32; kk++)
		{
			array64p[0+32*n] = ((inBuf[n] & 0x00000001)>>0);
			array64p[1+32*n] = ((inBuf[n] & 0x00000002)>>1);
			array64p[2+32*n] = ((inBuf[n] & 0x00000004)>>2);
			array64p[3+32*n] = ((inBuf[n] & 0x00000008)>>3);
			array64p[4+32*n] = ((inBuf[n] & 0x00000010)>>4);
			array64p[5+32*n] = ((inBuf[n] & 0x00000020)>>5);
			array64p[6+32*n] = ((inBuf[n] & 0x00000040)>>6);
			array64p[7+32*n] = ((inBuf[n] & 0x00000080)>>7);

			array64p[8+32*n] = ((inBuf[n] & 0x00000100)>>8);
			array64p[9+32*n] = ((inBuf[n] & 0x00000200)>>9);
			array64p[10+32*n] = ((inBuf[n] & 0x00000400)>>10);
			array64p[11+32*n] = ((inBuf[n] & 0x00000800)>>11);
			array64p[12+32*n] = ((inBuf[n] & 0x00001000)>>12);
			array64p[13+32*n] = ((inBuf[n] & 0x00002000)>>13);
			array64p[14+32*n] = ((inBuf[n] & 0x00004000)>>14);
			array64p[15+32*n] = ((inBuf[n] & 0x00008000)>>15);

			array64p[16+32*n] = ((inBuf[n] & 0x00010000)>>16);
			array64p[17+32*n] = ((inBuf[n] & 0x00020000)>>17);
			array64p[18+32*n] = ((inBuf[n] & 0x00040000)>>18);
			array64p[19+32*n] = ((inBuf[n] & 0x00080000)>>19);
			array64p[20+32*n] = ((inBuf[n] & 0x00100000)>>20);
			array64p[21+32*n] = ((inBuf[n] & 0x00200000)>>21);
			array64p[22+32*n] = ((inBuf[n] & 0x00400000)>>22);
			array64p[23+32*n] = ((inBuf[n] & 0x00800000)>>23);

			array64p[24+32*n] = ((inBuf[n] & 0x01000000)>>24);
			array64p[25+32*n] = ((inBuf[n] & 0x02000000)>>25);
			array64p[26+32*n] = ((inBuf[n] & 0x04000000)>>26);
			array64p[27+32*n] = ((inBuf[n] & 0x08000000)>>27);
			array64p[28+32*n] = ((inBuf[n] & 0x10000000)>>28);
			array64p[29+32*n] = ((inBuf[n] & 0x20000000)>>29);
			array64p[30+32*n] = ((inBuf[n] & 0x40000000)>>30);
			array64p[31+32*n] = ((inBuf[n] & 0x80000000)>>31);
		}
	}
}

// Main
int main () {




/* VELOCIDAD 30 , M-256*/

	// Definimos num_rows y num_cols
	num_rows = sizeof(data_in_extern_V30) / sizeof(data_in_extern_V30[0]);
	num_cols = sizeof(data_in_extern_V30[0]) / sizeof(data_in_extern_V30[0][0]);

//	printf("%i; \r\n",(int)num_rows);
//	printf("%i; \r\n",(int)num_cols);

    contador = 0;

	// Abrimos fichero de escritura
//	fp = fopen("descrp_V30_1024DECMIN.dat","w");
//	fp = fopen("descriptors_V30_512.dat","w");

	// Algorithm Application
	// Primer bucle --> textura
//	for(ii=17; ii<18; ii++)
//	for(ii=0; ii<1; ii++)
//	for(ii=0; ii<4; ii++)
	for(ii=0; ii<num_rows; ii++)
	{
//		printf("%d; \r\n",num_cols);
//		fprintf(fp,"#TEX %d \r\n",ii);
//		printf("TR(:,%d+1) = [ \r\n",ii);
		printf("MIN_MATRIZ(:,%d+1) = [ \r\n",ii);
		for(i=0; i<num_cols; i++)
		{
//			printf("%li; \r\n",(long int)56);
			buf_in[0] = data_in_extern_V30[ii][i];// & 0x0000FFFF;
//			printf("data[%i][%i] = %i; \r\n",(int)ii,(int)i,(int)data_in_extern_V30[ii][i]);
//
//			sweep_algorithm_DECMINV2(buf_in[0], buf_DISTANCEX_out, varianza);
//
			sweep_algorithm_DECMINV3(buf_in[0], buf_DISTANCEX_out_aux);
			decimate_funcion(buf_DISTANCEX_out_aux, buf_DISTANCEX_out);

			if(i>=num_cols-N_TRAIN && i<num_cols)
			{
				array64Pos(buf_DISTANCEX_out, array64p);

//				for(k=0; k<DEC_FACTOR; k++)
				for(k=0; k<32; k++)
				{
//					printf("VAR[%d] = %i --> min: %X \r\n",k,(int)varianza[k],(long int)array64p[k]);
//					printf("%i; \r\n",(int)varianza[k]);
					printf("%i; \r\n",(int)array64p[k]);
					varianza[k] = 0;
				}

////				for(k=0; k<M/2; k++)
//				for(k=0; k<VALOR_EXTERNO; k++)    // DEBUG ONLY
////				for(k=0; k<M; k++)    // DEBUG ONLY
//				{
////					fprintf(fp,"%li; \r\n",(long int)buf_DISTANCEX_out[k]);
//
////					fprintf(fp,"%li, %li; \r\n",(long int)buf_DISTANCEX_out[k],(long int)buf_DISTANCEX_out[k+M/2]);  // DEBUG ONLY
//					printf("%X; \r\n",(long int)buf_DISTANCEX_out[k]);
//
//				}
				printf("];\r\n");
//				fprintf(fp,"\r\n");
			}
			buf_DISTANCEX_out[0] = 0;
//			buf_DISTANCEX_out[1] = 0;
//			fprintf(fp,"\r\n");
		}
		printf("\r\n");
//		fprintf(fp,"\r\n");
	}

	// Cerramos el fichero de escritura
//	fclose(fp);



	// Return 0 if the test passes
	return 0;
}









