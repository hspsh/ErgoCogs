EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "29 sep 2012"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 605AF561
P 7800 1950
F 0 "J5" H 7880 1942 50  0000 L CNN
F 1 "Conn_01x06" H 7880 1851 50  0000 L CNN
F 2 "ergodox:ErgoCogs_sidecon_brain_top" H 7800 1950 50  0001 C CNN
F 3 "~" H 7800 1950 50  0001 C CNN
	1    7800 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J6
U 1 1 605B04EB
P 7800 3050
F 0 "J6" H 7880 3042 50  0000 L CNN
F 1 "Conn_01x10" H 7880 2951 50  0000 L CNN
F 2 "ergodox:ErgoCogs_sidecon_brain_bot" H 7800 3050 50  0001 C CNN
F 3 "~" H 7800 3050 50  0001 C CNN
	1    7800 3050
	1    0    0    -1  
$EndComp
Text Label 7150 2150 2    60   ~ 0
ROW4
Text Label 7150 2050 2    60   ~ 0
ROW3
Text Label 7150 1950 2    60   ~ 0
ROW2
Text Label 7150 1850 2    60   ~ 0
ROW1
Text Label 7150 1750 2    60   ~ 0
ROW0
Text Label 7150 2250 2    60   ~ 0
ROW5
Wire Wire Line
	7600 2250 7150 2250
Wire Wire Line
	7600 2150 7150 2150
Wire Wire Line
	7600 2050 7150 2050
Wire Wire Line
	7600 1950 7150 1950
Wire Wire Line
	7600 1850 7150 1850
Wire Wire Line
	7600 1750 7150 1750
Wire Wire Line
	7600 2650 7450 2650
Wire Wire Line
	7600 2750 7150 2750
Wire Wire Line
	7600 2950 7150 2950
Wire Wire Line
	7600 3050 7150 3050
Wire Wire Line
	7600 3150 7150 3150
Wire Wire Line
	7600 3250 7150 3250
Wire Wire Line
	7600 3350 7150 3350
Wire Wire Line
	7600 3450 7150 3450
Wire Wire Line
	7600 3550 7150 3550
Text Label 7150 3450 2    60   ~ 0
COL1_12
Text Label 7150 2950 2    60   ~ 0
COL6_7
Text Label 7150 3050 2    60   ~ 0
COL5_8
Text Label 7150 3550 2    60   ~ 0
COL0_13
Text Label 7150 3350 2    60   ~ 0
COL2_11
Text Label 7150 3250 2    60   ~ 0
COL3_10
Text Label 7150 3150 2    60   ~ 0
COL4_9
$Comp
L ergodox_components:VCC #PWR0101
U 1 1 605CBA9A
P 7450 2550
F 0 "#PWR0101" H 7450 2650 30  0001 C CNN
F 1 "VCC" H 7453 2678 30  0000 C CNN
F 2 "" H 7450 2550 50  0001 C CNN
F 3 "" H 7450 2550 50  0001 C CNN
	1    7450 2550
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:GND #PWR0102
U 1 1 605CC44D
P 7450 3750
F 0 "#PWR0102" H 7450 3750 30  0001 C CNN
F 1 "GND" H 7450 3680 30  0001 C CNN
F 2 "" H 7450 3750 50  0001 C CNN
F 3 "" H 7450 3750 50  0001 C CNN
	1    7450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2550 7450 2650
Wire Wire Line
	7450 3700 7450 2850
Wire Wire Line
	7450 2850 7600 2850
Text Label 7150 2750 2    50   ~ 0
LED_GPIO
$Comp
L ergodox_components:GND #PWR0104
U 1 1 605E85CA
P 1750 2600
F 0 "#PWR0104" H 1750 2600 30  0001 C CNN
F 1 "GND" H 1750 2530 30  0001 C CNN
F 2 "" H 1750 2600 60  0001 C CNN
F 3 "" H 1750 2600 60  0001 C CNN
	1    1750 2600
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:VCC #PWR0105
U 1 1 605EDB22
P 1650 1550
F 0 "#PWR0105" H 1650 1650 30  0001 C CNN
F 1 "VCC" H 1650 1650 30  0000 C CNN
F 2 "" H 1650 1550 60  0001 C CNN
F 3 "" H 1650 1550 60  0001 C CNN
	1    1650 1550
	1    0    0    -1  
$EndComp
Text Label 3000 2100 0    50   ~ 0
SCL
Text Label 3000 2200 0    50   ~ 0
SDA
$Comp
L Device:R_Small R4
U 1 1 605FAFF2
P 2350 1750
F 0 "R4" H 2409 1796 50  0000 L CNN
F 1 "4k7" H 2409 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2350 1750 50  0001 C CNN
F 3 "~" H 2350 1750 50  0001 C CNN
	1    2350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 605FF10C
P 2650 1750
F 0 "R5" H 2709 1796 50  0000 L CNN
F 1 "4k7" H 2709 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2650 1750 50  0001 C CNN
F 3 "~" H 2650 1750 50  0001 C CNN
	1    2650 1750
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:VCC #PWR0106
U 1 1 605FF67E
P 2350 1550
F 0 "#PWR0106" H 2350 1650 30  0001 C CNN
F 1 "VCC" H 2350 1650 30  0000 C CNN
F 2 "" H 2350 1550 60  0001 C CNN
F 3 "" H 2350 1550 60  0001 C CNN
	1    2350 1550
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:VCC #PWR0107
U 1 1 605FFB86
P 2650 1550
F 0 "#PWR0107" H 2650 1650 30  0001 C CNN
F 1 "VCC" H 2650 1650 30  0000 C CNN
F 2 "" H 2650 1550 60  0001 C CNN
F 3 "" H 2650 1550 60  0001 C CNN
	1    2650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1550 2350 1650
Wire Wire Line
	2350 1850 2350 2100
Connection ~ 2350 2100
Wire Wire Line
	2650 1550 2650 1650
Wire Wire Line
	2650 1850 2650 2200
Connection ~ 2650 2200
$Comp
L Connector:AudioJack4 J1
U 1 1 6083AAD6
P 1350 2000
F 0 "J1" H 1307 2325 50  0000 C CNN
F 1 "AudioJack4" H 1307 2234 50  0000 C CNN
F 2 "ergodox:CLIFF_FC68125" H 1350 2000 50  0001 C CNN
F 3 "~" H 1350 2000 50  0001 C CNN
	1    1350 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2200 2650 2200
Wire Wire Line
	1650 2000 1550 2000
Wire Wire Line
	1650 1550 1650 1600
Wire Wire Line
	1550 1900 1750 1900
Wire Wire Line
	1750 1900 1750 2550
$Comp
L ergodox_components:GND #PWR0108
U 1 1 606E176F
P 4550 3700
F 0 "#PWR0108" H 4550 3700 30  0001 C CNN
F 1 "GND" H 4550 3630 30  0001 C CNN
F 2 "" H 4550 3700 60  0001 C CNN
F 3 "" H 4550 3700 60  0001 C CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
NoConn ~ 5350 2550
$Comp
L ergodox_components:VCC #PWR0103
U 1 1 6069FC7D
P 3500 1700
F 0 "#PWR0103" H 3500 1800 30  0001 C CNN
F 1 "VCC" H 3500 1800 30  0000 C CNN
F 2 "" H 3500 1700 60  0001 C CNN
F 3 "" H 3500 1700 60  0001 C CNN
	1    3500 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1700 3500 1850
Wire Wire Line
	3500 1850 3750 1850
Wire Wire Line
	4550 3650 4550 3550
$Comp
L ergodox_components:MCP23018 U2
U 1 1 60871D6B
P 4550 2650
F 0 "U2" H 4100 3650 60  0000 C CNN
F 1 "MCP23018" H 4900 1650 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4550 2650 50  0001 C CNN
F 3 "" H 4550 2650 50  0001 C CNN
	1    4550 2650
	1    0    0    -1  
$EndComp
Text Label 5550 2250 0    60   ~ 0
COL4_9
Text Label 5550 2150 0    60   ~ 0
COL3_10
Text Label 5550 2050 0    60   ~ 0
COL2_11
Text Label 5550 1850 0    60   ~ 0
COL0_13
Text Label 5550 2350 0    60   ~ 0
COL5_8
Text Label 5550 2450 0    60   ~ 0
COL6_7
Text Label 5550 1950 0    60   ~ 0
COL1_12
Wire Wire Line
	5350 1850 5550 1850
Wire Wire Line
	5350 1950 5550 1950
Wire Wire Line
	5350 2050 5550 2050
Wire Wire Line
	5350 2150 5550 2150
Wire Wire Line
	5350 2250 5550 2250
Wire Wire Line
	5350 2350 5550 2350
Wire Wire Line
	5350 2450 5550 2450
Text Label 5550 3350 0    60   ~ 0
LED_B
Text Label 5550 3450 0    60   ~ 0
LED_A
Text Label 5550 2750 0    60   ~ 0
ROW5
Text Label 5550 3250 0    60   ~ 0
ROW0
Text Label 5550 3150 0    60   ~ 0
ROW1
Text Label 5550 3050 0    60   ~ 0
ROW2
Text Label 5550 2950 0    60   ~ 0
ROW3
Text Label 5550 2850 0    60   ~ 0
ROW4
Wire Wire Line
	5550 3250 5350 3250
Wire Wire Line
	5550 3150 5350 3150
Wire Wire Line
	5550 3050 5350 3050
Wire Wire Line
	5550 2950 5350 2950
Wire Wire Line
	5550 2850 5350 2850
Wire Wire Line
	5550 2750 5350 2750
$Comp
L ergodox_components:VCC #PWR0114
U 1 1 608B56CF
P 4550 1150
F 0 "#PWR0114" H 4550 1250 30  0001 C CNN
F 1 "VCC" H 4553 1278 30  0000 C CNN
F 2 "" H 4550 1150 50  0001 C CNN
F 3 "" H 4550 1150 50  0001 C CNN
	1    4550 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2400 3250 2400
Wire Wire Line
	3250 2400 3250 2650
$Comp
L ergodox_components:GND #PWR0115
U 1 1 608E6949
P 3250 2700
F 0 "#PWR0115" H 3250 2700 30  0001 C CNN
F 1 "GND" H 3250 2630 30  0001 C CNN
F 2 "" H 3250 2700 60  0001 C CNN
F 3 "" H 3250 2700 60  0001 C CNN
	1    3250 2700
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:GND #PWR02
U 1 1 4FD4C15E
P 6100 4400
F 0 "#PWR02" H 6100 4400 30  0001 C CNN
F 1 "GND" H 6100 4330 30  0001 C CNN
F 2 "" H 6100 4400 60  0001 C CNN
F 3 "" H 6100 4400 60  0001 C CNN
	1    6100 4400
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:GND #PWR03
U 1 1 4FD4C191
P 6350 4400
F 0 "#PWR03" H 6350 4400 30  0001 C CNN
F 1 "GND" H 6350 4330 30  0001 C CNN
F 2 "" H 6350 4400 60  0001 C CNN
F 3 "" H 6350 4400 60  0001 C CNN
	1    6350 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 60629EB1
P 6100 3750
F 0 "R1" H 6159 3796 50  0000 L CNN
F 1 "4k7" H 6159 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6100 3750 50  0001 C CNN
F 3 "~" H 6100 3750 50  0001 C CNN
	1    6100 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 6062E163
P 6350 3750
F 0 "R2" H 6409 3796 50  0000 L CNN
F 1 "4k7" H 6409 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 6350 3750 50  0001 C CNN
F 3 "~" H 6350 3750 50  0001 C CNN
	1    6350 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 606C8CA7
P 6100 4050
F 0 "D1" V 6200 4000 50  0000 R CNN
F 1 "LED" V 6050 4000 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 6100 4050 50  0001 C CNN
F 3 "~" H 6100 4050 50  0001 C CNN
	1    6100 4050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 606CA181
P 6350 4050
F 0 "D2" V 6450 4000 50  0000 R CNN
F 1 "LED" V 6300 4000 50  0000 R CNN
F 2 "LED_THT:LED_D3.0mm_Clear" H 6350 4050 50  0001 C CNN
F 3 "~" H 6350 4050 50  0001 C CNN
	1    6350 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 3850 6100 3900
Wire Wire Line
	6100 4200 6100 4350
Wire Wire Line
	6350 3850 6350 3900
Wire Wire Line
	6350 4200 6350 4350
Wire Wire Line
	5350 3450 6100 3450
Wire Wire Line
	6100 3450 6100 3650
Wire Wire Line
	5350 3350 6350 3350
Wire Wire Line
	6350 3350 6350 3650
Wire Wire Line
	2650 2200 3750 2200
Wire Wire Line
	2350 2100 3750 2100
Wire Wire Line
	1550 2100 2350 2100
$Comp
L Device:C_Small C1
U 1 1 608ABDCB
P 1900 1750
F 0 "C1" H 1992 1796 50  0000 L CNN
F 1 "100n" H 1992 1705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1900 1750 50  0001 C CNN
F 3 "~" H 1900 1750 50  0001 C CNN
	1    1900 1750
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:GND #PWR0109
U 1 1 608ACE98
P 1900 1950
F 0 "#PWR0109" H 1900 1950 30  0001 C CNN
F 1 "GND" H 1900 1880 30  0001 C CNN
F 2 "" H 1900 1950 60  0001 C CNN
F 3 "" H 1900 1950 60  0001 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1900 1900 1850
Wire Wire Line
	1900 1600 1650 1600
Wire Wire Line
	1900 1650 1900 1600
Connection ~ 1650 1600
Wire Wire Line
	1650 1600 1650 2000
Wire Wire Line
	4550 1150 4550 1250
$Comp
L Device:C_Small C2
U 1 1 608B5DC6
P 4750 1400
F 0 "C2" H 4842 1446 50  0000 L CNN
F 1 "100n" H 4842 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4750 1400 50  0001 C CNN
F 3 "~" H 4750 1400 50  0001 C CNN
	1    4750 1400
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:GND #PWR0110
U 1 1 608B5DCC
P 4750 1600
F 0 "#PWR0110" H 4750 1600 30  0001 C CNN
F 1 "GND" H 4750 1530 30  0001 C CNN
F 2 "" H 4750 1600 60  0001 C CNN
F 3 "" H 4750 1600 60  0001 C CNN
	1    4750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1550 4750 1500
Wire Wire Line
	4750 1300 4750 1250
Wire Wire Line
	4750 1250 4550 1250
Connection ~ 4550 1250
Wire Wire Line
	4550 1250 4550 1750
$Comp
L Device:C_Small C3
U 1 1 608BB7C7
P 5100 1400
F 0 "C3" H 5192 1446 50  0000 L CNN
F 1 "100n" H 5192 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5100 1400 50  0001 C CNN
F 3 "~" H 5100 1400 50  0001 C CNN
	1    5100 1400
	1    0    0    -1  
$EndComp
$Comp
L ergodox_components:GND #PWR01
U 1 1 608BB7CD
P 5100 1600
F 0 "#PWR01" H 5100 1600 30  0001 C CNN
F 1 "GND" H 5100 1530 30  0001 C CNN
F 2 "" H 5100 1600 60  0001 C CNN
F 3 "" H 5100 1600 60  0001 C CNN
	1    5100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1550 5100 1500
Wire Wire Line
	5100 1300 5100 1250
Wire Wire Line
	5100 1250 4750 1250
Connection ~ 4750 1250
$EndSCHEMATC