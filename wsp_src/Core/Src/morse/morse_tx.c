/*
 * morse_tx.c
 *
 *  Created on: Mar 25, 2021
 *      Author: mnolan
 */

#include <stdint.h>
static const uint16_t morse_table[] = {
#include "morse_data.inc"
};
#include "main.h"
#include <stm32wb55xx.h>

#define MORSE_PIN LED1_Pin
#define DOT_LEN 100
#define DASH_LEN (3*DOT_LEN)

uint16_t decode_char(char c){
	uint16_t ret = 0;
	if(c >= '0' && c <= '9'){
		ret = morse_table[c-'0'];
	}
	else if(c >= 'a' && c <= 'z'){
		ret = morse_table[c-'a' + 10];
	}
	else if(c >= 'A' && c <= 'Z'){
		ret = morse_table[c-'A' + 10];
	}
	return ret;
}

void transmit_dot(void){
	HAL_GPIO_WritePin(LED1_GPIO_Port, MORSE_PIN, GPIO_PIN_SET);
	osDelay(DOT_LEN);
	HAL_GPIO_WritePin(LED1_GPIO_Port, MORSE_PIN, GPIO_PIN_RESET);
	osDelay(DOT_LEN);
}
void transmit_dash(void){
	HAL_GPIO_WritePin(LED1_GPIO_Port, MORSE_PIN, GPIO_PIN_SET);
	osDelay(DASH_LEN);
	HAL_GPIO_WritePin(LED1_GPIO_Port, MORSE_PIN, GPIO_PIN_RESET);
	osDelay(DOT_LEN);
}

void transmit_morse(char c){
	uint16_t morse_data = decode_char(c);
	while(1){
		uint16_t symbol = morse_data & 0x3;
		morse_data >>= 2;
		if(symbol == 0) break;
		else if(symbol == 1) transmit_dot();
		else if(symbol == 2) transmit_dash();
	}

}

void transmit_morse_str(const char* str){
	char c;
	while((c = *str++) != 0){
		transmit_morse(c);
		osDelay(DASH_LEN);
	}
}
