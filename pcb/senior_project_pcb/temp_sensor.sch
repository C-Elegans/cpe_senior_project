EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 7
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
L senior_project_pcb-rescue:ZTP-148SRC1-ZTP-148SRC1 IC2
U 1 1 601471B4
P 4350 3750
F 0 "IC2" H 4750 4300 50  0000 L CNN
F 1 "ZTP-148SRC1" H 4600 4200 50  0000 L CNN
F 2 "kicad_pretty:ZTP148SRC1" H 6200 4650 50  0001 L CNN
F 3 "https://www.mouser.com/datasheet/2/18/1/Amphenol_Thermometrics_ZTP-148SRC1_Thermopile_IR_S-1879505.pdf" H 6200 4550 50  0001 L CNN
F 4 "Infrared Detectors THERMOPILE IR,TO-46 PKG FOV 85" H 6200 4450 50  0001 L CNN "Description"
F 5 "3" H 6200 4350 50  0001 L CNN "Height"
F 6 "Amphenol" H 6200 4250 50  0001 L CNN "Manufacturer_Name"
F 7 "ZTP-148SRC1" H 6200 4150 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "527-ZTP-148SRC1" H 6200 4050 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Amphenol-Advanced-Sensors/ZTP-148SRC1/?qs=sPbYRqrBIVmlB0PWHks6qA%3D%3D" H 6200 3950 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 6200 3850 50  0001 L CNN "Arrow Part Number"
F 11 "" H 6200 3750 50  0001 L CNN "Arrow Price/Stock"
	1    4350 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 60148280
P 2950 3550
F 0 "R12" H 3020 3596 50  0000 L CNN
F 1 "100k 1%" H 3020 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2880 3550 50  0001 C CNN
F 3 "~" H 2950 3550 50  0001 C CNN
F 4 "Yageo" H 2950 3550 50  0001 C CNN "Manufacturer_Name"
F 5 "RC0603FR-13100KL" H 2950 3550 50  0001 C CNN "Manufacturer_Part_Number"
F 6 " 603-RC0603FR-13100KL " H 2950 3550 50  0001 C CNN "Mouser Part Number"
	1    2950 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR046
U 1 1 60148A9E
P 4200 4300
F 0 "#PWR046" H 4200 4050 50  0001 C CNN
F 1 "GND" H 4205 4127 50  0000 C CNN
F 2 "" H 4200 4300 50  0001 C CNN
F 3 "" H 4200 4300 50  0001 C CNN
	1    4200 4300
	1    0    0    -1  
$EndComp
Text HLabel 2550 3700 0    50   Output ~ 0
thermistor
Wire Wire Line
	2550 3700 2950 3700
Connection ~ 2950 3700
Wire Wire Line
	2950 3700 3400 3700
$Comp
L Device:Opamp_Dual_Generic U6
U 1 1 60149BAF
P 3900 5550
F 0 "U6" H 3900 5917 50  0000 C CNN
F 1 "AD8539" H 3900 5826 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 3900 5550 50  0001 C CNN
F 3 "~" H 3900 5550 50  0001 C CNN
F 4 "Analog" H 3900 5550 50  0001 C CNN "Manufacturer_Name"
F 5 "AD8539ARMZ" H 3900 5550 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "584-AD8539ARMZ" H 3900 5550 50  0001 C CNN "Mouser Part Number"
	1    3900 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U6
U 2 1 6014A461
P 6450 3800
F 0 "U6" H 6450 4167 50  0000 C CNN
F 1 "AD8539" H 6450 4076 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 6450 3800 50  0001 C CNN
F 3 "~" H 6450 3800 50  0001 C CNN
F 4 "Analog" H 6450 3800 50  0001 C CNN "Manufacturer_Name"
F 5 "AD8539ARMZ" H 6450 3800 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "584-AD8539ARMZ" H 6450 3800 50  0001 C CNN "Mouser Part Number"
	2    6450 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Opamp_Dual_Generic U6
U 3 1 6014A9B4
P 2150 5550
F 0 "U6" H 2108 5596 50  0000 L CNN
F 1 "AD8539" H 2108 5505 50  0000 L CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 2150 5550 50  0001 C CNN
F 3 "~" H 2150 5550 50  0001 C CNN
F 4 "Analog" H 2150 5550 50  0001 C CNN "Manufacturer_Name"
F 5 "AD8539ARMZ" H 2150 5550 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "584-AD8539ARMZ" H 2150 5550 50  0001 C CNN "Mouser Part Number"
	3    2150 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 6014D86E
P 2050 5850
F 0 "#PWR0119" H 2050 5600 50  0001 C CNN
F 1 "GND" H 2055 5677 50  0000 C CNN
F 2 "" H 2050 5850 50  0001 C CNN
F 3 "" H 2050 5850 50  0001 C CNN
	1    2050 5850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C18
U 1 1 6014E189
P 1550 5450
F 0 "C18" H 1642 5496 50  0000 L CNN
F 1 "100n" H 1642 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1550 5450 50  0001 C CNN
F 3 "~" H 1550 5450 50  0001 C CNN
F 4 "AVX" H 1550 5450 50  0001 C CNN "Manufacturer_Name"
F 5 "0603YC104MAT4A" H 1550 5450 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "581-0603YC104MAT4A" H 1550 5450 50  0001 C CNN "Mouser Part Number"
	1    1550 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 6014EA46
P 1550 5550
F 0 "#PWR0121" H 1550 5300 50  0001 C CNN
F 1 "GND" H 1555 5377 50  0000 C CNN
F 2 "" H 1550 5550 50  0001 C CNN
F 3 "" H 1550 5550 50  0001 C CNN
	1    1550 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR050
U 1 1 60171FA9
P 2950 3400
F 0 "#PWR050" H 2950 3250 50  0001 C CNN
F 1 "+3.3VA" H 2965 3573 50  0000 C CNN
F 2 "" H 2950 3400 50  0001 C CNN
F 3 "" H 2950 3400 50  0001 C CNN
	1    2950 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR047
U 1 1 60172496
P 2050 5250
F 0 "#PWR047" H 2050 5100 50  0001 C CNN
F 1 "+3.3VA" H 2065 5423 50  0000 C CNN
F 2 "" H 2050 5250 50  0001 C CNN
F 3 "" H 2050 5250 50  0001 C CNN
	1    2050 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR045
U 1 1 6017275B
P 1550 5350
F 0 "#PWR045" H 1550 5200 50  0001 C CNN
F 1 "+3.3VA" H 1565 5523 50  0000 C CNN
F 2 "" H 1550 5350 50  0001 C CNN
F 3 "" H 1550 5350 50  0001 C CNN
	1    1550 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR048
U 1 1 601729E6
P 2850 5150
F 0 "#PWR048" H 2850 5000 50  0001 C CNN
F 1 "+3.3VA" H 2865 5323 50  0000 C CNN
F 2 "" H 2850 5150 50  0001 C CNN
F 3 "" H 2850 5150 50  0001 C CNN
	1    2850 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60173259
P 2850 5300
F 0 "R13" H 2920 5346 50  0000 L CNN
F 1 "10k 1%" H 2920 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2780 5300 50  0001 C CNN
F 3 "~" H 2850 5300 50  0001 C CNN
F 4 "Yageo" H 2850 5300 50  0001 C CNN "Manufacturer_Name"
F 5 "RC0603FR-0710KL" H 2850 5300 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "603-RC0603FR-0710KL" H 2850 5300 50  0001 C CNN "Mouser Part Number"
	1    2850 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 601735ED
P 2850 5600
F 0 "R14" H 2920 5646 50  0000 L CNN
F 1 "10k 1%" H 2920 5555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2780 5600 50  0001 C CNN
F 3 "~" H 2850 5600 50  0001 C CNN
F 4 "Yageo" H 2850 5600 50  0001 C CNN "Manufacturer_Name"
F 5 "RC0603FR-0710KL" H 2850 5600 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "603-RC0603FR-0710KL" H 2850 5600 50  0001 C CNN "Mouser Part Number"
	1    2850 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 601739EC
P 2850 5750
F 0 "#PWR049" H 2850 5500 50  0001 C CNN
F 1 "GND" H 2855 5577 50  0000 C CNN
F 2 "" H 2850 5750 50  0001 C CNN
F 3 "" H 2850 5750 50  0001 C CNN
	1    2850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5450 3200 5450
Connection ~ 2850 5450
Wire Wire Line
	3600 5650 3600 5900
Wire Wire Line
	3600 5900 4300 5900
Wire Wire Line
	4300 5900 4300 5550
Wire Wire Line
	4300 5550 4200 5550
$Comp
L Device:C_Small C19
U 1 1 601747A5
P 3200 5550
F 0 "C19" H 3292 5596 50  0000 L CNN
F 1 "100n" H 3292 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3200 5550 50  0001 C CNN
F 3 "~" H 3200 5550 50  0001 C CNN
F 4 "AVX" H 3200 5550 50  0001 C CNN "Manufacturer_Name"
F 5 "0603YC104MAT4A" H 3200 5550 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "581-0603YC104MAT4A" H 3200 5550 50  0001 C CNN "Mouser Part Number"
	1    3200 5550
	1    0    0    -1  
$EndComp
Connection ~ 3200 5450
Wire Wire Line
	3200 5450 3600 5450
$Comp
L power:GND #PWR051
U 1 1 6017955B
P 3200 5650
F 0 "#PWR051" H 3200 5400 50  0001 C CNN
F 1 "GND" H 3205 5477 50  0000 C CNN
F 2 "" H 3200 5650 50  0001 C CNN
F 3 "" H 3200 5650 50  0001 C CNN
	1    3200 5650
	1    0    0    -1  
$EndComp
Text Label 4300 5550 0    50   ~ 0
VGND
Wire Wire Line
	5250 3700 6150 3700
Text Label 4450 4300 3    50   ~ 0
VGND
$Comp
L Device:R R16
U 1 1 6017C0C1
P 6450 4200
F 0 "R16" V 6243 4200 50  0000 C CNN
F 1 "33k 1%" V 6334 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6380 4200 50  0001 C CNN
F 3 "~" H 6450 4200 50  0001 C CNN
F 4 "Yageo" H 6450 4200 50  0001 C CNN "Manufacturer_Name"
F 5 "RC0603FR-0733KL" H 6450 4200 50  0001 C CNN "Manufacturer_Part_Number"
F 6 "603-RC0603FR-0733KL" H 6450 4200 50  0001 C CNN "Mouser Part Number"
	1    6450 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	6750 3800 6900 3800
Wire Wire Line
	6900 3800 6900 4200
Wire Wire Line
	6900 4200 6600 4200
$Comp
L Device:R R15
U 1 1 6017C785
P 6050 4350
F 0 "R15" H 5980 4304 50  0000 R CNN
F 1 "12 1%" H 5980 4395 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 4350 50  0001 C CNN
F 3 "~" H 6050 4350 50  0001 C CNN
F 4 "Yageo" H 6050 4350 50  0001 C CNN "Manufacturer_Name"
F 5 "RC0603FR-0712RL" H 6050 4350 50  0001 C CNN "Manufacturer_Part_Number"
F 6 " 603-RC0603FR-0712RL " H 6050 4350 50  0001 C CNN "Mouser Part Number"
	1    6050 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 4200 6050 4200
Text Label 6050 4500 3    50   ~ 0
VGND
Wire Wire Line
	6050 4200 6050 3900
Wire Wire Line
	6050 3900 6150 3900
Connection ~ 6050 4200
Text Notes 1400 4850 0    50   ~ 0
Opamp power supply\n
Text Notes 2750 4850 0    50   ~ 0
Virtual Ground Generation
Text Notes 6100 3250 0    50   ~ 0
Thermopile Amplifier\n
Text Notes 6450 4400 0    50   ~ 0
1% tol\n
Text HLabel 6900 3800 2    50   Output ~ 0
thermopile
$EndSCHEMATC
