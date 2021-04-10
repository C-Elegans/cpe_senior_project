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


das_data_point_t temps[DAS_STORAGE_LEN], ecg[DAS_STORAGE_LEN], pulse[DAS_STORAGE_LEN];

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

int timeSelection(){
	char selection = 'a';		//User chooses a character A through G for the length of time for readings
	int t = 0;
	printf("\nPlease choose a following time frame:\nA for the past 30 mins"
			"\nB for the past hour\nC for the past 6 hours\nD for the past 12 hours"
			"\nE for the past day\nF for the past 3 days\nG for the past week: ");

	selection = getc(stdin);
	switch(selection){
		case 'a':
			t = 6;		//30 min
			break;
		case 'b':
			t = 12;		//1 hour
			break;
		case 'c':
			t = 72;		//6 hour
			break;
		case 'd':
			t = 144;	//12 hour
			break;
		case 'e':
			t = 288;	//1 day
			break;
		case 'f':
			t = 864;	//3 day
			break;
		case 'g':
			t = 2016;	//1 week
			break;
		default:
			printf("Invalid time frame\n");
	}

	return t;
}

/*void timeFrame(int times[], int t){
	int current_time = time;
	for(int i = 0; i<t-1; i++){
		times[i] = current_time - (5*i);
	}
}*/

/*void timeFrame(int times[], int t){

}

void tempRetrieve(double temps[], double times[]){

}

void ecgRetrieve(double ecg[], double times[]){

}

void pulseRetrieve(double pulse[], double times[]){

}*/

int dataSelection(){
	printf("\nPlease input a number to represent which sensors you wish to collect data from:"
			"\n1 for Temperature data\n2 for ECG data\n3 for Oximeter data"
			"\nOr 4 for all sensor data\n\ne.g. for both Temperature and Oximeter data"
			" you can input either 13 or 31: ");

	int d;
	scanf("%d", &d);

	return d;
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
			retrieve_data(data_sel, 0, UINT32_MAX, UINT32_MAX);
		}
	}
}




