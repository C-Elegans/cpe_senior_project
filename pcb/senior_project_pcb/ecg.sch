EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L senior_project_pcb-rescue:AD8232ACPZ-R7-AD8232 U2
U 1 1 602C8E45
P 4150 3800
AR Path="/602C8E45" Ref="U2"  Part="1" 
AR Path="/602C4640/602C8E45" Ref="U2"  Part="1" 
F 0 "U2" H 5550 4187 60  0000 C CNN
F 1 "AD8232ACPZ-R7" H 5550 4081 60  0000 C CNN
F 2 "Package_CSP:LFCSP-20-1EP_4x4mm_P0.5mm_EP2.1x2.1mm" H 5550 4040 60  0001 C CNN
F 3 "" H 4150 3800 60  0000 C CNN
	1    4150 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 602CB4AB
P 4900 3300
F 0 "C16" V 4648 3300 50  0000 C CNN
F 1 ".33uF" V 4739 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4938 3150 50  0001 C CNN
F 3 "~" H 4900 3300 50  0001 C CNN
	1    4900 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 3800 4150 3800
$Comp
L Device:R_Small R18
U 1 1 602CC2F3
P 3450 3900
F 0 "R18" V 3254 3900 50  0000 C CNN
F 1 "180k" V 3345 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3450 3900 50  0001 C CNN
F 3 "~" H 3450 3900 50  0001 C CNN
	1    3450 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R19
U 1 1 602CCB87
P 3450 4000
F 0 "R19" V 3650 4000 50  0000 C CNN
F 1 "180k" V 3550 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3450 4000 50  0001 C CNN
F 3 "~" H 3450 4000 50  0001 C CNN
	1    3450 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 602CD3C6
P 2900 3650
F 0 "R9" H 2841 3604 50  0000 R CNN
F 1 "10M" H 2841 3695 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2900 3650 50  0001 C CNN
F 3 "~" H 2900 3650 50  0001 C CNN
	1    2900 3650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 602CDBA6
P 2700 3750
F 0 "R8" H 2641 3704 50  0000 R CNN
F 1 "10M" H 2641 3795 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2700 3750 50  0001 C CNN
F 3 "~" H 2700 3750 50  0001 C CNN
	1    2700 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 3550 2700 3550
Wire Wire Line
	2700 3550 2700 3650
Text Label 2700 3550 0    50   ~ 0
REF
$Comp
L Device:C_Small C7
U 1 1 602D0AEE
P 4000 4400
F 0 "C7" H 4092 4446 50  0000 L CNN
F 1 "1n" H 4092 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4000 4400 50  0001 C CNN
F 3 "~" H 4000 4400 50  0001 C CNN
	1    4000 4400
	1    0    0    -1  
$EndComp
Text Label 2550 3900 2    50   ~ 0
LA
Text Label 2550 4000 2    50   ~ 0
RA
Wire Wire Line
	2550 3900 2900 3900
Wire Wire Line
	2550 4000 2700 4000
Connection ~ 2700 4000
Wire Wire Line
	2700 3850 2700 4000
Wire Wire Line
	2700 4000 3350 4000
Wire Wire Line
	2900 3750 2900 3900
Connection ~ 2900 3900
Wire Wire Line
	2900 3900 3350 3900
Wire Wire Line
	4150 4300 4000 4300
Wire Wire Line
	4150 4500 4000 4500
$Comp
L Device:R_Small R17
U 1 1 602D3ABB
P 3300 4500
F 0 "R17" V 3200 4450 50  0000 C CNN
F 1 "360k" V 3400 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3300 4500 50  0001 C CNN
F 3 "~" H 3300 4500 50  0001 C CNN
	1    3300 4500
	0    1    1    0   
$EndComp
Text Label 3000 4500 2    50   ~ 0
RL
Wire Wire Line
	3000 4500 3200 4500
Wire Wire Line
	4050 3800 4050 3300
Wire Wire Line
	4050 3300 4750 3300
Wire Wire Line
	5750 3300 5050 3300
Wire Wire Line
	5750 3300 5750 3800
$Comp
L Device:R_Small R25
U 1 1 602D5A6E
P 6000 3800
F 0 "R25" V 5804 3800 50  0000 C CNN
F 1 "10M" V 5895 3800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6000 3800 50  0001 C CNN
F 3 "~" H 6000 3800 50  0001 C CNN
	1    6000 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R26
U 1 1 602D6425
P 6250 3700
F 0 "R26" H 6191 3654 50  0000 R CNN
F 1 "1.4M" H 6191 3745 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 3700 50  0001 C CNN
F 3 "~" H 6250 3700 50  0001 C CNN
	1    6250 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R27
U 1 1 602D6B9C
P 6250 3900
F 0 "R27" H 6191 3854 50  0000 R CNN
F 1 "10M" H 6191 3945 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6250 3900 50  0001 C CNN
F 3 "~" H 6250 3900 50  0001 C CNN
	1    6250 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C17
U 1 1 602D719D
P 6450 3600
F 0 "C17" V 6679 3600 50  0000 C CNN
F 1 ".33u" V 6588 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6450 3600 50  0001 C CNN
F 3 "~" H 6450 3600 50  0001 C CNN
	1    6450 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5750 4000 6250 4000
Wire Wire Line
	5750 3800 5900 3800
Connection ~ 5750 3800
Wire Wire Line
	6100 3800 6250 3800
Connection ~ 6250 3800
Wire Wire Line
	6350 3600 6250 3600
Wire Wire Line
	6250 3600 6250 3000
Wire Wire Line
	6250 3000 3800 3000
Connection ~ 6250 3600
Wire Wire Line
	3550 3900 4150 3900
Wire Wire Line
	3550 4000 4150 4000
Wire Wire Line
	3400 4500 4000 4500
Connection ~ 4000 4500
Wire Wire Line
	3800 3000 3800 4700
Wire Wire Line
	3800 4700 4150 4700
$Comp
L Device:R_Small R23
U 1 1 602DC31F
P 3800 4900
F 0 "R23" V 3604 4900 50  0000 C CNN
F 1 "1M" V 3695 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3800 4900 50  0001 C CNN
F 3 "~" H 3800 4900 50  0001 C CNN
	1    3800 4900
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C15
U 1 1 602DD11D
P 4050 5000
F 0 "C15" H 4142 5046 50  0000 L CNN
F 1 "10n" H 4142 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4050 5000 50  0001 C CNN
F 3 "~" H 4050 5000 50  0001 C CNN
	1    4050 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R20
U 1 1 602DD58F
P 3550 4800
F 0 "R20" H 3491 4754 50  0000 R CNN
F 1 "1M" H 3491 4845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3550 4800 50  0001 C CNN
F 3 "~" H 3550 4800 50  0001 C CNN
	1    3550 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 4900 4050 4900
Connection ~ 4050 4900
Wire Wire Line
	4050 4900 3900 4900
Wire Wire Line
	3700 4900 3550 4900
Wire Wire Line
	4150 5100 4050 5100
Text Label 3100 5100 2    50   ~ 0
REFOUT
Wire Wire Line
	4050 5100 3750 5100
Connection ~ 4050 5100
$Comp
L Device:R_Small R21
U 1 1 602E097F
P 3750 5200
F 0 "R21" H 3809 5246 50  0000 L CNN
F 1 "100k" H 3809 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3750 5200 50  0001 C CNN
F 3 "~" H 3750 5200 50  0001 C CNN
	1    3750 5200
	1    0    0    -1  
$EndComp
Connection ~ 3750 5100
Wire Wire Line
	3750 5100 3100 5100
$Comp
L Device:R_Small R22
U 1 1 602E0EE8
P 3750 5400
F 0 "R22" H 3809 5446 50  0000 L CNN
F 1 "1M" H 3809 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3750 5400 50  0001 C CNN
F 3 "~" H 3750 5400 50  0001 C CNN
	1    3750 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 5300 3750 5300
Connection ~ 3750 5300
$Comp
L Device:C_Small C6
U 1 1 602E2790
P 3550 5400
F 0 "C6" H 3350 5450 50  0000 L CNN
F 1 "1.5nF" H 3300 5400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3550 5400 50  0001 C CNN
F 3 "~" H 3550 5400 50  0001 C CNN
	1    3550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5500 3750 5500
Connection ~ 3750 5500
Wire Wire Line
	3750 5500 4150 5500
Wire Wire Line
	3550 5300 3550 4900
Connection ~ 3550 4900
Wire Wire Line
	3550 5500 3100 5500
Connection ~ 3550 5500
$Comp
L power:GND #PWR031
U 1 1 602E558E
P 4900 5900
F 0 "#PWR031" H 4900 5650 50  0001 C CNN
F 1 "GND" H 4905 5727 50  0000 C CNN
F 2 "" H 4900 5900 50  0001 C CNN
F 3 "" H 4900 5900 50  0001 C CNN
	1    4900 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 602E5AE0
P 5000 5900
F 0 "#PWR032" H 5000 5650 50  0001 C CNN
F 1 "GND" H 5005 5727 50  0000 C CNN
F 2 "" H 5000 5900 50  0001 C CNN
F 3 "" H 5000 5900 50  0001 C CNN
	1    5000 5900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR037
U 1 1 602E622D
P 6050 4550
F 0 "#PWR037" H 6050 4400 50  0001 C CNN
F 1 "+3.3VA" H 6200 4600 50  0000 C CNN
F 2 "" H 6050 4550 50  0001 C CNN
F 3 "" H 6050 4550 50  0001 C CNN
	1    6050 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR040
U 1 1 602E6632
P 7350 4550
F 0 "#PWR040" H 7350 4400 50  0001 C CNN
F 1 "+3.3VA" H 7365 4723 50  0000 C CNN
F 2 "" H 7350 4550 50  0001 C CNN
F 3 "" H 7350 4550 50  0001 C CNN
	1    7350 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 602E6B0F
P 7350 4650
F 0 "C21" H 7442 4696 50  0000 L CNN
F 1 "100n" H 7442 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7350 4650 50  0001 C CNN
F 3 "~" H 7350 4650 50  0001 C CNN
	1    7350 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 602E7182
P 7350 4750
F 0 "#PWR041" H 7350 4500 50  0001 C CNN
F 1 "GND" H 7355 4577 50  0000 C CNN
F 2 "" H 7350 4750 50  0001 C CNN
F 3 "" H 7350 4750 50  0001 C CNN
	1    7350 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R24
U 1 1 602E7A36
P 5900 4400
F 0 "R24" H 5841 4354 50  0000 R CNN
F 1 "10M" H 5841 4445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5900 4400 50  0001 C CNN
F 3 "~" H 5900 4400 50  0001 C CNN
	1    5900 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 4550 5900 4550
Wire Wire Line
	5750 4300 5900 4300
Wire Wire Line
	5900 4500 5900 4550
Connection ~ 5900 4550
Wire Wire Line
	5900 4550 5750 4550
$Comp
L power:+3.3VA #PWR035
U 1 1 602EE13C
P 5750 4950
F 0 "#PWR035" H 5750 4800 50  0001 C CNN
F 1 "+3.3VA" H 5900 5000 50  0000 C CNN
F 2 "" H 5750 4950 50  0001 C CNN
F 3 "" H 5750 4950 50  0001 C CNN
	1    5750 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R28
U 1 1 602EE90E
P 6400 4400
F 0 "R28" H 6341 4354 50  0000 R CNN
F 1 "10M" H 6341 4445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6400 4400 50  0001 C CNN
F 3 "~" H 6400 4400 50  0001 C CNN
	1    6400 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 4300 6400 4300
Connection ~ 5900 4300
$Comp
L power:GND #PWR038
U 1 1 602EFBFF
P 6400 4500
F 0 "#PWR038" H 6400 4250 50  0001 C CNN
F 1 "GND" H 6405 4327 50  0000 C CNN
F 2 "" H 6400 4500 50  0001 C CNN
F 3 "" H 6400 4500 50  0001 C CNN
	1    6400 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 602EFF1F
P 6700 4400
F 0 "C20" H 6792 4446 50  0000 L CNN
F 1 "100n" H 6792 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6700 4400 50  0001 C CNN
F 3 "~" H 6700 4400 50  0001 C CNN
	1    6700 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 602F03D1
P 6700 4500
F 0 "#PWR039" H 6700 4250 50  0001 C CNN
F 1 "GND" H 6705 4327 50  0000 C CNN
F 2 "" H 6700 4500 50  0001 C CNN
F 3 "" H 6700 4500 50  0001 C CNN
	1    6700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4300 6700 4300
Connection ~ 6400 4300
Text Label 6550 3600 0    50   ~ 0
REFOUT
Wire Wire Line
	6800 2800 6800 4000
Wire Wire Line
	6800 4000 6250 4000
Wire Wire Line
	3550 2800 6800 2800
Connection ~ 6250 4000
$Comp
L power:GND #PWR0108
U 1 1 602E7E80
P 6050 5100
F 0 "#PWR0108" H 6050 4850 50  0001 C CNN
F 1 "GND" H 6055 4927 50  0000 C CNN
F 2 "" H 6050 5100 50  0001 C CNN
F 3 "" H 6050 5100 50  0001 C CNN
	1    6050 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5100 6050 5100
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 602EC186
P 1450 3950
F 0 "J4" H 1368 3625 50  0000 C CNN
F 1 "Conn_01x03" H 1368 3716 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1450 3950 50  0001 C CNN
F 3 "~" H 1450 3950 50  0001 C CNN
	1    1450 3950
	-1   0    0    1   
$EndComp
Text Label 1650 4050 0    50   ~ 0
RL
Text Label 1650 3950 0    50   ~ 0
RA
Text Label 1650 3850 0    50   ~ 0
LA
Text HLabel 3100 5500 0    50   Output ~ 0
ECG_OUT
Text HLabel 5750 5300 2    50   Input ~ 0
ECG_SDN
NoConn ~ 5750 5400
NoConn ~ 5750 5500
Wire Wire Line
	3550 2800 3550 4700
Text Label 1850 4450 2    50   ~ 0
REF
Text Label 3600 4500 0    50   ~ 0
RLD
Text Label 2000 4200 0    50   ~ 0
RLD
$Comp
L Jumper:Jumper_3_Bridged12 JP1
U 1 1 6034AA36
P 2000 4450
F 0 "JP1" V 1954 4517 50  0000 L CNN
F 1 "Jumper_3_Bridged12" V 2045 4517 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_RoundedPad1.0x1.5mm" H 2000 4450 50  0001 C CNN
F 3 "~" H 2000 4450 50  0001 C CNN
	1    2000 4450
	0    1    1    0   
$EndComp
Text Label 2000 4700 0    50   ~ 0
REFOUT
$EndSCHEMATC
