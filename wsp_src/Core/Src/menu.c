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

void run_main_menu(void){
	// Wait for a button press to happen
	int notifiedvalue = ulTaskNotifyTake(pdFALSE, -1);
	if (notifiedvalue > 0) {
		uint8_t button_data = notify_button_value;
		notify_button_value = 0;

		// If button 1 was pressed
		if(button_data & 1){
			transmit_morse('Y');
		}
		// If button 2 was pressed
		else if (button_data & 2){
			transmit_morse('B');
		}
	}
	osDelay(100);
}
