//=========================================================//
//   Advanced Workshop on FPGA-based Systems-on-Chip for   //
// Scientific Instrumentation and Reconfigurable Computing //
//                                                         //
//                          Lab                            //
//                    GPIO IP Cores in PL                  //
//                                                         //
//                                                         //
//=========================================================//
//-----------------------------------------------------------
//-- File       : lab_gpio_in_out.c
//-- Author     : Cristian
//-- Company    : ICTP-MLAB
//-- Created    : 2018-11-08
//-- Last update: 2021-10-19
//-----------------------------------------------------------
//-- Description: Simple 'C' code to read from the switches
//-- and write to the LEDs through two GPIO IP Cores. It also
//-- write to LED9 controlled by the PS.
//
//-- Updated description: Instead of switches and LEDs, this
//-- code tests a loopback using PMOD connectors.
//-- Also, support is added to interface with MIO LED (MIO7)
//-----------------------------------------------------------
//-- Copyright (c) 2018
//-----------------------------------------------------------
//-- Revisions  :
//-- Date        Version   Author           Description
//-- 2018-11-08   1.0    Crisitan-Liz        Created
//-- 2021-01-29   2.0 	 L. Garcia	       Updated for remote lab
//-- 2021-10-19	  2.1	 I. Morales	   	   Updated for webcam feedback
//-----------------------------------------------------------

#include "xparameters.h"
#include "xgpio.h"
#include "xgpiops.h"
#include "xil_printf.h"
#include "sleep.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

static XGpioPs psGpioInstancePtr;

#define EMIO_GPIO_BANK 2 // EMIO Bank
#define MIO_GPIO_BANK 0  // GPIOs connected directly to PS
#define MIO_LED_PIN 7 // LED pin on MIO is directly connected to pin 7 (MIO7)

int main(void) {
	//PL GPIOs
	XGpio pmoda_o, pmodb_i, led_o, sw_i;

	//PS GPIOs
	XGpioPs_Config *PSConfigPtr;

	int readVal, psVal;
	int Status;

	int sw_val;

//	char word[100];
//	char number[4];

	print("\r\n--- Start the Program ---\r\n");

	/*
	 *  ======================
	 *  PL GPIO Initialization
	 *  ======================
	 *
	 */
	Status = XGpio_Initialize(&pmoda_o, XPAR_PMOD_A_O_DEVICE_ID);

	if (Status != XST_SUCCESS) {
		print("Gpio PMODA Initialization Failed\r\n");
		return XST_FAILURE;
	}

	Status = XGpio_Initialize(&pmodb_i, XPAR_PMOD_B_I_DEVICE_ID);

	if (Status != XST_SUCCESS) {
		print("Gpio PMODB Initialization Failed\r\n");
		return XST_FAILURE;
	}

	Status = XGpio_Initialize(&led_o, XPAR_LED_O_DEVICE_ID);

	if (Status != XST_SUCCESS) {
		print("Gpio LED_O Initialization Failed\r\n");
		return XST_FAILURE;
	}

	Status = XGpio_Initialize(&sw_i, XPAR_SW_I_DEVICE_ID);

	if (Status != XST_SUCCESS) {
		print("Gpio SW_I Initialization Failed\r\n");
		return XST_FAILURE;
	}

	/*
	 *  ======================
	 *  PS GPIO Initialization
	 *  ======================
	 *
	 */
	PSConfigPtr = XGpioPs_LookupConfig(XPAR_PMOD_A_O_DEVICE_ID); // Se agrego el PMOD_A_O
	if (PSConfigPtr == NULL)
		return XST_FAILURE;

	Status = XGpioPs_CfgInitialize(&psGpioInstancePtr, PSConfigPtr,
			PSConfigPtr->BaseAddr);

	if (Status != XST_SUCCESS) {
		print("PS GPIO Initialization Failed\r\n");
		return XST_FAILURE;
	}
	print("GPIO PS Initialization ok\r\n");

	/* PS GPIO pin setting to Input */
	XGpioPs_SetDirection(&psGpioInstancePtr, EMIO_GPIO_BANK, 0);

	/* LED directly connected to PS via MIO7*/
	XGpioPs_SetDirectionPin(&psGpioInstancePtr, MIO_LED_PIN, 1);

	/*Starting a counter */
	for (int i = 0; i < 256; i++) {
		/*Discrete Write pmoda_o*/
		XGpio_DiscreteWrite(&pmoda_o, 1, i); //Single-channel GPIO (PMODA_GPIO1)

		/*Discrete read pmodb*/
		readVal = XGpio_DiscreteRead(&pmodb_i, 1); //Single-channel GPIO (PMODB_GPIO1)

		/*PS Gpio read*/
		psVal = XGpioPs_Read(&psGpioInstancePtr, EMIO_GPIO_BANK); // Reading 4 MSB bits using PS GPIO routed via PL
//		strcpy(word,"");
//		strcat(word,"PMODA Output: ");
//		itoa(i,number,10);
//		strcat(word,number);
//		strcat(word,", PMODB Receive: ");
//		itoa(readVal,number,10);
//		strcat(word,number);
//		strcat(word,"  PSGPIO Receive ");
//		itoa(psVal,number,10);
//		strcat(word,number);
//		strcat(word,"\n\r");
//
//		print(word);

		xil_printf("PMODA Output: %d, PMODB Receive: %d  PSGPIO Receive %d\n\r",
				i, readVal, psVal);
	}

	// Infinite loop with blinking LED fully controlled by PS (not in the PL block-level design)
	// You may be able to verify this blinking event using the discord stream (blinking green LED)
	while (1) {
//		// MIO Bank 0 controls PS GPIO [31:0]
//		//Turning LED on
//		XGpioPs_WritePin(&psGpioInstancePtr, MIO_LED_PIN, 1);
//		sleep(2);
//
//		// Turning LED off
//		XGpioPs_WritePin(&psGpioInstancePtr, MIO_LED_PIN, 0);
//		sleep(2);

		sw_val = XGpio_DiscreteRead(&sw_i, 1);
//		xil_printf("SW Value: %d\n\r", sw_val);
//		sleep(2);

		XGpio_DiscreteWrite(&led_o, 1, sw_val);

	}

}
