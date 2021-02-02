EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L stm32wb55cc:stm32wb55ccu6 U?
U 3 1 5FC34008
P 5000 3100
AR Path="/5FB304C8/5FC34008" Ref="U?"  Part="3" 
AR Path="/5FC34008" Ref="U?"  Part="2" 
AR Path="/5FC3166B/5FC34008" Ref="U1"  Part="3" 
F 0 "U1" H 4975 3865 50  0000 C CNN
F 1 "stm32wb55ccu6" H 4975 3774 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 5050 3800 50  0001 C CNN
F 3 "" H 5050 3800 50  0001 C CNN
	3    5000 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FC36A2E
P 4600 2800
F 0 "#PWR0101" H 4600 2550 50  0001 C CNN
F 1 "GND" H 4605 2627 50  0000 C CNN
F 2 "" H 4600 2800 50  0001 C CNN
F 3 "" H 4600 2800 50  0001 C CNN
	1    4600 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5FC36E7D
P 4600 2600
F 0 "#PWR0102" H 4600 2450 50  0001 C CNN
F 1 "+3.3V" H 4615 2773 50  0000 C CNN
F 2 "" H 4600 2600 50  0001 C CNN
F 3 "" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
NoConn ~ 5350 2600
NoConn ~ 5350 2700
NoConn ~ 5350 2850
$EndSCHEMATC
