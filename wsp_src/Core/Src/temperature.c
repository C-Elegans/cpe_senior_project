/*
 * temperature.c
 *
 *  Created on: Mar 10, 2021
 *      Author: mnolan
 */


#include "temperature.h"
#include "adc.h"
#include "math.h"

#define KELVIN_0C 273.15

#define THERMISTOR_RES 100e3
#define THERMISTOR_BETA 3950.0
#define THERMISTOR_TREF (25+KELVIN_0C)
#define THERMISTOR_VDEV_R 100e3

int calculate_temperatures(float *thermistor_out, float *passive_out){
	uint32_t therm_adc = read_adc_channel(THERMISTOR_ADC_CHANNEL);
	float therm_voltage = therm_adc/4096.0;
	float therm_resistance = -(THERMISTOR_VDEV_R*therm_voltage)/(therm_voltage-1);
	float therm_temperatureK = (THERMISTOR_BETA*THERMISTOR_TREF)/(log(therm_resistance/THERMISTOR_RES)*THERMISTOR_TREF + THERMISTOR_BETA);

	float therm_temperature = therm_temperatureK - KELVIN_0C;

	*thermistor_out = therm_temperature;
	*passive_out = 0;  // Add temp here!
	return 0;
}
