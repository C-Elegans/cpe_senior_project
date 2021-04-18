/*
 * oximeter.h
 *
 *  Created on: Apr 18, 2021
 *      Author: mnolan
 */

#ifndef INC_MAX30102_OXIMETER_H_
#define INC_MAX30102_OXIMETER_H_
#include "main.h"

void oximeter_start(void);

float oximeter_get_spo2(void);

void oximeter_stop(void);


#endif /* INC_MAX30102_OXIMETER_H_ */
