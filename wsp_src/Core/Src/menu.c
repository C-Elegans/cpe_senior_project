/*
 * menu.c
 *
 *  Created on: Mar 25, 2021
 *      Author: mnolan
 */

#include "menu.h"
#include "main.h"
#include "cmsis_os.h"
#include "morse_tx.h"
#include "ecg.h"
#include "MAX30102/oximeter.h"

#include "sleep.h"

#include "das.h"

// state machine to track what happens when a button gets pressed

enum state_t {
	TEMPERATURE_SELECTED = 0,
	ECG_SELECTED,
	PULSE_SELECTED,
	SLEEP_SELECTED,

	MEAS_TEMPERATURE,
	MEAS_ECG,
	MEAS_PULSE,
};

enum state_t menu_state;

// Control what the state machine does once a state is entered
void enter_state(enum state_t newstate){
	switch(newstate){
	case TEMPERATURE_SELECTED:
		transmit_morse('M');
		break;
	case ECG_SELECTED:
		transmit_morse('C');
		break;
	case PULSE_SELECTED:
		transmit_morse('P');
		break;
	case SLEEP_SELECTED:
		transmit_morse('S');
		break;
	case MEAS_TEMPERATURE:
		acquire_temp();
		transmit_morse('E');
		newstate = TEMPERATURE_SELECTED;
		break;
	case MEAS_ECG:
		start_ecg_acqisition();
		transmit_morse('E');
		break;
	case MEAS_PULSE:
		oximeter_start();
		transmit_morse('E');
		break;
	}
	menu_state = newstate;
}


void run_main_menu(void){
	// Wait for a button press to happen
	int notifiedvalue = ulTaskNotifyTake(pdFALSE, -1);
	if (notifiedvalue > 0) {
		uint8_t button_data = notify_button_value;


		// Control how the state machine transitions between states
		switch(menu_state){
		case TEMPERATURE_SELECTED:
			if(button_data & 1){
				enter_state(ECG_SELECTED);
			}
			if(button_data & 2) {
				enter_state(MEAS_TEMPERATURE);
			}
			break;
		case ECG_SELECTED:
			if(button_data & 1){
				enter_state(PULSE_SELECTED);
			}
			if(button_data & 2) {
				enter_state(MEAS_ECG);
			}
			break;
		case PULSE_SELECTED:
			if(button_data & 1){
				enter_state(SLEEP_SELECTED);
			}
			if (button_data & 2) {
				enter_state(MEAS_PULSE);
			}
			break;

		case SLEEP_SELECTED:
			if(button_data & 1){
				enter_state(TEMPERATURE_SELECTED);
			}
			if(button_data & 2){
				sleep_now();
			}
			break;
		case MEAS_ECG:
			if(button_data & 1) {
				stop_ecg_acquisition();
				enter_state(PULSE_SELECTED);
			}
			break;
		case MEAS_PULSE:
			if(button_data & 1){
				oximeter_stop();
				enter_state(SLEEP_SELECTED);
			}
			if(button_data & 2){
				acquire_oximeter();
				transmit_morse('E');
			}
			break;
		default:
			enter_state(TEMPERATURE_SELECTED);
			break;
		}
	}
	osDelay(100);
	// Debounce by ignoring events for 100ms
	notify_button_value = 0;
}
