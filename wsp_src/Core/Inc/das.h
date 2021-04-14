/*
 * das.h
 *
 *  Created on: Apr 10, 2021
 *      Author: mnolan
 */

#ifndef INC_DAS_H_
#define INC_DAS_H_

#define DAS_STORAGE_LEN 10
#define DAS_TEMP_SEL 1
#define DAS_ECG_SEL 2
#define DAS_PULSE_SEL 4
#define DAS_SEL_ALL (DAS_TEMP_SEL | DAS_ECG_SEL | DAS_PULSE_SEL)

typedef struct {
	float data;
	uint32_t time;
}das_data_point_t;

void retrieve_data(uint8_t data_selection, uint32_t time_min, uint32_t time_max, uint32_t num_data_points);
int das_setup(void);
void das_loop_fun(void);

void acquire_temp(void);


#endif /* INC_DAS_H_ */
