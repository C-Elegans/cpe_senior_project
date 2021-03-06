/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32wbxx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "FreeRTOS.h"
#include "cmsis_os.h"
/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */
extern TIM_HandleTypeDef htim2;
extern ADC_HandleTypeDef hadc1;
extern I2C_HandleTypeDef hi2c1;
extern osThreadId_t max30102TaskHandle;
extern volatile uint8_t notify_button_value;
/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */
void SystemClock_Config(void);

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define LED1_Pin GPIO_PIN_2
#define LED1_GPIO_Port GPIOA
#define LED2_Pin GPIO_PIN_3
#define LED2_GPIO_Port GPIOA
#define SPO2_INT_Pin GPIO_PIN_4
#define SPO2_INT_GPIO_Port GPIOA
#define SPO2_INT_EXTI_IRQn EXTI4_IRQn
#define ECG_SDN_Pin GPIO_PIN_5
#define ECG_SDN_GPIO_Port GPIOA
#define ECG_OUT_Pin GPIO_PIN_6
#define ECG_OUT_GPIO_Port GPIOA
#define THERMOPILE_Pin GPIO_PIN_7
#define THERMOPILE_GPIO_Port GPIOA
#define THERMISTOR_Pin GPIO_PIN_8
#define THERMISTOR_GPIO_Port GPIOA
#define LO_P_Pin GPIO_PIN_9
#define LO_P_GPIO_Port GPIOA
#define LO_N_Pin GPIO_PIN_2
#define LO_N_GPIO_Port GPIOB
#define BTN1_Pin GPIO_PIN_6
#define BTN1_GPIO_Port GPIOB
#define BTN1_EXTI_IRQn EXTI9_5_IRQn
#define BTN2_Pin GPIO_PIN_7
#define BTN2_GPIO_Port GPIOB
#define BTN2_EXTI_IRQn EXTI9_5_IRQn
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
