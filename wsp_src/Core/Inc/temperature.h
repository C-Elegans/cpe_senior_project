/*
 * temperature.h
 *
 *  Created on: Mar 10, 2021
 *      Author: mnolan
 */

#ifndef INC_TEMPERATURE_H_
#define INC_TEMPERATURE_H_

/* Calculates the thermistor and PIR temperatures and assigns them to the float output variables*/
int calculate_temperatures(float *thermistor_out, float *passive_out);


#endif /* INC_TEMPERATURE_H_ */
