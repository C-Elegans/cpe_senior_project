/*
 * dafu.c
 *
 *  Created on: Nov 9, 2020
 *      Author: Austin
 */

#include <stdio.h>
#include <math.h>
#include <time.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>
#include "usb_printf.h"
#include "das.h"
#include "usbd_cdc_if.h"

#include "temperature.h"
#include "ecg.h"
#include "MAX30102/oximeter.h"


das_data_point_t temps[DAS_STORAGE_LEN], ecg[DAS_STORAGE_LEN], pulse[DAS_STORAGE_LEN];

uint32_t temp_idx, ecg_idx, pulse_idx = 0;

uint32_t time_min = 0;
uint32_t time_max = UINT32_MAX;
uint32_t num_items = DAS_STORAGE_LEN;

int timeSelection();
//void timeFrame(int times[], int t);
int dataSelection();
//void tempRetrieve(double temps[], double times[]);
//void ecgRetrieve(double ecg[], double times[]);
//void pulseRetrieve(double pulse[], double times[]);


int das_setup(){
	memset(temps, 0, sizeof(temps));
	memset(ecg, 0, sizeof(ecg));
	memset(pulse, 0, sizeof(pulse));


	return 0;

}



void acquire_temp(void){
	float dummy, pir_temp;
	calculate_temperatures(&dummy, &pir_temp);
	temps[temp_idx].data = pir_temp;
	temps[temp_idx].time = HAL_GetTick();
	temp_idx += 1;
	if(temp_idx >= DAS_STORAGE_LEN)
		temp_idx = 0;
}

void acquire_oximeter(void){
	float spo2 = oximeter_get_spo2();
	pulse[pulse_idx].data = spo2;
	pulse[pulse_idx].time = HAL_GetTick();
	pulse_idx += 1;
	if(pulse_idx >= DAS_STORAGE_LEN)
		pulse_idx = 0;
}


uint32_t das_read_uint(void){
	uint32_t val = 0;
	char c;
	while(1){
		uint32_t bytes = CDC_Read_FS(&c, sizeof(c));
		if(bytes == 0){
			osDelay(1);
			continue;
		}
		if(c >= '0' && c <= '9'){
			val *= 10;
			val += (c - '0');
		}
		else{
			return val;
		}
	}
}


void retrieve_one(das_data_point_t *data, uint32_t time_min, uint32_t time_max, uint32_t num_data_points){
	uint32_t num_sent = 0;
	for(uint32_t i=0; i<DAS_STORAGE_LEN; i++){
		if(num_sent == num_data_points) break;

		das_data_point_t data_point = data[i];
		if(data_point.time <= time_max && data_point.time >= time_min){
			usb_printf("\t%d,%f\r\n", data_point.time, data_point.data);
			num_sent += 1;
		}
	}
}


void retrieve_data(uint8_t data_selection, uint32_t time_min, uint32_t time_max, uint32_t num_data_points){
	if(data_selection & DAS_TEMP_SEL){
		usb_printf("Temp:\r\n");
		retrieve_one(temps, time_min, time_max, num_data_points);
	}
	if(data_selection & DAS_ECG_SEL){
		usb_printf("ECG:\r\n");
		retrieve_one(ecg, time_min, time_max, num_data_points);
	}
	if (data_selection & DAS_PULSE_SEL) {
		usb_printf("Pulse:\r\n");
		retrieve_one(pulse, time_min, time_max, num_data_points);
	}
}

// Called from the DAS task to handle data input and output
void das_loop_fun(void){
	char c;
	uint32_t bytes = CDC_Read_FS(&c, sizeof(c));
	if(bytes != 0){
		// retrieve data
		if(c > '0' && c <= '7'){
			uint8_t data_sel = c - '0';
			retrieve_data(data_sel, time_min, time_max, num_items);
		}
		if(c == 'p'){
			acquire_temp();
		}
		// set min time
		if(c == 't'){
			time_min = das_read_uint();
			//usb_printf("time min: %u\r\n", time_min);
		}
		// set max time
		if(c == 'T'){
		    time_max = das_read_uint();
		    //usb_printf("time max: %u\r\n", time_max);
		}
		// set max items retrieved
		if(c == 'n'){
		    num_items = das_read_uint();
		    //usb_printf("num items: %u\r\n", num_items);
		}
		if(c == 'e' || c == 'E'){
			if(ecg_enabled == 0 && c == 'E'){
				start_ecg_acqisition();
			}
			else {
				stop_ecg_acquisition();
			}
		}
		if(c == 'o'){
			oximeter_stop();
		}
		if(c == 'O'){
			oximeter_start();
		}
		if(c == 'P'){
			acquire_oximeter();
		}
	}
}




