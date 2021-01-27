EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
P 4100 2600
AR Path="/5FB304C8/5FC33073" Ref="U?"  Part="1" 
AR Path="/5FC33073" Ref="U?"  Part="1" 
AR Path="/5FC31852/5FC33073" Ref="U1"  Part="1" 
F 0 "U1" H 4125 3415 50  0000 C CNN
F 1 "stm32wb55ccu6" H 4125 3324 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 4150 3300 50  0001 C CNN
F 3 "" H 4150 3300 50  0001 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
Text Label 3400 3700 2    50   ~ 0
JTAG_TMS
Text Label 3400 3800 2    50   ~ 0
JTAG_TCK
Text Label 3400 3900 2    50   ~ 0
JTAG_TDI
Text Label 4850 3300 0    50   ~ 0
JTAG_TDO
Text Label 4850 3400 0    50   ~ 0
JTAG_NTRST
$Comp
L Connector_Generic:Conn_01x06 J1
U 1 1 5FC38CA8
P 6750 4300
F 0 "J1" H 6830 4292 50  0000 L CNN
F 1 "Conn_01x06" H 6830 4201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6750 4300 50  0001 C CNN
F 3 "~" H 6750 4300 50  0001 C CNN
	1    6750 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FC39CDB
P 6550 4100
F 0 "#PWR0103" H 6550 3850 50  0001 C CNN
F 1 "GND" V 6555 3972 50  0000 R CNN
F 2 "" H 6550 4100 50  0001 C CNN
F 3 "" H 6550 4100 50  0001 C CNN
	1    6550 4100
	0    1    1    0   
$EndComp
Text Label 6550 4200 2    50   ~ 0
JTAG_TCK
Text Label 6550 4300 2    50   ~ 0
JTAG_TDI
Text Label 6550 4400 2    50   ~ 0
JTAG_TDO
Text Label 6550 4500 2    50   ~ 0
JTAG_TMS
Text Label 6550 4600 2    50   ~ 0
JTAG_NTRST
NoConn ~ 4850 3900
NoConn ~ 4850 3800
NoConn ~ 4850 3700
NoConn ~ 4850 3600
NoConn ~ 4850 3500
NoConn ~ 4850 3200
NoConn ~ 4850 3100
NoConn ~ 4850 3000
NoConn ~ 4850 2850
NoConn ~ 4850 2350
NoConn ~ 4850 2250
NoConn ~ 4850 2150
NoConn ~ 4850 2050
NoConn ~ 3400 2050
NoConn ~ 3400 2150
NoConn ~ 3400 2400
NoConn ~ 3400 2500
NoConn ~ 3400 2600
NoConn ~ 3400 2700
NoConn ~ 3400 2800
NoConn ~ 3400 2900
NoConn ~ 3400 3000
NoConn ~ 3400 3100
NoConn ~ 3400 3200
NoConn ~ 3400 3300
NoConn ~ 3400 3400
NoConn ~ 3400 3500
NoConn ~ 3400 3600
$EndSCHEMATC
