/*
 * stm_smps.c
 *
 *  Created on: Mar 10, 2021
 *      Author: mnolan
 */

#include "stm_smps.h"

#include "stm32wb55xx.h"
#include "stm32wbxx.h"
#include "stm32wbxx_ll_pwr.h"


void enable_smps(void){
	LL_PWR_SMPS_SetStartupCurrent(LL_PWR_SMPS_STARTUP_CURRENT_80MA);
	LL_PWR_SMPS_SetOutputVoltageLevel(LL_PWR_SMPS_OUTPUT_VOLTAGE_1V80);
	LL_PWR_SMPS_SetMode(LL_PWR_SMPS_STEP_DOWN);
}
