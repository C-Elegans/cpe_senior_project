/*
 * sleep.c
 *
 *  Created on: Apr 18, 2021
 *      Author: mnolan
 */

#include "sleep.h"
#include "ecg.h"
#include "MAX30102/oximeter.h"
#include "main.h"

void sleep_now(void){
	stop_ecg_acquisition();
	oximeter_stop();

	HAL_GPIO_WritePin(LED1_GPIO_Port, LED1_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(LED2_GPIO_Port, LED2_Pin, GPIO_PIN_RESET);

	HAL_PWREx_EnterSTOP1Mode(PWR_STOPENTRY_WFI);

	SystemClock_Config();
}
