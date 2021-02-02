EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2450 2150 1100 850 
U 5FB304C8
F0 "power" 50
F1 "power.sch" 50
F2 "USB_D+" B R 3550 2400 50 
F3 "USB_D-" B R 3550 2500 50 
$EndSheet
$Sheet
S 2600 3700 1100 800 
U 5FC3166B
F0 "rf" 50
F1 "rf.sch" 50
$EndSheet
$Sheet
S 4950 2200 1050 800 
U 601C9014
F0 "Pulse Oximeter" 50
F1 "pulse_oxy.sch" 50
F2 "SDA" B R 6000 2400 50 
F3 "SCL" B R 6000 2500 50 
F4 "INT" O R 6000 2600 50 
$EndSheet
Text Label 6000 2400 0    50   ~ 0
SDA
Text Label 3800 5250 0    50   ~ 0
SCL
Text Label 3800 5350 0    50   ~ 0
SDA
Text Label 6000 2500 0    50   ~ 0
SCL
Text Label 3800 5750 0    50   ~ 0
USB_D+
Text Label 3550 2400 0    50   ~ 0
USB_D+
Text Label 3800 5850 0    50   ~ 0
USB_D-
Text Label 3550 2500 0    50   ~ 0
USB_D-
$Sheet
S 5000 3600 1050 700 
U 60146A6B
F0 "Temperature Sensor" 50
F1 "temp_sensor.sch" 50
F2 "thermistor" O R 6050 3800 50 
F3 "thermopile" O R 6050 3900 50 
$EndSheet
$Sheet
S 2450 5150 1350 1500
U 5FC31852
F0 "io" 50
F1 "io.sch" 50
F2 "SCL" B R 3800 5250 50 
F3 "SDA" B R 3800 5350 50 
F4 "USB_D+" B R 3800 5750 50 
F5 "USB_D-" B R 3800 5850 50 
F6 "thermistor" I R 3800 6000 50 
F7 "thermopile" I R 3800 6100 50 
$EndSheet
Text Label 6050 3800 0    50   ~ 0
thermistor
Text Label 3800 6000 0    50   ~ 0
thermistor
Text Label 3800 6100 0    50   ~ 0
thermopile
Text Label 6050 3900 0    50   ~ 0
thermopile
$EndSCHEMATC
