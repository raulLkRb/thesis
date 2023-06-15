#include <iostream>
#include <iomanip>
using namespace std;

#include "axi_algorithm.h"
#include "stimTestM2.h"

#define N_TRAIN M


#ifdef FLOAT_DATA
#define ABS_ERR_THRESH 0.0
#else
#define ABS_ERR_THRESH 0.001
#endif

/* VARIABLES GLOBALES */
AXI_VAL input_AX_ALG[N_MOMENT];
int M00_dedo;
int M00_palma;
int M01_dedo;
int M01_palma;
int M10_dedo;
int M10_palma;
int M02_dedo;
int M02_palma;
int M20_dedo;
int M20_palma;
int M11_dedo;
int M11_palma;
bool full_fifo = 0;
bool t_ready = 1;


unsigned int i = 0, k = 0, ii = 0;


// Main
int main () {

	input_AX_ALG[0].data = 193;
	input_AX_ALG[1].data = 989;
	input_AX_ALG[2].data = 194;
	input_AX_ALG[3].data = 9822;
	input_AX_ALG[4].data = 1933;
	input_AX_ALG[5].data = 9855;
	input_AX_ALG[6].data = 1998;
	input_AX_ALG[7].data = 989;
//	input_AX_ALG[8].data = 196;
//	input_AX_ALG[9].data = 980;
//	input_AX_ALG[10].data = 193;
//	input_AX_ALG[11].data = 984;

//	axi_algorithm(input_AX_ALG, M00_dedo, M00_palma, M01_dedo, M01_palma, M10_dedo, M10_palma, M02_dedo, M02_palma, M20_dedo, M20_palma, M11_dedo, M11_palma);
	axi_algorithm(input_AX_ALG, M00_dedo, M00_palma, M01_dedo, M01_palma, M10_dedo, M10_palma, M02_dedo, M02_palma);


	printf("M00_dedo is %d \r\n",M00_dedo);
	printf("M00_palma is %d \r\n",M00_palma);
	printf("M00_dedo is %d \r\n",M01_dedo);
	printf("M00_palma is %d \r\n",M01_palma);
	printf("M00_dedo is %d \r\n",M10_dedo);
	printf("M00_palma is %d \r\n",M10_palma);
	printf("M00_dedo is %d \r\n",M02_dedo);
	printf("M00_palma is %d \r\n",M02_palma);
//	printf("M00_dedo is %d \r\n",M20_dedo);
//	printf("M00_palma is %d \r\n",M20_palma);
//	printf("M00_dedo is %d \r\n",M11_dedo);
//	printf("M00_palma is %d \r\n",M11_palma);

	// Return 0 if the test passes
	return 0;
}









