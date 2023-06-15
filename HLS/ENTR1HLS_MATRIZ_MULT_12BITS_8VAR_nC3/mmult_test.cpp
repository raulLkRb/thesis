/* SCRIPT DE TEST PARA DEPURAR EL ALGORITMO PCA */
#include <stdio.h>
#include <stdlib.h>

#include "mmult.h"

// Declaración del stream de entrada y de salida
AXI_VAL in_stream[nVAR*nOBS/2];
AXI_VAL out_stream[nC*nOBS+nVAR*nOBS/2];

unsigned int i = 0;


int main(void)
{
	// Damos algunos valores de control al stream de entrada
	in_stream[0].data = 0xD00D;
	in_stream[1].data = 0x20020;
	in_stream[2].data = 0x4502B;
	in_stream[3].data = 0xD1088;

	// Testeamos que el cálculo de PCA es correcto
	wrapped_mmult_hw(in_stream,out_stream);

	// Mostramos por pantalla el stream de salida que se obtiene y verificamos si es correcto (probamos distintas formas de presentarlo, decimal, hexadecimal, flotante...)
	for(i=0; i<nC*nOBS; i++)
	{
//		printf("out_stream[%d] is %X \r\n",i,(int)out_stream[i].data);
//		printf("out_stream[%d] is %3.4f \r\n",i,(float)out_stream[i].data);
//		printf("out_stream[%d] is %f \r\n",i,(float)out_stream[i].data);
//		printf("out_stream[%d] is %d \r\n",i,(int)out_stream[i].data);
		printf("out_stream[%d] is %x \r\n",i,(int)out_stream[i].data);
	}

	return 0;
}

