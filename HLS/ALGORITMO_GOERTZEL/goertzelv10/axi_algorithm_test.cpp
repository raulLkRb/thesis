// Cuando llega a la iteración 2*M empieza a coincidir, es decir para i = 7

#include <iostream>
#include <iomanip>
using namespace std;

#include "axi_algorithm.h"
#include "stim.h"
//#include "math.h"


#ifdef FLOAT_DATA
#define ABS_ERR_THRESH 0.0
#else
#define ABS_ERR_THRESH 0.001
#endif

// External data
//extern dataW32_apt data_in_extern[2048];				// Input data
//
//AXI_VAL in_stream[1];
//AXI_VAL out_stream[IND_TAM];
//AXI_VAL out_stream1[IND_TAM];
////
//unsigned int full_fifo = 0;

unsigned int kk = 0, ii = 0;

// Main
int main () {

	// Define input
//	dataW32_24_apt buf_out[IND_TAM];
	dataW32_apt buf_in[1];
	unsigned int i = 0, j = 0, k = 0;
	unsigned int c = 0;
	unsigned int var = 0;

	// Algorithm Application
	for(kk=0; kk<2*M; kk++)
	{
		printf("[%d]:\r\n",kk);
//		for(k=0; k<1; k++)
//		{
//			in_stream[k].data = data_in_extern[kk];
//
////			goertzel_algorithm_simpler(in_stream, out_stream, out_stream1);
//			for(i=0; i<IND_TAM; i++)
//			{
////				printf("%x + %x*i \r\n",(int)out_stream[i*2].data,(int)out_stream[i*2+1].data);
//				printf("0: %d \r\n",(int)out_stream[i].data);
//				printf("1: %d \r\n",(int)out_stream1[i].data);
////				ii = ii + 2;
//			}
//			printf("\r\n");
//		}
	}


	// Return 0 if the test passes
	return 0;
}
