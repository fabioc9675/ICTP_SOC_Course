// ---- freeRTOS and lwIP Demo Application -----
//----------------------------------------------

#include <stdio.h>
#include "xparameters.h"
#include "xil_io.h"

#include "FreeRTOS.h"
#include "task.h"
#include "lwipopts.h"

#include "globals.h"


int LedCnt     = 0;
int LedSpeed   = 500;

u16 adcdata;
#define GRAPHLEN 512
float 	GraphData[GRAPHLEN];



void task_ADC (void *p)
{
	while (1)
	{
		vTaskDelay (10);  // 100 Hz
		adcdata  = Xil_In32(0x43C00000) & 0xFFF;	  // fixed addr here (not a good style)

		for (int i=0; i< GRAPHLEN-1; i++)
			GraphData[i] = GraphData[i+1];
		GraphData[GRAPHLEN-1]= adcdata;
	}
}



void task_GPIO(void *p)
{
	LedCnt	 = 0;
	LedSpeed = 500;
	while (1)
	{
		vTaskDelay (LedSpeed);
		Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, LedCnt);
		LedCnt++;
	}

}




// https://www.harald-rosenfeldt.de/2018/01/03/xilinx-sdk-stop-getchar-from-waiting-for-return/

#include "xuartps_hw.h"
char tlist[1024];

void task_HelloWorld (void *p)
{
int i;
char c;
	i=0;
	while (1)
	{
		printf ("Hello World @Triest %d \n", i);
//		printf ("Adc: %d = %3.1f \n", adcdata,   (3.3/4095.0) * adcdata );
		i++;
		vTaskDelay (2000);

		if (XUartPs_IsReceiveData(STDIN_BASEADDRESS))
		{
			c = inbyte();
			switch (c)
			{
				case 't' :	{
								printf ("  Task       State   Priority   Stack    \n");
								printf ("**********************************************\n" );
								vTaskList(tlist);  // Then the list of tasks and their status...
								printf (tlist);
								printf ("----------------------------------------------\n" );
							};
							break;

				case 'r' :	LedCnt=0;
							break;
				case '+' :	if (LedSpeed>100) LedSpeed -= 100;
							break;
				case '-' :	LedSpeed += 100;
							break;

			}

		}
	}
}


int main()
{
	memset (GraphData, 0, sizeof(GraphData));

	xTaskCreate (task_HelloWorld,  	(char*)"HelloW", 1024, NULL, DEFAULT_THREAD_PRIO, NULL);
	xTaskCreate (task_GPIO,  		(char*)"GPIO",   1024, NULL, DEFAULT_THREAD_PRIO, NULL);
	xTaskCreate (task_ADC, 			(char*)"ADC1",   1024, NULL, DEFAULT_THREAD_PRIO, NULL);

	xTaskCreate (task_StartEthernet,  (char*)"Start_Eth", 1024, NULL, DEFAULT_THREAD_PRIO+1, NULL);

	vTaskStartScheduler();
    while(1);
    return 0;
}

