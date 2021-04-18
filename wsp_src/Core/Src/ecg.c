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
#include "arm_math.h"
#include "usbd_cdc_if.h"
#include "ecg.h"
#include "usb_printf.h"
#include "cmsis_os.h"

extern osThreadId_t ecgTaskHandle;


uint8_t ecg_enabled;

// Double buffer to allow the ADC samples to be captured while the main code is working on filtering the other buffer
sample_type_t sample_buffer1[ADC_SAMPLE_COUNT];
sample_type_t sample_buffer2[ADC_SAMPLE_COUNT];
sample_type_t *sample_ptr, *sample_end;

// Flags to tell the mainline code when a buffer has been filled and which buffer it is
volatile sample_type_t *buffer_ptr;

//FIR Filter state and coefficients
#define BLOCK_SIZE ADC_SAMPLE_COUNT
#define DECIMATION_FACTOR 4
#define NUM_TAPS 11

// Input will be taken from one of the sample buffers above
// Filter output will be placed here
static sample_type_t filter_output[BLOCK_SIZE];
// Scratch space for the filter function
static sample_type_t fir_state[BLOCK_SIZE + NUM_TAPS - 1];
// filter coefficients
const sample_type_t fir_coeffs[NUM_TAPS] = {
		-0.016430137208605464, 0.02688807608569583, 0.010738059913851562, -0.1207334193264336,
		0.2542364968407787, 0.6846966843741256, 0.2542364968407787,
		-0.1207334193264336, 0.010738059913851562, 0.02688807608569583, -0.016430137208605464
};
static arm_fir_decimate_instance_f32 fir_instance;

void init_ecg_acqisition(void){
	// Init fir filter
	//arm_fir_init_f32(&fir_instance, NUM_TAPS, fir_coeffs, fir_state, BLOCK_SIZE);
	arm_fir_decimate_init_f32(&fir_instance, NUM_TAPS, DECIMATION_FACTOR, fir_coeffs, fir_state, BLOCK_SIZE);

	// Set the ADC to read from the ECG's output pin
	set_adc_channel(ECG_OUT_ADC_CHANNEL);

}


void start_ecg_acqisition(void){
	ecg_enabled = 1;

	//Set up double buffer
	sample_ptr = sample_buffer1;
	sample_end = sample_buffer1 + ADC_SAMPLE_COUNT;

	//Init fir was here

	// bring ECG Shutdown pin High
	HAL_GPIO_WritePin(ECG_SDN_GPIO_Port, ECG_SDN_Pin, GPIO_PIN_SET);

	//ADC channel set was here

	//something is hanging the board when breakpoints are set
	//Looks like this needs to be called every time
	init_ecg_acqisition();

	// Start the timer
	HAL_TIM_Base_Start_IT(&htim2);
}

void stop_ecg_acquisition(void){
	ecg_enabled = 0;
	HAL_TIM_Base_Stop_IT(&htim2);
	HAL_GPIO_WritePin(ECG_SDN_GPIO_Port, ECG_SDN_Pin, GPIO_PIN_RESET);
}

void ecg_tim_callback(void){
	// Trigger the ADC
	HAL_ADC_Start_IT(&hadc1);

}

void ecg_adc_callback(uint32_t value){
	// This is safe, value can only go up to 4096 which fits in a uint16_t
	sample_type_t sample = (float) value * (1/4096.0f);
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


		// Wake up ECG task
		BaseType_t taskWoken = pdFALSE;
		vTaskNotifyGiveFromISR(ecgTaskHandle, &taskWoken);
	}
}

void run_ecg_filter(void){
	//arm_fir_f32(&fir_instance, buffer_ptr, filter_output, BLOCK_SIZE);
	arm_fir_decimate_f32(&fir_instance, buffer_ptr, filter_output, BLOCK_SIZE);
	//Understandably does not work
	int i;
	for (i = 0; i < (BLOCK_SIZE/DECIMATION_FACTOR); i++){
		usb_printf("%f\r\n", filter_output[i]);
	}
}

