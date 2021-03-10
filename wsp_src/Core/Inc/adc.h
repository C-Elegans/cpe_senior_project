/*
 * adc.h
 *
 *  Created on: Mar 10, 2021
 *      Author: mnolan
 */

#ifndef INC_ADC_H_
#define INC_ADC_H_


#include "stm32wb55xx.h"
#include "stm32wbxx.h"
#include "stm32wbxx_hal.h"
#include "stm32wbxx_hal_adc.h"

#define THERMISTOR_ADC_CHANNEL ADC_CHANNEL_15
#define THERMOPILE_ADC_CHANNEL ADC_CHANNEL_12
#define ECG_OUT_ADC_CHANNEL ADC_CHANNEL_11

void set_adc_channel(uint32_t channel);

uint32_t read_adc_channel(uint32_t channel);

#endif /* INC_ADC_H_ */
