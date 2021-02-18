EESchema Schematic File Version 4
LIBS:senior_project_pcb-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3800 3500 0    50   BiDi ~ 0
SDA
Text HLabel 3800 3400 0    50   BiDi ~ 0
SCL
Wire Wire Line
	3800 3400 4100 3400
$Comp
L Device:R_Small R5
U 1 1 601D7E0C
P 4100 3300
F 0 "R5" H 4159 3346 50  0000 L CNN
F 1 "2k" H 4159 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4100 3300 50  0001 C CNN
F 3 "~" H 4100 3300 50  0001 C CNN
	1    4100 3300
	1    0    0    -1  
$EndComp
Connection ~ 4100 3400
$Comp
L Device:R_Small R6
U 1 1 601D81DE
P 4350 3400
F 0 "R6" H 4409 3446 50  0000 L CNN
F 1 "2k" H 4409 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4350 3400 50  0001 C CNN
F 3 "~" H 4350 3400 50  0001 C CNN
	1    4350 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3500 3800 3500
$Comp
L power:+3.3V #PWR033
U 1 1 601D886A
P 4100 3200
F 0 "#PWR033" H 4100 3050 50  0001 C CNN
F 1 "+3.3V" H 4115 3373 50  0000 C CNN
F 2 "" H 4100 3200 50  0001 C CNN
F 3 "" H 4100 3200 50  0001 C CNN
	1    4100 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR034
U 1 1 601D8CD4
P 4350 3300
F 0 "#PWR034" H 4350 3150 50  0001 C CNN
F 1 "+3.3V" H 4365 3473 50  0000 C CNN
F 2 "" H 4350 3300 50  0001 C CNN
F 3 "" H 4350 3300 50  0001 C CNN
	1    4350 3300
	1    0    0    -1  
$EndComp
Text Notes 4400 2600 0    50   ~ 0
i2c 3.3v to 1.8v level shifter
$Comp
L senior_project_pcb-rescue:Conn_01x05-Connector_Generic J3
U 1 1 602CD835
P 5400 3500
F 0 "J3" H 5480 3542 50  0000 L CNN
F 1 "Conn_01x05" H 5480 3451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 5400 3500 50  0001 C CNN
F 3 "~" H 5400 3500 50  0001 C CNN
	1    5400 3500
	1    0    0    -1  
$EndComp
Connection ~ 4350 3500
Wire Wire Line
	5200 3500 4350 3500
Text HLabel 3750 3600 0    50   Output ~ 0
INT
$Comp
L Device:R_Small R7
U 1 1 602CE975
P 4700 3200
F 0 "R7" H 4759 3246 50  0000 L CNN
F 1 "2k" H 4759 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 3200 50  0001 C CNN
F 3 "~" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 602CF009
P 5200 3700
F 0 "#PWR029" H 5200 3450 50  0001 C CNN
F 1 "GND" H 5205 3527 50  0000 C CNN
F 2 "" H 5200 3700 50  0001 C CNN
F 3 "" H 5200 3700 50  0001 C CNN
	1    5200 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR028
U 1 1 602CF9C2
P 5200 3300
F 0 "#PWR028" H 5200 3150 50  0001 C CNN
F 1 "+3V3" H 5215 3473 50  0000 C CNN
F 2 "" H 5200 3300 50  0001 C CNN
F 3 "" H 5200 3300 50  0001 C CNN
	1    5200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3400 5200 3400
Wire Wire Line
	3750 3600 4700 3600
$Comp
L power:+3.3V #PWR017
U 1 1 602D149E
P 4700 3100
F 0 "#PWR017" H 4700 2950 50  0001 C CNN
F 1 "+3.3V" H 4715 3273 50  0000 C CNN
F 2 "" H 4700 3100 50  0001 C CNN
F 3 "" H 4700 3100 50  0001 C CNN
	1    4700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3300 4700 3600
Connection ~ 4700 3600
Wire Wire Line
	4700 3600 5200 3600
$EndSCHEMATC
