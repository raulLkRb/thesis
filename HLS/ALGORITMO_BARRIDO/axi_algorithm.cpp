#include "axi_algorithm.h"


/* FUNCIONES HARDWARE PARA SÍNTESIS LÓGICA RTL */
/* ALGORITMO PRINCIPAL CONSUMIDOR DE DATOS DE ENTRADA EN AXISTREAM Y PRODUCTOR DE DATOS DE SALIDA EN AXISTREAM */
void axi_algorithm(AXI_VAL input_AX_ALG[1], AXI_VAL output_AX_ALG[VALOR_EXTERNO])
{
#pragma HLS DATAFLOW
#pragma HLS INTERFACE ap_ctrl_none port=return bundle=CONTROL_BUS
#pragma HLS INTERFACE axis port=input_AX_ALG
#pragma HLS INTERFACE axis port=output_AX_ALG

	dataW32_apt frame_number;
	dataW32_apt dato[1];

	dataW32_apt buf_Tj_in[1];
	dataW32_apt buf_DISTANCEX_out[VALOR_EXTERNO];
	dataW32_apt buf_DISTANCEX_out_aux[M];

	dataW32_apt varianza[M/DEC_FACTOR];

	// Read input data. Fill the internal buffer
	read_data<dataW32_apt, 1, 4, 5, 5>(input_AX_ALG,buf_Tj_in);

	// Ahora tenemos en los 8 bits más significativos el frame_number y en los 24 menos significativos tenemos el dato
	frame_number = (dataW32_apt)(buf_Tj_in[0] & 0xFF000000) >> 24;
	dato[0] = (dataW32_apt)(buf_Tj_in[0] & 0x00FFFFFF);

	// Apply the sweep algorithm
	sweep_algorithm_DECMINV3(dato[0], buf_DISTANCEX_out);

	// Write out the results
	write_data<dataW32_apt, VALOR_EXTERNO, 4, 5, 5>(buf_DISTANCEX_out, output_AX_ALG);

	return;
}

/* PROCEDIMIENTO INTERNO PARA CALCULAR EL VECTOR DE CARACTERÍSTICAS */
// Dato de entrada: inputVal
// Vector de salida: currentGroupX_OUT
void sweep_algorithm_DECMINV3(dataW32_apt inputVal, dataW32_apt *currentGroupX_OUT)
{
	// Declaración de diferentes variables utilizadas para el cálculo del algoritmo
	bool minimoX[1] = {0};
	dataW32_apt valorAuxVinout[1];
	dataW32_apt outputVar[1];
	unsigned int indPar = 0;
	unsigned int cont32 = 0;
	unsigned int contNuevo = 0;							// Contador para el diezmado
	int contNuevoSuma = 0;
	dataW32_apt y_inout[1];
	dataW32_apt vectorAuxiliar[1];
	dataW32_apt aux_Vinout[1];
	static int contador = 0;
	unsigned int i = 0;
	unsigned int k = 0;
	int ind16 = 0;
	dataW42_apt add = 0;
	dataW42_apt sus = 0;
	static dataW32_apt aux_array[2*M+1];
//#pragma HLS ARRAY_PARTITION variable=aux_array complete dim=1
//	dataW32_apt aux_arrayGroupX[VALOR_EXTERNO];
	static dataW42_apt sum[M];
	unsigned int reset = 0;

	// Si inputVal es menor que 0, entonces lo igualamos a 0
	if(inputVal < 0)
	{
		inputVal = 0;
	}

	// Desplazamos array de datos de entrada a la izquierda
	lp3: for(i=0; i<2*M; i++)
	{
#pragma HLS PIPELINE II=1
		aux_array[i] = aux_array[i+1];
	}
	aux_array[2*M] = (dataW32_apt)inputVal;

	/* BUCLE PRINCIPAL PARA EL CÁLCULO DEL ALGORITMO DE BARRIDO */
	lp4: for(i=0; i<M; i++)
	{
	// Directivas de optimización para mejorar la concurrencia de procesos en la síntesis RTL
#pragma HLS PIPELINE rewind
#pragma HLS UNROLL factor=2

		// Cálculo en tiempo real del sumatorio de diferencias consecutivas elevadas al cuadrado
		add = (dataW42_apt)(((dataW16_apt)(aux_array[M]-aux_array[M+(i+1)]))*((dataW16_apt)(aux_array[M]-aux_array[M+(i+1)])));
		sus = (dataW42_apt)(((dataW16_apt)(aux_array[0]-aux_array[i+1]))*((dataW16_apt)(aux_array[0]-aux_array[i+1])));
		sum[i] = sum[i] + (dataW42_apt)add - (dataW42_apt)sus;

		// Muestra de la varianza
		aux_Vinout[0] = (dataW32_apt)(sum[i]>>10); 		// Nos quedamos con menos precisión de la sobrante en las operaciones anteriores

		if(i == 0)
		{
			reset = 1;
			contNuevoSuma = 0;
		}else{
			reset = 0;
		}

		// Aplicamos filtro de medias en tiempo real
		meanFilterInTime(y_inout, aux_Vinout[0], reset);

		// Guardamos en array el aux_Vinout
		outputVar[i] = y_inout[0];						// Si tomamos salida del filtro en tiempo real
//		outputVar[i] = aux_Vinout[0];					// Si no se aplica el filtro en tiempo real

		/* COMPROBAMOS SI HAY QUE DIEZMAR O NO A TRAVÉS DEL CONTADOR contNuevo */
		if(contNuevo == 0)
		{
			valorAuxVinout[0] = outputVar[i];
			compute_min_position(valorAuxVinout, minimoX, indPar, reset);
			currentGroupX_OUT[ind16] = currentGroupX_OUT[ind16] | (dataW32_apt)((minimoX[0] | 0x00000000) << cont32);
			minimoX[0] = 0;
			cont32 = cont32 + 1;
			if(cont32 == 32)
			{
				ind16 = ind16 + 1;
				cont32 = 0;
			}
			indPar = indPar + 1;
			currentGroupX_OUT[contNuevoSuma] = (dataW32_apt)((currentGroupX_OUT[contNuevoSuma] >> 1) & 0x7FFFFFFF);
			contNuevoSuma = contNuevoSuma + 1;
		}else if(contNuevo == DEC_FACTOR-1)
		{
			contNuevo = 0;
		}
		contNuevo = contNuevo + 1;
	}

	// Aumentamos contador
	contador = contador + 1;

	// Si contador == 2M+1 reseteamos aux_array a 0 y sum a 0
	if(contador == 2*M+1)
	{
		for(i=0; i<M; i++)
		{
#pragma HLS PIPELINE II=1
			sum[i] = (dataW42_apt)0;
		}
		for(i=0; i<2*M+1; i++)
		{
#pragma HLS PIPELINE II=1
			aux_array[i] = (dataW32_apt)0;
		}
		contador = 0;
	}
//	printf("\r\n");
}

/* FILTRO DE MEDIAS EN TIEMPO */
// Valor de entrada: x
// Valor de salida: y
// Reset: reset
void meanFilterInTime(dataW32_apt *y, dataW32_apt x, unsigned int reset)
{
	dataW42_apt sum = 0;
	unsigned int i = 0;
	static dataW32_apt aux_array[SIZE_WINDOW] = {};
#pragma HLS RESOURCE variable=aux_array core=RAM_2P_BRAM

	// Si reset = 1
	if(reset == 1)
	{
		sum = 0;
		lp33c: for(i=0; i<SIZE_WINDOW-1; i++)
		{
	#pragma HLS PIPELINE II=1
			aux_array[i] = 0;
		}
	} //sum + x - aux_array[0];

	// Desplazamos array de datos de entrada
	lp33b: for(i=0; i<SIZE_WINDOW-1; i++)
	{
#pragma HLS PIPELINE II=1
		aux_array[i] = aux_array[i+1];
		sum = sum + aux_array[i];
	}
	aux_array[SIZE_WINDOW-1] = x;
	sum = sum + aux_array[SIZE_WINDOW-1];

	// Damos la salida
	*y = (dataW32_apt)(sum>>1);  // ***SI ES DE N=8 EL FILTRO HAY QUE DESPLAZAR >>3, NO 4 --> ¡¡¡OJO!!!
}

/* FUNCIÓN PARA CALCULAR LAS POSICIONES DE LOS MÍNIMOS */
// Valor de entrada: signalVal
// Posiciones de salida: minimoX
// Identificador de muestra actual dentro del array: currentSample
// Reset: reset
void compute_min_position(dataW32_apt *signalVal, bool *minimoX, dataW32_apt currentSample, unsigned int reset)
{
	// Declaración variables
	static dataW32_apt vector[2];
	static dataW32_apt derivada[2];
	unsigned int i = 0;

	// Declaración descriptores de salida
	dataW32_apt distanciaMinX;

	// Si hay un reset entonces ponemos ciertas variables a 0
	if(reset == 1)
	{
		vector[0] = 0; vector[1] = 0;
		derivada[0] = 0; derivada[1] = 0;
		minimoX[0] = 0;
	}

	// Tomamos el valor de la señal y computamos la derivada actual
	vector[1] = signalVal[0];

	// Calculamos la derivada
	derivada[1] = vector[1]-vector[0];

	// Detección de mínimo --> colocamos un '1' dónde haya un mínimo local
	if(derivada[0]<0 && derivada[1]>0)
	{
		if(currentSample > UMBRAL_CURRENT_SAMPLE)
		{
			minimoX[0] = 1;
		}
	}

	// Actualizamos valores
	derivada[0] = derivada[1];
	vector[0] = vector[1];
}









