/*
 * adc.c
 *
 *  Created on: Mar 10, 2021
 *      Author: mnolan
 */

#include "adc.h"
extern ADC_HandleTypeDef hadc1; // In main.c
void Error_Handler(void); // In main.c


void set_adc_channel(uint32_t channel){
	ADC_ChannelConfTypeDef sConfig = {0};
	sConfig.Channel = channel;
	sConfig.Rank = ADC_REGULAR_RANK_1;
	sConfig.SamplingTime = ADC_SAMPLETIME_2CYCLES_5;
	sConfig.SingleDiff = ADC_SINGLE_ENDED;
	sConfig.OffsetNumber = ADC_OFFSET_NONE;
	sConfig.Offset = 0;
	if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK) {
		Error_Handler();
	}
}

uint32_t read_adc_channel(uint32_t channel){
	set_adc_channel(channel);
	HAL_ADC_Start(&hadc1);
	if(HAL_ADC_PollForConversion(&hadc1, 10000) == HAL_OK){
		return HAL_ADC_GetValue(&hadc1);
	}
	return -1;
}
