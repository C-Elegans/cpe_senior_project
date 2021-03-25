/*
 * ecg.h
 *
 *  Created on: Mar 23, 2021
 *      Author: mnolan
 */

#ifndef INC_ECG_H_
#define INC_ECG_H_

extern uint8_t ecg_enabled;

void start_ecg_acqisition(void);

void stop_ecg_acquisition(void);

void ecg_tim_callback(void);

void ecg_adc_callback(uint32_t value);



#endif /* INC_ECG_H_ */