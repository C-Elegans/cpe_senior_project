/*
 * usb_printf.c
 *
 *  Created on: Apr 10, 2021
 *      Author: mnolan
 */


#include "usb_printf.h"
#include <stdio.h>
#include <stdarg.h>
#include "usbd_cdc_if.h"

static char printf_buf[512];

int usb_printf(const char *fmt, ...){
	va_list args;
	va_start(args, fmt);
	int bytes = vsnprintf(printf_buf, sizeof(printf_buf), fmt, args);

	while (CDC_Transmit_FS(printf_buf, bytes) == USBD_BUSY);
}
