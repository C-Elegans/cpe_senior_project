/*
 * ecg.c
 *
 *  Created on: Mar 23, 2021
 *      Author: mnolan
 */
#include "stm32wb55xx.h"
#include "stm32wbxx.h"
#include "stm32wbxx_hal.h"
#include "stm32wbxx_hal_adc.h"
#include "adc.h"
#include "main.h"

#define ADC_SAMPLE_COUNT 4

uint8_t ecg_enabled;

// Double buffer to allow the ADC samples to be captured while the main code is working on filtering the other buffer
uint16_t sample_buffer1[ADC_SAMPLE_COUNT];
uint16_t sample_buffer2[ADC_SAMPLE_COUNT];
uint16_t *sample_ptr, *sample_end;

// Flags to tell the mainline code when a buffer has been filled and which buffer it is
volatile uint8_t buffer_finished;
volatile uint16_t *buffer_ptr;


void start_ecg_acqisition(void){
	ecg_enabled = 1;

	//Set up double buffer
	sample_ptr = sample_buffer1;
	sample_end = sample_buffer1 + ADC_SAMPLE_COUNT;

	// bring ECG Shutdown pin High
	HAL_GPIO_WritePin(ECG_SDN_GPIO_Port, ECG_SDN_Pin, GPIO_PIN_SET);


	// Set the ADC to read from the ECG's output pin
	set_adc_channel(ECG_OUT_ADC_CHANNEL);

	// Start the timer
	HAL_TIM_Base_Start_IT(&htim2);
}

void stop_ecg_acquisition(void){
	ecg_enabled = 0;
	HAL_TIM_Base_Stop_IT(&htim2);
}

void ecg_tim_callback(void){
	// Trigger the ADC
	HAL_ADC_Start_IT(&hadc1);

}

void ecg_adc_callback(uint32_t value){
	// This is safe, value can only go up to 4096 which fits in a uint16_t
	uint16_t sample = (uint16_t) value;
	*sample_ptr++ = sample;

	// Have we reached the end of the buffer?
	if(sample_ptr == sample_end){
		if(sample_end == sample_buffer1 + ADC_SAMPLE_COUNT){
			buffer_ptr = sample_buffer1; // We just finished writing to sample_buffer1
			sample_ptr = sample_buffer2;  // Have the interrupt begin writing to the other buffer
			sample_end = sample_buffer2 + ADC_SAMPLE_COUNT;
		}
		else {
			buffer_ptr = sample_buffer2;
			sample_ptr = sample_buffer1;
			sample_end = sample_buffer1 + ADC_SAMPLE_COUNT;
		}
		// May need a compiler memory barrier here.
		buffer_finished = 1;
	}
}
