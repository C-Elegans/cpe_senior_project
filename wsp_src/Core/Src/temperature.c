/*
 * temperature.c
 *
 *  Created on: Mar 10, 2021
 *      Author: mnolan
 */


#include "temperature.h"
#include "adc.h"
#include "math.h"

#define KELVIN_0C 273.15f

#define THERMISTOR_RES 100e3f
#define THERMISTOR_BETA 3950.0f
#define THERMISTOR_TREF (25.0f+KELVIN_0C)
#define THERMISTOR_VDEV_R 100e3f

int calculate_temperatures(float *thermistor_out, float *thermopile_out){
	uint32_t therm_adc = read_adc_channel(THERMISTOR_ADC_CHANNEL);
	float therm_voltage = ((float)therm_adc)/4096.0f;
	float therm_resistance = -(THERMISTOR_VDEV_R*therm_voltage)/(therm_voltage-1);
	float therm_temperatureK = (THERMISTOR_BETA*THERMISTOR_TREF)/(logf(therm_resistance/THERMISTOR_RES)*THERMISTOR_TREF + THERMISTOR_BETA);
	uint32_t pile_adcV = read_adc_channel(THERMOPILE_ADC_CHANNEL);
	float pile_adc = 3.3f * ((float)pile_adcV / 4096.0f);
	float pile_voltage = (pile_adc - 1.3f) / 834.33f ;

	float therm_temperature = therm_temperatureK - KELVIN_0C;
	float pile_temp = (11111*pile_voltage) +therm_temperature;

	*thermistor_out = therm_temperature;
	*thermopile_out = pile_temp;  // Add temp here!
	return 0;
}

