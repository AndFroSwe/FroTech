EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:roblab1
LIBS:ISPboard-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L ATMEGA328-P IC1
U 1 1 58380B6C
P 2050 6000
F 0 "IC1" H 1300 7250 50  0000 L BNN
F 1 "ATMEGA328-P" H 2450 4600 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_LongPads" H 2050 6000 50  0000 C CIN
F 3 "" H 2050 6000 50  0000 C CNN
	1    2050 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 P2
U 1 1 58380BA8
P 9550 4750
F 0 "P2" H 9550 4950 50  0000 C CNN
F 1 "ISP" H 9550 4550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03" H 9550 3550 50  0001 C CNN
F 3 "" H 9550 3550 50  0000 C CNN
	1    9550 4750
	1    0    0    1   
$EndComp
Text Label 9050 4650 0    60   ~ 0
/RES
Text Label 9050 4750 0    60   ~ 0
SCK
Text Label 9050 4850 0    60   ~ 0
MISO
Text Label 10100 4750 2    60   ~ 0
MOSI
$Comp
L GND #PWR01
U 1 1 58380C97
P 10100 4650
F 0 "#PWR01" H 10100 4400 50  0001 C CNN
F 1 "GND" H 10100 4500 50  0000 C CNN
F 2 "" H 10100 4650 50  0000 C CNN
F 3 "" H 10100 4650 50  0000 C CNN
	1    10100 4650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR02
U 1 1 58380D8D
P 1000 7400
F 0 "#PWR02" H 1000 7150 50  0001 C CNN
F 1 "GND" H 1000 7250 50  0000 C CNN
F 2 "" H 1000 7400 50  0000 C CNN
F 3 "" H 1000 7400 50  0000 C CNN
	1    1000 7400
	1    0    0    -1  
$EndComp
NoConn ~ 1150 5500
Text Label 3050 5200 0    60   ~ 0
MOSI
Text Label 3050 5400 0    60   ~ 0
SCK
Text Label 3050 6350 0    60   ~ 0
/RES
$Comp
L CONN_01X02 P3
U 1 1 58380EA5
P 4250 5400
F 0 "P3" H 4250 5550 50  0000 C CNN
F 1 "PB" V 4350 5400 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 4250 5400 50  0001 C CNN
F 3 "" H 4250 5400 50  0000 C CNN
	1    4250 5400
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 58380F01
P 4250 6250
F 0 "P4" H 4250 6400 50  0000 C CNN
F 1 "PC" V 4350 6250 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 4250 6250 50  0001 C CNN
F 3 "" H 4250 6250 50  0000 C CNN
	1    4250 6250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 58380F2D
P 4250 7000
F 0 "P5" H 4250 7150 50  0000 C CNN
F 1 "PD" V 4350 7000 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 4250 7000 50  0001 C CNN
F 3 "" H 4250 7000 50  0000 C CNN
	1    4250 7000
	1    0    0    -1  
$EndComp
NoConn ~ 3050 5100
NoConn ~ 3050 5950
NoConn ~ 3050 6050
NoConn ~ 3050 6150
NoConn ~ 3050 6900
NoConn ~ 3050 7000
$Comp
L CONN_01X02 P6
U 1 1 583811FE
P 8850 1750
F 0 "P6" H 8850 1900 50  0000 C CNN
F 1 "LED OUT" V 8950 1750 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 8850 1750 50  0001 C CNN
F 3 "" H 8850 1750 50  0000 C CNN
	1    8850 1750
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P7
U 1 1 58381249
P 8850 3300
F 0 "P7" H 8850 3450 50  0000 C CNN
F 1 "BUTTON OUT" V 8950 3300 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 8850 3300 50  0001 C CNN
F 3 "" H 8850 3300 50  0000 C CNN
	1    8850 3300
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 58381281
P 10100 1700
F 0 "D2" H 10100 1800 50  0000 C CNN
F 1 "LED 1" H 10100 1600 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 10100 1700 50  0001 C CNN
F 3 "" H 10100 1700 50  0000 C CNN
	1    10100 1700
	-1   0    0    1   
$EndComp
$Comp
L R R1
U 1 1 583812E0
P 9600 1700
F 0 "R1" V 9680 1700 50  0000 C CNN
F 1 "R" V 9600 1700 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 9530 1700 50  0001 C CNN
F 3 "" H 9600 1700 50  0000 C CNN
	1    9600 1700
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 58381381
P 10100 1800
F 0 "D3" H 10100 1900 50  0000 C CNN
F 1 "LED 2" H 10100 1700 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 10100 1800 50  0001 C CNN
F 3 "" H 10100 1800 50  0000 C CNN
	1    10100 1800
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 58381387
P 9600 1800
F 0 "R2" V 9680 1800 50  0000 C CNN
F 1 "R" V 9600 1800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 9530 1800 50  0001 C CNN
F 3 "" H 9600 1800 50  0000 C CNN
	1    9600 1800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5838149D
P 10400 1900
F 0 "#PWR03" H 10400 1650 50  0001 C CNN
F 1 "GND" H 10400 1750 50  0000 C CNN
F 2 "" H 10400 1900 50  0000 C CNN
F 3 "" H 10400 1900 50  0000 C CNN
	1    10400 1900
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 583815D1
P 9700 3100
F 0 "SW1" H 9850 3210 50  0000 C CNN
F 1 "PUSH 1" H 9700 3020 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 9700 3100 50  0001 C CNN
F 3 "" H 9700 3100 50  0000 C CNN
	1    9700 3100
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5838163D
P 9700 3550
F 0 "SW2" H 9850 3660 50  0000 C CNN
F 1 "PUSH 2" H 9700 3470 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm" H 9700 3550 50  0001 C CNN
F 3 "" H 9700 3550 50  0000 C CNN
	1    9700 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58381688
P 10300 3650
F 0 "#PWR04" H 10300 3400 50  0001 C CNN
F 1 "GND" H 10300 3500 50  0000 C CNN
F 2 "" H 10300 3650 50  0000 C CNN
F 3 "" H 10300 3650 50  0000 C CNN
	1    10300 3650
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG05
U 1 1 583821D4
P 1200 1250
F 0 "#FLG05" H 1200 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 1430 50  0000 C CNN
F 2 "" H 1200 1250 50  0000 C CNN
F 3 "" H 1200 1250 50  0000 C CNN
	1    1200 1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG06
U 1 1 58382213
P 1550 1250
F 0 "#FLG06" H 1550 1345 50  0001 C CNN
F 1 "PWR_FLAG" H 1550 1430 50  0000 C CNN
F 2 "" H 1550 1250 50  0000 C CNN
F 3 "" H 1550 1250 50  0000 C CNN
	1    1550 1250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 5838223E
P 1200 1250
F 0 "#PWR07" H 1200 1100 50  0001 C CNN
F 1 "VCC" H 1200 1400 50  0000 C CNN
F 2 "" H 1200 1250 50  0000 C CNN
F 3 "" H 1200 1250 50  0000 C CNN
	1    1200 1250
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 58382270
P 1550 1250
F 0 "#PWR08" H 1550 1000 50  0001 C CNN
F 1 "GND" H 1550 1100 50  0000 C CNN
F 2 "" H 1550 1250 50  0000 C CNN
F 3 "" H 1550 1250 50  0000 C CNN
	1    1550 1250
	1    0    0    -1  
$EndComp
NoConn ~ 3050 6250
NoConn ~ 3050 5000
NoConn ~ 3050 4900
Text Label 4050 5450 2    60   ~ 0
PB0
Text Label 4050 5350 2    60   ~ 0
PB1
Wire Wire Line
	9300 4650 9050 4650
Wire Wire Line
	9300 4750 9050 4750
Wire Wire Line
	9300 4850 9050 4850
Wire Wire Line
	9800 4650 10100 4650
Wire Wire Line
	9800 4750 10100 4750
Wire Wire Line
	9800 4850 10100 4850
Wire Wire Line
	950  5200 1150 5200
Wire Wire Line
	950  4650 950  5200
Wire Wire Line
	1150 4900 950  4900
Connection ~ 950  4900
Wire Wire Line
	1150 7100 1000 7100
Wire Wire Line
	1000 7100 1000 7400
Wire Wire Line
	1150 7200 1000 7200
Connection ~ 1000 7200
Wire Wire Line
	9050 1700 9450 1700
Wire Wire Line
	9750 1700 9900 1700
Wire Wire Line
	9050 1800 9450 1800
Wire Wire Line
	9750 1800 9900 1800
Wire Wire Line
	10300 1700 10400 1700
Wire Wire Line
	10400 1700 10400 1900
Wire Wire Line
	10300 1800 10400 1800
Connection ~ 10400 1800
Wire Wire Line
	10000 3550 10300 3550
Wire Wire Line
	10300 3100 10300 3650
Wire Wire Line
	10000 3100 10300 3100
Connection ~ 10300 3550
Wire Wire Line
	9050 3250 9400 3250
Wire Wire Line
	9400 3250 9400 3100
Wire Wire Line
	9050 3350 9400 3350
Wire Wire Line
	9400 3350 9400 3550
Text Label 3050 5750 0    60   ~ 0
PC0
Text Label 3050 5850 0    60   ~ 0
PC1
Text Label 4050 6200 2    60   ~ 0
PC1
Text Label 4050 6300 2    60   ~ 0
PC0
Text Label 3050 5300 0    60   ~ 0
MISO
Text Label 3050 6700 0    60   ~ 0
PD1
Text Label 3050 6800 0    60   ~ 0
PD0
Text Label 4050 6950 2    60   ~ 0
PD0
Text Label 4050 7050 2    60   ~ 0
PD1
NoConn ~ 3050 6600
NoConn ~ 3050 6500
NoConn ~ 3200 5800
Text Label 3050 5500 0    60   ~ 0
PB0
Text Label 3050 5600 0    60   ~ 0
PB1
NoConn ~ 3050 7100
NoConn ~ 3050 7200
$Comp
L R R3
U 1 1 5839F927
P 900 2850
F 0 "R3" V 980 2850 50  0000 C CNN
F 1 "R" V 900 2850 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 830 2850 50  0001 C CNN
F 3 "" H 900 2850 50  0000 C CNN
	1    900  2850
	0    1    1    0   
$EndComp
$Comp
L LED D4
U 1 1 5839F99A
P 1450 2850
F 0 "D4" H 1450 2950 50  0000 C CNN
F 1 "PWR LED" H 1450 2750 50  0000 C CNN
F 2 "LEDs:LED-5MM" H 1450 2850 50  0001 C CNN
F 3 "" H 1450 2850 50  0000 C CNN
	1    1450 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1050 2850 1250 2850
$Comp
L GND #PWR09
U 1 1 5839FA20
P 1650 2850
F 0 "#PWR09" H 1650 2600 50  0001 C CNN
F 1 "GND" H 1650 2700 50  0000 C CNN
F 2 "" H 1650 2850 50  0000 C CNN
F 3 "" H 1650 2850 50  0000 C CNN
	1    1650 2850
	1    0    0    -1  
$EndComp
Text Notes 1450 4250 0    118  ~ 0
Microcontroller
Text Notes 2250 1150 0    118  ~ 0
Power
Text Notes 9000 4250 0    118  ~ 0
ISP connector
Text Notes 9100 1250 0    118  ~ 0
Peripherals
$Comp
L C C1
U 1 1 5849B157
P 3100 2150
F 0 "C1" H 3125 2250 50  0000 L CNN
F 1 "0.33uF" H 3125 2050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D10_L20_P5" H 3138 2000 50  0001 C CNN
F 3 "" H 3100 2150 50  0000 C CNN
	1    3100 2150
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5849B1AF
P 4350 2150
F 0 "C2" H 4375 2250 50  0000 L CNN
F 1 "0.1uF" H 4375 2050 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D10_L20_P7.5" H 4388 2000 50  0001 C CNN
F 3 "" H 4350 2150 50  0000 C CNN
	1    4350 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5849B1F1
P 3750 2400
F 0 "#PWR010" H 3750 2150 50  0001 C CNN
F 1 "GND" H 3750 2250 50  0000 C CNN
F 2 "" H 3750 2400 50  0000 C CNN
F 3 "" H 3750 2400 50  0000 C CNN
	1    3750 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2300 4350 2300
Wire Wire Line
	3750 2250 3750 2400
Connection ~ 3750 2300
Wire Wire Line
	2600 1950 3350 1950
Wire Wire Line
	3100 1950 3100 2000
Wire Wire Line
	4150 1950 4650 1950
Wire Wire Line
	4350 1950 4350 2000
Connection ~ 3100 1950
Connection ~ 4350 1950
$Comp
L D_Schottky D1
U 1 1 5849B7D4
P 2450 1950
F 0 "D1" H 2450 2050 50  0000 C CNN
F 1 "D_Schottky" H 2450 1850 50  0000 C CNN
F 2 "Diodes_ThroughHole:Diode_DO-41_SOD81_Vertical_KathodeUp" H 2450 1950 50  0001 C CNN
F 3 "" H 2450 1950 50  0000 C CNN
	1    2450 1950
	-1   0    0    1   
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5849BA27
P 2550 3100
F 0 "P1" H 2550 3250 50  0000 C CNN
F 1 "CONN_01X02" V 2650 3100 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 2550 3100 50  0001 C CNN
F 3 "" H 2550 3100 50  0000 C CNN
	1    2550 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 1950 2050 1950
$Comp
L GND #PWR011
U 1 1 5849BB42
P 2800 2900
F 0 "#PWR011" H 2800 2650 50  0001 C CNN
F 1 "GND" H 2800 2750 50  0000 C CNN
F 2 "" H 2800 2900 50  0000 C CNN
F 3 "" H 2800 2900 50  0000 C CNN
	1    2800 2900
	1    0    0    -1  
$EndComp
$Comp
L LM7805CT U1
U 1 1 5849DFED
P 3750 2000
F 0 "U1" H 3550 2200 50  0000 C CNN
F 1 "LM7805CT" H 3750 2200 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220_Neutral123_Horizontal" H 3750 2100 50  0000 C CIN
F 3 "" H 3750 2000 50  0000 C CNN
	1    3750 2000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR012
U 1 1 5849E846
P 4650 1950
F 0 "#PWR012" H 4650 1800 50  0001 C CNN
F 1 "VDD" H 4650 2100 50  0000 C CNN
F 2 "" H 4650 1950 50  0000 C CNN
F 3 "" H 4650 1950 50  0000 C CNN
	1    4650 1950
	-1   0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 5849EBB3
P 2050 1950
F 0 "#PWR013" H 2050 1800 50  0001 C CNN
F 1 "VCC" H 2050 2100 50  0000 C CNN
F 2 "" H 2050 1950 50  0000 C CNN
F 3 "" H 2050 1950 50  0000 C CNN
	1    2050 1950
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR015
U 1 1 5849F276
P 750 2850
F 0 "#PWR015" H 750 2700 50  0001 C CNN
F 1 "VDD" H 750 3000 50  0000 C CNN
F 2 "" H 750 2850 50  0000 C CNN
F 3 "" H 750 2850 50  0000 C CNN
	1    750  2850
	-1   0    0    -1  
$EndComp
$Comp
L VDD #PWR016
U 1 1 5849F2D2
P 950 4650
F 0 "#PWR016" H 950 4500 50  0001 C CNN
F 1 "VDD" H 950 4800 50  0000 C CNN
F 2 "" H 950 4650 50  0000 C CNN
F 3 "" H 950 4650 50  0000 C CNN
	1    950  4650
	-1   0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5849F77B
P 9200 3000
F 0 "R4" V 9280 3000 50  0000 C CNN
F 1 "10k" V 9200 3000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 9130 3000 50  0001 C CNN
F 3 "" H 9200 3000 50  0000 C CNN
	1    9200 3000
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5849F7CD
P 9200 3600
F 0 "R5" V 9280 3600 50  0000 C CNN
F 1 "10k" V 9200 3600 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Vertical_RM5mm" V 9130 3600 50  0001 C CNN
F 3 "" H 9200 3600 50  0000 C CNN
	1    9200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3350 9200 3450
Connection ~ 9200 3350
Wire Wire Line
	9200 3150 9200 3250
Connection ~ 9200 3250
$Comp
L VDD #PWR017
U 1 1 5849F8B7
P 9200 2850
F 0 "#PWR017" H 9200 2700 50  0001 C CNN
F 1 "VDD" H 9200 3000 50  0000 C CNN
F 2 "" H 9200 2850 50  0000 C CNN
F 3 "" H 9200 2850 50  0000 C CNN
	1    9200 2850
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR018
U 1 1 5849F90B
P 9200 3750
F 0 "#PWR018" H 9200 3600 50  0001 C CNN
F 1 "VDD" H 9200 3900 50  0000 C CNN
F 2 "" H 9200 3750 50  0000 C CNN
F 3 "" H 9200 3750 50  0000 C CNN
	1    9200 3750
	-1   0    0    1   
$EndComp
$Comp
L VDD #PWR019
U 1 1 584A0970
P 10100 4850
F 0 "#PWR019" H 10100 4700 50  0001 C CNN
F 1 "VDD" H 10100 5000 50  0000 C CNN
F 2 "" H 10100 4850 50  0000 C CNN
F 3 "" H 10100 4850 50  0000 C CNN
	1    10100 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 2900 2800 2800
Wire Wire Line
	2800 2800 2600 2800
Wire Wire Line
	2600 2800 2600 2900
$Comp
L VCC #PWR?
U 1 1 584A0F4B
P 2500 2900
F 0 "#PWR?" H 2500 2750 50  0001 C CNN
F 1 "VCC" H 2500 3050 50  0000 C CNN
F 2 "" H 2500 2900 50  0000 C CNN
F 3 "" H 2500 2900 50  0000 C CNN
	1    2500 2900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
