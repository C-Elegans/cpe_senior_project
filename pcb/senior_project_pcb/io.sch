EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
U 1 1 5FC33073
P 2700 2150
AR Path="/5FB304C8/5FC33073" Ref="U?"  Part="1" 
AR Path="/5FC33073" Ref="U?"  Part="1" 
AR Path="/5FC31852/5FC33073" Ref="U1"  Part="1" 
F 0 "U1" H 2725 2965 50  0000 C CNN
F 1 "stm32wb55ccu6" H 2725 2874 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 2750 2850 50  0001 C CNN
F 3 "" H 2750 2850 50  0001 C CNN
	1    2700 2150
	1    0    0    -1  
$EndComp
Text Label 2000 3250 2    50   ~ 0
JTAG_TMS
Text Label 2000 3350 2    50   ~ 0
JTAG_TCK
Text Label 2000 3450 2    50   ~ 0
JTAG_TDI
Text Label 3450 2850 0    50   ~ 0
JTAG_TDO
Text Label 3450 2950 0    50   ~ 0
JTAG_NTRST
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5FC38CA8
P 3200 4300
F 0 "J1" H 3280 4292 50  0000 L CNN
F 1 "Conn_01x06" H 3280 4201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3200 4300 50  0001 C CNN
F 3 "~" H 3200 4300 50  0001 C CNN
	1    3200 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FC39CDB
P 3000 4100
F 0 "#PWR0103" H 3000 3850 50  0001 C CNN
F 1 "GND" V 3005 3972 50  0000 R CNN
F 2 "" H 3000 4100 50  0001 C CNN
F 3 "" H 3000 4100 50  0001 C CNN
	1    3000 4100
	0    1    1    0   
$EndComp
Text Label 3000 4200 2    50   ~ 0
JTAG_TCK
Text Label 3000 4300 2    50   ~ 0
JTAG_TDI
Text Label 3000 4400 2    50   ~ 0
JTAG_TDO
Text Label 3000 4500 2    50   ~ 0
JTAG_TMS
Text Label 3000 4600 2    50   ~ 0
JTAG_NTRST
NoConn ~ 3450 3250
NoConn ~ 3450 2750
NoConn ~ 3450 2650
NoConn ~ 3450 2550
NoConn ~ 3450 2400
NoConn ~ 3450 1900
NoConn ~ 3450 1800
NoConn ~ 3450 1700
NoConn ~ 3450 1600
NoConn ~ 2000 1600
NoConn ~ 2000 1700
NoConn ~ 2000 2350
NoConn ~ 2000 2450
NoConn ~ 2000 2550
NoConn ~ 2000 2650
NoConn ~ 2000 2750
NoConn ~ 2000 2850
NoConn ~ 2000 2950
Text HLabel 3600 3350 2    50   BiDi ~ 0
SCL
Wire Wire Line
	3600 3350 3450 3350
Text HLabel 3600 3450 2    50   BiDi ~ 0
SDA
Wire Wire Line
	3600 3450 3450 3450
Text HLabel 1750 3150 0    50   BiDi ~ 0
USB_D+
Text HLabel 1750 3050 0    50   BiDi ~ 0
USB_D-
Wire Wire Line
	1750 3050 2000 3050
Wire Wire Line
	1750 3150 2000 3150
$Comp
L Device:LED D2
U 1 1 602A2F92
P 5400 2500
F 0 "D2" V 5439 2382 50  0000 R CNN
F 1 "LED" V 5348 2382 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5400 2500 50  0001 C CNN
F 3 "~" H 5400 2500 50  0001 C CNN
	1    5400 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 602A3C95
P 5800 2500
F 0 "D3" V 5839 2382 50  0000 R CNN
F 1 "LED" V 5748 2382 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5800 2500 50  0001 C CNN
F 3 "~" H 5800 2500 50  0001 C CNN
	1    5800 2500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 602A459B
P 5800 2250
F 0 "R11" H 5859 2296 50  0000 L CNN
F 1 "330" H 5859 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5800 2250 50  0001 C CNN
F 3 "~" H 5800 2250 50  0001 C CNN
	1    5800 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 602A4AAF
P 5400 2250
F 0 "R10" H 5459 2296 50  0000 L CNN
F 1 "330" H 5459 2205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5400 2250 50  0001 C CNN
F 3 "~" H 5400 2250 50  0001 C CNN
	1    5400 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 602A512C
P 5400 2650
F 0 "#PWR0110" H 5400 2400 50  0001 C CNN
F 1 "GND" H 5405 2477 50  0000 C CNN
F 2 "" H 5400 2650 50  0001 C CNN
F 3 "" H 5400 2650 50  0001 C CNN
	1    5400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 602A54DA
P 5800 2650
F 0 "#PWR0111" H 5800 2400 50  0001 C CNN
F 1 "GND" H 5805 2477 50  0000 C CNN
F 2 "" H 5800 2650 50  0001 C CNN
F 3 "" H 5800 2650 50  0001 C CNN
	1    5800 2650
	1    0    0    -1  
$EndComp
Text Label 5400 2150 0    50   ~ 0
LED1
Text Label 5800 2150 0    50   ~ 0
LED2
Text Label 2000 1950 2    50   ~ 0
LED1
Text Label 2000 2050 2    50   ~ 0
LED2
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 602A6E47
P 5550 3500
F 0 "SW1" H 5550 3785 50  0000 C CNN
F 1 "SW_Push_Dual" H 5550 3694 50  0000 C CNN
F 2 "LL3301NF065QG:LL3301NF065QG" H 5550 3700 50  0001 C CNN
F 3 "~" H 5550 3700 50  0001 C CNN
	1    5550 3500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW2
U 1 1 602A7916
P 5550 4150
F 0 "SW2" H 5550 4435 50  0000 C CNN
F 1 "SW_Push_Dual" H 5550 4344 50  0000 C CNN
F 2 "LL3301NF065QG:LL3301NF065QG" H 5550 4350 50  0001 C CNN
F 3 "~" H 5550 4350 50  0001 C CNN
	1    5550 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 602A81C7
P 5750 4350
F 0 "#PWR0112" H 5750 4100 50  0001 C CNN
F 1 "GND" H 5755 4177 50  0000 C CNN
F 2 "" H 5750 4350 50  0001 C CNN
F 3 "" H 5750 4350 50  0001 C CNN
	1    5750 4350
	1    0    0    -1  
$EndComp
Text Label 5350 3700 2    50   ~ 0
BTN1
$Comp
L power:GND #PWR0113
U 1 1 602A8A75
P 5750 3700
F 0 "#PWR0113" H 5750 3450 50  0001 C CNN
F 1 "GND" H 5755 3527 50  0000 C CNN
F 2 "" H 5750 3700 50  0001 C CNN
F 3 "" H 5750 3700 50  0001 C CNN
	1    5750 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 602A8F63
P 5750 3500
F 0 "#PWR0114" H 5750 3250 50  0001 C CNN
F 1 "GND" H 5755 3327 50  0000 C CNN
F 2 "" H 5750 3500 50  0001 C CNN
F 3 "" H 5750 3500 50  0001 C CNN
	1    5750 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 602A937C
P 5750 4150
F 0 "#PWR0115" H 5750 3900 50  0001 C CNN
F 1 "GND" H 5755 3977 50  0000 C CNN
F 2 "" H 5750 4150 50  0001 C CNN
F 3 "" H 5750 4150 50  0001 C CNN
	1    5750 4150
	1    0    0    -1  
$EndComp
Text Label 5350 4350 2    50   ~ 0
BTN2
NoConn ~ 5350 3500
NoConn ~ 5350 4150
Text Label 2000 2150 2    50   ~ 0
BTN1
Text Label 2000 2250 2    50   ~ 0
BTN2
Text HLabel 3450 3050 2    50   Input ~ 0
thermistor
Text HLabel 3450 3150 2    50   Input ~ 0
thermopile
$EndSCHEMATC
