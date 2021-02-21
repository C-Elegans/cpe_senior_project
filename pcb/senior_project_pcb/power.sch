EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L power:+3.3V #PWR06
U 1 1 5FB07425
P 8550 4900
F 0 "#PWR06" H 8550 4750 50  0001 C CNN
F 1 "+3.3V" H 8565 5073 50  0000 C CNN
F 2 "" H 8550 4900 50  0001 C CNN
F 3 "" H 8550 4900 50  0001 C CNN
	1    8550 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5FB07B0F
P 8400 5450
F 0 "#PWR05" H 8400 5300 50  0001 C CNN
F 1 "+3.3V" H 8415 5623 50  0000 C CNN
F 2 "" H 8400 5450 50  0001 C CNN
F 3 "" H 8400 5450 50  0001 C CNN
	1    8400 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5FB08B14
P 4500 4300
F 0 "#PWR01" H 4500 4150 50  0001 C CNN
F 1 "+3.3V" H 4515 4473 50  0000 C CNN
F 2 "" H 4500 4300 50  0001 C CNN
F 3 "" H 4500 4300 50  0001 C CNN
	1    4500 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L1
U 1 1 5FB095DF
P 4750 4300
F 0 "L1" V 4569 4300 50  0000 C CNN
F 1 "L_Small" V 4660 4300 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 4750 4300 50  0001 C CNN
F 3 "~" H 4750 4300 50  0001 C CNN
	1    4750 4300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5FB09C36
P 4950 4400
F 0 "C3" H 5042 4446 50  0000 L CNN
F 1 "100n" H 5042 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4950 4400 50  0001 C CNN
F 3 "~" H 4950 4400 50  0001 C CNN
	1    4950 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5FB0A374
P 9600 5700
F 0 "#PWR08" H 9600 5450 50  0001 C CNN
F 1 "GND" H 9605 5527 50  0000 C CNN
F 2 "" H 9600 5700 50  0001 C CNN
F 3 "" H 9600 5700 50  0001 C CNN
	1    9600 5700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FB0A681
P 4950 4500
F 0 "#PWR04" H 4950 4250 50  0001 C CNN
F 1 "GND" H 4955 4327 50  0000 C CNN
F 2 "" H 4950 4500 50  0001 C CNN
F 3 "" H 4950 4500 50  0001 C CNN
	1    4950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4300 4650 4300
Wire Wire Line
	4850 4300 4950 4300
Connection ~ 4950 4300
Wire Wire Line
	4950 4300 5200 4300
$Comp
L power:+3.3V #PWR02
U 1 1 5FB0B448
P 7800 3700
F 0 "#PWR02" H 7800 3550 50  0001 C CNN
F 1 "+3.3V" H 7815 3873 50  0000 C CNN
F 2 "" H 7800 3700 50  0001 C CNN
F 3 "" H 7800 3700 50  0001 C CNN
	1    7800 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FB0BC41
P 7800 3800
F 0 "C1" H 7750 3500 50  0000 L CNN
F 1 "100n" H 7700 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7800 3800 50  0001 C CNN
F 3 "~" H 7800 3800 50  0001 C CNN
	1    7800 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FB0C8B8
P 7800 3900
F 0 "#PWR03" H 7800 3650 50  0001 C CNN
F 1 "GND" V 7805 3772 50  0000 R CNN
F 2 "" H 7800 3900 50  0001 C CNN
F 3 "" H 7800 3900 50  0001 C CNN
	1    7800 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5FB0CEE7
P 8000 3800
F 0 "C2" H 7950 3500 50  0000 L CNN
F 1 "100n" H 7900 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8000 3800 50  0001 C CNN
F 3 "~" H 8000 3800 50  0001 C CNN
	1    8000 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5FB0D506
P 8200 3800
F 0 "C4" H 8150 3500 50  0000 L CNN
F 1 "100n" H 8100 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8200 3800 50  0001 C CNN
F 3 "~" H 8200 3800 50  0001 C CNN
	1    8200 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5FB0D839
P 8400 3800
F 0 "C5" H 8350 3500 50  0000 L CNN
F 1 "100n" H 8300 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8400 3800 50  0001 C CNN
F 3 "~" H 8400 3800 50  0001 C CNN
	1    8400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5FB0E556
P 9000 3800
F 0 "C8" H 8950 3500 50  0000 L CNN
F 1 "100n" H 8900 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9000 3800 50  0001 C CNN
F 3 "~" H 9000 3800 50  0001 C CNN
	1    9000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3700 8000 3700
Connection ~ 7800 3700
Connection ~ 8000 3700
Wire Wire Line
	8000 3700 8200 3700
Connection ~ 8200 3700
Wire Wire Line
	8200 3700 8400 3700
Connection ~ 8400 3700
Connection ~ 7800 3900
Connection ~ 8000 3900
Wire Wire Line
	8000 3900 7800 3900
Connection ~ 8200 3900
Wire Wire Line
	8200 3900 8000 3900
Connection ~ 8400 3900
Wire Wire Line
	8400 3900 8200 3900
$Comp
L Device:C_Small C9
U 1 1 5FB0F2CB
P 9200 3800
F 0 "C9" H 9150 3500 50  0000 L CNN
F 1 "4.7u" H 9100 3600 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9200 3800 50  0001 C CNN
F 3 "~" H 9200 3800 50  0001 C CNN
	1    9200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3700 9200 3700
Connection ~ 9000 3700
Wire Wire Line
	9000 3900 9200 3900
Connection ~ 9000 3900
$Comp
L power:+3.3V #PWR07
U 1 1 5FB11A1C
P 9600 4900
F 0 "#PWR07" H 9600 4750 50  0001 C CNN
F 1 "+3.3V" H 9615 5073 50  0000 C CNN
F 2 "" H 9600 4900 50  0001 C CNN
F 3 "" H 9600 4900 50  0001 C CNN
	1    9600 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L2
U 1 1 5FB12424
P 9900 5200
F 0 "L2" H 9856 5154 50  0000 R CNN
F 1 "10uH" H 9856 5245 50  0000 R CNN
F 2 "Inductor_SMD:L_0805_2012Metric" H 9900 5200 50  0001 C CNN
F 3 "~" H 9900 5200 50  0001 C CNN
	1    9900 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 5100 9900 5100
Wire Wire Line
	9600 5300 9900 5300
Wire Wire Line
	9600 5550 9600 5700
$Comp
L power:GND #PWR09
U 1 1 5FB1A948
P 9900 5650
F 0 "#PWR09" H 9900 5400 50  0001 C CNN
F 1 "GND" H 9905 5477 50  0000 C CNN
F 2 "" H 9900 5650 50  0001 C CNN
F 3 "" H 9900 5650 50  0001 C CNN
	1    9900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5450 9900 5300
Connection ~ 9900 5300
$Comp
L Device:C_Small C10
U 1 1 5FB12C1A
P 9900 5550
F 0 "C10" H 10000 5650 50  0000 L CNN
F 1 "4.7u" H 10000 5550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9900 5550 50  0001 C CNN
F 3 "~" H 9900 5550 50  0001 C CNN
	1    9900 5550
	1    0    0    -1  
$EndComp
$Comp
L senior_project_pcb-rescue:stm32wb55ccu6-stm32wb55cc-senior_project_pcb-rescue U1
U 2 1 5FB3EDF5
P 9050 5400
AR Path="/5FB3EDF5" Ref="U1"  Part="2" 
AR Path="/5FB304C8/5FB3EDF5" Ref="U1"  Part="2" 
F 0 "U1" H 9075 6165 50  0000 C CNN
F 1 "stm32wb55ccu6" H 9075 6074 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-48-1EP_7x7mm_P0.5mm_EP5.6x5.6mm" H 9100 6100 50  0001 C CNN
F 3 "" H 9100 6100 50  0001 C CNN
	2    9050 5400
	1    0    0    -1  
$EndComp
Connection ~ 9600 5700
Wire Wire Line
	8400 5450 8550 5450
Wire Wire Line
	8550 5450 8550 5550
Connection ~ 8550 5450
Connection ~ 8550 5550
Wire Wire Line
	8550 5550 8550 5650
Wire Wire Line
	8550 5200 8550 5450
$Comp
L Device:Battery_Cell BT1
U 1 1 5FB4F823
P 1000 2200
F 0 "BT1" H 750 2250 50  0000 L CNN
F 1 "Battery_Cell" H 700 2150 50  0000 L CNN
F 2 "Connector_JST:JST_EH_S2B-EH_1x02_P2.50mm_Horizontal" V 1000 2260 50  0001 C CNN
F 3 "~" V 1000 2260 50  0001 C CNN
	1    1000 2200
	1    0    0    -1  
$EndComp
$Comp
L senior_project_pcb-rescue:AP9101CK6-Battery_Management U4
U 1 1 5FB508BD
P 3150 2050
AR Path="/5FB508BD" Ref="U4"  Part="1" 
AR Path="/5FB304C8/5FB508BD" Ref="U4"  Part="1" 
F 0 "U4" H 2600 2350 50  0000 C CNN
F 1 "AP9101CK6" H 2500 2250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 3150 2050 50  0001 C CNN
F 3 "https://www.diodes.com/assets/Datasheets/AP9101C.pdf" H 3150 2100 50  0001 C CNN
	1    3150 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2050 2450 2050 2650
Wire Wire Line
	2050 3200 2050 3050
$Comp
L Device:C C11
U 1 1 5FB5E546
P 3500 1300
F 0 "C11" H 3385 1254 50  0000 R CNN
F 1 "100n" H 3385 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 1150 50  0001 C CNN
F 3 "~" H 3500 1300 50  0001 C CNN
	1    3500 1300
	1    0    0    1   
$EndComp
$Comp
L power:+BATT #PWR010
U 1 1 5FB6C177
P 1000 1900
F 0 "#PWR010" H 1000 1750 50  0001 C CNN
F 1 "+BATT" H 1015 2073 50  0000 C CNN
F 2 "" H 1000 1900 50  0001 C CNN
F 3 "" H 1000 1900 50  0001 C CNN
	1    1000 1900
	1    0    0    -1  
$EndComp
$Comp
L power:-BATT #PWR011
U 1 1 5FB6CC8D
P 1000 2450
F 0 "#PWR011" H 1000 2300 50  0001 C CNN
F 1 "-BATT" H 1015 2623 50  0000 C CNN
F 2 "" H 1000 2450 50  0001 C CNN
F 3 "" H 1000 2450 50  0001 C CNN
	1    1000 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5FB6D78C
P 3650 1150
F 0 "R3" V 3443 1150 50  0000 C CNN
F 1 "300" V 3534 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3580 1150 50  0001 C CNN
F 3 "~" H 3650 1150 50  0001 C CNN
	1    3650 1150
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5FB6E344
P 3700 2200
F 0 "R4" H 3770 2246 50  0000 L CNN
F 1 "2.7k" H 3770 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3630 2200 50  0001 C CNN
F 3 "~" H 3700 2200 50  0001 C CNN
	1    3700 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FB6EB8C
P 3700 2350
F 0 "#PWR021" H 3700 2100 50  0001 C CNN
F 1 "GND" H 3705 2177 50  0000 C CNN
F 2 "" H 3700 2350 50  0001 C CNN
F 3 "" H 3700 2350 50  0001 C CNN
	1    3700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2050 3700 2050
$Comp
L power:GND #PWR014
U 1 1 5FB7002F
P 2300 1900
F 0 "#PWR014" H 2300 1650 50  0001 C CNN
F 1 "GND" H 2305 1727 50  0000 C CNN
F 2 "" H 2300 1900 50  0001 C CNN
F 3 "" H 2300 1900 50  0001 C CNN
	1    2300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1900 2050 2050
Text Notes 950  1150 0    50   ~ 0
Circuit from ap9191c datasheet, page 2\ncould use proofreading though\n
$Comp
L power:-BATT #PWR020
U 1 1 5FB7E9F1
P 3500 1450
F 0 "#PWR020" H 3500 1300 50  0001 C CNN
F 1 "-BATT" H 3515 1623 50  0000 C CNN
F 2 "" H 3500 1450 50  0001 C CNN
F 3 "" H 3500 1450 50  0001 C CNN
	1    3500 1450
	-1   0    0    1   
$EndComp
$Comp
L power:+BATT #PWR022
U 1 1 5FB7EE23
P 3800 1150
F 0 "#PWR022" H 3800 1000 50  0001 C CNN
F 1 "+BATT" H 3815 1323 50  0000 C CNN
F 2 "" H 3800 1150 50  0001 C CNN
F 3 "" H 3800 1150 50  0001 C CNN
	1    3800 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1150 3150 1150
Wire Wire Line
	3150 1150 3150 1600
Connection ~ 3500 1150
$Comp
L power:-BATT #PWR013
U 1 1 5FB88FBC
P 2050 3200
F 0 "#PWR013" H 2050 3050 50  0001 C CNN
F 1 "-BATT" H 2065 3373 50  0000 C CNN
F 2 "" H 2050 3200 50  0001 C CNN
F 3 "" H 2050 3200 50  0001 C CNN
	1    2050 3200
	-1   0    0    1   
$EndComp
$Comp
L power:-BATT #PWR018
U 1 1 5FB8CFE1
P 3150 2400
F 0 "#PWR018" H 3150 2250 50  0001 C CNN
F 1 "-BATT" H 3165 2573 50  0000 C CNN
F 2 "" H 3150 2400 50  0001 C CNN
F 3 "" H 3150 2400 50  0001 C CNN
	1    3150 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 2350 3150 2400
Wire Wire Line
	2750 1950 2600 1950
Wire Wire Line
	2600 1950 2600 2250
Wire Wire Line
	2600 2250 2350 2250
Wire Wire Line
	2750 2850 2350 2850
Wire Wire Line
	2750 2150 2750 2850
Wire Wire Line
	1000 2450 1000 2350
Wire Wire Line
	1000 1900 1000 2000
Text Notes 1000 800  0    50   ~ 0
battery protection\n
Wire Notes Line
	4300 900  4300 3550
Wire Notes Line
	4300 3550 600  3550
Wire Notes Line
	600  3550 600  900 
Wire Notes Line
	600  900  4300 900 
Wire Notes Line
	6850 6200 10650 6200
Wire Notes Line
	10650 6200 10650 3200
Wire Notes Line
	10650 3200 6850 3200
Wire Notes Line
	6850 3200 6850 6200
Text Notes 6900 3100 0    50   ~ 0
Microcontroller power connection\n
$Comp
L senior_project_pcb-rescue:MCP73831-2-OT-Battery_Management U3
U 1 1 5FBBEA33
P 2300 4550
F 0 "U3" H 2550 4800 50  0000 C CNN
F 1 "MCP73831-2-OT" H 2750 4900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2350 4300 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001984g.pdf" H 2150 4500 50  0001 C CNN
	1    2300 4550
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR015
U 1 1 5FBC1532
P 2300 4250
F 0 "#PWR015" H 2300 4100 50  0001 C CNN
F 1 "VBUS" H 2315 4423 50  0000 C CNN
F 2 "" H 2300 4250 50  0001 C CNN
F 3 "" H 2300 4250 50  0001 C CNN
	1    2300 4250
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR019
U 1 1 5FBC6BB2
P 3300 4400
F 0 "#PWR019" H 3300 4250 50  0001 C CNN
F 1 "VBUS" H 3315 4573 50  0000 C CNN
F 2 "" H 3300 4400 50  0001 C CNN
F 3 "" H 3300 4400 50  0001 C CNN
	1    3300 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5FBC7C60
P 3300 4800
F 0 "R2" H 3359 4846 50  0000 L CNN
F 1 "470" H 3359 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3300 4800 50  0001 C CNN
F 3 "~" H 3300 4800 50  0001 C CNN
	1    3300 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5FBDAA33
P 2300 4850
F 0 "#PWR016" H 2300 4600 50  0001 C CNN
F 1 "GND" H 2305 4677 50  0000 C CNN
F 2 "" H 2300 4850 50  0001 C CNN
F 3 "" H 2300 4850 50  0001 C CNN
	1    2300 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FBDBFA0
P 3300 4550
F 0 "D1" V 3339 4432 50  0000 R CNN
F 1 "LED" V 3248 4432 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3300 4550 50  0001 C CNN
F 3 "~" H 3300 4550 50  0001 C CNN
	1    3300 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 4900 2700 4900
Wire Wire Line
	2700 4900 2700 4650
$Comp
L Device:R_Small R1
U 1 1 5FBE9FC3
P 1700 4750
F 0 "R1" H 1759 4796 50  0000 L CNN
F 1 "10k" H 1759 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1700 4750 50  0001 C CNN
F 3 "~" H 1700 4750 50  0001 C CNN
	1    1700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4650 1700 4650
$Comp
L power:GND #PWR012
U 1 1 5FBEBACE
P 1700 4850
F 0 "#PWR012" H 1700 4600 50  0001 C CNN
F 1 "GND" H 1705 4677 50  0000 C CNN
F 2 "" H 1700 4850 50  0001 C CNN
F 3 "" H 1700 4850 50  0001 C CNN
	1    1700 4850
	1    0    0    -1  
$EndComp
Text Notes 1350 5200 0    50   ~ 0
R1 sets charge current\n
Wire Notes Line
	600  3850 600  5350
Wire Notes Line
	600  5350 3900 5350
Wire Notes Line
	3900 5350 3900 3850
Wire Notes Line
	3900 3850 600  3850
Text Notes 600  3750 0    50   ~ 0
Battery charge circuit\n
$Comp
L Regulator_Linear:MIC5504-3.3YM5 U5
U 1 1 5FC14653
P 1600 6100
F 0 "U5" H 1600 6467 50  0000 C CNN
F 1 "MIC5504-3.3YM5" H 1600 6376 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 1600 5700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 1350 6350 50  0001 C CNN
	1    1600 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 5FC184D8
P 2550 6100
F 0 "C13" H 2642 6146 50  0000 L CNN
F 1 "1u" H 2642 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2550 6100 50  0001 C CNN
F 3 "~" H 2550 6100 50  0001 C CNN
	1    2550 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 5FC19411
P 800 6100
F 0 "C12" H 892 6146 50  0000 L CNN
F 1 "1u" H 892 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 800 6100 50  0001 C CNN
F 3 "~" H 800 6100 50  0001 C CNN
	1    800  6100
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR023
U 1 1 5FC1D66B
P 800 6000
F 0 "#PWR023" H 800 5850 50  0001 C CNN
F 1 "+BATT" H 815 6173 50  0000 C CNN
F 2 "" H 800 6000 50  0001 C CNN
F 3 "" H 800 6000 50  0001 C CNN
	1    800  6000
	1    0    0    -1  
$EndComp
Connection ~ 800  6000
$Comp
L power:GND #PWR025
U 1 1 5FC2064D
P 1600 6400
F 0 "#PWR025" H 1600 6150 50  0001 C CNN
F 1 "GND" H 1605 6227 50  0000 C CNN
F 2 "" H 1600 6400 50  0001 C CNN
F 3 "" H 1600 6400 50  0001 C CNN
	1    1600 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5FC20A77
P 2550 6200
F 0 "#PWR027" H 2550 5950 50  0001 C CNN
F 1 "GND" H 2555 6027 50  0000 C CNN
F 2 "" H 2550 6200 50  0001 C CNN
F 3 "" H 2550 6200 50  0001 C CNN
	1    2550 6200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5FC20EF1
P 800 6200
F 0 "#PWR024" H 800 5950 50  0001 C CNN
F 1 "GND" H 805 6027 50  0000 C CNN
F 2 "" H 800 6200 50  0001 C CNN
F 3 "" H 800 6200 50  0001 C CNN
	1    800  6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6000 1200 6200
Connection ~ 1200 6000
$Comp
L power:+3.3V #PWR026
U 1 1 5FC22581
P 2550 6000
F 0 "#PWR026" H 2550 5850 50  0001 C CNN
F 1 "+3.3V" H 2565 6173 50  0000 C CNN
F 2 "" H 2550 6000 50  0001 C CNN
F 3 "" H 2550 6000 50  0001 C CNN
	1    2550 6000
	1    0    0    -1  
$EndComp
Connection ~ 2550 6000
Text Notes 600  5500 0    50   ~ 0
3.3V rail regulation\n
Wire Notes Line
	2900 5650 2900 6750
Wire Notes Line
	2900 6750 650  6750
Wire Notes Line
	650  6750 650  5650
Wire Wire Line
	1150 6000 1200 6000
Wire Wire Line
	800  6000 1200 6000
Wire Notes Line
	650  5650 2900 5650
$Comp
L power:+BATT #PWR0104
U 1 1 601F8FD4
P 2700 4450
F 0 "#PWR0104" H 2700 4300 50  0001 C CNN
F 1 "+BATT" H 2715 4623 50  0000 C CNN
F 2 "" H 2700 4450 50  0001 C CNN
F 3 "" H 2700 4450 50  0001 C CNN
	1    2700 4450
	1    0    0    -1  
$EndComp
$Comp
L senior_project_pcb-rescue:USB_B_Micro-Connector J2
U 1 1 60209B69
P 5250 1750
F 0 "J2" H 5307 2217 50  0000 C CNN
F 1 "USB_B_Micro" H 5307 2126 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-AB_Molex_47590-0001" H 5400 1700 50  0001 C CNN
F 3 "~" H 5400 1700 50  0001 C CNN
	1    5250 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6020C637
P 5150 2150
F 0 "#PWR0105" H 5150 1900 50  0001 C CNN
F 1 "GND" H 5155 1977 50  0000 C CNN
F 2 "" H 5150 2150 50  0001 C CNN
F 3 "" H 5150 2150 50  0001 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6021169A
P 5250 2150
F 0 "#PWR0106" H 5250 1900 50  0001 C CNN
F 1 "GND" H 5255 1977 50  0000 C CNN
F 2 "" H 5250 2150 50  0001 C CNN
F 3 "" H 5250 2150 50  0001 C CNN
	1    5250 2150
	1    0    0    -1  
$EndComp
Text HLabel 5750 1750 2    50   BiDi ~ 0
USB_D+
Text HLabel 5750 1850 2    50   BiDi ~ 0
USB_D-
Wire Wire Line
	5550 1750 5750 1750
Wire Wire Line
	5550 1850 5750 1850
$Comp
L power:VBUS #PWR0107
U 1 1 602224B7
P 5800 1550
F 0 "#PWR0107" H 5800 1400 50  0001 C CNN
F 1 "VBUS" H 5815 1723 50  0000 C CNN
F 2 "" H 5800 1550 50  0001 C CNN
F 3 "" H 5800 1550 50  0001 C CNN
	1    5800 1550
	1    0    0    -1  
$EndComp
NoConn ~ 5550 1950
Wire Wire Line
	2000 6000 2550 6000
Wire Wire Line
	5550 1550 5800 1550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6023D3C5
P 3150 1600
F 0 "#FLG0101" H 3150 1675 50  0001 C CNN
F 1 "PWR_FLAG" V 3150 1727 50  0000 L CNN
F 2 "" H 3150 1600 50  0001 C CNN
F 3 "~" H 3150 1600 50  0001 C CNN
	1    3150 1600
	0    -1   -1   0   
$EndComp
Connection ~ 3150 1600
Wire Wire Line
	3150 1600 3150 1750
Wire Wire Line
	2050 1900 2300 1900
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 60280195
P 1000 2350
F 0 "#FLG0103" H 1000 2425 50  0001 C CNN
F 1 "PWR_FLAG" V 1000 2478 50  0000 L CNN
F 2 "" H 1000 2350 50  0001 C CNN
F 3 "~" H 1000 2350 50  0001 C CNN
	1    1000 2350
	0    1    1    0   
$EndComp
Connection ~ 1000 2350
Wire Wire Line
	1000 2350 1000 2300
$Comp
L power:+3.3VA #PWR0116
U 1 1 601608E8
P 5650 4300
F 0 "#PWR0116" H 5650 4150 50  0001 C CNN
F 1 "+3.3VA" H 5665 4473 50  0000 C CNN
F 2 "" H 5650 4300 50  0001 C CNN
F 3 "" H 5650 4300 50  0001 C CNN
	1    5650 4300
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6016133A
P 5200 4300
F 0 "#FLG0102" H 5200 4375 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 4473 50  0000 C CNN
F 2 "" H 5200 4300 50  0001 C CNN
F 3 "~" H 5200 4300 50  0001 C CNN
	1    5200 4300
	1    0    0    -1  
$EndComp
Connection ~ 5200 4300
Wire Wire Line
	5200 4300 5400 4300
$Comp
L power:+3.3VA #PWR0117
U 1 1 6016B0B3
P 8350 5050
F 0 "#PWR0117" H 8350 4900 50  0001 C CNN
F 1 "+3.3VA" H 8365 5223 50  0000 C CNN
F 2 "" H 8350 5050 50  0001 C CNN
F 3 "" H 8350 5050 50  0001 C CNN
	1    8350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5050 8550 5050
Wire Notes Line
	4300 3850 5900 3850
Wire Notes Line
	5900 3850 5900 5350
Wire Notes Line
	5900 5350 4300 5350
Wire Notes Line
	4300 5350 4300 3850
Text Notes 4300 3750 0    50   ~ 0
Analog supply filtering
$Comp
L Device:Q_DUAL_NMOS_S1G1D2S2G2D1 Q1
U 1 1 5FC51F70
P 2150 2850
F 0 "Q1" H 2355 2896 50  0000 L CNN
F 1 "Q_DUAL_NMOS" H 2355 2805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2350 2850 50  0001 C CNN
F 3 "~" H 2350 2850 50  0001 C CNN
	1    2150 2850
	-1   0    0    -1  
$EndComp
$Comp
L Device:Q_DUAL_NMOS_S1G1D2S2G2D1 Q1
U 2 1 5FC5EF4A
P 2150 2250
F 0 "Q1" H 2355 2204 50  0000 L CNN
F 1 "Q_DUAL_NMOS" H 2355 2295 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 2350 2250 50  0001 C CNN
F 3 "~" H 2350 2250 50  0001 C CNN
	2    2150 2250
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C14
U 1 1 60318B80
P 5400 4400
F 0 "C14" H 5492 4446 50  0000 L CNN
F 1 "100n" H 5492 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5400 4400 50  0001 C CNN
F 3 "~" H 5400 4400 50  0001 C CNN
	1    5400 4400
	1    0    0    -1  
$EndComp
Connection ~ 5400 4300
Wire Wire Line
	5400 4300 5650 4300
$Comp
L power:GND #PWR030
U 1 1 60319179
P 5400 4500
F 0 "#PWR030" H 5400 4250 50  0001 C CNN
F 1 "GND" H 5405 4327 50  0000 C CNN
F 2 "" H 5400 4500 50  0001 C CNN
F 3 "" H 5400 4500 50  0001 C CNN
	1    5400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3700 9000 3700
Wire Wire Line
	8400 3900 9000 3900
$EndSCHEMATC
