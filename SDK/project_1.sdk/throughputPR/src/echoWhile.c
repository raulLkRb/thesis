/******************************************************************************
*
* Copyright (C) 2016 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/
/* Standard includes */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <float.h>
#include <math.h>
/* LWIP options */
#include "lwip/sockets.h"
#include "netif/xadapter.h"
#include "lwipopts.h"
#include "lwip/sockets.h"
#include "lwip/sys.h"
#include "lwip/init.h"
#include "lwip/inet.h"
/* FreeRTOS includes */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
/* Xilinx includes */
#include "xparameters.h"				// It contains info about the hardware
#include "xtime_l.h"
#include "xgpiops.h"
#include "xil_IO.h"
#include "xil_printf.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "platform.h"
#include <xil_io.h>
#include "xgpio.h"
#include "xscugic.h"
#include "xaxidma_hw.h"
#include "xaxidma.h"
#include "xgpiops.h"
/* Stimulus includes */
#include "stim8.h"

#define CLASIFICACION
/* Opciones no utilizadas: DTW, normalizacion */
//#define DTW
//#define normalizacion  // Si se normaliza, también te normaliza los datos sin clasificar

/* Defines */
#define ledpin 7
#define THREAD_STACKSIZE 8192
#define M 1024


#define BUFFER_SIZE 3    		// 3 componentes principales
#define DMA_SIZE 4		 		// 2 momentos dedo y palma

#define DESCRIPTOR_SIZE 3 		// 3 componentes principales


#define NUM_TESTS 1024


/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

/* DEFINE */
#define k 42 					// Numero de grupos-clases
#define big_number INFINITY		// BIG NUMBER --> INFINITO
#define dim 3					// Tamaño del vector de características
#define N 1

// External data
extern int t_reg_datos[TAM_EXT]; // External input data from antialiasing filter (from ARM to hardware, and then from hardware to ARM)

// Centroides óptimos obtenidos
float centroide[k*dim] = {

		-52.0547617920021,24.7657371793364,7.77698918290356,
		101.530628026138,56.4400362501641,3.4006591717374,
		56.6719546319365,30.4353655801582,-0.0971880383098711,
		245.835849737208,27.8824876934804,8.56528996025576,
		-57.5592920659144,-35.7844169325835,15.8968195579491,
		28.0163700646727,-43.6258084676332,13.8449575599192,
		-68.4303862189276,-29.1539277164517,-15.5326867751607,
		-25.3465739838819,10.3577121217164,13.676836188738,
		18.0077966706285,0.026147752565097,-6.14063696142036,
		39.672829191944,39.8723297838371,-27.8612964950905,
		-32.8614511292985,75.478053667102,-11.3966983394285,
		-139.573473986097,87.8966929350468,10.9615631076781,
		145.696498724792,55.4982484606288,16.6454371290529,
		-16.8767469311044,36.0703833722523,8.63932505830842,
		170.35491998854,-8.31665021034016,-26.6987399519884,
		-97.2730095770824,-29.4991046462948,18.5669277046091,
		-78.2851682364184,-21.3258048728327,-3.08388077425186,
		39.3965593438193,-40.6802477523075,9.12338680270825,
		-94.3999958885828,-22.8282545980909,23.081231067676,
		-63.2889447816676,-32.1888646927442,-20.4290640608801,
		-2.34419581622566,-17.2644468108806,9.80820817551409,
		-138.613694136087,-26.3964506328381,4.73728603051754,
		-88.6627634476166,-30.5424275405116,-6.79286716284664,
		-47.1443492552104,-17.1089129114798,-16.8600380866258,
		-110.899920962468,-19.333689618176,-3.1735265002652,
		-73.6269224134211,-19.9371143448997,6.48599740955259,
		52.0107690829352,-40.5165367811787,-2.01983036687435,
		105.368594377714,81.7919534857734,13.9184024826837,
		-118.810004100013,-1.76466417578548,8.48219571837759,
		9.72629560834787,74.5994431234829,-13.4702278578803,
		-150.589341219429,-2.71651499986002,-13.330524892801,
		300.360378148646,-44.8935243442442,-24.7905429252334,
		63.2101067008978,53.9174305453803,-8.6427826540844,
		171.979950967503,-40.6690456100878,2.65156728469928,
		28.2311761822159,-33.1187077625919,-54.874130633676,
		38.1949047724251,3.99887929526046,-2.28197331780401,
		258.818610339956,-46.6645544446395,37.5409057743948,
		-156.52146296986,-30.49593479148,-9.67692326043801,
		-145.773866732395,6.83462485924931,12.3293850546731,
		83.7685658847416,-40.7060137235057,24.3815128242005,
		-5.58354827122728,-32.8287594889633,5.05628753460643,
		-132.704083055015,49.3591836516943,-10.1085031739207
};

// Matriz de observaciones (N obesrvaciones x la dimensión de cada observacion)
float X[N*dim];

// Estructura definida para la selección del centroide de clase más próximo al vector de test
typedef struct
{
	float C[k*dim];
	int cluster_idx[N];
	float dist[N];
	float sample[N*dim];			// 1 = N*dim
} MyStruct;


#if LWIP_DHCP==1
#include "lwip/dhcp.h"
#endif

// OPCIONES DE DISPOSITIVO ZEDBOARD
#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

/* PROCEDIMIENTOS DE MAIN Y PARA ENVIO POR EL PROTOCOLO LWIP DE DATOS */
int main_thread();
void print_echo_app_header();
void echo_application_thread();

/* PROCEDIMIENTOS DE MACHINE LEARNING *
 *  La función inicializar_data inicializa los centroides y la función
choose_cluster_from_distances selecciona la clase más próxima al vector
de test según la métrica de la distancia euclídea */
void inicializar_data(MyStruct *data);
void choose_cluster_from_distances(MyStruct *data);

/* Funcion de entero a float 32 bits */
float funcionSumatorio(int mantisa);
float format2float32bit(int numero);

// Inicialización de la pila lwIP
void lwip_init();

#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif

static struct netif server_netif;
struct netif *echo_netif;

u16_t echo_port = 7;


/* Declaracion para puerto de propósito general */
static XGpioPs xGpio;

/* GLOBAL VARIABLES */
// Declaración de colas
static QueueHandle_t cola1, cola2;
typedef struct
{
//	long int array[DMA_SIZE];
//	long int array[DESCRIPTOR_SIZE];
	float array[DESCRIPTOR_SIZE];
}AMessage;

typedef struct
{
//	long int array[DMA_SIZE];
//	long int array[DESCRIPTOR_SIZE];
	float vector[dim];
}AMessageVector;

// Declaración de semáforos
static SemaphoreHandle_t semaforo1;
static SemaphoreHandle_t semaforo2;


/******************************************************************/
/* Variables globales BRAM */
// Global definitions
XScuGic xInterruptController;
static XScuGic_Config *GicConfig;
u32 global_frame_counter = 0;

XAxiDma AxiDma;
int TxDone = 0;
int RxDone = 0;


// Global variables
static XGpioPs psGpioInstancePtr;			// gpio PS
static XGpio data_counts;					// gpio data_counts
static XGpio throughput;					// gpio throughput
static unsigned int pinEMIO_0 = 54; 		// overflow fifo
unsigned int last_frame = 0x0;				// variable para last_frame
unsigned int empty_fifo = 0x0;				// variable para current_frame
unsigned int dma_configurada = 0x0;			// variable para dma_configurada
unsigned int tvalid = 0x0;					// variable tvalid from axi_algorithm
unsigned int dirEMIO_Output = 0x1; 			// Salida
unsigned int dirEMIO_Input = 0x0; 			// Entrada


/* TIMER: Variables globales timer */
unsigned int init_time, curr_time, calibration;
unsigned int begin_time;
unsigned int end_time;
unsigned int run_time_sw = 0;
unsigned int run_time_hw = 0;


// Funcion de desplazamiento a la derecha y de calculo de matriz de media de descriptores
float *shiftMeanMat(MyStruct *data)
{
	// tamanho media y delete
	int tamD = 256;

	// Declaramos indices de  bucles
	int i=0, j=0;

	// Declaramos variables
	static float sum[dim] = {};
	static float MatDatos[dim][M] = {};
	static float vmean[dim] = {};

	// Paso 1. Calculo de media con el dato nuevo
	for(j=0; j<dim; j++)
	{
		sum[j] = sum[j] - MatDatos[j][M-1] + data -> sample[j];
		vmean[j] = sum[j]/M;
	}

	// Paso 2. Right shift
	float MatAux[dim][M] = {};
	for(i=1; i<=M-1; i++)
	{
		for(j=0; j<dim; j++)
		{
			MatAux[j][i] = MatDatos[j][i-1];
		}
	}
	for(j=0; j<dim; j++)
	{
		MatAux[j][0] = data -> sample[j];
	}

	// Paso 3. Actualizamos MatDatos
	for(i=0; i<M; i++)
	{
		for(j=0; j<dim; j++)
		{
			MatDatos[j][i] = MatAux[j][i];
		}
	}

	// Devolvemos vector de medias
	return vmean;
}


// Funcion deleteDescriptorOutliers
int deleteDescriptorOutliers(float *vmean, float threshold, float fondoEscalaY, MyStruct *data)
{

	// Declaramos indices de bucles
	int i=0;

	// Declaramos flag de exclusion
	int flagExclusion = 0;

	// Declaramos arrays vmenos y vmas
	float arrayVmenos[dim] = {};
	float arrayVmas[dim] = {};

	// Paso 1. Calculamos arrayVmenos y arrayVmas
	for(i=0; i<dim; i++)
	{
		arrayVmenos[i] = vmean[i] - fondoEscalaY*threshold;
		arrayVmas[i] = vmean[i] + fondoEscalaY*threshold;
	}

	// Paso 2. Está el dato en el intervalo entre vmenos y vmas??
	for(i=0; i<dim; i++)
	{
		if((data -> sample[i] < arrayVmenos[i]) || (data -> sample[i] > arrayVmas[i]))
		{
			flagExclusion = 1;
		}
	}

	// Devolvemos flagExclusion
	return flagExclusion;
}

/* FUNCION PARA PASAR DEL ENTERO A FLOAT 32 BITS 1 BIT SIGNO, 8 BITS DE EXPONENTE Y 23 BITS DE MANTISA */
float funcionSumatorio(int mantisa)
{
	float sumatorio = 0;
	float factor = 0;
	unsigned int i = 0;
	unsigned int b = 0;
	for(i=1; i<=23; i++)
	{
		b = (mantisa>>(23-i))&0x1;
		factor = (float)pow(2,(int)(-1*i));
		sumatorio = sumatorio + b*factor;
	}
	sumatorio = 1+sumatorio;
//	printf("sumatorio = %f \r\n",sumatorio);
	return sumatorio;
}
float format2float32bit(int numero)
{
	int bitSigno = 0;
	unsigned int Exponente = 0;
	int mantisa = 0;
	float salida = 0;
	float sumatorio = 0;

	// Tomamos primero el bit de signo
	bitSigno = (numero>>31)&0x00000001;
//	printf("Signo = %d \r\n",bitSigno);

	// Tomamos ahora el exponente de 8 bits
	Exponente = (numero>>23)&0x000000FF;
//	printf("Exponente = %d \r\n",Exponente);

	// Tomamos la mantisa de 23 bits
	mantisa = numero&0x007FFFFF;
//	printf("Mantisa = %f \r\n",(float)(1+funcionSumatorio(mantisa)));

	// Salida a float
	sumatorio = funcionSumatorio(mantisa);
	salida = pow((int)-1,bitSigno)*funcionSumatorio(mantisa)*pow(2,(int)Exponente-127);
	return salida;
}

/* Función de inicialización de centroides */
void inicializar_data(MyStruct *data)
{
	int i,j;
	for(i =0; i<N; i++)
	{
		data -> dist[i] = 0;
		data -> cluster_idx[i] = 0;
	}
	for(i=0; i<k; i++)
	{
		for (j=0; j<dim; j++)
		{
			data -> C[i*dim+j] = centroide[i*dim+j];
		}
	}
}

// Función para buscar máximo del array de votos
int buscaMaximo(int *votingArray, int reset)
{
	static int mayor = 0;
	static int indiceFinal = 0;
	if(reset == 1)
	{
		mayor = 0;
		indiceFinal = 0;
	}
	int i = 0;
	for(i=0; i<k; i++)
	{
		if(votingArray[i]>mayor)
		{
			mayor = votingArray[i];
			indiceFinal = i+1;
		}
	}
	return indiceFinal;
}

// Función para calcular la distancia Dynamic Time Warping (DTW)
float dtw(float *array1,float *array2,int window)
{
	// Web: https://towardsdatascience.com/dynamic-time-warping-3933f25fcdd
	long int n = sizeof(array1)/sizeof(array1[0]);
	long int m = sizeof(array2)/sizeof(array2[0]);
	float valor1;
	float valor2;
	float valorDiferencia;
	float cost;
	float w;
	float DTW[n+1][m+1];

	// Ventana
	w = fmax(w,abs(n-m));

	// Primer bucle for
	for(int i=0; i<=n; i++)
	{
		for(int j=0; j<=m; j++)
		{
			DTW[i][j] = big_number;
		}
	}
	DTW[0][0] = 0;

	// Segundo bucle for
	for(int i=1; i<=n; i++)
	{
		for(int j=fmax(i,i-w); j<=fmin(m,i+w); j++)
		{
			DTW[i][j] = 0;
		}
	}

	// Tercer bucle for
	for(int i=0; i<=n; i++)
	{
		for(int j=fmax(i,i-w); j<=fmin(m,i+w); j++)
		{
			valor1 = array1[i];
			valor2 = array2[j];
			valorDiferencia = valor1 - valor2;
			valorDiferencia = valorDiferencia*valorDiferencia;
			cost = sqrt(valorDiferencia);
			DTW[i][j] = cost + fmin(DTW[i-1][j],fmin(DTW[i][j-1],DTW[i-1][j-1])); // DTW[i-1][j] --> insertion, DTW[i][j-1] --> deletion, DTW[i-1][j-1] --> match
		}
	}

	return DTW[n][m];
}

// Función para seleccionar el centroide de clase más próximo al vector de test
void choose_cluster_from_distances(MyStruct *data)
{
#ifdef DTW
	float array1[dim];
	float array2[dim];
#endif

	static long int count = 0;
	int indiceMax = 0;
	int reset = 0;
//	static int votingArray[k] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}; 		// En caso de usar sistema de votos
	XGpio_DiscreteWrite(&throughput, 1, 1);
	for(int i=0; i<N; i++)
	{
		int idx = -1;
		double closet_distance = big_number ;
		double d=0, sum =0;
		for(int j=0; j<k; j++) 												// Cálculo de la distancia a cada centroides
		{
#ifdef DTW
			for(int p=0; p<dim; p++)
			{
				array1[i] = data -> sample[i*dim+p];
				array2[i] = data -> C[j*dim+p];
			}
			sum = dtw(array1,array2,5);
			data -> dist[i] = sum;
#else
			for(int p=0; p<dim; p++)
			{
//				xil_printf("D: %li \r\n", (int)(data -> sample[i*dim+p]));
				d = (((data -> sample[i*dim+p]) - (data -> C[j*dim+p])));
				d = d*d;
				sum = sum+d;
			}
//			xil_printf("\r\n\r\n");
			data -> dist[i] = sqrt(sum);
#endif
			sum = 0;
			if (data -> dist[i] < closet_distance)
			{
				idx = j+1;
				closet_distance = data -> dist[i];
			}
		}
		data -> cluster_idx[i] = idx;
		XGpio_DiscreteWrite(&throughput, 1, 0);
//		xil_printf("Dec: %li \r\n", (int)idx);
	}

	// En caso de usar el sistema de votos, descomentar la siguiente parte
	//Sumamos count hasta llegar a NN veces clasificaciones
//	for(int i=0; i<k; i++)
//	{
//		if(data -> cluster_idx[0] == (i+1))
//		{
//			votingArray[i]++;
//		}
//	}
//	count = count + 1;
//	//if(count == 2048)
//	{
//		reset = 1;
//		for(int i=0; i<k; i++)
//		{
//			votingArray[i] = 0;
//		}
//		count = 0;
//	}
//
//	// Buscamos el indice para el maximo de votingArray
//	indiceMax = buscaMaximo(votingArray,reset);
//	data -> cluster_idx[0] = indiceMax;

}

// Inicializar registros para la transferencia por DMA
void StartDMATransfer(unsigned int dstAddress, unsigned int len) {
	Xil_Out32(XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x48, dstAddress);
	Xil_Out32(XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x58, len);
}

// Manejador de interrupción de transmisión para DMA
void TxIntrHandler(void *Callback) {
	u32 IrqStatus;
	int TimeOut;
	int Error;

	// FreeRTOS bigger priority
	portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;

	/* Disable interrupt */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	/* Read pending interrupts */
	IrqStatus = XAxiDma_IntrGetIrq(&AxiDma, XAXIDMA_DMA_TO_DEVICE);

	/* Acknowledge pending interrupts */
	XAxiDma_IntrAckIrq(&AxiDma, IrqStatus, XAXIDMA_DMA_TO_DEVICE);

	/*
	 * If no interrupt is asserted, we do not do anything
	 */
	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

		Error = 1;

		/* Reset could fail and hang
		 * NEED a way to handle this or do not call it??
		 */
		XAxiDma_Reset(&AxiDma);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if(XAxiDma_ResetIsDone(&AxiDma)) {
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If completion interrupt is asserted, then set RxDone flag
	 */
	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

		TxDone = 1;
	}

	// Mecanismo semaforo
	xSemaphoreGiveFromISR(semaforo1,&xHigherPriorityTaskWoken);

	// Comprobamos si hay que hacer un cambio de contexto
	portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}


// Manejador de interrupción de recepción para DMA
void RxIntrHandler(void *Callback) {
	u32 IrqStatus;
	int TimeOut;
	int Error;

	// FreeRTOS bigger priority
	portBASE_TYPE xHigherPriorityTaskWoken = pdFALSE;

	/* Disable interrupt */
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);
	XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

	/* Read pending interrupts */
	IrqStatus = XAxiDma_IntrGetIrq(&AxiDma, XAXIDMA_DEVICE_TO_DMA);

	/* Acknowledge pending interrupts */
	XAxiDma_IntrAckIrq(&AxiDma, IrqStatus, XAXIDMA_DEVICE_TO_DMA);

	/*
	 * If no interrupt is asserted, we do not do anything
	 */
	if (!(IrqStatus & XAXIDMA_IRQ_ALL_MASK)) {
		return;
	}

	/*
	 * If error interrupt is asserted, raise error flag, reset the
	 * hardware to recover from the error, and return with no further
	 * processing.
	 */
	if ((IrqStatus & XAXIDMA_IRQ_ERROR_MASK)) {

		Error = 1;

		/* Reset could fail and hang
		 * NEED a way to handle this or do not call it??
		 */
		XAxiDma_Reset(&AxiDma);

		TimeOut = RESET_TIMEOUT_COUNTER;

		while (TimeOut) {
			if(XAxiDma_ResetIsDone(&AxiDma)) {
				break;
			}

			TimeOut -= 1;
		}

		return;
	}

	/*
	 * If completion interrupt is asserted, then set RxDone flag
	 */
	if ((IrqStatus & XAXIDMA_IRQ_IOC_MASK)) {

		RxDone = 1;
	}

	// Mecanismo semaforo
	xSemaphoreGiveFromISR(semaforo1,&xHigherPriorityTaskWoken);

	// Comprobamos si hay que hacer un cambio de contexto
	portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
}


// Setup Interrupt System
int SetUpInterruptSystem(XScuGic *XScuGicInstancePtr) {
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler,
			XScuGicInstancePtr);

	Xil_ExceptionEnable();
	// Enable interrupts in ARM
	return XST_SUCCESS;
}

// Initialize Interrupt System
int InializeInterruptSystem( deviceID) {
	int Status;
	GicConfig = XScuGic_LookupConfig(deviceID);
	if (NULL == GicConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(&xInterruptController, GicConfig,
			GicConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = SetUpInterruptSystem(&xInterruptController);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XScuGic_SetPriorityTriggerType(&xInterruptController, XPAR_FABRIC_HIER_2_AXI_DMA_0_S2MM_INTROUT_INTR, 0xA0, 0x3);
	XScuGic_SetPriorityTriggerType(&xInterruptController, XPAR_FABRIC_HIER_2_AXI_DMA_0_MM2S_INTROUT_INTR, 0xA8, 0x3);
//	XScuGic_SetPriorityTriggerType(&xInterruptController, XPAR_FABRIC_HIER_2_AXI_DMA_0_S2MM_INTROUT_INTR, 80, 0x3);

	Status = XScuGic_Connect(&xInterruptController,
			XPAR_FABRIC_HIER_2_AXI_DMA_0_S2MM_INTROUT_INTR,
			(Xil_ExceptionHandler) RxIntrHandler, NULL);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XScuGic_Connect(&xInterruptController,
			XPAR_FABRIC_HIER_2_AXI_DMA_0_MM2S_INTROUT_INTR,
			(Xil_ExceptionHandler) TxIntrHandler, NULL);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	XScuGic_Enable(&xInterruptController,
			XPAR_FABRIC_HIER_2_AXI_DMA_0_S2MM_INTROUT_INTR);

	XScuGic_Enable(&xInterruptController,
			XPAR_FABRIC_HIER_2_AXI_DMA_0_MM2S_INTROUT_INTR);

	return XST_SUCCESS;
}

// Funcion necesaria para hacer transferencia de PL a PS
int InitializeAXIDma(void) {
	unsigned int tmpVal;
	// START DMA
	tmpVal = Xil_In32(XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x30);
	tmpVal = tmpVal | 0x1001;
	Xil_Out32( XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x30, tmpVal);
	tmpVal = Xil_In32(XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x30);
	xil_printf("Value for dma control register : %x\r\n", tmpVal);
	return 0;
}

// INIT DMA FUNCTION
int init_dma_bram() {
	XAxiDma_Config *CfgPtr;
	int status;
	int tmpVal;

	// Reset DMA
	tmpVal = Xil_In32(XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x30);
	tmpVal = 0x4;

	// START DMA
	CfgPtr = XAxiDma_LookupConfig((XPAR_HIER_2_AXI_DMA_0_DEVICE_ID));
	if (!CfgPtr) {
		print("Error looking for AXI DMA config\n\r");
		return XST_FAILURE;
	}
	status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
	if (status != XST_SUCCESS) {
		print("Error initializing DMA\n\r");
		return XST_FAILURE;
	}
	//check for scatter gather mode
	if (XAxiDma_HasSg(&AxiDma)) {
		print("Error DMA configured in SG mode\n\r");
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

// RESET DMA FUNCTION
void reset_dma() {
	int tmpVal;

	// Reset DMA
	tmpVal = 0x4;
	Xil_Out32(XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x30, tmpVal);
	tmpVal = Xil_In32(XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x30);

	// Interrupts enabled again
	tmpVal = tmpVal | 0x17002;
	Xil_Out32(XPAR_HIER_2_AXI_DMA_0_BASEADDR + 0x30, tmpVal);

	// Leemos lo que hay en el registro del DMA
//	xil_printf("Value 4 for dma control register : %x\r\n", tmpVal);
}

/* FreeRTOS */
// Funciones de print
void print_ip(char *msg, struct ip_addr *ip)
{
	xil_printf(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip), ip4_addr3(ip), ip4_addr4(ip));
}

void print(const char *ptr)
{
	while(*ptr)
	{
		outbyte(*ptr++);
	}
}

void print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}

/* Tarea Gancho - Hook por si se desborda la pila */
void vApplicationStackOverflowHook( void *pxTask, signed char *pcTaskName)
{
    //Handle FreeRTOS Stack Overflow
    while(1)
    {
    	xil_printf("Hook \r\n");
    }
}

/* Declaración de tarea para ver si la FIFO tiene overflow o o no */
static void FIFO_OverflowTask(void *pvParameters)
{
	static u32 fifo_overflow = 0;
	for(;;)
	{
		vTaskDelay(0.001*configTICK_RATE_HZ);
		fifo_overflow = XGpioPs_ReadPin(&psGpioInstancePtr, pinEMIO_0);
		if(fifo_overflow == 1)
		{
			fifo_overflow = 0;
			xil_printf("FIFO_OVERFLOW ERROR \r\n");
		}
	}
	vTaskDelete(NULL);
}

/* Declaración de tarea ClassifierTask */
static void ClassifierTask(void *pvParameters)
{
	// 1. Hay que hacer un queue receive
	// 2. Después se aplica sobre el dato recibido la clasificación
	// 3. Se encola en otra cola nueva, de la que la tarea que escribe en el puerto serie dará la salida

	/* Variables para clasificacion */
	float value = 0;
	MyStruct data;

	// Vector media y flagExclusion
	float *vectorMedia;
	int flagExclusion = 0;

	// Variable static para cluster
//	static int valorAntiguoCluster = 0;

	// Variable contador de 2048 puntos
	static int cont2048 = DMA_SIZE+1;
	static int cc = 0;


	int arrayTest2[1];
	AMessageVector bufferReceive2;

	unsigned int i;
	unsigned int kk;
	unsigned int n;
	unsigned int status;
	volatile int cont_new = 0;
	long int valor = 0;

	// La tarea debe tener un bucle infinito...
	for(;;)
	{
		vTaskDelay(0.001*configTICK_RATE_HZ);
//		XGpio_DiscreteWrite(&throughput, 1, 1);					// Descomentar si queremos medir tiempo de clasificación con el osciloscopio

		/* Leemos la estructura de datos */
		xQueueReceive(cola2, &bufferReceive2, portMAX_DELAY);
		for(n=0; n<dim; n++)
		{
			data.sample[n] = (float)bufferReceive2.vector[n];
		}

		/* Procesamos el array */
		inicializar_data(&data);

		/* Descomentar las siguientes líneas si queremos eliminar outliers en tiempo real. En la tesis se ha hecho offline */
//		// Calculamos media con el dato nuevo (opcional)
//		vectorMedia = shiftMeanMat(&data);
//		// Vemos si la muestra actual está dentro del rango dado por [vmean-TH*FY,vmean+TH*FY]
//		flagExclusion = deleteDescriptorOutliers(vectorMedia, 0.4, M, &data);
//		// Vemos si podemos clasificar el dato o no
//		if(flagExclusion == 1)
//		{
//			// Nos quedamos cómo estábamos
//			data.cluster_idx[0] = valorAntiguoCluster;
//		}
//		else
//		{
//			// Podemos clasificar - nuevo cluster
//			choose_cluster_from_distances(&data);
//			valorAntiguoCluster = data.cluster_idx[0];
//		}

		// Clasificamos el nuevo vector de test como perteneciente a la clase cuyo centroide esté más próximo
		choose_cluster_from_distances(&data);

//		XGpio_DiscreteWrite(&throughput, 1, 0);					// Descomentar si queremos medir tiempo de clasificación con el osciloscopio

		// Asignamos cluster a la variable de salida y después encolamos si queremos enviarlo por lwIP. Si no, lo mosstramos por puerto serie
		arrayTest2[0] = data.cluster_idx[0];

//		xil_printf("Clase: %li \r\n",(int)arrayTest2[0]);
		xil_printf("%li \r\n",(int)arrayTest2[0]);

		/* Enviamos a la cola2 el valor de la clase detectada -- opción lwIP */
//		xQueueSend(cola1, &arrayTest2, portMAX_DELAY);

	}
	vTaskDelete(NULL);
}

/* Función para encontrar el minimo de un array */
long int computeMinimoArray(long int *array)
{
	long int minimo = big_number;
	for(int i = 0; i<DMA_SIZE; i++)
	{
		if(minimo>array[i])
		{
			minimo = array[i];
		}
	}
	return minimo;
}

/* Función para encontrar el maximo de un array */
long int computeMaximoArray(long int *array)
{
	long int maximo = 0;
	for(int i = 0; i<DMA_SIZE; i++)
	{
		if(maximo<array[i])
		{
			maximo = array[i];
		}
	}
	return maximo;
}

/* Función para normalizar un array al valor máximo */
void normalizeArray(long int *array, long int *normalizedArray)
{
	long int maximo = computeMaximoArray(array);
//	long int minimo = computeMinimoArray(array);
//	float range;
//	float numerador;
	float aux_array[DMA_SIZE];
//	range = (float)maximo-(float)minimo;
	for(int i = 0; i<DMA_SIZE; i++)
	{
		aux_array[i] = (float)((float)array[i]/(float)maximo);
//		numerador = (float)array[i]-(float)minimo;
//		aux_array[i] = ((float)numerador/((float)range));
		normalizedArray[i] = (long int)(8192*aux_array[i]);
	}
}

/* Declaración de tarea */
static void DummyTask(void *pvParameters)
{

#ifdef normalizacion
	long int normalizedArray[DMA_SIZE];
#endif

	AMessage arrayTest;
	AMessageVector vectorTest;
	long int array[DMA_SIZE];
	unsigned int i,kk;
	unsigned int status;
	int valorIntermedio,maximo,area;
	volatile int numberData = 0;
	volatile int t_ready_in = 0;
	volatile int numIt = 0;
	volatile int cont_new = 0;
//	int contadorTransmision = 0;
	int contadorTransmision = 447*4*2609;
	int contadorGeneral = 0;

	for(;;)
	{
		vTaskDelay(0.001*configTICK_RATE_HZ);

		// Operamos con la DMA XPAR_HIER_2_AXI_DMA_0_BASEADDR
		Xil_DCacheFlushRange(0x01000000 + 0x00300000 + DMA_SIZE * 4, DMA_SIZE * 4); // envio y recepcion

		kk = 0;

		// Escribimos valor
		for(i=contadorTransmision; i<contadorTransmision+DMA_SIZE; i++)
		{
			Xil_Out32(0x01000000 + 0x00300000 + DMA_SIZE * 4 + kk * 4, t_reg_datos[i]);
//			xil_printf("dato[%d] = %d \r\n",i,(int)(t_reg_datos[i]));
			kk = kk + 1;
		}
//		xil_printf("\r\n");

		// Ponemos a 0 los flags de interrupción
		TxDone = 0;

		// Enable intetrrupts
		XAxiDma_IntrEnable(&AxiDma, (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK), XAXIDMA_DMA_TO_DEVICE);

		status = XAxiDma_SimpleTransfer(&AxiDma, 0x01000000 + 0x00300000 + DMA_SIZE * 4, DMA_SIZE * 4, XAXIDMA_DMA_TO_DEVICE);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}

		// Wait for Rx Done
		while (!(TxDone)) {
		}

		// Tomamos semáforo
		xSemaphoreTake(semaforo1,portMAX_DELAY);

		// Aumentamos contadorTransmision
		contadorTransmision = contadorTransmision + DMA_SIZE;
		contadorGeneral = contadorGeneral + 1;
		if(contadorTransmision == TAM_EXT)
		{
			xil_printf("TAM_EXT \r\n");
			contadorTransmision = 0;
		}

		// Leer el número de datos que hay en la FIFO y calcular el número de iteraciones (número de grupos del número de esos datos que se pueden sacar de la FIFO a la vez)
		numberData = XGpio_DiscreteRead(&data_counts,1);
		numIt = (int)(numberData/BUFFER_SIZE);

//		// Opciones de depuración
//		if(numIt != 0)
//		{
//			xil_printf("numIt: %li \r\n",(long int)numberData);
//			xil_printf("numIt: %li \r\n",(long int)numIt);
//			xil_printf("numberData: %li \r\n",(long int)contadorTransmision);
//		}

		// Sacamos tantos grupos de datos de la FIFO de salida de la arquitectura, como iteraciones numIt hayamos calculado
		for(cont_new=0; cont_new<numIt; cont_new++)
		{
			// Operamos con la DMA
			Xil_DCacheFlushRange(0x01000000 + 0x00300000, DESCRIPTOR_SIZE * 4); // envio y recepcion

			// Ponemos a 0 los flags de interrupción
			RxDone = 0;

			// Enable intetrrupts
			XAxiDma_IntrEnable(&AxiDma, (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_ERROR_MASK), XAXIDMA_DEVICE_TO_DMA);

			// Transferencias hacia y desde DMA al DEVICE
			status = XAxiDma_SimpleTransfer(&AxiDma, 0x01000000 + 0x00300000, DESCRIPTOR_SIZE * 4, XAXIDMA_DEVICE_TO_DMA);
			if (status != XST_SUCCESS) {
				return XST_FAILURE;
			}

			// Wait for RxDone (DMA receiver handler)
			while (!RxDone) {
			}

			xSemaphoreTake(semaforo1,portMAX_DELAY);
			// Asignamos datos
			for(i=0; i<DESCRIPTOR_SIZE; i++)
			{
				valorIntermedio = Xil_In32(0x01000000 + 0x00300000 + i * 4);
//				area = (int)(valorIntermedio & 0xFFF);
//				maximo = (int)((valorIntermedio >> 12) & 0xFFF);
//				xil_printf("maximo[%d] = %d, area[%d] = %d \r\n",i,maximo,i,area);
//				xil_printf("dato[%d] = %d \r\n",i,(long int)(valorIntermedio & 0x0000000000000000FFFFFFFFFFFF));
//				printf("dato[%d] = %f \r\n",i,format2float32bit(valorIntermedio));
				arrayTest.array[i] = format2float32bit((int)valorIntermedio);
//				printf("datoRec[%d] = %f \r\n",i,arrayTest.array[i]);
//				xil_printf("dato[%d] = %X \r\n",i,(int)valorIntermedio);
//				arrayTest.array[i] = (int) valorIntermedio;
//				array[i] = arrayTest.array[i];
			}

			unsigned int yut = 0;
			for(i=0; i<dim; i++)
			{
				vectorTest.vector[i] = arrayTest.array[yut];
				yut = yut + 1;
				if(yut == dim)
				{
					yut = 0;
				}
			}
//			xil_printf("\r\n");
//#ifdef normalizacion
//					normalizeArray(array,normalizedArray);
////					printf("aux_array[DMA_SIZE/2]:%li \n",normalizedArray[DMA_SIZE/2]);
//#endif
//
//#ifdef CLASIFICACION
//	#ifdef normalizacion
//						xQueueSend(cola2, &normalizedArray, portMAX_DELAY);
//	#else
//						xQueueSend(cola2, &arrayTest, portMAX_DELAY);
//	#endif
//#else
//	#ifdef normalizacion
//						xQueueSend(cola1, &normalizedArray, portMAX_DELAY);
//	#else
//						xQueueSend(cola1, &arrayTest, portMAX_DELAY);
//	#endif
//#endif
#ifdef CLASIFICACION
					xQueueSend(cola2, &vectorTest, portMAX_DELAY);
#endif
		}

	}

	vTaskDelete(NULL);
}


/* Función main principal - configurado */
int main(void)
{
	int i, buff, status = 0, frameNum = 0;
	int Status = 0;
	init_platform();

	// Initialize GPIO PS
    XGpioPs_Config* GpioConfigPtr;
    int xStatus;

	xil_printf("Hello from FreeRTOS \r\n");

	GpioConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    xStatus = XGpioPs_CfgInitialize(&psGpioInstancePtr, GpioConfigPtr, GpioConfigPtr->BaseAddr);
    if(XST_SUCCESS != xStatus)
    {
    	print(" PS GPIO INIT FAILED \n\r ");
    }

    xil_printf("Hello from FreeRTOS 2 \r\n");

    // GPIO Initialization
    XGpio_Initialize(&data_counts, XPAR_AXI_GPIO_0_DEVICE_ID);
    XGpio_SetDataDirection(&data_counts, 1, 0xffffffff);

    // GPIO Initialization
    XGpio_Initialize(&throughput, XPAR_AXI_GPIO_1_DEVICE_ID);
    XGpio_SetDataDirection(&throughput, 1, 0x00000000);

//     XGpio_Initialize(&t_ready_s, XPAR_AXI_GPIO_1_DEVICE_ID);
//     XGpio_SetDataDirection(&t_ready_s, 1, 0xffffffff);

    // PS GPIO EMIO pin setting to Input
    XGpioPs_SetDirectionPin(&psGpioInstancePtr, pinEMIO_0, dirEMIO_Input);

	/* Enable the PL */
	xil_printf("Initializing DMA from PL to PS \r\n");
	init_dma_bram();

	// Set up the interrupt system and interrupt handling interrupt
	xil_printf("Enabling the interrupt handling system ... \r\n");
	InializeInterruptSystem(XPAR_PS7_SCUGIC_0_DEVICE_ID);

	/* Descomentar la siguiente línea si se envían los datos por TCP/IP con lwIP */
//	sys_thread_new("main_thrd", (void(*)(void*))main_thread, NULL, THREAD_STACKSIZE, DEFAULT_THREAD_PRIO+1); // EN EL CAMPO NULL HABIA UN 0  , creo que esta es la buena

	// Intento de creación de tarea overflow
	if(xTaskCreate(FIFO_OverflowTask, "FIFOTask", 800, NULL, tskIDLE_PRIORITY+2, NULL) != pdPASS)
	{
		while(1);
	}

	// Intento de creación de tarea classifier
	if(xTaskCreate(ClassifierTask, "ClassifierTask", 90000, NULL, tskIDLE_PRIORITY+2, NULL) != pdPASS)
	{
		while(1);
	}

	// Intento de creación de tarea dummy - configMINIMAL_STACK_SIZE
	if(xTaskCreate(DummyTask, "DumTask", 30000, NULL, tskIDLE_PRIORITY+2, NULL) != pdPASS)
	{
		while(1);
	}

//	/* Creamos la primera cola de mensajes */
	cola1 = xQueueCreate(700, sizeof( AMessage ) );
	if(cola1 == NULL)
	{
		while(1);
	}

	/* Creamos la segunda cola de mensajes */
	cola2 = xQueueCreate(700, sizeof( AMessage ) );
	if(cola2 == NULL)
	{
		while(1);
	}

	/* Creamos primer semáforo*/
	semaforo1 = xSemaphoreCreateBinary();
	if( semaforo1 == NULL )
	{
			while(1);
	}

//	// Semaforo contador --> 55 veces (descomentar para depurar recepción de toda la matriz táctil)
//	semaforo2 = xSemaphoreCreateCounting(55,0);
//	if( semaforo2 == NULL )
//	{
//	        while(1);
//	}

	/* Init Scheduler */
	vTaskStartScheduler();

	/* Bucle while infinito */
	while(1) {
	}

}

/* Configuración de red para el protocolo lwIP */
void network_thread(void *p)
{
    struct netif *netif;
    struct ip_addr ipaddr, netmask, gw;
#if LWIP_DHCP==1
    int mscnt = 0;
#endif
    /* the mac address of the board. this should be unique per board */
    unsigned char mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    netif = &server_netif;

#if LWIP_DHCP==0
    /* initliaze IP addresses to be used */
    IP4_ADDR(&ipaddr,  192, 168, 1, 17);
    IP4_ADDR(&netmask, 255, 255, 255,  0);
    IP4_ADDR(&gw,      192, 168, 1, 1);
#endif

    /* print out IP settings of the board */
    xil_printf("\r\n\r\n");
    xil_printf("-----lwIP Socket Mode Echo server Demo Application ------\r\n");

#if LWIP_DHCP==0
    print_ip_settings(&ipaddr, &netmask, &gw);
    /* print all application headers */
#endif

#if LWIP_DHCP==1
	ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#endif
    /* Add network interface to the netif_list, and set it as default */
    if (!xemac_add(netif, &ipaddr, &netmask, &gw, mac_ethernet_address, PLATFORM_EMAC_BASEADDR)) {
        xil_printf("Error adding N/W interface\r\n");
        return;
    }
    netif_set_default(netif);

    /* specify that the network if is up */
    netif_set_up(netif);

    /* start packet receive thread - required for lwIP operation */
    sys_thread_new("xemacif_input_thread", (void(*)(void*))xemacif_input_thread, netif,
            THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);

#if LWIP_DHCP==1
    dhcp_start(netif);
    while (1) {
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		dhcp_fine_tmr();
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= DHCP_COARSE_TIMER_SECS*1000) {
			dhcp_coarse_tmr();
			mscnt = 0;
		}
	}
#else
    xil_printf("\r\n");
    xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
    xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

    print_echo_app_header();
    xil_printf("\r\n");
    sys_thread_new("echod", echo_application_thread, 0,
		THREAD_STACKSIZE,
		DEFAULT_THREAD_PRIO);
    vTaskDelete(NULL);
#endif
    return;
}

/* Hilo de ejecución necesario si se envía la información por TCP/IP con la pila lwIP */
int main_thread()
{
#if LWIP_DHCP==1
	int mscnt = 0;
#endif

#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	/* initialize lwIP before calling sys_thread_new */
    lwip_init();

    /* any thread using lwIP should be created using sys_thread_new */
    sys_thread_new("NW_THRD", network_thread, NULL,
		THREAD_STACKSIZE,
            DEFAULT_THREAD_PRIO);
#if LWIP_DHCP==1
    while (1) {
	vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		if (server_netif.ip_addr.addr) {
			xil_printf("DHCP request success\r\n");
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			print_echo_app_header();
			xil_printf("\r\n");
//			sys_thread_new("echod", echo_application_thread, 0,
//					THREAD_STACKSIZE,
//					DEFAULT_THREAD_PRIO+2);
			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO+1);
			break;
		}
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= 10000) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(server_netif.ip_addr),  192, 168, 1, 10);
			IP4_ADDR(&(server_netif.netmask), 255, 255, 255,  0);
			IP4_ADDR(&(server_netif.gw),  192, 168, 1, 1);
			print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask), &(server_netif.gw));
			/* print all application headers */
			xil_printf("\r\n");
			xil_printf("%20s %6s %s\r\n", "Server", "Port", "Connect With..");
			xil_printf("%20s %6s %s\r\n", "--------------------", "------", "--------------------");

			print_echo_app_header();
			xil_printf("\r\n");
//			sys_thread_new("echod", echo_application_thread, 0,
//					THREAD_STACKSIZE,
//					DEFAULT_THREAD_PRIO+2);
			sys_thread_new("echod", echo_application_thread, 0,
					THREAD_STACKSIZE,
					DEFAULT_THREAD_PRIO+1);
			break;
		}
	}
#endif
    vTaskDelete(NULL);
    return 0;
}

// Procedimiento de depuración encendido de un led de la placa ZedBoard
void vParTestToggleLED( unsigned valor )
{
	XGpioPs_WritePin( &xGpio, ledpin, valor );
}

// Procedimiento para enviar información por el puerto Telnet
void print_echo_app_header()
{
    xil_printf("%20s %6d %s\r\n", "echo server", echo_port, "$ telnet <board_ip> 7");
}

#ifdef CLASIFICACION
// Process echo request - modificado (para enviar los datos de clasificación)
void process_echo_request(void *p)
{
	int sd = (int)p;
	long int RECV_BUF_SIZE = 65535;
	char recv_buf[RECV_BUF_SIZE];
	unsigned int i = 0;
	int longitud, nwrote;
	char numberFrame[RECV_BUF_SIZE];
	char strRertCarr[2];
	char strPuntoComaEsp[2];
	AMessage bufferReceive;
	int mensaje1[1];
	long int valor;
	long int distMin, valuMin, distMax, valuMax;
	strcpy(strRertCarr,"\r\n");
	strcpy(strPuntoComaEsp,"; ");

	while(1)
	{
		xQueueReceive(cola1, &mensaje1, portMAX_DELAY);

		for(i=0; i<1; i++)  					// Un solo dato de la clase predicha
		{
			// Escribimos ahora el valor del buffer
			valor = mensaje1[i];
			sprintf(recv_buf,"%d",(int)valor); // datos

			strncat(recv_buf,strRertCarr,2);
			longitud = strlen(recv_buf);
			if((nwrote = write(sd, recv_buf, longitud)) < 0)
			{
				xil_printf("Error responding to client echo request. Closing socket %d\r\n", sd);
			}
		}

		/* Escribimos salto de linea */
		longitud=strlen(strRertCarr);
		if((nwrote = write(sd, strRertCarr, longitud)) < 0)
		{
			xil_printf("Error responding to client echo request. Closing socket %d\r\n", sd);
		}
	}

	/* close connection */
	close(sd);
	vTaskDelete(NULL);
}
#else
// Process echo request - modificado, para enviar múltiples datos (obtenidos de toda la matriz táctil)
void process_echo_request(void *p)
{
	int sd = (int)p;
	long int RECV_BUF_SIZE = 65535;
	char recv_buf[RECV_BUF_SIZE];
	unsigned int i = 0;
	int longitud, nwrote;
	char numberFrame[RECV_BUF_SIZE];
	char strRertCarr[2];
	char strPuntoComaEsp[2];
	AMessage bufferReceive;
	int mensaje1[1];
	long int valor;
	long int distMin, valuMin, distMax, valuMax;
	strcpy(strRertCarr,"\r\n");
	strcpy(strPuntoComaEsp,"; ");

	while(1)
	{
		xQueueReceive(cola1, &bufferReceive, portMAX_DELAY);
		for(i=0; i<DMA_SIZE; i++)	// Todos los datos obtenidos de la transferencia por DMA
		{

			// Escribimos ahora el valor del buffer
			valor = bufferReceive.array[i];
//			sprintf(recv_buf,"%x",(int)valor); // datos en hexadecimal
			sprintf(recv_buf,"%d",(int)valor); // datos en decimal

			strncat(recv_buf,strRertCarr,2);
			longitud = strlen(recv_buf);
			if((nwrote = write(sd, recv_buf, longitud)) < 0)
			{
				xil_printf("Error responding to client echo request. Closing socket %d\r\n", sd);
			}
		}

		/* Escribimos salto de linea */
		longitud=strlen(strRertCarr);
		if((nwrote = write(sd, strRertCarr, longitud)) < 0)
		{
			xil_printf("Error responding to client echo request. Closing socket %d\r\n", sd);
		}
	}

	/* close connection */
	close(sd);
	vTaskDelete(NULL);
}
#endif

// Procedimiento necesario para aceptar conexiones por lwIP
void echo_application_thread()
{
	int sock, new_sd;
	struct sockaddr_in address, remote;
	int size;

	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return;

	address.sin_family = AF_INET;
	address.sin_port = htons(echo_port);
	address.sin_addr.s_addr = INADDR_ANY;

	if (lwip_bind(sock, (struct sockaddr *)&address, sizeof (address)) < 0)
		return;

	lwip_listen(sock, 0);

	size = sizeof(remote);

	while (1) {
		if ((new_sd = lwip_accept(sock, (struct sockaddr *)&remote, (socklen_t *)&size)) > 0) {
			sys_thread_new("echos", process_echo_request,
				(void*)new_sd,
				THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO);
		}
	}
}


