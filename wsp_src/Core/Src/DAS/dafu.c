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

#define DAS_STORAGE_LEN 100
float times[DAS_STORAGE_LEN], temps[DAS_STORAGE_LEN], ecg[DAS_STORAGE_LEN], pulse[DAS_STORAGE_LEN];

int timeSelection();
//void timeFrame(int times[], int t);
int dataSelection();
//void tempRetrieve(double temps[], double times[]);
//void ecgRetrieve(double ecg[], double times[]);
//void pulseRetrieve(double pulse[], double times[]);
void aggAll(float *temps, float *ecg, float *pulse, float *times, int n);
bool containsDigit(int number, int digit);

int das_setup(){


	int t, n, d;

	/*double times[] = {1400, 1405, 1410, 1415, 1420, 1425};
	double temps[] = {98.2, 98.5, 98.3, 98.6, 99.0, 98.3};
	double ecg[] = {.137, .129, .127, .148, .162, .153};
	double pulse[] = {98, 98, 99, 97, 93, 98};*/

	n = sizeof(times)/sizeof(times[0]);

	while(1){
		t = timeSelection();
		d = dataSelection();

		//timeFrame(times,t);

		if(containsDigit(d, 1)){
			//tempRetrieve(temps, times);
		}
		if(containsDigit(d, 2)){
			//ecgRetrieve(ecg, times);
		}
		if(containsDigit(d, 3)){
			//pulseRetrieve(pulse, times);
		}
		if(containsDigit(d, 4))
		{
			aggAll(temps, ecg, pulse, times, n);
		}
	}

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

void aggAll(float *temps, float *ecg, float *pulse, float *times, int n){
	int i, j;
	float *all[4] = {temps, ecg, pulse, times};

	for (i = 0; i < 4; i++) {
		switch(i){
			case 0:
				printf("Temperatures:");
				break;
			case 1:
				printf("ECG in ms:   ");
				break;
			case 2:
				printf("Blood Oxygen:");
				break;
			case 3:
				printf("Time:        ");
		}
		for (j = 0; j < n; j++) {
			printf("\t%f", all[i][j]);
	    }
	    printf("\n");
	}
}

bool containsDigit(int number, int digit){
    while (number != 0){
        int curr_digit = number % 10;
        if (curr_digit == digit) return true;
        number /= 10;
    }

    return false;
}
