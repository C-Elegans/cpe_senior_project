/*
 * oximeter.c
 *
 *  Created on: Apr 18, 2021
 *      Author: mnolan
 */

#include "MAX30102/oximeter.h"
#include "MAX30102/MAX30102.h"
#include "main.h"
#include "FreeRTOS.h"

void oximeter_start(void){
	Max30102_Init(&hi2c1);
	vTaskResume(max30102TaskHandle);
}


float oximeter_get_spo2(void){
	return (float) Max30102_GetSpO2Value();
}

void oximeter_stop(void){
	vTaskSuspend(max30102TaskHandle);
	Max30102_ShutdownMode(1);
}
