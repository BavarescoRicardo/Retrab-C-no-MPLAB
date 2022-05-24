opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_LCD_Clear
	FNCALL	_main,_LCD_Cursor
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_WriteString
	FNCALL	_main,_PWM_DutyCycle1
	FNCALL	_main,_PWM_DutyCycle2
	FNCALL	_main,_PWM_Init
	FNCALL	_main,_TIMER0_Init
	FNCALL	_main,_TIMER0_Set
	FNCALL	_main,_USART_Init
	FNCALL	_main,_USART_WriteString
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_USART_WriteString,_USART_WriteChar
	FNCALL	_USART_Init,___aldiv
	FNCALL	_LCD_WriteString,_LCD_WriteData
	FNCALL	_LCD_Init,_LCD_WriteCmd
	FNCALL	_LCD_Clear,_LCD_WriteCmd
	FNROOT	_main
	FNCALL	_ISR,_Fuzzy
	FNCALL	_ISR,_USART_ReceiveChar
	FNCALL	_ISR,i1_PWM_DutyCycle2
	FNCALL	_ISR,i1_TIMER0_Set
	FNCALL	_ISR,i1_USART_WriteString
	FNCALL	_ISR,i1___lwdiv
	FNCALL	_ISR,i1___wmul
	FNCALL	_USART_ReceiveChar,i1_USART_WriteString
	FNCALL	i1_USART_WriteString,i1_USART_WriteChar
	FNCALL	_Fuzzy,___ftge
	FNCALL	_Fuzzy,___lwtoft
	FNCALL	_Fuzzy,_max_val
	FNCALL	_Fuzzy,_trapmf
	FNCALL	_Fuzzy,_trimf
	FNCALL	_Fuzzy,i1_PWM_DutyCycle2
	FNCALL	_Fuzzy,i1___lwdiv
	FNCALL	_Fuzzy,i1___wmul
	FNCALL	_trimf,i1___lwdiv
	FNCALL	_trapmf,i1___lwdiv
	FNCALL	___lwtoft,___ftpack
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_pas_cooler
	global	_tf
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	26

;initializer for _pas_cooler
	retlw	07h
	retlw	0

psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	71

;initializer for _tf
	retlw	014h
	retlw	0

	global	_dpowers
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
	global __stringbase
__stringbase:
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_fitemp
	global	_fop_rule1
	global	_pulsos
	global	_pwm
	global	_pwmAnt
	global	_temp
	global	_tip
	global	_total_area
	global	_x
	global	_y
	global	_ativa_fan
	global	_ADCResult
	global	_contador_rb6
	global	_contagens_tm0
	global	_deltaV
	global	_derro
	global	_fisetpoint
	global	_foTip
	global	_ideal
	global	_posicao_do_grafico
	global	_posicao_do_grafico_food
	global	_posicao_do_grafico_service
	global	_rpm
	global	_status
	global	_sum
	global	_temp_lida
	global	_tempo_rb6
	global	_tip_average
	global	_tip_gorgeous
	global	_display_pwm
	global	_display_rpm
	global	_TMR1
_TMR1	set	0xE
	global	_ADCON0bits
_ADCON0bits	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCP1CONbits
_CCP1CONbits	set	0x17
	global	_CCP2CON
_CCP2CON	set	0x1D
	global	_CCP2CONbits
_CCP2CONbits	set	0x1D
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_CCPR2L
_CCPR2L	set	0x1B
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PIR2bits
_PIR2bits	set	0xD
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_PORTE
_PORTE	set	0x9
	global	_PORTEbits
_PORTEbits	set	0x9
	global	_RCREG
_RCREG	set	0x1A
	global	_RCSTAbits
_RCSTAbits	set	0x18
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCONbits
_SSPCONbits	set	0x14
	global	_T1CON
_T1CON	set	0x10
	global	_T1CONbits
_T1CONbits	set	0x10
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_TMR0
_TMR0	set	0x1
	global	_TMR1H
_TMR1H	set	0xF
	global	_TMR1L
_TMR1L	set	0xE
	global	_TXREG
_TXREG	set	0x19
	global	_OERR
_OERR	set	0xC1
	global	_ADCON1bits
_ADCON1bits	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_PIE2bits
_PIE2bits	set	0x8D
	global	_PR2
_PR2	set	0x92
	global	_SPBRG
_SPBRG	set	0x99
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPCON2bits
_SSPCON2bits	set	0x91
	global	_SSPSTATbits
_SSPSTATbits	set	0x94
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_TRISE
_TRISE	set	0x89
	global	_TXSTAbits
_TXSTAbits	set	0x98
	global	_EEADR
_EEADR	set	0x10D
	global	_EEDATA
_EEDATA	set	0x10C
	global	_EECON1bits
_EECON1bits	set	0x18C
	global	_EECON2
_EECON2	set	0x18D
	global __stringdata
__stringdata:
	
STR_19:	
	retlw	10
	retlw	13
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	72	;'H'
	retlw	65	;'A'
	retlw	32	;' '
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	45	;'-'
	retlw	32	;' '
	retlw	10
	retlw	13
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	32	;' '
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	70	;'F'
	retlw	56	;'8'
	retlw	55	;'7'
	retlw	55	;'7'
	retlw	65	;'A'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_12:	
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	58	;':'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	53	;'5'
	retlw	46	;'.'
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	98	;'b'
	retlw	112	;'p'
	retlw	115	;'s'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	122	;'z'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	53	;'5'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	50	;'2'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_8:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	54	;'6'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	56	;'8'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	55	;'7'
	retlw	54	;'6'
	retlw	56	;'8'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	10
	retlw	13
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	51	;'3'
	retlw	50	;'2'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	10
	retlw	13
	retlw	112	;'p'
	retlw	119	;'w'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	54	;'6'
	retlw	52	;'4'
	retlw	10
	retlw	13
	retlw	0
psect	stringtext
	
STR_18:	
	retlw	80	;'P'
	retlw	87	;'W'
	retlw	77	;'M'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_17:	
	retlw	68	;'D'
	retlw	108	;'l'
	retlw	86	;'V'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	52	;'4'
	retlw	100	;'d'
	retlw	0
psect	stringtext
STR_15	equ	STR_14+0
STR_16	equ	STR_9+12
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$HS
__CFG_FOSC$HS equ 0x0
	file	"PIC16F877A.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_fitemp:
       ds      2

_fop_rule1:
       ds      2

_pulsos:
       ds      2

_pwm:
       ds      2

_pwmAnt:
       ds      2

_temp:
       ds      2

_tip:
       ds      2

_total_area:
       ds      2

_x:
       ds      2

_y:
       ds      2

_ativa_fan:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	26
_pas_cooler:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ADCResult:
       ds      2

_contador_rb6:
       ds      2

_contagens_tm0:
       ds      2

_deltaV:
       ds      2

_derro:
       ds      2

_fisetpoint:
       ds      2

_foTip:
       ds      2

_ideal:
       ds      2

_posicao_do_grafico:
       ds      2

_posicao_do_grafico_food:
       ds      2

_posicao_do_grafico_service:
       ds      2

_rpm:
       ds      2

_status:
       ds      2

_sum:
       ds      2

_temp_lida:
       ds      2

_tempo_rb6:
       ds      2

_tip_average:
       ds      2

_tip_gorgeous:
       ds      2

_display_pwm:
       ds      10

_display_rpm:
       ds      10

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	71
_tf:
       ds      2

	file	"PIC16F877A.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+016h)
	fcall	clear_ram0
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+038h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
??_main:	; 0 bytes @ 0x0
	ds	3
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	2
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x4
	global	sprintf@f
sprintf@f:	; 2 bytes @ 0x4
	ds	2
?_USART_Init:	; 0 bytes @ 0x6
	global	USART_Init@BaudRate
USART_Init@BaudRate:	; 4 bytes @ 0x6
	ds	2
??_sprintf:	; 0 bytes @ 0x8
	ds	2
??_USART_Init:	; 0 bytes @ 0xA
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0xB
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0xC
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0xD
	ds	4
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x11
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x12
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x14
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x15
	ds	1
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_TIMER0_Set:	; 0 bytes @ 0x0
?_TIMER0_Init:	; 0 bytes @ 0x0
?_ADC_Init:	; 0 bytes @ 0x0
?_PWM_Init:	; 0 bytes @ 0x0
?_LCD_Init:	; 0 bytes @ 0x0
?_LCD_Clear:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_USART_WriteChar:	; 0 bytes @ 0x0
?_LCD_WriteCmd:	; 0 bytes @ 0x0
?_LCD_WriteData:	; 0 bytes @ 0x0
?i1_USART_WriteChar:	; 0 bytes @ 0x0
??i1_USART_WriteChar:	; 0 bytes @ 0x0
?i1_TIMER0_Set:	; 0 bytes @ 0x0
??i1_TIMER0_Set:	; 0 bytes @ 0x0
?_USART_ReceiveChar:	; 1 bytes @ 0x0
	global	?_max_val
?_max_val:	; 2 bytes @ 0x0
	global	?i1___lwdiv
?i1___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	i1USART_WriteChar@byte
i1USART_WriteChar@byte:	; 1 bytes @ 0x0
	global	i1TIMER0_Set@contagens
i1TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	max_val@a
max_val@a:	; 2 bytes @ 0x0
	global	i1___lwdiv@divisor
i1___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
?i1_USART_WriteString:	; 0 bytes @ 0x1
	global	i1USART_WriteString@str
i1USART_WriteString@str:	; 2 bytes @ 0x1
	ds	1
	global	max_val@b
max_val@b:	; 2 bytes @ 0x2
	global	i1___lwdiv@dividend
i1___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_USART_ReceiveChar:	; 0 bytes @ 0x3
??i1_USART_WriteString:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
??_max_val:	; 0 bytes @ 0x4
??i1___lwdiv:	; 0 bytes @ 0x4
	global	USART_ReceiveChar@byte
USART_ReceiveChar@byte:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	i1___lwdiv@quotient
i1___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	i1___lwdiv@counter
i1___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
??_trimf:	; 0 bytes @ 0x8
??_trapmf:	; 0 bytes @ 0x8
	global	?i1___wmul
?i1___wmul:	; 2 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	i1___wmul@multiplier
i1___wmul@multiplier:	; 2 bytes @ 0x8
	ds	2
	global	i1___wmul@multiplicand
i1___wmul@multiplicand:	; 2 bytes @ 0xA
	ds	1
??___lwtoft:	; 0 bytes @ 0xB
	ds	1
??i1___wmul:	; 0 bytes @ 0xC
	global	trimf@ua
trimf@ua:	; 2 bytes @ 0xC
	global	trapmf@ua
trapmf@ua:	; 2 bytes @ 0xC
	global	i1___wmul@product
i1___wmul@product:	; 2 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?___ftge:	; 1 bit 
?i1_PWM_DutyCycle2:	; 0 bytes @ 0x0
	global	?_trimf
?_trimf:	; 2 bytes @ 0x0
	global	?_trapmf
?_trapmf:	; 2 bytes @ 0x0
	global	trimf@x
trimf@x:	; 2 bytes @ 0x0
	global	trapmf@x
trapmf@x:	; 2 bytes @ 0x0
	global	i1PWM_DutyCycle2@valor
i1PWM_DutyCycle2@valor:	; 2 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	2
??i1_PWM_DutyCycle2:	; 0 bytes @ 0x2
	global	trimf@a
trimf@a:	; 2 bytes @ 0x2
	global	trapmf@a
trapmf@a:	; 2 bytes @ 0x2
	ds	1
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	trimf@b
trimf@b:	; 2 bytes @ 0x4
	global	trapmf@b
trapmf@b:	; 2 bytes @ 0x4
	ds	2
??___ftge:	; 0 bytes @ 0x6
	global	trimf@c
trimf@c:	; 2 bytes @ 0x6
	global	trapmf@c
trapmf@c:	; 2 bytes @ 0x6
	ds	2
	global	trapmf@d
trapmf@d:	; 2 bytes @ 0x8
	ds	4
?_Fuzzy:	; 0 bytes @ 0xC
	global	Fuzzy@setpoint
Fuzzy@setpoint:	; 2 bytes @ 0xC
	ds	2
??_Fuzzy:	; 0 bytes @ 0xE
	ds	2
	global	Fuzzy@velocidade
Fuzzy@velocidade:	; 1 bytes @ 0x10
	ds	1
	global	Fuzzy@sum
Fuzzy@sum:	; 2 bytes @ 0x11
	ds	2
??_ISR:	; 0 bytes @ 0x13
	ds	4
?_PWM_DutyCycle2:	; 0 bytes @ 0x17
??_TIMER0_Set:	; 0 bytes @ 0x17
??_TIMER0_Init:	; 0 bytes @ 0x17
??_ADC_Init:	; 0 bytes @ 0x17
??_PWM_Init:	; 0 bytes @ 0x17
?_LCD_Cursor:	; 0 bytes @ 0x17
?_PWM_DutyCycle1:	; 0 bytes @ 0x17
??_isdigit:	; 0 bytes @ 0x17
??_USART_WriteChar:	; 0 bytes @ 0x17
??_LCD_WriteCmd:	; 0 bytes @ 0x17
??_LCD_WriteData:	; 0 bytes @ 0x17
	global	?___wmul
?___wmul:	; 2 bytes @ 0x17
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x17
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x17
	global	USART_WriteChar@byte
USART_WriteChar@byte:	; 1 bytes @ 0x17
	global	TIMER0_Set@contagens
TIMER0_Set@contagens:	; 1 bytes @ 0x17
	global	LCD_Cursor@Col
LCD_Cursor@Col:	; 1 bytes @ 0x17
	global	_isdigit$1450
_isdigit$1450:	; 1 bytes @ 0x17
	global	PWM_DutyCycle1@valor
PWM_DutyCycle1@valor:	; 2 bytes @ 0x17
	global	PWM_DutyCycle2@valor
PWM_DutyCycle2@valor:	; 2 bytes @ 0x17
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x17
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x17
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x17
	ds	1
?_USART_WriteString:	; 0 bytes @ 0x18
??_LCD_Cursor:	; 0 bytes @ 0x18
	global	LCD_WriteCmd@Byte
LCD_WriteCmd@Byte:	; 1 bytes @ 0x18
	global	LCD_WriteData@Byte
LCD_WriteData@Byte:	; 1 bytes @ 0x18
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x18
	global	USART_WriteString@str
USART_WriteString@str:	; 2 bytes @ 0x18
	ds	1
??_PWM_DutyCycle2:	; 0 bytes @ 0x19
??_LCD_Init:	; 0 bytes @ 0x19
?_LCD_WriteString:	; 0 bytes @ 0x19
??_PWM_DutyCycle1:	; 0 bytes @ 0x19
??_LCD_Clear:	; 0 bytes @ 0x19
	global	LCD_Cursor@Row
LCD_Cursor@Row:	; 1 bytes @ 0x19
	global	LCD_WriteString@Str
LCD_WriteString@Str:	; 2 bytes @ 0x19
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x19
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x19
	ds	1
??_USART_WriteString:	; 0 bytes @ 0x1A
	ds	1
??_LCD_WriteString:	; 0 bytes @ 0x1B
??___wmul:	; 0 bytes @ 0x1B
??___lwdiv:	; 0 bytes @ 0x1B
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x1B
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x1B
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x1C
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1D
	ds	2
??___aldiv:	; 0 bytes @ 0x1F
??___lwmod:	; 0 bytes @ 0x1F
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x20
	ds	1
;!
;!Data Sizes:
;!    Strings     263
;!    Constant    10
;!    Data        4
;!    BSS         78
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     33      57
;!    BANK1            80     22      80
;!    BANK3            96      3       3
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(2) Largest target is 5
;!		 -> STR_15(CODE[5]), STR_14(CODE[5]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> display_pwm(BANK1[10]), display_rpm(BANK1[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK1[2]), 
;!
;!    S1254$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    LCD_WriteString@Str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_18(CODE[6]), STR_17(CODE[6]), display_pwm(BANK1[10]), display_rpm(BANK1[10]), 
;!		 -> STR_13(CODE[17]), 
;!
;!    USART_WriteString@str	PTR const unsigned char  size(2) Largest target is 40
;!		 -> STR_19(CODE[40]), STR_16(CODE[3]), display_rpm(BANK1[10]), STR_12(CODE[20]), 
;!		 -> STR_11(CODE[29]), STR_10(CODE[15]), STR_9(CODE[15]), STR_8(CODE[14]), 
;!		 -> STR_7(CODE[14]), STR_6(CODE[14]), STR_5(CODE[14]), STR_4(CODE[14]), 
;!		 -> STR_3(CODE[13]), STR_2(CODE[13]), STR_1(CODE[14]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->i1___wmul
;!    _USART_ReceiveChar->i1_USART_WriteString
;!    i1_USART_WriteString->i1_USART_WriteChar
;!    _Fuzzy->_trapmf
;!    _Fuzzy->_trimf
;!    _Fuzzy->i1___wmul
;!    i1___wmul->i1___lwdiv
;!    i1_PWM_DutyCycle2->i1___wmul
;!    _trimf->i1___lwdiv
;!    _trapmf->i1___lwdiv
;!    ___lwtoft->___ftpack
;!    ___ftge->___lwtoft
;!
;!Critical Paths under _main in BANK0
;!
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _USART_WriteString->_USART_WriteChar
;!    _USART_Init->___aldiv
;!    _LCD_WriteString->_LCD_WriteData
;!    _LCD_Init->_LCD_WriteCmd
;!    _LCD_Clear->_LCD_WriteCmd
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _ISR->_Fuzzy
;!    _Fuzzy->___ftge
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    _USART_Init->___aldiv
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0    6189
;!                                              0 BANK3      3     3      0
;!                           _ADC_Init
;!                          _LCD_Clear
;!                         _LCD_Cursor
;!                           _LCD_Init
;!                    _LCD_WriteString
;!                     _PWM_DutyCycle1
;!                     _PWM_DutyCycle2
;!                           _PWM_Init
;!                        _TIMER0_Init
;!                         _TIMER0_Set
;!                         _USART_Init
;!                  _USART_WriteString
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             18    14      4    3572
;!                                              4 BANK1     18    14      4
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      99
;!                                             23 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     626
;!                                             23 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     386
;!                                             31 BANK0      2     2      0
;!                                              0 BANK1      4     0      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     899
;!                                             23 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _USART_WriteString                                    2     0      2     741
;!                                             24 BANK0      2     0      2
;!                    _USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (2) _USART_WriteChar                                      1     1      0      22
;!                                             23 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _USART_Init                                           8     4      4     707
;!                                              6 BANK1      8     4      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     599
;!                                             23 BANK0      9     1      8
;!                                              0 BANK1      6     6      0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Set                                           1     1      0      22
;!                                             23 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle2                                       4     2      2     222
;!                                             23 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle1                                       4     2      2     108
;!                                             23 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _LCD_WriteString                                      2     0      2     387
;!                                             25 BANK0      2     0      2
;!                      _LCD_WriteData
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteData                                        2     2      0      22
;!                                             23 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      22
;!                                             25 BANK0      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Cursor                                           3     2      1     386
;!                                             23 BANK0      3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Clear                                            2     2      0      22
;!                                             25 BANK0      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteCmd                                         2     2      0      22
;!                                             23 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  4     4      0   10731
;!                                             19 BANK0      4     4      0
;!                              _Fuzzy
;!                  _USART_ReceiveChar
;!                   i1_PWM_DutyCycle2
;!                       i1_TIMER0_Set
;!                i1_USART_WriteString
;!                          i1___lwdiv
;!                           i1___wmul
;! ---------------------------------------------------------------------------------
;! (4) i1_TIMER0_Set                                         1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _USART_ReceiveChar                                    2     2      0     377
;!                                              3 COMMON     2     2      0
;!                i1_USART_WriteString
;! ---------------------------------------------------------------------------------
;! (4) i1_USART_WriteString                                  2     0      2     353
;!                                              1 COMMON     2     0      2
;!                  i1_USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (5) i1_USART_WriteChar                                    1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Fuzzy                                                7     5      2    9083
;!                                             12 BANK0      7     5      2
;!                             ___ftge
;!                           ___lwtoft
;!                            _max_val
;!                             _trapmf
;!                              _trimf
;!                   i1_PWM_DutyCycle2
;!                          i1___lwdiv
;!                           i1___wmul
;! ---------------------------------------------------------------------------------
;! (4) i1___wmul                                             6     2      4     300
;!                                              8 COMMON     6     2      4
;!                          i1___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) i1_PWM_DutyCycle2                                     4     2      2     122
;!                                              0 BANK0      4     2      2
;!                           i1___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _trimf                                               14     6      8    1453
;!                                              8 COMMON     6     6      0
;!                                              0 BANK0      8     0      8
;!                          i1___lwdiv
;! ---------------------------------------------------------------------------------
;! (5) _trapmf                                              16     6     10    2310
;!                                              8 COMMON     6     6      0
;!                                              0 BANK0     10     0     10
;!                          i1___lwdiv
;! ---------------------------------------------------------------------------------
;! (4) i1___lwdiv                                            8     4      4     474
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (5) _max_val                                              4     0      4     472
;!                                              0 COMMON     4     0      4
;! ---------------------------------------------------------------------------------
;! (5) ___lwtoft                                             4     1      3    2529
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (6) ___ftpack                                             8     3      5    1931
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (5) ___ftge                                              12     6      6    1288
;!                                              0 BANK0     12     6      6
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Init
;!   _LCD_Clear
;!     _LCD_WriteCmd
;!   _LCD_Cursor
;!   _LCD_Init
;!     _LCD_WriteCmd
;!   _LCD_WriteString
;!     _LCD_WriteData
;!   _PWM_DutyCycle1
;!   _PWM_DutyCycle2
;!   _PWM_Init
;!   _TIMER0_Init
;!   _TIMER0_Set
;!   _USART_Init
;!     ___aldiv
;!   _USART_WriteString
;!     _USART_WriteChar
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     ___wmul
;!     _isdigit
;!
;! _ISR (ROOT)
;!   _Fuzzy
;!     ___ftge
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!     _max_val
;!     _trapmf
;!       i1___lwdiv
;!     _trimf
;!       i1___lwdiv
;!     i1_PWM_DutyCycle2
;!       i1___wmul (ARG)
;!         i1___lwdiv (ARG)
;!     i1___lwdiv
;!     i1___wmul
;!       i1___lwdiv (ARG)
;!   _USART_ReceiveChar
;!     i1_USART_WriteString
;!       i1_USART_WriteChar
;!   i1_PWM_DutyCycle2
;!     i1___wmul (ARG)
;!       i1___lwdiv (ARG)
;!   i1_TIMER0_Set
;!   i1_USART_WriteString
;!     i1_USART_WriteChar
;!   i1___lwdiv
;!   i1___wmul
;!     i1___lwdiv (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      3       3       9        3.1%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     16      50       7      100.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     21      39       5       71.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      9A      12        0.0%
;!ABS                  0      0      9A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 484 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       3       0
;;      Totals:         0       0       0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADC_Init
;;		_LCD_Clear
;;		_LCD_Cursor
;;		_LCD_Init
;;		_LCD_WriteString
;;		_PWM_DutyCycle1
;;		_PWM_DutyCycle2
;;		_PWM_Init
;;		_TIMER0_Init
;;		_TIMER0_Set
;;		_USART_Init
;;		_USART_WriteString
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	484
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	484
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	486
	
l3145:	
;main.c: 486: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	487
;main.c: 487: PORTA = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	488
	
l3147:	
;main.c: 488: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	489
	
l3149:	
;main.c: 489: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	490
;main.c: 490: TRISC = 0b10000001;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	491
;main.c: 491: PORTC = 0b11000000;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	492
	
l3151:	
;main.c: 492: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	493
	
l3153:	
;main.c: 493: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	494
	
l3155:	
;main.c: 494: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	495
	
l3157:	
;main.c: 495: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	498
;main.c: 498: T1CON = 0x03;
	movlw	(03h)
	movwf	(16)	;volatile
	line	499
	
l3159:	
;main.c: 499: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	500
	
l3161:	
;main.c: 500: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	503
	
l3163:	
;main.c: 503: USART_Init(115200);
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(USART_Init@BaudRate+3)^080h
	movlw	01h
	movwf	(USART_Init@BaudRate+2)^080h
	movlw	0C2h
	movwf	(USART_Init@BaudRate+1)^080h
	movlw	0
	movwf	(USART_Init@BaudRate)^080h

	fcall	_USART_Init
	line	504
;main.c: 504: TIMER0_Init();
	fcall	_TIMER0_Init
	line	505
;main.c: 505: ADC_Init();
	fcall	_ADC_Init
	line	506
	
l3165:	
;main.c: 506: PWM_Init();
	fcall	_PWM_Init
	line	507
	
l3167:	
;main.c: 507: LCD_Init();
	fcall	_LCD_Init
	line	510
	
l3169:	
;main.c: 510: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	511
	
l3171:	
;main.c: 511: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	514
	
l3173:	
;main.c: 514: USART_WriteString("Inicializando o PIC16F877A\n\r");
	movlw	low((STR_11)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USART_WriteString@str)
	movlw	high((STR_11)|8000h)
	movwf	((USART_WriteString@str))+1
	fcall	_USART_WriteString
	line	515
	
l3175:	
;main.c: 515: USART_WriteString("USART: 115.200bps\n\r");
	movlw	low((STR_12)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USART_WriteString@str)
	movlw	high((STR_12)|8000h)
	movwf	((USART_WriteString@str))+1
	fcall	_USART_WriteString
	line	518
	
l3177:	
;main.c: 518: LCD_Init();
	fcall	_LCD_Init
	line	519
	
l3179:	
;main.c: 519: LCD_Cursor(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	(0)
	fcall	_LCD_Cursor
	line	520
	
l3181:	
;main.c: 520: LCD_WriteString("Inicializando...");
	movlw	low((STR_13)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	high((STR_13)|8000h)
	movwf	((LCD_WriteString@Str))+1
	fcall	_LCD_WriteString
	line	523
	
l3183:	
;main.c: 523: PWM_DutyCycle1(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(PWM_DutyCycle1@valor)
	movlw	high(0)
	movwf	((PWM_DutyCycle1@valor))+1
	fcall	_PWM_DutyCycle1
	line	524
	
l3185:	
;main.c: 524: PWM_DutyCycle2(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(PWM_DutyCycle2@valor)
	movlw	high(0)
	movwf	((PWM_DutyCycle2@valor))+1
	fcall	_PWM_DutyCycle2
	line	527
	
l3187:	
;main.c: 527: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	_TIMER0_Set
	line	530
	
l3189:	
;main.c: 530: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2),f
movlw	97
movwf	((??_main+0)^0180h+0+1),f
	movlw	110
movwf	((??_main+0)^0180h+0),f
u3397:
	decfsz	((??_main+0)^0180h+0),f
	goto	u3397
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u3397
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u3397
	nop
opt asmopt_on

	line	533
;main.c: 533: while(1)
	
l211:	
	line	536
;main.c: 534: {
;main.c: 536: sprintf(display_rpm,"%04d", deltaV);
	movlw	low((STR_14)|8000h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@f)^080h
	movlw	high((STR_14)|8000h)
	movwf	((sprintf@f)^080h)+1
	movf	(_deltaV+1)^080h,w
	clrf	1+(?_sprintf)^080h+02h
	addwf	1+(?_sprintf)^080h+02h
	movf	(_deltaV)^080h,w
	clrf	0+(?_sprintf)^080h+02h
	addwf	0+(?_sprintf)^080h+02h

	movlw	(_display_rpm)&0ffh
	fcall	_sprintf
	line	537
;main.c: 537: sprintf(display_pwm,"%04d", pwm);
	movlw	low((STR_15)|8000h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@f)^080h
	movlw	high((STR_15)|8000h)
	movwf	((sprintf@f)^080h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pwm+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	1+(?_sprintf)^080h+02h
	addwf	1+(?_sprintf)^080h+02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pwm),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	0+(?_sprintf)^080h+02h
	addwf	0+(?_sprintf)^080h+02h

	movlw	(_display_pwm)&0ffh
	fcall	_sprintf
	line	541
;main.c: 541: USART_WriteString(display_rpm);
	movlw	(_display_rpm&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USART_WriteString@str)
	movlw	(0x0)
	movwf	(USART_WriteString@str+1)
	fcall	_USART_WriteString
	line	542
;main.c: 542: USART_WriteString("\n\r");
	movlw	low((STR_16)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USART_WriteString@str)
	movlw	high((STR_16)|8000h)
	movwf	((USART_WriteString@str))+1
	fcall	_USART_WriteString
	line	545
	
l3191:	
;main.c: 545: LCD_Clear();
	fcall	_LCD_Clear
	line	546
	
l3193:	
;main.c: 546: LCD_Cursor(0,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	(0)
	fcall	_LCD_Cursor
	line	547
;main.c: 547: LCD_WriteString("DlV: ");
	movlw	low((STR_17)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	high((STR_17)|8000h)
	movwf	((LCD_WriteString@Str))+1
	fcall	_LCD_WriteString
	line	548
	
l3195:	
;main.c: 548: LCD_Cursor(0,6);
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_main+0)^0180h+0
	movf	(??_main+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_Cursor@Col)
	movlw	(0)
	fcall	_LCD_Cursor
	line	549
	
l3197:	
;main.c: 549: LCD_WriteString(display_rpm);
	movlw	(_display_rpm&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	(0x0)
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	550
;main.c: 550: LCD_Cursor(1,0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_Cursor@Col)
	movlw	(01h)
	fcall	_LCD_Cursor
	line	551
	
l3199:	
;main.c: 551: LCD_WriteString("PWM: ");
	movlw	low((STR_18)|8000h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	high((STR_18)|8000h)
	movwf	((LCD_WriteString@Str))+1
	fcall	_LCD_WriteString
	line	552
	
l3201:	
;main.c: 552: LCD_Cursor(1,6);
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_main+0)^0180h+0
	movf	(??_main+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_Cursor@Col)
	movlw	(01h)
	fcall	_LCD_Cursor
	line	553
;main.c: 553: LCD_WriteString(display_pwm);
	movlw	(_display_pwm&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteString@Str)
	movlw	(0x0)
	movwf	(LCD_WriteString@Str+1)
	fcall	_LCD_WriteString
	line	555
	
l3203:	
;main.c: 555: _delay((unsigned long)((200)*(18432000/4000.0)));
	opt asmopt_off
movlw  5
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2),f
movlw	173
movwf	((??_main+0)^0180h+0+1),f
	movlw	224
movwf	((??_main+0)^0180h+0),f
u3407:
	decfsz	((??_main+0)^0180h+0),f
	goto	u3407
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u3407
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u3407
opt asmopt_on

	goto	l211
	line	556
	
l212:	
	line	533
	goto	l211
	
l213:	
	line	557
	
l214:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> display_pwm(10), display_rpm(10), 
;;  f               2    4[BANK1 ] PTR const unsigned char 
;;		 -> STR_15(5), STR_14(5), 
;; Auto vars:     Size  Location     Type
;;  sp              1   20[BANK1 ] PTR unsigned char 
;;		 -> display_pwm(10), display_rpm(10), 
;;  _val            4   13[BANK1 ] struct .
;;  width           2   18[BANK1 ] int 
;;  c               1   21[BANK1 ] char 
;;  flag            1   17[BANK1 ] unsigned char 
;;  prec            1   12[BANK1 ] char 
;;  ap              1   11[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    4[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      18       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext1
__ptext1:	;psect for function _sprintf
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 2
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	line	542
	
l3037:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 506: signed char prec;
;doprnt.c: 508: unsigned char flag;
;doprnt.c: 527: union {
;doprnt.c: 528: unsigned int _val;
;doprnt.c: 529: struct {
;doprnt.c: 530: const char * _cp;
;doprnt.c: 531: unsigned _len;
;doprnt.c: 532: } _str;
;doprnt.c: 533: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+02h)&0ffh
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@ap)^080h
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l3139
	
l484:	
	line	547
	
l3039:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3201
	goto	u3200
u3201:
	goto	l3045
u3200:
	line	550
	
l3041:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3043:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	551
;doprnt.c: 551: continue;
	goto	l3139
	line	552
	
l485:	
	line	555
	
l3045:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)^080h
	goto	l3049
	line	559
;doprnt.c: 559: for(;;) {
	
l486:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l3049
	line	588
;doprnt.c: 588: case '0':
	
l488:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(sprintf@flag)^080h+(2/8),(2)&7
	line	590
;doprnt.c: 590: f++;
	movlw	01h
	addwf	(sprintf@f)^080h,f
	skipnc
	incf	(sprintf@f+1)^080h,f
	line	591
;doprnt.c: 591: continue;
	goto	l3049
	line	593
	
l3047:	
;doprnt.c: 593: }
	goto	l3051
	line	560
	
l487:	
	
l3049:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           14    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	48^0	; case 48
	skipnz
	goto	l488
	goto	l3051
	opt asmopt_on

	line	593
	
l490:	
	line	594
;doprnt.c: 594: break;
	goto	l3051
	line	595
	
l489:	
;doprnt.c: 595: }
	goto	l3049
	
l491:	
	line	606
	
l3051:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	fcall	_isdigit
	btfss	status,0
	goto	u3211
	goto	u3210
u3211:
	goto	l3065
u3210:
	line	607
	
l3053:	
;doprnt.c: 607: width = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	goto	l3055
	line	608
;doprnt.c: 608: do {
	
l493:	
	line	609
	
l3055:	
;doprnt.c: 609: width *= 10;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___wmul@multiplier)
	movlw	high(0Ah)
	movwf	((___wmul@multiplier))+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width+1)^080h
	addwf	(sprintf@width+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	addwf	(sprintf@width)^080h

	line	610
	
l3057:	
;doprnt.c: 610: width += *f++ - '0';
	movf	(sprintf@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	addlw	low(-48)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+0)^080h+0
	movlw	high(-48)
	skipnc
	movlw	(high(-48)+1)&0ffh
	movwf	((??_sprintf+0)^080h+0)+1
	movf	0+(??_sprintf+0)^080h+0,w
	addwf	(sprintf@width)^080h,f
	skipnc
	incf	(sprintf@width+1)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	addwf	(sprintf@width+1)^080h,f
	
l3059:	
	movlw	01h
	addwf	(sprintf@f)^080h,f
	skipnc
	incf	(sprintf@f+1)^080h,f
	line	611
	
l3061:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	fcall	_isdigit
	btfsc	status,0
	goto	u3221
	goto	u3220
u3221:
	goto	l3055
u3220:
	goto	l3065
	
l494:	
	goto	l3065
	line	617
	
l492:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l3065
	line	646
;doprnt.c: 646: case 0:
	
l496:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l3141
	line	706
;doprnt.c: 706: case 'd':
	
l498:	
	goto	l3067
	line	707
	
l499:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l3067
	line	811
;doprnt.c: 811: default:
	
l501:	
	line	822
;doprnt.c: 822: continue;
	goto	l3139
	line	831
	
l3063:	
;doprnt.c: 831: }
	goto	l3067
	line	644
	
l495:	
	
l3065:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@f+1)^080h,w
	movwf	(??_sprintf+0)^080h+0+1
	movf	(sprintf@f)^080h,w
	movwf	(??_sprintf+0)^080h+0
	incf	(sprintf@f)^080h,f
	skipnz
	incf	(sprintf@f+1)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3141
	xorlw	100^0	; case 100
	skipnz
	goto	l3067
	xorlw	105^100	; case 105
	skipnz
	goto	l3067
	goto	l3139
	opt asmopt_on

	line	831
	
l500:	
	line	1268
	
l3067:	
;doprnt.c: 1262: {
;doprnt.c: 1268: _val._val = (int)(*(int *)__va_arg((*(int **)ap), (int)0));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)^080h
	
l3069:	
	movlw	(02h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@ap)^080h,f
	line	1270
	
l3071:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1)^080h,7
	goto	u3231
	goto	u3230
u3231:
	goto	l3077
u3230:
	line	1271
	
l3073:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	iorwf	(sprintf@flag)^080h,f
	line	1272
	
l3075:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val)^080h,f
	comf	(sprintf@_val+1)^080h,f
	incf	(sprintf@_val)^080h,f
	skipnz
	incf	(sprintf@_val+1)^080h,f
	goto	l3077
	line	1273
	
l502:	
	line	1314
	
l3077:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	movf	(sprintf@c)^080h,w
	xorlw	05h
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l3081
u3240:
	goto	l3089
	
l3079:	
	goto	l3089
	line	1315
	
l503:	
	
l3081:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low((_dpowers)|8000h)
	movwf	fsr0
	movlw	high((_dpowers)|8000h)
	skipnc
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+1)^080h+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+1)^080h+0+1
	movf	1+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3255
	movf	0+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@_val)^080h,w
u3255:
	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l3085
u3250:
	goto	l3089
	line	1316
	
l3083:	
;doprnt.c: 1316: break;
	goto	l3089
	
l505:	
	line	1314
	
l3085:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@c)^080h,f
	
l3087:	
	movf	(sprintf@c)^080h,w
	xorlw	05h
	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l3081
u3260:
	goto	l3089
	
l504:	
	line	1354
	
l3089:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3271
	goto	u3270
u3271:
	goto	l506
u3270:
	
l3091:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3281
	goto	u3280
u3281:
	goto	l506
u3280:
	line	1355
	
l3093:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width)^080h,f
	skipnc
	incf	(sprintf@width+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^080h,f
	
l506:	
	line	1390
;doprnt.c: 1390: if(width > c)
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	btfsc	(??_sprintf+0)^080h+0,7
	decf	(??_sprintf+0)^080h+0+1,f
	movf	1+(??_sprintf+0)^080h+0,w
	xorlw	80h
	movwf	(??_sprintf+2)^080h+0
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	subwf	(??_sprintf+2)^080h+0,w
	skipz
	goto	u3295
	movf	(sprintf@width)^080h,w
	subwf	0+(??_sprintf+0)^080h+0,w
u3295:

	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l3097
u3290:
	line	1391
	
l3095:	
;doprnt.c: 1391: width -= c;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	clrf	(??_sprintf+0)^080h+0+1
	btfsc	(??_sprintf+0)^080h+0,7
	decf	(??_sprintf+0)^080h+0+1,f
	movf	0+(??_sprintf+0)^080h+0,w
	subwf	(sprintf@width)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l3099
	line	1392
	
l507:	
	line	1393
	
l3097:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	goto	l3099
	
l508:	
	line	1396
	
l3099:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag)^080h,(2)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3115
u3300:
	line	1401
	
l3101:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3311
	goto	u3310
u3311:
	goto	l3107
u3310:
	line	1402
	
l3103:	
;doprnt.c: 1402: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3105:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l3107
	
l510:	
	line	1424
	
l3107:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3321
	goto	u3320
u3321:
	goto	l3129
u3320:
	goto	l3109
	line	1425
;doprnt.c: 1425: do
	
l512:	
	line	1426
	
l3109:	
;doprnt.c: 1426: ((*sp++ = ('0')));
	movlw	(030h)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3111:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1427
	
l3113:	
;doprnt.c: 1427: while(--width);
	movlw	low(-1)
	addwf	(sprintf@width)^080h,f
	skipnc
	incf	(sprintf@width+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^080h,f
	movf	(((sprintf@width+1)^080h)),w
	iorwf	(((sprintf@width)^080h)),w
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l3109
u3330:
	goto	l3129
	
l513:	
	goto	l3129
	
l511:	
	line	1429
;doprnt.c: 1429: } else
	goto	l3129
	
l509:	
	line	1437
	
l3115:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3341
	goto	u3340
u3341:
	goto	l3123
u3340:
	goto	l3117
	line	1438
;doprnt.c: 1438: do
	
l516:	
	line	1439
	
l3117:	
;doprnt.c: 1439: ((*sp++ = (' ')));
	movlw	(020h)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3119:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1440
	
l3121:	
;doprnt.c: 1440: while(--width);
	movlw	low(-1)
	addwf	(sprintf@width)^080h,f
	skipnc
	incf	(sprintf@width+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^080h,f
	movf	(((sprintf@width+1)^080h)),w
	iorwf	(((sprintf@width)^080h)),w
	skipz
	goto	u3351
	goto	u3350
u3351:
	goto	l3117
u3350:
	goto	l3123
	
l517:	
	goto	l3123
	
l515:	
	line	1447
	
l3123:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3129
u3360:
	line	1448
	
l3125:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3127:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l3129
	
l518:	
	goto	l3129
	line	1478
	
l514:	
	line	1481
	
l3129:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@prec)^080h
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l3137
	
l520:	
	line	1498
	
l3131:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)^080h
	movlw	high(0Ah)
	movwf	((___lwmod@divisor)^080h)+1
	movf	(sprintf@prec)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low((_dpowers)|8000h)
	movwf	fsr0
	movlw	high((_dpowers)|8000h)
	skipnc
	addlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	movwf	(___lwdiv@divisor)
	fcall	stringtab
	movwf	(___lwdiv@divisor+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___lwmod@dividend+1)^080h
	addwf	(___lwmod@dividend+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___lwmod@dividend)^080h
	addwf	(___lwmod@dividend)^080h

	fcall	___lwmod
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(0+(?___lwmod))^080h,w
	addlw	030h
	movwf	(??_sprintf+1)^080h+0
	movf	(??_sprintf+1)^080h+0,w
	movwf	(sprintf@c)^080h
	line	1533
	
l3133:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3135:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l3137
	line	1534
	
l519:	
	line	1483
	
l3137:	
	movlw	(-1)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@prec)^080h,f
	movf	((sprintf@prec)^080h),w
	xorlw	-1
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l3131
u3370:
	goto	l3139
	
l521:	
	goto	l3139
	line	1542
	
l483:	
	line	545
	
l3139:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@f+1)^080h,w
	movwf	(??_sprintf+0)^080h+0+1
	movf	(sprintf@f)^080h,w
	movwf	(??_sprintf+0)^080h+0
	incf	(sprintf@f)^080h,f
	skipnz
	incf	(sprintf@f+1)^080h,f
	movf	1+(??_sprintf+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(??_sprintf+0)^080h+0,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_sprintf+2)^080h+0
	movf	(??_sprintf+2)^080h+0,w
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l3039
u3380:
	goto	l3141
	
l522:	
	goto	l3141
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l497:	
	line	1547
	
l3141:	
;doprnt.c: 1547: *sp = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	goto	l523
	line	1549
	
l3143:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l523:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
global __ptext2
__ptext2:	;psect for function _isdigit
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
;incstack = 0
	opt	stack 2
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(isdigit@c)
	line	14
	
l2885:	
	clrf	(_isdigit$1450)
	
l2887:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u2901
	goto	u2900
u2901:
	goto	l2893
u2900:
	
l2889:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l2893
u2910:
	
l2891:	
	clrf	(_isdigit$1450)
	incf	(_isdigit$1450),f
	goto	l2893
	
l863:	
	
l2893:	
	rrf	(_isdigit$1450),w
	
	goto	l864
	
l2895:	
	line	15
	
l864:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   23[BANK0 ] unsigned int 
;;  multiplicand    2   25[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   27[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   23[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext3
__ptext3:	;psect for function ___wmul
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2897:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2899
	line	44
	
l606:	
	line	45
	
l2899:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l607
u2920:
	line	46
	
l2901:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l607:	
	line	47
	movlw	01h
	
u2935:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2935
	line	48
	
l2903:	
	movlw	01h
	
u2945:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2945
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l2899
u2950:
	goto	l2905
	
l608:	
	line	52
	
l2905:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l609
	
l2907:	
	line	53
	
l609:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK1 ] unsigned int 
;;  dividend        2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       4       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwmod
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2975:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___lwmod@divisor+1)^080h,w
	iorwf	(___lwmod@divisor)^080h,w
	skipnz
	goto	u3131
	goto	u3130
u3131:
	goto	l2993
u3130:
	line	14
	
l2977:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l2983
	
l953:	
	line	16
	
l2979:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	
u3145:
	clrc
	rlf	(___lwmod@divisor)^080h,f
	rlf	(___lwmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u3145
	line	17
	
l2981:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2983
	line	18
	
l952:	
	line	15
	
l2983:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(___lwmod@divisor+1)^080h,(15)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l2979
u3150:
	goto	l2985
	
l954:	
	goto	l2985
	line	19
	
l955:	
	line	20
	
l2985:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___lwmod@divisor+1)^080h,w
	subwf	(___lwmod@dividend+1)^080h,w
	skipz
	goto	u3165
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,w
u3165:
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l2989
u3160:
	line	21
	
l2987:	
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,f
	movf	(___lwmod@divisor+1)^080h,w
	skipc
	decf	(___lwmod@dividend+1)^080h,f
	subwf	(___lwmod@dividend+1)^080h,f
	goto	l2989
	
l956:	
	line	22
	
l2989:	
	movlw	01h
	
u3175:
	clrc
	rrf	(___lwmod@divisor+1)^080h,f
	rrf	(___lwmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u3175
	line	23
	
l2991:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3181
	goto	u3180
u3181:
	goto	l2985
u3180:
	goto	l2993
	
l957:	
	goto	l2993
	line	24
	
l951:	
	line	25
	
l2993:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___lwmod@dividend+1)^080h,w
	clrf	(?___lwmod+1)^080h
	addwf	(?___lwmod+1)^080h
	movf	(___lwmod@dividend)^080h,w
	clrf	(?___lwmod)^080h
	addwf	(?___lwmod)^080h

	goto	l958
	
l2995:	
	line	26
	
l958:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   23[BANK0 ] unsigned int 
;;  dividend        2   25[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   29[BANK0 ] unsigned int 
;;  counter         1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   23[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwdiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2949:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l2951:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3061
	goto	u3060
u3061:
	goto	l2971
u3060:
	line	16
	
l2953:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l2959
	
l943:	
	line	18
	
l2955:	
	movlw	01h
	
u3075:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3075
	line	19
	
l2957:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2959
	line	20
	
l942:	
	line	17
	
l2959:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l2955
u3080:
	goto	l2961
	
l944:	
	goto	l2961
	line	21
	
l945:	
	line	22
	
l2961:	
	movlw	01h
	
u3095:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3095
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3105
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3105:
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l2967
u3100:
	line	24
	
l2963:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l2965:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2967
	line	26
	
l946:	
	line	27
	
l2967:	
	movlw	01h
	
u3115:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3115
	line	28
	
l2969:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3121
	goto	u3120
u3121:
	goto	l2961
u3120:
	goto	l2971
	
l947:	
	goto	l2971
	line	29
	
l941:	
	line	30
	
l2971:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l948
	
l2973:	
	line	31
	
l948:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_USART_WriteString

;; *************** function _USART_WriteString *****************
;; Defined at:
;;		line 52 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  str             2   24[BANK0 ] PTR const unsigned char 
;;		 -> STR_19(40), STR_16(3), display_rpm(10), STR_12(20), 
;;		 -> STR_11(29), STR_10(15), STR_9(15), STR_8(14), 
;;		 -> STR_7(14), STR_6(14), STR_5(14), STR_4(14), 
;;		 -> STR_3(13), STR_2(13), STR_1(14), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_USART_WriteChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
	line	52
global __ptext6
__ptext6:	;psect for function _USART_WriteString
psect	text6
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
	line	52
	global	__size_of_USART_WriteString
	__size_of_USART_WriteString	equ	__end_of_USART_WriteString-_USART_WriteString
	
_USART_WriteString:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
l2463:	
;usart.c: 54: while(*str != '\0')
	goto	l2469
	
l243:	
	line	56
	
l2465:	
;usart.c: 55: {
;usart.c: 56: USART_WriteChar(*str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(USART_WriteString@str+1),w
	movwf	btemp+1
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_USART_WriteChar
	line	57
	
l2467:	
;usart.c: 57: str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(USART_WriteString@str),f
	skipnc
	incf	(USART_WriteString@str+1),f
	goto	l2469
	line	58
	
l242:	
	line	54
	
l2469:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(USART_WriteString@str+1),w
	movwf	btemp+1
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2465
u2480:
	goto	l245
	
l244:	
	line	59
	
l245:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteString
	__end_of_USART_WriteString:
	signat	_USART_WriteString,4216
	global	_USART_WriteChar

;; *************** function _USART_WriteChar *****************
;; Defined at:
;;		line 44 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_WriteString
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	44
global __ptext7
__ptext7:	;psect for function _USART_WriteChar
psect	text7
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
	line	44
	global	__size_of_USART_WriteChar
	__size_of_USART_WriteChar	equ	__end_of_USART_WriteChar-_USART_WriteChar
	
_USART_WriteChar:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_WriteChar: [wreg]
;USART_WriteChar@byte stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(USART_WriteChar@byte)
	line	46
	
l2149:	
;usart.c: 46: while(!PIR1bits.TXIF);
	goto	l236
	
l237:	
	
l236:	
	btfss	(12),4	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l236
u1860:
	goto	l2151
	
l238:	
	line	47
	
l2151:	
;usart.c: 47: TXREG = byte;
	movf	(USART_WriteChar@byte),w
	movwf	(25)	;volatile
	line	48
	
l239:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteChar
	__end_of_USART_WriteChar:
	signat	_USART_WriteChar,4216
	global	_USART_Init

;; *************** function _USART_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  BaudRate        4    6[BANK1 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	6
global __ptext8
__ptext8:	;psect for function _USART_Init
psect	text8
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
	line	6
	global	__size_of_USART_Init
	__size_of_USART_Init	equ	__end_of_USART_Init-_USART_Init
	
_USART_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l2997:	
;usart.c: 13: SPBRG = (unsigned char)(18432000 / (16 * BaudRate)) - 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(USART_Init@BaudRate)^080h,w
	movwf	(??_USART_Init+0)^080h+0
	movf	(USART_Init@BaudRate+1)^080h,w
	movwf	((??_USART_Init+0)^080h+0+1)
	movf	(USART_Init@BaudRate+2)^080h,w
	movwf	((??_USART_Init+0)^080h+0+2)
	movf	(USART_Init@BaudRate+3)^080h,w
	movwf	((??_USART_Init+0)^080h+0+3)
	movlw	04h
u3195:
	clrc
	rlf	(??_USART_Init+0)^080h+0,f
	rlf	(??_USART_Init+0)^080h+1,f
	rlf	(??_USART_Init+0)^080h+2,f
	rlf	(??_USART_Init+0)^080h+3,f
u3190:
	addlw	-1
	skipz
	goto	u3195
	movf	3+(??_USART_Init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	2+(??_USART_Init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@divisor+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_USART_Init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@divisor+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(??_USART_Init+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___aldiv@divisor)

	movlw	01h
	movwf	(___aldiv@dividend+3)
	movlw	019h
	movwf	(___aldiv@dividend+2)
	movlw	040h
	movwf	(___aldiv@dividend+1)
	movlw	0
	movwf	(___aldiv@dividend)

	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___aldiv)))),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l2999:	
;usart.c: 16: TXSTAbits.CSRC = 0;
	bcf	(152)^080h,7	;volatile
	line	17
	
l3001:	
;usart.c: 17: TXSTAbits.TX9 = 0;
	bcf	(152)^080h,6	;volatile
	line	18
	
l3003:	
;usart.c: 18: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	19
	
l3005:	
;usart.c: 19: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	21
	
l3007:	
;usart.c: 21: TXSTAbits.BRGH = 1;
	bsf	(152)^080h,2	;volatile
	line	22
	
l3009:	
;usart.c: 22: TXSTAbits.TRMT = 1;
	bsf	(152)^080h,1	;volatile
	line	23
	
l3011:	
;usart.c: 23: TXSTAbits.TX9D = 0;
	bcf	(152)^080h,0	;volatile
	line	26
	
l3013:	
;usart.c: 26: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	27
	
l3015:	
;usart.c: 27: RCSTAbits.RX9 = 0;
	bcf	(24),6	;volatile
	line	28
	
l3017:	
;usart.c: 28: RCSTAbits.SREN = 0;
	bcf	(24),5	;volatile
	line	29
	
l3019:	
;usart.c: 29: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	30
	
l3021:	
;usart.c: 30: RCSTAbits.ADDEN = 0;
	bcf	(24),3	;volatile
	line	31
	
l3023:	
;usart.c: 31: RCSTAbits.FERR = 0;
	bcf	(24),2	;volatile
	line	32
	
l3025:	
;usart.c: 32: RCSTAbits.OERR = 0;
	bcf	(24),1	;volatile
	line	33
	
l3027:	
;usart.c: 33: RCSTAbits.RX9D = 0;
	bcf	(24),0	;volatile
	line	36
	
l3029:	
;usart.c: 36: PIE1bits.TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,4	;volatile
	line	37
	
l3031:	
;usart.c: 37: PIR1bits.TXIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),4	;volatile
	line	38
	
l3033:	
;usart.c: 38: PIE1bits.RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,5	;volatile
	line	39
	
l3035:	
;usart.c: 39: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	line	40
	
l233:	
	return
	opt stack 0
GLOBAL	__end_of_USART_Init
	__end_of_USART_Init:
	signat	_USART_Init,4216
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   23[BANK0 ] long 
;;  dividend        4   27[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK1 ] long 
;;  sign            1    1[BANK1 ] unsigned char 
;;  counter         1    0[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   23[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       6       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
global __ptext9
__ptext9:	;psect for function ___aldiv
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	stack 2
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	14
	
l2909:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___aldiv@sign)^080h
	line	15
	
l2911:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___aldiv@divisor+3),7
	goto	u2961
	goto	u2960
u2961:
	goto	l662
u2960:
	line	16
	
l2913:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	17
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___aldiv@sign)^080h
	incf	(___aldiv@sign)^080h,f
	line	18
	
l662:	
	line	19
	bcf	status, 5	;RP0=0, select bank0
	btfss	(___aldiv@dividend+3),7
	goto	u2971
	goto	u2970
u2971:
	goto	l2919
u2970:
	line	20
	
l2915:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	21
	
l2917:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(___aldiv@sign)^080h,f
	goto	l2919
	line	22
	
l663:	
	line	23
	
l2919:	
	movlw	0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___aldiv@quotient+3)^080h
	movlw	0
	movwf	(___aldiv@quotient+2)^080h
	movlw	0
	movwf	(___aldiv@quotient+1)^080h
	movlw	0
	movwf	(___aldiv@quotient)^080h

	line	24
	
l2921:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2981
	goto	u2980
u2981:
	goto	l2941
u2980:
	line	25
	
l2923:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___aldiv@counter)^080h
	incf	(___aldiv@counter)^080h,f
	line	26
	goto	l2927
	
l666:	
	line	27
	
l2925:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___aldiv+0)+0
u2995:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2995
	line	28
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(___aldiv@counter)^080h,f
	goto	l2927
	line	29
	
l665:	
	line	26
	
l2927:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l2925
u3000:
	goto	l2929
	
l667:	
	goto	l2929
	line	30
	
l668:	
	line	31
	
l2929:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??___aldiv+0)+0
u3015:
	clrc
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	rlf	(___aldiv@quotient)^080h,f
	rlf	(___aldiv@quotient+1)^080h,f
	rlf	(___aldiv@quotient+2)^080h,f
	rlf	(___aldiv@quotient+3)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decfsz	(??___aldiv+0)+0
	goto	u3015
	line	32
	
l2931:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u3025
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u3025
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u3025
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u3025:
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l2937
u3020:
	line	33
	
l2933:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	34
	
l2935:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(___aldiv@quotient)^080h+(0/8),(0)&7
	goto	l2937
	line	35
	
l669:	
	line	36
	
l2937:	
	movlw	01h
u3035:
	clrc
	bcf	status, 5	;RP0=0, select bank0
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u3035

	line	37
	
l2939:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(___aldiv@counter)^080h,f
	btfss	status,2
	goto	u3041
	goto	u3040
u3041:
	goto	l2929
u3040:
	goto	l2941
	
l670:	
	goto	l2941
	line	38
	
l664:	
	line	39
	
l2941:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___aldiv@sign)^080h,w
	skipz
	goto	u3050
	goto	l2945
u3050:
	line	40
	
l2943:	
	comf	(___aldiv@quotient)^080h,f
	comf	(___aldiv@quotient+1)^080h,f
	comf	(___aldiv@quotient+2)^080h,f
	comf	(___aldiv@quotient+3)^080h,f
	incf	(___aldiv@quotient)^080h,f
	skipnz
	incf	(___aldiv@quotient+1)^080h,f
	skipnz
	incf	(___aldiv@quotient+2)^080h,f
	skipnz
	incf	(___aldiv@quotient+3)^080h,f
	goto	l2945
	
l671:	
	line	41
	
l2945:	
	movf	(___aldiv@quotient+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___aldiv@quotient+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___aldiv@quotient+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___aldiv@quotient)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___aldiv)

	goto	l672
	
l2947:	
	line	42
	
l672:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_TIMER0_Set

;; *************** function _TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\timers.c"
;; Parameters:    Size  Location     Type
;;  contagens       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  contagens       1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\timers.c"
	line	20
global __ptext10
__ptext10:	;psect for function _TIMER0_Set
psect	text10
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\timers.c"
	line	20
	global	__size_of_TIMER0_Set
	__size_of_TIMER0_Set	equ	__end_of_TIMER0_Set-_TIMER0_Set
	
_TIMER0_Set:	
;incstack = 0
	opt	stack 3
; Regs used in _TIMER0_Set: [wreg]
;TIMER0_Set@contagens stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(TIMER0_Set@contagens)
	line	22
	
l2471:	
;timers.c: 22: TMR0 = contagens;
	movf	(TIMER0_Set@contagens),w
	movwf	(1)	;volatile
	line	23
	
l293:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Set
	__end_of_TIMER0_Set:
	signat	_TIMER0_Set,4216
	global	_TIMER0_Init

;; *************** function _TIMER0_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\timers.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	6
global __ptext11
__ptext11:	;psect for function _TIMER0_Init
psect	text11
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\timers.c"
	line	6
	global	__size_of_TIMER0_Init
	__size_of_TIMER0_Init	equ	__end_of_TIMER0_Init-_TIMER0_Init
	
_TIMER0_Init:	
;incstack = 0
	opt	stack 3
; Regs used in _TIMER0_Init: []
	line	8
	
l2513:	
;timers.c: 8: OPTION_REGbits.T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	9
;timers.c: 9: OPTION_REGbits.T0SE = 0;
	bcf	(129)^080h,4	;volatile
	line	10
;timers.c: 10: OPTION_REGbits.PSA = 0;
	bcf	(129)^080h,3	;volatile
	line	11
;timers.c: 11: OPTION_REGbits.PS2 = 1;
	bsf	(129)^080h,2	;volatile
	line	12
;timers.c: 12: OPTION_REGbits.PS1 = 1;
	bsf	(129)^080h,1	;volatile
	line	13
;timers.c: 13: OPTION_REGbits.PS0 = 1;
	bsf	(129)^080h,0	;volatile
	line	14
;timers.c: 14: INTCONbits.TMR0IF = 0;
	bcf	(11),2	;volatile
	line	15
;timers.c: 15: INTCONbits.TMR0IE = 1;
	bsf	(11),5	;volatile
	line	16
	
l290:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Init
	__end_of_TIMER0_Init:
	signat	_TIMER0_Init,88
	global	_PWM_Init

;; *************** function _PWM_Init *****************
;; Defined at:
;;		line 5 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
	line	5
global __ptext12
__ptext12:	;psect for function _PWM_Init
psect	text12
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
	line	5
	global	__size_of_PWM_Init
	__size_of_PWM_Init	equ	__end_of_PWM_Init-_PWM_Init
	
_PWM_Init:	
;incstack = 0
	opt	stack 3
; Regs used in _PWM_Init: [wreg]
	line	14
	
l2517:	
;pwm.c: 14: T2CONbits.T2CKPS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(18),1	;volatile
	line	15
;pwm.c: 15: T2CONbits.T2CKPS0 = 0;
	bcf	(18),0	;volatile
	line	18
;pwm.c: 18: T2CONbits.TOUTPS3 = 0;
	bcf	(18),6	;volatile
	line	19
;pwm.c: 19: T2CONbits.TOUTPS2 = 0;
	bcf	(18),5	;volatile
	line	20
;pwm.c: 20: T2CONbits.TOUTPS1 = 0;
	bcf	(18),4	;volatile
	line	21
;pwm.c: 21: T2CONbits.TOUTPS0 = 0;
	bcf	(18),3	;volatile
	line	24
;pwm.c: 24: T2CONbits.TMR2ON = 1;
	bsf	(18),2	;volatile
	line	27
	
l2519:	
;pwm.c: 27: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	43
	
l2521:	
;pwm.c: 43: CCP1CONbits.CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(23),3	;volatile
	line	44
	
l2523:	
;pwm.c: 44: CCP1CONbits.CCP1M2 = 1;
	bsf	(23),2	;volatile
	line	45
	
l2525:	
;pwm.c: 45: CCP1CONbits.CCP1M1 = 1;
	bsf	(23),1	;volatile
	line	46
	
l2527:	
;pwm.c: 46: CCP1CONbits.CCP1M0 = 1;
	bsf	(23),0	;volatile
	line	49
	
l2529:	
;pwm.c: 49: PIE1bits.CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,2	;volatile
	line	50
	
l2531:	
;pwm.c: 50: PIR1bits.CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),2	;volatile
	line	53
	
l2533:	
;pwm.c: 53: CCP2CONbits.CCP2M3 = 1;
	bsf	(29),3	;volatile
	line	54
	
l2535:	
;pwm.c: 54: CCP2CONbits.CCP2M2 = 1;
	bsf	(29),2	;volatile
	line	55
	
l2537:	
;pwm.c: 55: CCP2CONbits.CCP2M1 = 1;
	bsf	(29),1	;volatile
	line	56
	
l2539:	
;pwm.c: 56: CCP2CONbits.CCP2M0 = 1;
	bsf	(29),0	;volatile
	line	59
	
l2541:	
;pwm.c: 59: PIE2bits.CCP2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(141)^080h,0	;volatile
	line	60
	
l2543:	
;pwm.c: 60: PIR2bits.CCP2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(13),0	;volatile
	line	61
	
l441:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Init
	__end_of_PWM_Init:
	signat	_PWM_Init,88
	global	_PWM_DutyCycle2

;; *************** function _PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2   23[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	96
global __ptext13
__ptext13:	;psect for function _PWM_DutyCycle2
psect	text13
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
	line	96
	global	__size_of_PWM_DutyCycle2
	__size_of_PWM_DutyCycle2	equ	__end_of_PWM_DutyCycle2-_PWM_DutyCycle2
	
_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 3
; Regs used in _PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
l2439:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM_DutyCycle2@valor+1),w
	movwf	(??_PWM_DutyCycle2+0)+0+1
	movf	(PWM_DutyCycle2@valor),w
	movwf	(??_PWM_DutyCycle2+0)+0
	rlf	(??_PWM_DutyCycle2+0)+1,w
	rrf	(??_PWM_DutyCycle2+0)+1,f
	rrf	(??_PWM_DutyCycle2+0)+0,f
	rlf	(??_PWM_DutyCycle2+0)+1,w
	rrf	(??_PWM_DutyCycle2+0)+1,f
	rrf	(??_PWM_DutyCycle2+0)+0,f
	movf	0+(??_PWM_DutyCycle2+0)+0,w
	movwf	(27)	;volatile
	line	99
	
l2441:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	movf	(PWM_DutyCycle2@valor),w
	movwf	(??_PWM_DutyCycle2+0)+0
	movlw	(04h)-1
u2465:
	clrc
	rlf	(??_PWM_DutyCycle2+0)+0,f
	addlw	-1
	skipz
	goto	u2465
	clrc
	rlf	(??_PWM_DutyCycle2+0)+0,w
	iorlw	0Ch
	movwf	(29)	;volatile
	line	100
	
l447:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle2
	__end_of_PWM_DutyCycle2:
	signat	_PWM_DutyCycle2,4216
	global	_PWM_DutyCycle1

;; *************** function _PWM_DutyCycle1 *****************
;; Defined at:
;;		line 64 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2   23[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	64
global __ptext14
__ptext14:	;psect for function _PWM_DutyCycle1
psect	text14
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
	line	64
	global	__size_of_PWM_DutyCycle1
	__size_of_PWM_DutyCycle1	equ	__end_of_PWM_DutyCycle1-_PWM_DutyCycle1
	
_PWM_DutyCycle1:	
;incstack = 0
	opt	stack 3
; Regs used in _PWM_DutyCycle1: [wreg+status,2+status,0]
	line	91
	
l2591:	
;pwm.c: 91: CCPR1L = valor >> 2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM_DutyCycle1@valor+1),w
	movwf	(??_PWM_DutyCycle1+0)+0+1
	movf	(PWM_DutyCycle1@valor),w
	movwf	(??_PWM_DutyCycle1+0)+0
	rlf	(??_PWM_DutyCycle1+0)+1,w
	rrf	(??_PWM_DutyCycle1+0)+1,f
	rrf	(??_PWM_DutyCycle1+0)+0,f
	rlf	(??_PWM_DutyCycle1+0)+1,w
	rrf	(??_PWM_DutyCycle1+0)+1,f
	rrf	(??_PWM_DutyCycle1+0)+0,f
	movf	0+(??_PWM_DutyCycle1+0)+0,w
	movwf	(21)	;volatile
	line	92
	
l2593:	
;pwm.c: 92: CCP1CON = (valor << 4)|0X0C;
	movf	(PWM_DutyCycle1@valor),w
	movwf	(??_PWM_DutyCycle1+0)+0
	movlw	(04h)-1
u2525:
	clrc
	rlf	(??_PWM_DutyCycle1+0)+0,f
	addlw	-1
	skipz
	goto	u2525
	clrc
	rlf	(??_PWM_DutyCycle1+0)+0,w
	iorlw	0Ch
	movwf	(23)	;volatile
	line	94
	
l444:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle1
	__end_of_PWM_DutyCycle1:
	signat	_PWM_DutyCycle1,4216
	global	_LCD_WriteString

;; *************** function _LCD_WriteString *****************
;; Defined at:
;;		line 61 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Str             2   25[BANK0 ] PTR const unsigned char 
;;		 -> STR_18(6), STR_17(6), display_pwm(10), display_rpm(10), 
;;		 -> STR_13(17), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
	line	61
global __ptext15
__ptext15:	;psect for function _LCD_WriteString
psect	text15
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
	line	61
	global	__size_of_LCD_WriteString
	__size_of_LCD_WriteString	equ	__end_of_LCD_WriteString-_LCD_WriteString
	
_LCD_WriteString:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l2583:	
;lcd.c: 63: while(*Str != '\0')
	goto	l2589
	
l322:	
	line	65
	
l2585:	
;lcd.c: 64: {
;lcd.c: 65: LCD_WriteData(*Str);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_WriteString@Str+1),w
	movwf	btemp+1
	movf	(LCD_WriteString@Str),w
	movwf	fsr0
	fcall	stringtab
	fcall	_LCD_WriteData
	line	66
	
l2587:	
;lcd.c: 66: Str++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LCD_WriteString@Str),f
	skipnc
	incf	(LCD_WriteString@Str+1),f
	goto	l2589
	line	67
	
l321:	
	line	63
	
l2589:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCD_WriteString@Str+1),w
	movwf	btemp+1
	movf	(LCD_WriteString@Str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l2585
u2510:
	goto	l324
	
l323:	
	line	68
	
l324:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteString
	__end_of_LCD_WriteString:
	signat	_LCD_WriteString,4216
	global	_LCD_WriteData

;; *************** function _LCD_WriteData *****************
;; Defined at:
;;		line 47 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_WriteString
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	47
global __ptext16
__ptext16:	;psect for function _LCD_WriteData
psect	text16
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
	line	47
	global	__size_of_LCD_WriteData
	__size_of_LCD_WriteData	equ	__end_of_LCD_WriteData-_LCD_WriteData
	
_LCD_WriteData:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_WriteData: [wreg]
;LCD_WriteData@Byte stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteData@Byte)
	line	49
	
l2161:	
;lcd.c: 49: PORTEbits.RE0 = 1;
	bsf	(9),0	;volatile
	line	51
	
l2163:	
;lcd.c: 51: PORTD = Byte;
	movf	(LCD_WriteData@Byte),w
	movwf	(8)	;volatile
	line	53
	
l2165:	
;lcd.c: 53: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	55
;lcd.c: 55: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_WriteData+0)+0,f
u3417:
decfsz	(??_LCD_WriteData+0)+0,f
	goto	u3417
opt asmopt_on

	line	57
	
l2167:	
;lcd.c: 57: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	58
	
l318:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteData
	__end_of_LCD_WriteData:
	signat	_LCD_WriteData,4216
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 87 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	87
global __ptext17
__ptext17:	;psect for function _LCD_Init
psect	text17
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
	line	87
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2545:	
;lcd.c: 90: ADCON1bits.PCFG3 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(159)^080h,3	;volatile
	line	91
;lcd.c: 91: ADCON1bits.PCFG2 = 1;
	bsf	(159)^080h,2	;volatile
	line	92
;lcd.c: 92: ADCON1bits.PCFG1 = 0;
	bcf	(159)^080h,1	;volatile
	line	93
;lcd.c: 93: ADCON1bits.PCFG0 = 0;
	bcf	(159)^080h,0	;volatile
	line	95
	
l2547:	
;lcd.c: 95: _delay((unsigned long)((15)*(18432000/4000.0)));
	opt asmopt_off
movlw	90
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0+1),f
	movlw	195
movwf	((??_LCD_Init+0)+0),f
u3427:
	decfsz	((??_LCD_Init+0)+0),f
	goto	u3427
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u3427
opt asmopt_on

	line	97
	
l2549:	
;lcd.c: 97: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	98
	
l2551:	
;lcd.c: 98: _delay((unsigned long)((4)*(18432000/4000.0)));
	opt asmopt_off
movlw	24
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0+1),f
	movlw	239
movwf	((??_LCD_Init+0)+0),f
u3437:
	decfsz	((??_LCD_Init+0)+0),f
	goto	u3437
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u3437
opt asmopt_on

	line	100
;lcd.c: 100: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	101
	
l2553:	
;lcd.c: 101: _delay((unsigned long)((100)*(18432000/4000000.0)));
	opt asmopt_off
movlw	153
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_Init+0)+0,f
u3447:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3447
opt asmopt_on

	line	103
	
l2555:	
;lcd.c: 103: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	104
;lcd.c: 104: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_Init+0)+0,f
u3457:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3457
opt asmopt_on

	line	106
	
l2557:	
;lcd.c: 106: LCD_WriteCmd(0x38);
	movlw	(038h)
	fcall	_LCD_WriteCmd
	line	107
	
l2559:	
;lcd.c: 107: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_Init+0)+0,f
u3467:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3467
opt asmopt_on

	line	109
;lcd.c: 109: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	110
	
l2561:	
;lcd.c: 110: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Init+0)+0+1),f
	movlw	247
movwf	((??_LCD_Init+0)+0),f
u3477:
	decfsz	((??_LCD_Init+0)+0),f
	goto	u3477
	decfsz	((??_LCD_Init+0)+0+1),f
	goto	u3477
opt asmopt_on

	line	112
	
l2563:	
;lcd.c: 112: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	113
;lcd.c: 113: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_Init+0)+0,f
u3487:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3487
opt asmopt_on

	line	115
	
l2565:	
;lcd.c: 115: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	116
	
l2567:	
;lcd.c: 116: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_Init+0)+0,f
u3497:
decfsz	(??_LCD_Init+0)+0,f
	goto	u3497
opt asmopt_on

	line	117
	
l330:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,88
	global	_LCD_Cursor

;; *************** function _LCD_Cursor *****************
;; Defined at:
;;		line 10 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Row             1    wreg     unsigned char 
;;  Col             1   23[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	10
global __ptext18
__ptext18:	;psect for function _LCD_Cursor
psect	text18
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
	line	10
	global	__size_of_LCD_Cursor
	__size_of_LCD_Cursor	equ	__end_of_LCD_Cursor-_LCD_Cursor
	
_LCD_Cursor:	
;incstack = 0
	opt	stack 3
; Regs used in _LCD_Cursor: [wreg+status,2+status,0]
;LCD_Cursor@Row stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_Cursor@Row)
	line	12
	
l2569:	
;lcd.c: 12: PORTEbits.RE0 = 0;
	bcf	(9),0	;volatile
	line	14
	
l2571:	
;lcd.c: 14: if (Row == 0)
	movf	(LCD_Cursor@Row),f
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l2575
u2500:
	line	16
	
l2573:	
;lcd.c: 15: {
;lcd.c: 16: PORTD = 0x80 + Col;
	movf	(LCD_Cursor@Col),w
	addlw	080h
	movwf	(8)	;volatile
	line	17
;lcd.c: 17: }
	goto	l2577
	line	18
	
l310:	
	line	20
	
l2575:	
;lcd.c: 18: else
;lcd.c: 19: {
;lcd.c: 20: PORTD = 0xC0 + Col;
	movf	(LCD_Cursor@Col),w
	addlw	0C0h
	movwf	(8)	;volatile
	goto	l2577
	line	21
	
l311:	
	line	24
	
l2577:	
;lcd.c: 21: }
;lcd.c: 24: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	26
	
l2579:	
;lcd.c: 26: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_Cursor+0)+0,f
u3507:
decfsz	(??_LCD_Cursor+0)+0,f
	goto	u3507
opt asmopt_on

	line	28
	
l2581:	
;lcd.c: 28: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	29
	
l312:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Cursor
	__end_of_LCD_Cursor:
	signat	_LCD_Cursor,8312
	global	_LCD_Clear

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 71 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	line	71
global __ptext19
__ptext19:	;psect for function _LCD_Clear
psect	text19
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
	line	71
	global	__size_of_LCD_Clear
	__size_of_LCD_Clear	equ	__end_of_LCD_Clear-_LCD_Clear
	
_LCD_Clear:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	73
	
l2703:	
;lcd.c: 73: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	75
	
l2705:	
;lcd.c: 75: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_LCD_Clear+0)+0+1),f
	movlw	247
movwf	((??_LCD_Clear+0)+0),f
u3517:
	decfsz	((??_LCD_Clear+0)+0),f
	goto	u3517
	decfsz	((??_LCD_Clear+0)+0+1),f
	goto	u3517
opt asmopt_on

	line	77
	
l2707:	
;lcd.c: 77: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	79
;lcd.c: 79: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_Clear+0)+0,f
u3527:
decfsz	(??_LCD_Clear+0)+0,f
	goto	u3527
opt asmopt_on

	line	81
	
l2709:	
;lcd.c: 81: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	83
	
l2711:	
;lcd.c: 83: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_LCD_Clear+0)+0,f
u3537:
decfsz	(??_LCD_Clear+0)+0,f
	goto	u3537
opt asmopt_on

	line	84
	
l327:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
	signat	_LCD_Clear,88
	global	_LCD_WriteCmd

;; *************** function _LCD_WriteCmd *****************
;; Defined at:
;;		line 32 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Clear
;;		_LCD_Init
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	line	32
global __ptext20
__ptext20:	;psect for function _LCD_WriteCmd
psect	text20
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\lcd.c"
	line	32
	global	__size_of_LCD_WriteCmd
	__size_of_LCD_WriteCmd	equ	__end_of_LCD_WriteCmd-_LCD_WriteCmd
	
_LCD_WriteCmd:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_WriteCmd: [wreg]
;LCD_WriteCmd@Byte stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_WriteCmd@Byte)
	line	34
	
l2153:	
;lcd.c: 34: PORTEbits.RE0 = 0;
	bcf	(9),0	;volatile
	line	36
	
l2155:	
;lcd.c: 36: PORTD = Byte;
	movf	(LCD_WriteCmd@Byte),w
	movwf	(8)	;volatile
	line	39
	
l2157:	
;lcd.c: 39: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	41
;lcd.c: 41: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
movwf	(??_LCD_WriteCmd+0)+0,f
u3547:
decfsz	(??_LCD_WriteCmd+0)+0,f
	goto	u3547
opt asmopt_on

	line	43
	
l2159:	
;lcd.c: 43: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	44
	
l315:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteCmd
	__end_of_LCD_WriteCmd:
	signat	_LCD_WriteCmd,4216
	global	_ADC_Init

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 6 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\adc.c"
	line	6
global __ptext21
__ptext21:	;psect for function _ADC_Init
psect	text21
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\adc.c"
	line	6
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
;incstack = 0
	opt	stack 3
; Regs used in _ADC_Init: []
	line	9
	
l2515:	
;adc.c: 9: ADCON1bits.ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(159)^080h,7	;volatile
	line	32
;adc.c: 32: ADCON1bits.PCFG3 = 1;
	bsf	(159)^080h,3	;volatile
	line	33
;adc.c: 33: ADCON1bits.PCFG2 = 1;
	bsf	(159)^080h,2	;volatile
	line	34
;adc.c: 34: ADCON1bits.PCFG1 = 1;
	bsf	(159)^080h,1	;volatile
	line	35
;adc.c: 35: ADCON1bits.PCFG0 = 0;
	bcf	(159)^080h,0	;volatile
	line	38
;adc.c: 38: ADCON0bits.ADCS1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(31),7	;volatile
	line	39
;adc.c: 39: ADCON0bits.ADCS0 = 0;
	bcf	(31),6	;volatile
	line	42
;adc.c: 42: PIE1bits.ADIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,6	;volatile
	line	43
;adc.c: 43: PIR1bits.ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),6	;volatile
	line	44
	
l267:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 321 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Fuzzy
;;		_USART_ReceiveChar
;;		i1_PWM_DutyCycle2
;;		i1_TIMER0_Set
;;		i1_USART_WriteString
;;		i1___lwdiv
;;		i1___wmul
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	321
global __ptext22
__ptext22:	;psect for function _ISR
psect	text22
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	321
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text22
	line	324
	
i1l2715:	
;main.c: 324: if (PIR1bits.RCIF)
	btfss	(12),5	;volatile
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l2793
u272_20:
	line	326
	
i1l2717:	
;main.c: 325: {
;main.c: 326: pwmAnt = pwm;
	movf	(_pwm+1),w
	clrf	(_pwmAnt+1)
	addwf	(_pwmAnt+1)
	movf	(_pwm),w
	clrf	(_pwmAnt)
	addwf	(_pwmAnt)

	line	327
	
i1l2719:	
;main.c: 327: if (USART_ReceiveChar() == '0')
	fcall	_USART_ReceiveChar
	xorlw	030h
	skipz
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l2727
u273_20:
	line	329
	
i1l2721:	
;main.c: 328: {
;main.c: 329: USART_WriteString("\n\rdesligado\n\r");
	movlw	low((STR_1)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_1)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	330
	
i1l2723:	
;main.c: 330: pwm = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_pwm)
	clrf	(_pwm+1)
	line	331
	
i1l2725:	
;main.c: 331: PWM_DutyCycle2(pwm);
	movf	(_pwm+1),w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	(_pwm),w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	goto	i1l2727
	line	333
	
i1l188:	
	line	335
	
i1l2727:	
;main.c: 333: }
;main.c: 335: if (USART_ReceiveChar() == '1')
	fcall	_USART_ReceiveChar
	xorlw	031h
	skipz
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l2733
u274_20:
	line	337
	
i1l2729:	
;main.c: 336: {
;main.c: 337: USART_WriteString("\n\rpwm = 32\n\r");
	movlw	low((STR_2)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_2)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	338
	
i1l2731:	
;main.c: 338: pwm = 32;
	movlw	low(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(020h)
	movwf	((_pwm))+1
	goto	i1l2733
	line	340
	
i1l189:	
	line	342
	
i1l2733:	
;main.c: 340: }
;main.c: 342: if (USART_ReceiveChar() == '2')
	fcall	_USART_ReceiveChar
	xorlw	032h
	skipz
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l2739
u275_20:
	line	344
	
i1l2735:	
;main.c: 343: {
;main.c: 344: USART_WriteString("\n\rpwm = 64\n\r");
	movlw	low((STR_3)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_3)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	345
	
i1l2737:	
;main.c: 345: pwm = 64;
	movlw	low(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(040h)
	movwf	((_pwm))+1
	goto	i1l2739
	line	347
	
i1l190:	
	line	349
	
i1l2739:	
;main.c: 347: }
;main.c: 349: if (USART_ReceiveChar() == '3')
	fcall	_USART_ReceiveChar
	xorlw	033h
	skipz
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l2749
u276_20:
	line	351
	
i1l2741:	
;main.c: 350: {
;main.c: 351: USART_WriteString("\n\rpwm = 128\n\r");
	movlw	low((STR_4)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_4)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	352
	
i1l2743:	
;main.c: 352: pwm = 128;
	movlw	low(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(080h)
	movwf	((_pwm))+1
	line	354
	
i1l2745:	
;main.c: 354: if(PORTBbits.RB0 == 0)
	btfsc	(6),0	;volatile
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l192
u277_20:
	line	356
	
i1l2747:	
;main.c: 355: {
;main.c: 356: PORTBbits.RB0 = 1;
	bsf	(6),0	;volatile
	line	357
;main.c: 357: }else{
	goto	i1l2749
	
i1l192:	
	line	358
;main.c: 358: PORTBbits.RB0 = 0;
	bcf	(6),0	;volatile
	goto	i1l2749
	line	359
	
i1l193:	
	goto	i1l2749
	line	360
	
i1l191:	
	line	362
	
i1l2749:	
;main.c: 359: }
;main.c: 360: }
;main.c: 362: if (USART_ReceiveChar() == '4')
	fcall	_USART_ReceiveChar
	xorlw	034h
	skipz
	goto	u278_21
	goto	u278_20
u278_21:
	goto	i1l2759
u278_20:
	line	364
	
i1l2751:	
;main.c: 363: {
;main.c: 364: USART_WriteString("\n\rpwm = 256\n\r");
	movlw	low((STR_5)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_5)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	365
	
i1l2753:	
;main.c: 365: pwm = 256;
	movlw	low(0100h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(0100h)
	movwf	((_pwm))+1
	line	367
	
i1l2755:	
;main.c: 367: if(PORTBbits.RB1 == 0)
	btfsc	(6),1	;volatile
	goto	u279_21
	goto	u279_20
u279_21:
	goto	i1l195
u279_20:
	line	369
	
i1l2757:	
;main.c: 368: {
;main.c: 369: PORTBbits.RB1 = 1;
	bsf	(6),1	;volatile
	line	370
;main.c: 370: }else{
	goto	i1l2759
	
i1l195:	
	line	371
;main.c: 371: PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	goto	i1l2759
	line	372
	
i1l196:	
	goto	i1l2759
	line	373
	
i1l194:	
	line	375
	
i1l2759:	
;main.c: 372: }
;main.c: 373: }
;main.c: 375: if (USART_ReceiveChar() == '5')
	fcall	_USART_ReceiveChar
	xorlw	035h
	skipz
	goto	u280_21
	goto	u280_20
u280_21:
	goto	i1l2765
u280_20:
	line	377
	
i1l2761:	
;main.c: 376: {
;main.c: 377: USART_WriteString("\n\rpwm = 512\n\r");
	movlw	low((STR_6)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_6)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	378
	
i1l2763:	
;main.c: 378: pwm = 512;
	movlw	low(0200h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(0200h)
	movwf	((_pwm))+1
	goto	i1l2765
	line	380
	
i1l197:	
	line	382
	
i1l2765:	
;main.c: 380: }
;main.c: 382: if (USART_ReceiveChar() == '6')
	fcall	_USART_ReceiveChar
	xorlw	036h
	skipz
	goto	u281_21
	goto	u281_20
u281_21:
	goto	i1l2771
u281_20:
	line	384
	
i1l2767:	
;main.c: 383: {
;main.c: 384: USART_WriteString("\n\rpwm = 768\n\r");
	movlw	low((STR_7)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_7)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	385
	
i1l2769:	
;main.c: 385: pwm = 768;
	movlw	low(0300h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(0300h)
	movwf	((_pwm))+1
	goto	i1l2771
	line	387
	
i1l198:	
	line	389
	
i1l2771:	
;main.c: 387: }
;main.c: 389: if (USART_ReceiveChar() == '7')
	fcall	_USART_ReceiveChar
	xorlw	037h
	skipz
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l2777
u282_20:
	line	391
	
i1l2773:	
;main.c: 390: {
;main.c: 391: USART_WriteString("\n\rpwm = 896\n\r");
	movlw	low((STR_8)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_8)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	392
	
i1l2775:	
;main.c: 392: pwm = 896;
	movlw	low(0380h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(0380h)
	movwf	((_pwm))+1
	goto	i1l2777
	line	394
	
i1l199:	
	line	396
	
i1l2777:	
;main.c: 394: }
;main.c: 396: if (USART_ReceiveChar() == '8')
	fcall	_USART_ReceiveChar
	xorlw	038h
	skipz
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l2783
u283_20:
	line	398
	
i1l2779:	
;main.c: 397: {
;main.c: 398: USART_WriteString("\n\rpwm = 1000\n\r");
	movlw	low((STR_9)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_9)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	399
	
i1l2781:	
;main.c: 399: pwm = 1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(03E8h)
	movwf	((_pwm))+1
	goto	i1l2783
	line	401
	
i1l200:	
	line	403
	
i1l2783:	
;main.c: 401: }
;main.c: 403: if (USART_ReceiveChar() == '9')
	fcall	_USART_ReceiveChar
	xorlw	039h
	skipz
	goto	u284_21
	goto	u284_20
u284_21:
	goto	i1l2789
u284_20:
	line	405
	
i1l2785:	
;main.c: 404: {
;main.c: 405: USART_WriteString("\n\rpwm = 1023\n\r");
	movlw	low((STR_10)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_10)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	406
	
i1l2787:	
;main.c: 406: pwm = 1023;
	movlw	low(03FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_pwm)
	movlw	high(03FFh)
	movwf	((_pwm))+1
	goto	i1l2789
	line	408
	
i1l201:	
	line	412
	
i1l2789:	
;main.c: 408: }
;main.c: 412: Fuzzy(pwm);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_pwm+1),w
	clrf	(Fuzzy@setpoint+1)
	addwf	(Fuzzy@setpoint+1)
	movf	(_pwm),w
	clrf	(Fuzzy@setpoint)
	addwf	(Fuzzy@setpoint)

	fcall	_Fuzzy
	line	415
	
i1l2791:	
;main.c: 415: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	goto	i1l2793
	line	416
	
i1l187:	
	line	419
	
i1l2793:	
;main.c: 416: }
;main.c: 419: if (PIR1bits.ADIF)
	btfss	(12),6	;volatile
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l202
u285_20:
	line	424
	
i1l2795:	
;main.c: 420: {
;main.c: 424: PIR1bits.ADIF = 0;
	bcf	(12),6	;volatile
	line	425
	
i1l202:	
	line	429
;main.c: 425: }
;main.c: 429: if (INTCONbits.T0IF)
	btfss	(11),2	;volatile
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l2819
u286_20:
	line	432
	
i1l2797:	
;main.c: 430: {
;main.c: 432: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	i1_TIMER0_Set
	line	435
	
i1l2799:	
;main.c: 435: if (contagens_tm0 < 499)
	movlw	high(01F3h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_contagens_tm0+1)^080h,w
	movlw	low(01F3h)
	skipnz
	subwf	(_contagens_tm0)^080h,w
	skipnc
	goto	u287_21
	goto	u287_20
u287_21:
	goto	i1l2805
u287_20:
	line	438
	
i1l2801:	
;main.c: 436: {
;main.c: 438: contagens_tm0++;
	movlw	low(01h)
	addwf	(_contagens_tm0)^080h,f
	skipnc
	incf	(_contagens_tm0+1)^080h,f
	movlw	high(01h)
	addwf	(_contagens_tm0+1)^080h,f
	line	441
	
i1l2803:	
;main.c: 441: PORTBbits.RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),6	;volatile
	line	442
;main.c: 442: }
	goto	i1l2817
	line	443
	
i1l204:	
	line	446
	
i1l2805:	
;main.c: 443: else
;main.c: 444: {
;main.c: 446: contagens_tm0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_contagens_tm0)^080h
	clrf	(_contagens_tm0+1)^080h
	line	449
	
i1l2807:	
;main.c: 449: pulsos = (TMR1H << 8) + TMR1L;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(15),w	;volatile
	clrf	(_pulsos+1)
	addwf	(_pulsos+1)
	movf	(14),w	;volatile
	clrf	(_pulsos)
	addwf	(_pulsos)

	line	450
	
i1l2809:	
;main.c: 450: rpm = ((pulsos / pas_cooler) * 120);
	movf	(_pas_cooler+1),w
	clrf	(i1___lwdiv@divisor+1)
	addwf	(i1___lwdiv@divisor+1)
	movf	(_pas_cooler),w
	clrf	(i1___lwdiv@divisor)
	addwf	(i1___lwdiv@divisor)

	movf	(_pulsos+1),w
	clrf	(i1___lwdiv@dividend+1)
	addwf	(i1___lwdiv@dividend+1)
	movf	(_pulsos),w
	clrf	(i1___lwdiv@dividend)
	addwf	(i1___lwdiv@dividend)

	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	clrf	(i1___wmul@multiplier+1)
	addwf	(i1___wmul@multiplier+1)
	movf	(0+(?i1___lwdiv)),w
	clrf	(i1___wmul@multiplier)
	addwf	(i1___wmul@multiplier)

	movlw	low(078h)
	movwf	(i1___wmul@multiplicand)
	movlw	high(078h)
	movwf	((i1___wmul@multiplicand))+1
	fcall	i1___wmul
	movf	(1+(?i1___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm+1)^080h
	addwf	(_rpm+1)^080h
	movf	(0+(?i1___wmul)),w
	clrf	(_rpm)^080h
	addwf	(_rpm)^080h

	line	453
	
i1l2811:	
;main.c: 453: TMR1L = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	line	454
	
i1l2813:	
;main.c: 454: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	457
	
i1l2815:	
;main.c: 457: PORTBbits.RB6 = 0;
	bcf	(6),6	;volatile
	goto	i1l2817
	line	458
	
i1l205:	
	line	461
	
i1l2817:	
;main.c: 458: }
;main.c: 461: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	goto	i1l2819
	line	462
	
i1l203:	
	line	465
	
i1l2819:	
;main.c: 462: }
;main.c: 465: if (PIR1bits.TMR1IF)
	btfss	(12),0	;volatile
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l206
u288_20:
	line	470
	
i1l2821:	
;main.c: 466: {
;main.c: 470: PIR1bits.TMR1IF = 0;
	bcf	(12),0	;volatile
	line	471
	
i1l206:	
	line	474
;main.c: 471: }
;main.c: 474: if (PIR1bits.SSPIF)
	btfss	(12),3	;volatile
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l208
u289_20:
	line	479
	
i1l2823:	
;main.c: 475: {
;main.c: 479: PIR1bits.SSPIF = 0;
	bcf	(12),3	;volatile
	goto	i1l208
	line	480
	
i1l207:	
	line	481
	
i1l208:	
	movf	(??_ISR+3),w
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^00h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	i1_TIMER0_Set

;; *************** function i1_TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\timers.c"
;; Parameters:    Size  Location     Type
;;  contagens       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  contagens       1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\timers.c"
	line	20
global __ptext23
__ptext23:	;psect for function i1_TIMER0_Set
psect	text23
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\timers.c"
	line	20
	global	__size_ofi1_TIMER0_Set
	__size_ofi1_TIMER0_Set	equ	__end_ofi1_TIMER0_Set-i1_TIMER0_Set
	
i1_TIMER0_Set:	
;incstack = 0
	opt	stack 4
; Regs used in i1_TIMER0_Set: [wreg]
;i1TIMER0_Set@contagens stored from wreg
	movwf	(i1TIMER0_Set@contagens)
	line	22
	
i1l2713:	
;timers.c: 22: TMR0 = contagens;
	movf	(i1TIMER0_Set@contagens),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
i1l293:	
	return
	opt stack 0
GLOBAL	__end_ofi1_TIMER0_Set
	__end_ofi1_TIMER0_Set:
	signat	i1_TIMER0_Set,88
	global	_USART_ReceiveChar

;; *************** function _USART_ReceiveChar *****************
;; Defined at:
;;		line 63 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_USART_WriteString
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
	line	63
global __ptext24
__ptext24:	;psect for function _USART_ReceiveChar
psect	text24
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
	line	63
	global	__size_of_USART_ReceiveChar
	__size_of_USART_ReceiveChar	equ	__end_of_USART_ReceiveChar-_USART_ReceiveChar
	
_USART_ReceiveChar:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_ReceiveChar: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	67
	
i1l2443:	
;usart.c: 65: unsigned char byte;
;usart.c: 67: if (!OERR)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(193/8),(193)&7	;volatile
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l2449
u247_20:
	line	69
	
i1l2445:	
;usart.c: 68: {
;usart.c: 69: byte = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@byte)
	line	70
	
i1l2447:	
;usart.c: 70: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	line	71
;usart.c: 71: }
	goto	i1l2459
	line	72
	
i1l248:	
	line	74
	
i1l2449:	
;usart.c: 72: else
;usart.c: 73: {
;usart.c: 74: USART_WriteString("\n\r ------- ESTOURO DE PILHA ------- \n\r ");
	movlw	low((STR_19)|8000h)
	movwf	(i1USART_WriteString@str)
	movlw	high((STR_19)|8000h)
	movwf	((i1USART_WriteString@str))+1
	fcall	i1_USART_WriteString
	line	76
	
i1l2451:	
;usart.c: 76: RCSTAbits.CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24),4	;volatile
	line	77
	
i1l2453:	
;usart.c: 77: byte = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@byte)
	line	78
	
i1l2455:	
;usart.c: 78: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	79
	
i1l2457:	
;usart.c: 79: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	goto	i1l2459
	line	80
	
i1l249:	
	line	82
	
i1l2459:	
;usart.c: 80: }
;usart.c: 82: return(byte);
	movf	(USART_ReceiveChar@byte),w
	goto	i1l250
	
i1l2461:	
	line	83
	
i1l250:	
	return
	opt stack 0
GLOBAL	__end_of_USART_ReceiveChar
	__end_of_USART_ReceiveChar:
	signat	_USART_ReceiveChar,89
	global	i1_USART_WriteString

;; *************** function i1_USART_WriteString *****************
;; Defined at:
;;		line 52 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  str             2    1[COMMON] PTR const unsigned char 
;;		 -> STR_19(40), STR_16(3), display_rpm(10), STR_12(20), 
;;		 -> STR_11(29), STR_10(15), STR_9(15), STR_8(14), 
;;		 -> STR_7(14), STR_6(14), STR_5(14), STR_4(14), 
;;		 -> STR_3(13), STR_2(13), STR_1(14), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_USART_WriteChar
;; This function is called by:
;;		_ISR
;;		_USART_ReceiveChar
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	line	52
global __ptext25
__ptext25:	;psect for function i1_USART_WriteString
psect	text25
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
	line	52
	global	__size_ofi1_USART_WriteString
	__size_ofi1_USART_WriteString	equ	__end_ofi1_USART_WriteString-i1_USART_WriteString
	
i1_USART_WriteString:	
;incstack = 0
	opt	stack 3
; Regs used in i1_USART_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
i1l2305:	
;usart.c: 54: while(*str != '\0')
	goto	i1l2311
	
i1l243:	
	line	56
	
i1l2307:	
;usart.c: 55: {
;usart.c: 56: USART_WriteChar(*str);
	movf	(i1USART_WriteString@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1USART_WriteString@str),w
	movwf	fsr0
	fcall	stringtab
	fcall	i1_USART_WriteChar
	line	57
	
i1l2309:	
;usart.c: 57: str++;
	movlw	01h
	addwf	(i1USART_WriteString@str),f
	skipnc
	incf	(i1USART_WriteString@str+1),f
	goto	i1l2311
	line	58
	
i1l242:	
	line	54
	
i1l2311:	
	movf	(i1USART_WriteString@str+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(i1USART_WriteString@str),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u221_21
	goto	u221_20
u221_21:
	goto	i1l2307
u221_20:
	goto	i1l245
	
i1l244:	
	line	59
	
i1l245:	
	return
	opt stack 0
GLOBAL	__end_ofi1_USART_WriteString
	__end_ofi1_USART_WriteString:
	signat	i1_USART_WriteString,88
	global	i1_USART_WriteChar

;; *************** function i1_USART_WriteChar *****************
;; Defined at:
;;		line 44 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_USART_WriteString
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	44
global __ptext26
__ptext26:	;psect for function i1_USART_WriteChar
psect	text26
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\usart.c"
	line	44
	global	__size_ofi1_USART_WriteChar
	__size_ofi1_USART_WriteChar	equ	__end_ofi1_USART_WriteChar-i1_USART_WriteChar
	
i1_USART_WriteChar:	
;incstack = 0
	opt	stack 3
; Regs used in i1_USART_WriteChar: [wreg]
;i1USART_WriteChar@byte stored from wreg
	movwf	(i1USART_WriteChar@byte)
	line	46
	
i1l2051:	
;usart.c: 46: while(!PIR1bits.TXIF);
	goto	i1l236
	
i1l237:	
	
i1l236:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l236
u163_20:
	goto	i1l2053
	
i1l238:	
	line	47
	
i1l2053:	
;usart.c: 47: TXREG = byte;
	movf	(i1USART_WriteChar@byte),w
	movwf	(25)	;volatile
	line	48
	
i1l239:	
	return
	opt stack 0
GLOBAL	__end_ofi1_USART_WriteChar
	__end_ofi1_USART_WriteChar:
	signat	i1_USART_WriteChar,88
	global	_Fuzzy

;; *************** function _Fuzzy *****************
;; Defined at:
;;		line 136 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  setpoint        2   12[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  sum             2   17[BANK0 ] unsigned int 
;;  velocidade      1   16[BANK0 ] unsigned char [1]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftge
;;		___lwtoft
;;		_max_val
;;		_trapmf
;;		_trimf
;;		i1_PWM_DutyCycle2
;;		i1___lwdiv
;;		i1___wmul
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	136
global __ptext27
__ptext27:	;psect for function _Fuzzy
psect	text27
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	136
	global	__size_of_Fuzzy
	__size_of_Fuzzy	equ	__end_of_Fuzzy-_Fuzzy
	
_Fuzzy:	
;incstack = 0
	opt	stack 2
; Regs used in _Fuzzy: [wreg+status,2+status,0+pclath+cstack]
	line	147
	
i1l2329:	
;main.c: 147: fitemp =0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_fitemp)
	clrf	(_fitemp+1)
	line	150
	
i1l2331:	
;main.c: 150: temp = (setpoint - pwmAnt);
	comf	(_pwmAnt),w
	movwf	(??_Fuzzy+0)+0
	comf	(_pwmAnt+1),w
	movwf	((??_Fuzzy+0)+0+1)
	incf	(??_Fuzzy+0)+0,f
	skipnz
	incf	((??_Fuzzy+0)+0+1),f
	movf	(Fuzzy@setpoint),w
	addwf	0+(??_Fuzzy+0)+0,w
	movwf	(_temp)
	movf	(Fuzzy@setpoint+1),w
	skipnc
	incf	(Fuzzy@setpoint+1),w
	addwf	1+(??_Fuzzy+0)+0,w
	movwf	1+(_temp)
	line	152
	
i1l2333:	
;main.c: 152: if(PORTBbits.RB2 == 0)
	btfsc	(6),2	;volatile
	goto	u227_21
	goto	u227_20
u227_21:
	goto	i1l163
u227_20:
	line	154
	
i1l2335:	
;main.c: 153: {
;main.c: 154: PORTBbits.RB2 = 1;
	bsf	(6),2	;volatile
	line	155
;main.c: 155: }else{
	goto	i1l2337
	
i1l163:	
	line	156
;main.c: 156: PORTBbits.RB2 = 0;
	bcf	(6),2	;volatile
	goto	i1l2337
	line	157
	
i1l164:	
	line	159
	
i1l2337:	
;main.c: 157: }
;main.c: 159: deltaV = (setpoint - pwmAnt);
	comf	(_pwmAnt),w
	movwf	(??_Fuzzy+0)+0
	comf	(_pwmAnt+1),w
	movwf	((??_Fuzzy+0)+0+1)
	incf	(??_Fuzzy+0)+0,f
	skipnz
	incf	((??_Fuzzy+0)+0+1),f
	movf	(Fuzzy@setpoint),w
	addwf	0+(??_Fuzzy+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_deltaV)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@setpoint+1),w
	skipnc
	incf	(Fuzzy@setpoint+1),w
	addwf	1+(??_Fuzzy+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_deltaV)^080h
	line	162
	
i1l2339:	
;main.c: 162: if (temp >10) temp = 10;
	movlw	high(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_temp+1),w
	movlw	low(0Bh)
	skipnz
	subwf	(_temp),w
	skipc
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l2345
u228_20:
	
i1l2341:	
	movlw	low(0Ah)
	movwf	(_temp)
	movlw	high(0Ah)
	movwf	((_temp))+1
	goto	i1l2345
	
i1l165:	
	line	163
;main.c: 163: if (temp <0) temp = 0;
	goto	i1l2345
	
i1l2343:	
	clrf	(_temp)
	clrf	(_temp+1)
	goto	i1l2345
	
i1l166:	
	line	166
	
i1l2345:	
;main.c: 166: if (temp < 2.5)
	movf	(_temp+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_temp),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l2359
u229_20:
	line	169
	
i1l2347:	
;main.c: 167: {
;main.c: 169: fitemp = trapmf(temp,-1,0,1.5,3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	clrf	(trapmf@x+1)
	addwf	(trapmf@x+1)
	movf	(_temp),w
	clrf	(trapmf@x)
	addwf	(trapmf@x)

	movlw	low(0FFFFh)
	movwf	(trapmf@a)
	movlw	high(0FFFFh)
	movwf	((trapmf@a))+1
	movlw	low(0)
	movwf	(trapmf@b)
	movlw	high(0)
	movwf	((trapmf@b))+1
	movlw	low(01h)
	movwf	(trapmf@c)
	movlw	high(01h)
	movwf	((trapmf@c))+1
	movlw	low(03h)
	movwf	(trapmf@d)
	movlw	high(03h)
	movwf	((trapmf@d))+1
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	clrf	(_fitemp+1)
	addwf	(_fitemp+1)
	movf	(0+(?_trapmf)),w
	clrf	(_fitemp)
	addwf	(_fitemp)

	line	172
;main.c: 172: fop_rule1 = max_val(fitemp,0.1);
	movf	(_fitemp+1),w
	clrf	(max_val@a+1)
	addwf	(max_val@a+1)
	movf	(_fitemp),w
	clrf	(max_val@a)
	addwf	(max_val@a)

	movlw	low(0)
	movwf	(max_val@b)
	movlw	high(0)
	movwf	((max_val@b))+1
	fcall	_max_val
	movf	(1+(?_max_val)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_fop_rule1+1)
	addwf	(_fop_rule1+1)
	movf	(0+(?_max_val)),w
	clrf	(_fop_rule1)
	addwf	(_fop_rule1)

	line	175
	
i1l2349:	
;main.c: 175: x=0;
	clrf	(_x)
	clrf	(_x+1)
	line	176
	
i1l2351:	
;main.c: 176: y=0;
	clrf	(_y)
	clrf	(_y+1)
	line	178
;main.c: 178: y = trapmf(x,-1,0,1.5,3);
	movf	(_x+1),w
	clrf	(trapmf@x+1)
	addwf	(trapmf@x+1)
	movf	(_x),w
	clrf	(trapmf@x)
	addwf	(trapmf@x)

	movlw	low(0FFFFh)
	movwf	(trapmf@a)
	movlw	high(0FFFFh)
	movwf	((trapmf@a))+1
	movlw	low(0)
	movwf	(trapmf@b)
	movlw	high(0)
	movwf	((trapmf@b))+1
	movlw	low(01h)
	movwf	(trapmf@c)
	movlw	high(01h)
	movwf	((trapmf@c))+1
	movlw	low(03h)
	movwf	(trapmf@d)
	movlw	high(03h)
	movwf	((trapmf@d))+1
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	clrf	(_y+1)
	addwf	(_y+1)
	movf	(0+(?_trapmf)),w
	clrf	(_y)
	addwf	(_y)

	line	180
	
i1l2353:	
;main.c: 180: if (y > fop_rule1)
	movf	(_y+1),w
	subwf	(_fop_rule1+1),w
	skipz
	goto	u230_25
	movf	(_y),w
	subwf	(_fop_rule1),w
u230_25:
	skipnc
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l2357
u230_20:
	line	182
	
i1l2355:	
;main.c: 181: {
;main.c: 182: ideal = fop_rule1;
	movf	(_fop_rule1+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ideal+1)^080h
	addwf	(_ideal+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fop_rule1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ideal)^080h
	addwf	(_ideal)^080h

	line	183
;main.c: 183: }
	goto	i1l2359
	line	184
	
i1l168:	
	line	186
	
i1l2357:	
;main.c: 184: else
;main.c: 185: {
;main.c: 186: ideal = y;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_y+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ideal+1)^080h
	addwf	(_ideal+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_ideal)^080h
	addwf	(_ideal)^080h

	goto	i1l2359
	line	187
	
i1l169:	
	goto	i1l2359
	line	189
	
i1l167:	
	line	193
	
i1l2359:	
;main.c: 187: }
;main.c: 189: }
;main.c: 193: if ((temp > 2) && (temp < 7))
	movlw	high(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_temp+1),w
	movlw	low(03h)
	skipnz
	subwf	(_temp),w
	skipc
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l2375
u231_20:
	
i1l2361:	
	movlw	high(07h)
	subwf	(_temp+1),w
	movlw	low(07h)
	skipnz
	subwf	(_temp),w
	skipnc
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l2375
u232_20:
	line	196
	
i1l2363:	
;main.c: 194: {
;main.c: 196: fitemp = trimf(temp,2,5,8);
	movf	(_temp+1),w
	clrf	(trimf@x+1)
	addwf	(trimf@x+1)
	movf	(_temp),w
	clrf	(trimf@x)
	addwf	(trimf@x)

	movlw	low(02h)
	movwf	(trimf@a)
	movlw	high(02h)
	movwf	((trimf@a))+1
	movlw	low(05h)
	movwf	(trimf@b)
	movlw	high(05h)
	movwf	((trimf@b))+1
	movlw	low(08h)
	movwf	(trimf@c)
	movlw	high(08h)
	movwf	((trimf@c))+1
	fcall	_trimf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trimf)),w
	clrf	(_fitemp+1)
	addwf	(_fitemp+1)
	movf	(0+(?_trimf)),w
	clrf	(_fitemp)
	addwf	(_fitemp)

	line	199
;main.c: 199: fop_rule1 = max_val(fitemp,0.1);
	movf	(_fitemp+1),w
	clrf	(max_val@a+1)
	addwf	(max_val@a+1)
	movf	(_fitemp),w
	clrf	(max_val@a)
	addwf	(max_val@a)

	movlw	low(0)
	movwf	(max_val@b)
	movlw	high(0)
	movwf	((max_val@b))+1
	fcall	_max_val
	movf	(1+(?_max_val)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_fop_rule1+1)
	addwf	(_fop_rule1+1)
	movf	(0+(?_max_val)),w
	clrf	(_fop_rule1)
	addwf	(_fop_rule1)

	line	202
	
i1l2365:	
;main.c: 202: x=0;
	clrf	(_x)
	clrf	(_x+1)
	line	203
	
i1l2367:	
;main.c: 203: y=0;
	clrf	(_y)
	clrf	(_y+1)
	line	205
;main.c: 205: y = trimf(x,2,5,8);
	movf	(_x+1),w
	clrf	(trimf@x+1)
	addwf	(trimf@x+1)
	movf	(_x),w
	clrf	(trimf@x)
	addwf	(trimf@x)

	movlw	low(02h)
	movwf	(trimf@a)
	movlw	high(02h)
	movwf	((trimf@a))+1
	movlw	low(05h)
	movwf	(trimf@b)
	movlw	high(05h)
	movwf	((trimf@b))+1
	movlw	low(08h)
	movwf	(trimf@c)
	movlw	high(08h)
	movwf	((trimf@c))+1
	fcall	_trimf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trimf)),w
	clrf	(_y+1)
	addwf	(_y+1)
	movf	(0+(?_trimf)),w
	clrf	(_y)
	addwf	(_y)

	line	207
	
i1l2369:	
;main.c: 207: if (y >= fop_rule1)
	movf	(_fop_rule1+1),w
	subwf	(_y+1),w
	skipz
	goto	u233_25
	movf	(_fop_rule1),w
	subwf	(_y),w
u233_25:
	skipc
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l2373
u233_20:
	line	209
	
i1l2371:	
;main.c: 208: {
;main.c: 209: tip_average = fop_rule1;
	movf	(_fop_rule1+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tip_average+1)^080h
	addwf	(_tip_average+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fop_rule1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tip_average)^080h
	addwf	(_tip_average)^080h

	line	210
;main.c: 210: }
	goto	i1l2375
	line	211
	
i1l171:	
	line	213
	
i1l2373:	
;main.c: 211: else
;main.c: 212: {
;main.c: 213: tip_average = y;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_y+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tip_average+1)^080h
	addwf	(_tip_average+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tip_average)^080h
	addwf	(_tip_average)^080h

	goto	i1l2375
	line	214
	
i1l172:	
	goto	i1l2375
	line	217
	
i1l170:	
	line	221
	
i1l2375:	
;main.c: 214: }
;main.c: 217: }
;main.c: 221: if (temp > 7 )
	movlw	high(08h)
	bcf	status, 5	;RP0=0, select bank0
	subwf	(_temp+1),w
	movlw	low(08h)
	skipnz
	subwf	(_temp),w
	skipc
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l2389
u234_20:
	line	224
	
i1l2377:	
;main.c: 222: {
;main.c: 224: fitemp = trapmf(temp,6,8.5,10,11);
	movf	(_temp+1),w
	clrf	(trapmf@x+1)
	addwf	(trapmf@x+1)
	movf	(_temp),w
	clrf	(trapmf@x)
	addwf	(trapmf@x)

	movlw	low(06h)
	movwf	(trapmf@a)
	movlw	high(06h)
	movwf	((trapmf@a))+1
	movlw	low(08h)
	movwf	(trapmf@b)
	movlw	high(08h)
	movwf	((trapmf@b))+1
	movlw	low(0Ah)
	movwf	(trapmf@c)
	movlw	high(0Ah)
	movwf	((trapmf@c))+1
	movlw	low(0Bh)
	movwf	(trapmf@d)
	movlw	high(0Bh)
	movwf	((trapmf@d))+1
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	clrf	(_fitemp+1)
	addwf	(_fitemp+1)
	movf	(0+(?_trapmf)),w
	clrf	(_fitemp)
	addwf	(_fitemp)

	line	228
;main.c: 228: fop_rule1 = max_val(fitemp,0.1);
	movf	(_fitemp+1),w
	clrf	(max_val@a+1)
	addwf	(max_val@a+1)
	movf	(_fitemp),w
	clrf	(max_val@a)
	addwf	(max_val@a)

	movlw	low(0)
	movwf	(max_val@b)
	movlw	high(0)
	movwf	((max_val@b))+1
	fcall	_max_val
	movf	(1+(?_max_val)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_fop_rule1+1)
	addwf	(_fop_rule1+1)
	movf	(0+(?_max_val)),w
	clrf	(_fop_rule1)
	addwf	(_fop_rule1)

	line	231
	
i1l2379:	
;main.c: 231: x=0;
	clrf	(_x)
	clrf	(_x+1)
	line	232
	
i1l2381:	
;main.c: 232: y=0;
	clrf	(_y)
	clrf	(_y+1)
	line	234
;main.c: 234: y = trapmf(x,7,8.5,10,11);
	movf	(_x+1),w
	clrf	(trapmf@x+1)
	addwf	(trapmf@x+1)
	movf	(_x),w
	clrf	(trapmf@x)
	addwf	(trapmf@x)

	movlw	low(07h)
	movwf	(trapmf@a)
	movlw	high(07h)
	movwf	((trapmf@a))+1
	movlw	low(08h)
	movwf	(trapmf@b)
	movlw	high(08h)
	movwf	((trapmf@b))+1
	movlw	low(0Ah)
	movwf	(trapmf@c)
	movlw	high(0Ah)
	movwf	((trapmf@c))+1
	movlw	low(0Bh)
	movwf	(trapmf@d)
	movlw	high(0Bh)
	movwf	((trapmf@d))+1
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	clrf	(_y+1)
	addwf	(_y+1)
	movf	(0+(?_trapmf)),w
	clrf	(_y)
	addwf	(_y)

	line	236
	
i1l2383:	
;main.c: 236: if (y >= fop_rule1)
	movf	(_fop_rule1+1),w
	subwf	(_y+1),w
	skipz
	goto	u235_25
	movf	(_fop_rule1),w
	subwf	(_y),w
u235_25:
	skipc
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l2387
u235_20:
	line	238
	
i1l2385:	
;main.c: 237: {
;main.c: 238: tip_gorgeous = fop_rule1;
	movf	(_fop_rule1+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tip_gorgeous+1)^080h
	addwf	(_tip_gorgeous+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fop_rule1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tip_gorgeous)^080h
	addwf	(_tip_gorgeous)^080h

	line	239
;main.c: 239: }
	goto	i1l2389
	line	240
	
i1l174:	
	line	242
	
i1l2387:	
;main.c: 240: else
;main.c: 241: {
;main.c: 242: tip_gorgeous = y;
	bcf	status, 5	;RP0=0, select bank0
	movf	(_y+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tip_gorgeous+1)^080h
	addwf	(_tip_gorgeous+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_y),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_tip_gorgeous)^080h
	addwf	(_tip_gorgeous)^080h

	goto	i1l2389
	line	243
	
i1l175:	
	goto	i1l2389
	line	245
	
i1l173:	
	line	249
	
i1l2389:	
;main.c: 243: }
;main.c: 245: }
;main.c: 249: if (temp < 2.5)
	bcf	status, 5	;RP0=0, select bank0
	movf	(_temp+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_temp),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l2393
u236_20:
	line	251
	
i1l2391:	
;main.c: 250: {
;main.c: 251: tip = ideal ;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ideal+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tip+1)
	addwf	(_tip+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_ideal)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tip)
	addwf	(_tip)

	goto	i1l2393
	line	252
	
i1l176:	
	line	254
	
i1l2393:	
;main.c: 252: }
;main.c: 254: if (temp >= 2.5 && temp < 7.5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_temp),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l2399
u237_20:
	
i1l2395:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_temp),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xf0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l2399
u238_20:
	line	256
	
i1l2397:	
;main.c: 255: {
;main.c: 256: tip = tip_average ;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tip_average+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tip+1)
	addwf	(_tip+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tip_average)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tip)
	addwf	(_tip)

	goto	i1l2399
	line	257
	
i1l177:	
	line	259
	
i1l2399:	
;main.c: 257: }
;main.c: 259: if (temp >= 7.5 && temp <= 10)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_temp),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xf0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l2405
u239_20:
	
i1l2401:	
	movlw	high(0Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_temp+1),w
	movlw	low(0Bh)
	skipnz
	subwf	(_temp),w
	skipnc
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l2405
u240_20:
	line	261
	
i1l2403:	
;main.c: 260: {
;main.c: 261: tip = tip_gorgeous;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tip_gorgeous+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tip+1)
	addwf	(_tip+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_tip_gorgeous)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tip)
	addwf	(_tip)

	goto	i1l2405
	line	262
	
i1l178:	
	line	267
	
i1l2405:	
;main.c: 262: }
;main.c: 267: total_area = 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_total_area)
	movlw	high(01h)
	movwf	((_total_area))+1
	line	268
	
i1l2407:	
;main.c: 268: unsigned int sum = 0;
	clrf	(Fuzzy@sum)
	clrf	(Fuzzy@sum+1)
	line	270
	
i1l2409:	
;main.c: 270: total_area = total_area + tip ;
	movf	(_tip),w
	addwf	(_total_area),w
	movwf	(_total_area)
	movf	(_tip+1),w
	skipnc
	incf	(_tip+1),w
	addwf	(_total_area+1),w
	movwf	1+(_total_area)
	line	271
	
i1l2411:	
;main.c: 271: sum = tip;
	movf	(_tip+1),w
	clrf	(Fuzzy@sum+1)
	addwf	(Fuzzy@sum+1)
	movf	(_tip),w
	clrf	(Fuzzy@sum)
	addwf	(Fuzzy@sum)

	line	276
	
i1l2413:	
;main.c: 276: ativa_fan = sum/total_area;
	movf	(_total_area+1),w
	clrf	(i1___lwdiv@divisor+1)
	addwf	(i1___lwdiv@divisor+1)
	movf	(_total_area),w
	clrf	(i1___lwdiv@divisor)
	addwf	(i1___lwdiv@divisor)

	movf	(Fuzzy@sum+1),w
	clrf	(i1___lwdiv@dividend+1)
	addwf	(i1___lwdiv@dividend+1)
	movf	(Fuzzy@sum),w
	clrf	(i1___lwdiv@dividend)
	addwf	(i1___lwdiv@dividend)

	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_ativa_fan+1)
	addwf	(_ativa_fan+1)
	movf	(0+(?i1___lwdiv)),w
	clrf	(_ativa_fan)
	addwf	(_ativa_fan)

	line	282
	
i1l2415:	
;main.c: 280: char velocidade[1];
;main.c: 282: if(ativa_fan <= 2.5 )
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x20
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(_ativa_fan+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_ativa_fan),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l2419
u241_20:
	line	285
	
i1l2417:	
;main.c: 283: {
;main.c: 285: velocidade[0] = '0';
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Fuzzy+0)+0
	movf	(??_Fuzzy+0)+0,w
	movwf	(Fuzzy@velocidade)
	goto	i1l2419
	line	286
	
i1l179:	
	line	287
	
i1l2419:	
;main.c: 286: }
;main.c: 287: if(ativa_fan > 2.5 && ativa_fan < 7.5)
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0x20
	movwf	(___ftge@ff1+1)
	movlw	0x40
	movwf	(___ftge@ff1+2)
	movf	(_ativa_fan+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_ativa_fan),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u242_21
	goto	u242_20
u242_21:
	goto	i1l2425
u242_20:
	
i1l2421:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ativa_fan+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_ativa_fan),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xf0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l2425
u243_20:
	line	290
	
i1l2423:	
;main.c: 288: {
;main.c: 290: velocidade[0] = '7';
	movlw	(037h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Fuzzy+0)+0
	movf	(??_Fuzzy+0)+0,w
	movwf	(Fuzzy@velocidade)
	goto	i1l2425
	line	291
	
i1l180:	
	line	293
	
i1l2425:	
;main.c: 291: }
;main.c: 293: if(ativa_fan >= 7.5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ativa_fan+1),w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_ativa_fan),w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xf0
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l2429
u244_20:
	line	296
	
i1l2427:	
;main.c: 294: {
;main.c: 296: velocidade[0] = '9';
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Fuzzy+0)+0
	movf	(??_Fuzzy+0)+0,w
	movwf	(Fuzzy@velocidade)
	goto	i1l2429
	line	297
	
i1l181:	
	line	300
	
i1l2429:	
;main.c: 297: }
;main.c: 300: deltaV = fop_rule1*100;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_fop_rule1+1),w
	clrf	(i1___wmul@multiplier+1)
	addwf	(i1___wmul@multiplier+1)
	movf	(_fop_rule1),w
	clrf	(i1___wmul@multiplier)
	addwf	(i1___wmul@multiplier)

	movlw	low(064h)
	movwf	(i1___wmul@multiplicand)
	movlw	high(064h)
	movwf	((i1___wmul@multiplicand))+1
	fcall	i1___wmul
	movf	(1+(?i1___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_deltaV+1)^080h
	addwf	(_deltaV+1)^080h
	movf	(0+(?i1___wmul)),w
	clrf	(_deltaV)^080h
	addwf	(_deltaV)^080h

	line	301
	
i1l2431:	
;main.c: 301: if(ativa_fan*100 >= 0 && ativa_fan*100 < 1024 ){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ativa_fan+1),w
	clrf	(i1___wmul@multiplier+1)
	addwf	(i1___wmul@multiplier+1)
	movf	(_ativa_fan),w
	clrf	(i1___wmul@multiplier)
	addwf	(i1___wmul@multiplier)

	movlw	low(064h)
	movwf	(i1___wmul@multiplicand)
	movlw	high(064h)
	movwf	((i1___wmul@multiplicand))+1
	fcall	i1___wmul
	movlw	high(0400h)
	subwf	(1+(?i1___wmul)),w
	movlw	low(0400h)
	skipnz
	subwf	(0+(?i1___wmul)),w
	skipnc
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l2435
u245_20:
	line	302
	
i1l2433:	
;main.c: 302: PWM_DutyCycle2(ativa_fan*100);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ativa_fan+1),w
	clrf	(i1___wmul@multiplier+1)
	addwf	(i1___wmul@multiplier+1)
	movf	(_ativa_fan),w
	clrf	(i1___wmul@multiplier)
	addwf	(i1___wmul@multiplier)

	movlw	low(064h)
	movwf	(i1___wmul@multiplicand)
	movlw	high(064h)
	movwf	((i1___wmul@multiplicand))+1
	fcall	i1___wmul
	movf	(1+(?i1___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	(0+(?i1___wmul)),w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	line	303
;main.c: 303: }else
	goto	i1l2437
	
i1l182:	
	line	305
	
i1l2435:	
;main.c: 304: {
;main.c: 305: PWM_DutyCycle2(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i1PWM_DutyCycle2@valor)
	movlw	high(0)
	movwf	((i1PWM_DutyCycle2@valor))+1
	fcall	i1_PWM_DutyCycle2
	goto	i1l2437
	line	306
	
i1l183:	
	line	308
	
i1l2437:	
;main.c: 306: }
;main.c: 308: rpm = ativa_fan;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ativa_fan+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm+1)^080h
	addwf	(_rpm+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ativa_fan),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm)^080h
	addwf	(_rpm)^080h

	line	309
	
i1l184:	
	return
	opt stack 0
GLOBAL	__end_of_Fuzzy
	__end_of_Fuzzy:
	signat	_Fuzzy,4216
	global	i1___wmul

;; *************** function i1___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    8[COMMON] unsigned int 
;;  multiplicand    2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __wmul          2   12[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fuzzy
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext28
__ptext28:	;psect for function i1___wmul
psect	text28
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_ofi1___wmul
	__size_ofi1___wmul	equ	__end_ofi1___wmul-i1___wmul
	
i1___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in i1___wmul: [wreg+status,2+status,0]
	line	43
	
i1l2317:	
	clrf	(i1___wmul@product)
	clrf	(i1___wmul@product+1)
	goto	i1l2319
	line	44
	
i1l606:	
	line	45
	
i1l2319:	
	btfss	(i1___wmul@multiplier),(0)&7
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l607
u223_20:
	line	46
	
i1l2321:	
	movf	(i1___wmul@multiplicand),w
	addwf	(i1___wmul@product),f
	skipnc
	incf	(i1___wmul@product+1),f
	movf	(i1___wmul@multiplicand+1),w
	addwf	(i1___wmul@product+1),f
	
i1l607:	
	line	47
	movlw	01h
	
u224_25:
	clrc
	rlf	(i1___wmul@multiplicand),f
	rlf	(i1___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u224_25
	line	48
	
i1l2323:	
	movlw	01h
	
u225_25:
	clrc
	rrf	(i1___wmul@multiplier+1),f
	rrf	(i1___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u225_25
	line	49
	movf	((i1___wmul@multiplier+1)),w
	iorwf	((i1___wmul@multiplier)),w
	skipz
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l2319
u226_20:
	goto	i1l2325
	
i1l608:	
	line	52
	
i1l2325:	
	movf	(i1___wmul@product+1),w
	clrf	(?i1___wmul+1)
	addwf	(?i1___wmul+1)
	movf	(i1___wmul@product),w
	clrf	(?i1___wmul)
	addwf	(?i1___wmul)

	goto	i1l609
	
i1l2327:	
	line	53
	
i1l609:	
	return
	opt stack 0
GLOBAL	__end_ofi1___wmul
	__end_ofi1___wmul:
	signat	i1___wmul,90
	global	i1_PWM_DutyCycle2

;; *************** function i1_PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fuzzy
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
	line	96
global __ptext29
__ptext29:	;psect for function i1_PWM_DutyCycle2
psect	text29
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\pwm.c"
	line	96
	global	__size_ofi1_PWM_DutyCycle2
	__size_ofi1_PWM_DutyCycle2	equ	__end_ofi1_PWM_DutyCycle2-i1_PWM_DutyCycle2
	
i1_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 4
; Regs used in i1_PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
i1l2313:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(i1PWM_DutyCycle2@valor+1),w
	movwf	(??i1_PWM_DutyCycle2+0)+0+1
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	rlf	(??i1_PWM_DutyCycle2+0)+1,w
	rrf	(??i1_PWM_DutyCycle2+0)+1,f
	rrf	(??i1_PWM_DutyCycle2+0)+0,f
	rlf	(??i1_PWM_DutyCycle2+0)+1,w
	rrf	(??i1_PWM_DutyCycle2+0)+1,f
	rrf	(??i1_PWM_DutyCycle2+0)+0,f
	movf	0+(??i1_PWM_DutyCycle2+0)+0,w
	movwf	(27)	;volatile
	line	99
	
i1l2315:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	movlw	(04h)-1
u222_25:
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,f
	addlw	-1
	skipz
	goto	u222_25
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,w
	iorlw	0Ch
	movwf	(29)	;volatile
	line	100
	
i1l447:	
	return
	opt stack 0
GLOBAL	__end_ofi1_PWM_DutyCycle2
	__end_ofi1_PWM_DutyCycle2:
	signat	i1_PWM_DutyCycle2,88
	global	_trimf

;; *************** function _trimf *****************
;; Defined at:
;;		line 78 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] unsigned int 
;;  a               2    2[BANK0 ] unsigned int 
;;  b               2    4[BANK0 ] unsigned int 
;;  c               2    6[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ua              2   12[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         6       8       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___lwdiv
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	78
global __ptext30
__ptext30:	;psect for function _trimf
psect	text30
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	78
	global	__size_of_trimf
	__size_of_trimf	equ	__end_of_trimf-_trimf
	
_trimf:	
;incstack = 0
	opt	stack 2
; Regs used in _trimf: [wreg+status,2+status,0+pclath+cstack]
	line	80
	
i1l2081:	
;main.c: 80: unsigned int ua = 0;
	clrf	(trimf@ua)
	clrf	(trimf@ua+1)
	line	82
	
i1l2083:	
;main.c: 82: if (x <= a)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@x+1),w
	subwf	(trimf@a+1),w
	skipz
	goto	u171_25
	movf	(trimf@x),w
	subwf	(trimf@a),w
u171_25:
	skipc
	goto	u171_21
	goto	u171_20
u171_21:
	goto	i1l2087
u171_20:
	line	83
	
i1l2085:	
;main.c: 83: ua = 0;
	clrf	(trimf@ua)
	clrf	(trimf@ua+1)
	goto	i1l2103
	line	84
	
i1l131:	
	
i1l2087:	
;main.c: 84: else if ((a < x) && (x <= b))
	movf	(trimf@x+1),w
	subwf	(trimf@a+1),w
	skipz
	goto	u172_25
	movf	(trimf@x),w
	subwf	(trimf@a),w
u172_25:
	skipnc
	goto	u172_21
	goto	u172_20
u172_21:
	goto	i1l2093
u172_20:
	
i1l2089:	
	movf	(trimf@x+1),w
	subwf	(trimf@b+1),w
	skipz
	goto	u173_25
	movf	(trimf@x),w
	subwf	(trimf@b),w
u173_25:
	skipc
	goto	u173_21
	goto	u173_20
u173_21:
	goto	i1l2093
u173_20:
	line	85
	
i1l2091:	
;main.c: 85: ua = ((x - a) / (b - a));
	comf	(trimf@a),w
	movwf	(??_trimf+0)+0
	comf	(trimf@a+1),w
	movwf	((??_trimf+0)+0+1)
	incf	(??_trimf+0)+0,f
	skipnz
	incf	((??_trimf+0)+0+1),f
	movf	(trimf@b),w
	addwf	0+(??_trimf+0)+0,w
	movwf	(i1___lwdiv@divisor)
	movf	(trimf@b+1),w
	skipnc
	incf	(trimf@b+1),w
	addwf	1+(??_trimf+0)+0,w
	movwf	1+(i1___lwdiv@divisor)
	comf	(trimf@a),w
	movwf	(??_trimf+2)+0
	comf	(trimf@a+1),w
	movwf	((??_trimf+2)+0+1)
	incf	(??_trimf+2)+0,f
	skipnz
	incf	((??_trimf+2)+0+1),f
	movf	(trimf@x),w
	addwf	0+(??_trimf+2)+0,w
	movwf	(i1___lwdiv@dividend)
	movf	(trimf@x+1),w
	skipnc
	incf	(trimf@x+1),w
	addwf	1+(??_trimf+2)+0,w
	movwf	1+(i1___lwdiv@dividend)
	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	clrf	(trimf@ua+1)
	addwf	(trimf@ua+1)
	movf	(0+(?i1___lwdiv)),w
	clrf	(trimf@ua)
	addwf	(trimf@ua)

	goto	i1l2103
	line	86
	
i1l133:	
	
i1l2093:	
;main.c: 86: else if ((b < x) && (x <= c))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@x+1),w
	subwf	(trimf@b+1),w
	skipz
	goto	u174_25
	movf	(trimf@x),w
	subwf	(trimf@b),w
u174_25:
	skipnc
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l2099
u174_20:
	
i1l2095:	
	movf	(trimf@x+1),w
	subwf	(trimf@c+1),w
	skipz
	goto	u175_25
	movf	(trimf@x),w
	subwf	(trimf@c),w
u175_25:
	skipc
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l2099
u175_20:
	line	87
	
i1l2097:	
;main.c: 87: ua = ((x - c) / (b - c));
	comf	(trimf@c),w
	movwf	(??_trimf+0)+0
	comf	(trimf@c+1),w
	movwf	((??_trimf+0)+0+1)
	incf	(??_trimf+0)+0,f
	skipnz
	incf	((??_trimf+0)+0+1),f
	movf	(trimf@b),w
	addwf	0+(??_trimf+0)+0,w
	movwf	(i1___lwdiv@divisor)
	movf	(trimf@b+1),w
	skipnc
	incf	(trimf@b+1),w
	addwf	1+(??_trimf+0)+0,w
	movwf	1+(i1___lwdiv@divisor)
	comf	(trimf@c),w
	movwf	(??_trimf+2)+0
	comf	(trimf@c+1),w
	movwf	((??_trimf+2)+0+1)
	incf	(??_trimf+2)+0,f
	skipnz
	incf	((??_trimf+2)+0+1),f
	movf	(trimf@x),w
	addwf	0+(??_trimf+2)+0,w
	movwf	(i1___lwdiv@dividend)
	movf	(trimf@x+1),w
	skipnc
	incf	(trimf@x+1),w
	addwf	1+(??_trimf+2)+0,w
	movwf	1+(i1___lwdiv@dividend)
	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	clrf	(trimf@ua+1)
	addwf	(trimf@ua+1)
	movf	(0+(?i1___lwdiv)),w
	clrf	(trimf@ua)
	addwf	(trimf@ua)

	goto	i1l2103
	line	88
	
i1l135:	
	
i1l2099:	
;main.c: 88: else if (x > c)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@x+1),w
	subwf	(trimf@c+1),w
	skipz
	goto	u176_25
	movf	(trimf@x),w
	subwf	(trimf@c),w
u176_25:
	skipnc
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l2103
u176_20:
	line	89
	
i1l2101:	
;main.c: 89: ua = 0;
	clrf	(trimf@ua)
	clrf	(trimf@ua+1)
	goto	i1l2103
	
i1l137:	
	goto	i1l2103
	line	91
	
i1l136:	
	goto	i1l2103
	
i1l134:	
	goto	i1l2103
	
i1l132:	
	
i1l2103:	
;main.c: 91: return(ua);
	movf	(trimf@ua+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_trimf+1)
	addwf	(?_trimf+1)
	movf	(trimf@ua),w
	clrf	(?_trimf)
	addwf	(?_trimf)

	goto	i1l138
	
i1l2105:	
	line	92
	
i1l138:	
	return
	opt stack 0
GLOBAL	__end_of_trimf
	__end_of_trimf:
	signat	_trimf,16506
	global	_trapmf

;; *************** function _trapmf *****************
;; Defined at:
;;		line 97 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[BANK0 ] unsigned int 
;;  a               2    2[BANK0 ] unsigned int 
;;  b               2    4[BANK0 ] unsigned int 
;;  c               2    6[BANK0 ] unsigned int 
;;  d               2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  ua              2   12[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      10       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1___lwdiv
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	97
global __ptext31
__ptext31:	;psect for function _trapmf
psect	text31
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	97
	global	__size_of_trapmf
	__size_of_trapmf	equ	__end_of_trapmf-_trapmf
	
_trapmf:	
;incstack = 0
	opt	stack 2
; Regs used in _trapmf: [wreg+status,2+status,0+pclath+cstack]
	line	99
	
i1l2107:	
;main.c: 99: unsigned int ua = 0;
	clrf	(trapmf@ua)
	clrf	(trapmf@ua+1)
	line	101
	
i1l2109:	
;main.c: 101: if (x <= a)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@x+1),w
	subwf	(trapmf@a+1),w
	skipz
	goto	u177_25
	movf	(trapmf@x),w
	subwf	(trapmf@a),w
u177_25:
	skipc
	goto	u177_21
	goto	u177_20
u177_21:
	goto	i1l2113
u177_20:
	line	102
	
i1l2111:	
;main.c: 102: ua = 0;
	clrf	(trapmf@ua)
	clrf	(trapmf@ua+1)
	goto	i1l2135
	line	103
	
i1l141:	
	
i1l2113:	
;main.c: 103: else if ((a < x) && (x <= b))
	movf	(trapmf@x+1),w
	subwf	(trapmf@a+1),w
	skipz
	goto	u178_25
	movf	(trapmf@x),w
	subwf	(trapmf@a),w
u178_25:
	skipnc
	goto	u178_21
	goto	u178_20
u178_21:
	goto	i1l2119
u178_20:
	
i1l2115:	
	movf	(trapmf@x+1),w
	subwf	(trapmf@b+1),w
	skipz
	goto	u179_25
	movf	(trapmf@x),w
	subwf	(trapmf@b),w
u179_25:
	skipc
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l2119
u179_20:
	line	104
	
i1l2117:	
;main.c: 104: ua = ((x - a) / (b - a));
	comf	(trapmf@a),w
	movwf	(??_trapmf+0)+0
	comf	(trapmf@a+1),w
	movwf	((??_trapmf+0)+0+1)
	incf	(??_trapmf+0)+0,f
	skipnz
	incf	((??_trapmf+0)+0+1),f
	movf	(trapmf@b),w
	addwf	0+(??_trapmf+0)+0,w
	movwf	(i1___lwdiv@divisor)
	movf	(trapmf@b+1),w
	skipnc
	incf	(trapmf@b+1),w
	addwf	1+(??_trapmf+0)+0,w
	movwf	1+(i1___lwdiv@divisor)
	comf	(trapmf@a),w
	movwf	(??_trapmf+2)+0
	comf	(trapmf@a+1),w
	movwf	((??_trapmf+2)+0+1)
	incf	(??_trapmf+2)+0,f
	skipnz
	incf	((??_trapmf+2)+0+1),f
	movf	(trapmf@x),w
	addwf	0+(??_trapmf+2)+0,w
	movwf	(i1___lwdiv@dividend)
	movf	(trapmf@x+1),w
	skipnc
	incf	(trapmf@x+1),w
	addwf	1+(??_trapmf+2)+0,w
	movwf	1+(i1___lwdiv@dividend)
	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	clrf	(trapmf@ua+1)
	addwf	(trapmf@ua+1)
	movf	(0+(?i1___lwdiv)),w
	clrf	(trapmf@ua)
	addwf	(trapmf@ua)

	goto	i1l2135
	line	105
	
i1l143:	
	
i1l2119:	
;main.c: 105: else if ((b <= x) && (x <= c))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@b+1),w
	subwf	(trapmf@x+1),w
	skipz
	goto	u180_25
	movf	(trapmf@b),w
	subwf	(trapmf@x),w
u180_25:
	skipc
	goto	u180_21
	goto	u180_20
u180_21:
	goto	i1l2125
u180_20:
	
i1l2121:	
	movf	(trapmf@x+1),w
	subwf	(trapmf@c+1),w
	skipz
	goto	u181_25
	movf	(trapmf@x),w
	subwf	(trapmf@c),w
u181_25:
	skipc
	goto	u181_21
	goto	u181_20
u181_21:
	goto	i1l2125
u181_20:
	line	106
	
i1l2123:	
;main.c: 106: ua = 1;
	movlw	low(01h)
	movwf	(trapmf@ua)
	movlw	high(01h)
	movwf	((trapmf@ua))+1
	goto	i1l2135
	line	107
	
i1l145:	
	
i1l2125:	
;main.c: 107: else if ((c < x) && (x <= d))
	movf	(trapmf@x+1),w
	subwf	(trapmf@c+1),w
	skipz
	goto	u182_25
	movf	(trapmf@x),w
	subwf	(trapmf@c),w
u182_25:
	skipnc
	goto	u182_21
	goto	u182_20
u182_21:
	goto	i1l2131
u182_20:
	
i1l2127:	
	movf	(trapmf@x+1),w
	subwf	(trapmf@d+1),w
	skipz
	goto	u183_25
	movf	(trapmf@x),w
	subwf	(trapmf@d),w
u183_25:
	skipc
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l2131
u183_20:
	line	108
	
i1l2129:	
;main.c: 108: ua = ((d - x) / (d - c));
	comf	(trapmf@c),w
	movwf	(??_trapmf+0)+0
	comf	(trapmf@c+1),w
	movwf	((??_trapmf+0)+0+1)
	incf	(??_trapmf+0)+0,f
	skipnz
	incf	((??_trapmf+0)+0+1),f
	movf	(trapmf@d),w
	addwf	0+(??_trapmf+0)+0,w
	movwf	(i1___lwdiv@divisor)
	movf	(trapmf@d+1),w
	skipnc
	incf	(trapmf@d+1),w
	addwf	1+(??_trapmf+0)+0,w
	movwf	1+(i1___lwdiv@divisor)
	comf	(trapmf@x),w
	movwf	(??_trapmf+2)+0
	comf	(trapmf@x+1),w
	movwf	((??_trapmf+2)+0+1)
	incf	(??_trapmf+2)+0,f
	skipnz
	incf	((??_trapmf+2)+0+1),f
	movf	(trapmf@d),w
	addwf	0+(??_trapmf+2)+0,w
	movwf	(i1___lwdiv@dividend)
	movf	(trapmf@d+1),w
	skipnc
	incf	(trapmf@d+1),w
	addwf	1+(??_trapmf+2)+0,w
	movwf	1+(i1___lwdiv@dividend)
	fcall	i1___lwdiv
	movf	(1+(?i1___lwdiv)),w
	clrf	(trapmf@ua+1)
	addwf	(trapmf@ua+1)
	movf	(0+(?i1___lwdiv)),w
	clrf	(trapmf@ua)
	addwf	(trapmf@ua)

	goto	i1l2135
	line	109
	
i1l147:	
	
i1l2131:	
;main.c: 109: else if (x > d)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@x+1),w
	subwf	(trapmf@d+1),w
	skipz
	goto	u184_25
	movf	(trapmf@x),w
	subwf	(trapmf@d),w
u184_25:
	skipnc
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l2135
u184_20:
	line	110
	
i1l2133:	
;main.c: 110: ua = 0;
	clrf	(trapmf@ua)
	clrf	(trapmf@ua+1)
	goto	i1l2135
	
i1l149:	
	goto	i1l2135
	line	112
	
i1l148:	
	goto	i1l2135
	
i1l146:	
	goto	i1l2135
	
i1l144:	
	goto	i1l2135
	
i1l142:	
	
i1l2135:	
;main.c: 112: return(ua);
	movf	(trapmf@ua+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_trapmf+1)
	addwf	(?_trapmf+1)
	movf	(trapmf@ua),w
	clrf	(?_trapmf)
	addwf	(?_trapmf)

	goto	i1l150
	
i1l2137:	
	line	113
	
i1l150:	
	return
	opt stack 0
GLOBAL	__end_of_trapmf
	__end_of_trapmf:
	signat	_trapmf,20602
	global	i1___lwdiv

;; *************** function i1___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __lwdiv         2    5[COMMON] unsigned int 
;;  __lwdiv         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_trimf
;;		_trapmf
;;		_Fuzzy
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext32
__ptext32:	;psect for function i1___lwdiv
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_ofi1___lwdiv
	__size_ofi1___lwdiv	equ	__end_ofi1___lwdiv-i1___lwdiv
	
i1___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in i1___lwdiv: [wreg+status,2+status,0]
	line	14
	
i1l2055:	
	clrf	(i1___lwdiv@quotient)
	clrf	(i1___lwdiv@quotient+1)
	line	15
	
i1l2057:	
	movf	(i1___lwdiv@divisor+1),w
	iorwf	(i1___lwdiv@divisor),w
	skipnz
	goto	u164_21
	goto	u164_20
u164_21:
	goto	i1l2077
u164_20:
	line	16
	
i1l2059:	
	clrf	(i1___lwdiv@counter)
	incf	(i1___lwdiv@counter),f
	line	17
	goto	i1l2065
	
i1l943:	
	line	18
	
i1l2061:	
	movlw	01h
	
u165_25:
	clrc
	rlf	(i1___lwdiv@divisor),f
	rlf	(i1___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u165_25
	line	19
	
i1l2063:	
	movlw	(01h)
	movwf	(??i1___lwdiv+0)+0
	movf	(??i1___lwdiv+0)+0,w
	addwf	(i1___lwdiv@counter),f
	goto	i1l2065
	line	20
	
i1l942:	
	line	17
	
i1l2065:	
	btfss	(i1___lwdiv@divisor+1),(15)&7
	goto	u166_21
	goto	u166_20
u166_21:
	goto	i1l2061
u166_20:
	goto	i1l2067
	
i1l944:	
	goto	i1l2067
	line	21
	
i1l945:	
	line	22
	
i1l2067:	
	movlw	01h
	
u167_25:
	clrc
	rlf	(i1___lwdiv@quotient),f
	rlf	(i1___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u167_25
	line	23
	movf	(i1___lwdiv@divisor+1),w
	subwf	(i1___lwdiv@dividend+1),w
	skipz
	goto	u168_25
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),w
u168_25:
	skipc
	goto	u168_21
	goto	u168_20
u168_21:
	goto	i1l2073
u168_20:
	line	24
	
i1l2069:	
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),f
	movf	(i1___lwdiv@divisor+1),w
	skipc
	decf	(i1___lwdiv@dividend+1),f
	subwf	(i1___lwdiv@dividend+1),f
	line	25
	
i1l2071:	
	bsf	(i1___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l2073
	line	26
	
i1l946:	
	line	27
	
i1l2073:	
	movlw	01h
	
u169_25:
	clrc
	rrf	(i1___lwdiv@divisor+1),f
	rrf	(i1___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u169_25
	line	28
	
i1l2075:	
	movlw	low(01h)
	subwf	(i1___lwdiv@counter),f
	btfss	status,2
	goto	u170_21
	goto	u170_20
u170_21:
	goto	i1l2067
u170_20:
	goto	i1l2077
	
i1l947:	
	goto	i1l2077
	line	29
	
i1l941:	
	line	30
	
i1l2077:	
	movf	(i1___lwdiv@quotient+1),w
	clrf	(?i1___lwdiv+1)
	addwf	(?i1___lwdiv+1)
	movf	(i1___lwdiv@quotient),w
	clrf	(?i1___lwdiv)
	addwf	(?i1___lwdiv)

	goto	i1l948
	
i1l2079:	
	line	31
	
i1l948:	
	return
	opt stack 0
GLOBAL	__end_ofi1___lwdiv
	__end_ofi1___lwdiv:
	signat	i1___lwdiv,90
	global	_max_val

;; *************** function _max_val *****************
;; Defined at:
;;		line 127 in file "C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] unsigned int 
;;  b               2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	127
global __ptext33
__ptext33:	;psect for function _max_val
psect	text33
	file	"C:\Users\Ninguem\Desktop\Trabalho Sistemas Inteligentes Cruzeiro\Retrab C no MPLAB\main.c"
	line	127
	global	__size_of_max_val
	__size_of_max_val	equ	__end_of_max_val-_max_val
	
_max_val:	
;incstack = 0
	opt	stack 3
; Regs used in _max_val: [wreg+status,2+status,0]
	line	129
	
i1l2139:	
;main.c: 129: if (a > b)
	movf	(max_val@a+1),w
	subwf	(max_val@b+1),w
	skipz
	goto	u185_25
	movf	(max_val@a),w
	subwf	(max_val@b),w
u185_25:
	skipnc
	goto	u185_21
	goto	u185_20
u185_21:
	goto	i1l2145
u185_20:
	line	130
	
i1l2141:	
;main.c: 130: return a;
	goto	i1l159
	
i1l2143:	
	goto	i1l159
	line	131
	
i1l158:	
	line	132
	
i1l2145:	
;main.c: 131: else
;main.c: 132: return b;
	movf	(max_val@b+1),w
	clrf	(?_max_val+1)
	addwf	(?_max_val+1)
	movf	(max_val@b),w
	clrf	(?_max_val)
	addwf	(?_max_val)

	goto	i1l159
	
i1l2147:	
	goto	i1l159
	
i1l160:	
	line	133
	
i1l159:	
	return
	opt stack 0
GLOBAL	__end_of_max_val
	__end_of_max_val:
	signat	_max_val,8314
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext34
__ptext34:	;psect for function ___lwtoft
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
i1l2301:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	i1l963
	
i1l2303:	
	line	31
	
i1l963:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext35
__ptext35:	;psect for function ___ftpack
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l2021:	
	movf	(___ftpack@exp),w
	skipz
	goto	u152_20
	goto	i1l2025
u152_20:
	
i1l2023:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l2031
u153_20:
	goto	i1l2025
	
i1l763:	
	line	65
	
i1l2025:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l764
	
i1l2027:	
	goto	i1l764
	
i1l761:	
	line	66
	goto	i1l2031
	
i1l766:	
	line	67
	
i1l2029:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u154_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u154_25

	goto	i1l2031
	line	69
	
i1l765:	
	line	66
	
i1l2031:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l2029
u155_20:
	goto	i1l768
	
i1l767:	
	line	70
	goto	i1l768
	
i1l769:	
	line	71
	
i1l2033:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l2035:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
i1l2037:	
	movlw	01h
u156_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u156_25

	line	74
	
i1l768:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l2033
u157_20:
	goto	i1l2041
	
i1l770:	
	line	75
	goto	i1l2041
	
i1l772:	
	line	76
	
i1l2039:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u158_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u158_25
	goto	i1l2041
	line	78
	
i1l771:	
	line	75
	
i1l2041:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u159_21
	goto	u159_20
u159_21:
	goto	i1l2039
u159_20:
	
i1l773:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u160_21
	goto	u160_20
u160_21:
	goto	i1l774
u160_20:
	line	80
	
i1l2043:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l774:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l2045:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u161_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u161_20:
	addlw	-1
	skipz
	goto	u161_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l2047:	
	movf	(___ftpack@sign),w
	skipz
	goto	u162_20
	goto	i1l775
u162_20:
	line	84
	
i1l2049:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l775:	
	line	85
	line	86
	
i1l764:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext36
__ptext36:	;psect for function ___ftge
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
i1l2233:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l2237
u203_20:
	line	7
	
i1l2235:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u204_21
	goto	u204_22
u204_21:
	addwf	(??___ftge+0)+1,f
	
u204_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u204_23
	goto	u204_24
u204_23:
	addwf	(??___ftge+0)+2,f
	
u204_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	i1l2237
	
i1l821:	
	line	8
	
i1l2237:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u205_21
	goto	u205_20
u205_21:
	goto	i1l2241
u205_20:
	line	9
	
i1l2239:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u206_21
	goto	u206_22
u206_21:
	addwf	(??___ftge+0)+1,f
	
u206_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u206_23
	goto	u206_24
u206_23:
	addwf	(??___ftge+0)+2,f
	
u206_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	i1l2241
	
i1l822:	
	line	10
	
i1l2241:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
i1l2243:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
i1l2245:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u207_25
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u207_25
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u207_25:
	skipnc
	goto	u207_21
	goto	u207_20
u207_21:
	goto	i1l2249
u207_20:
	
i1l2247:	
	clrc
	
	goto	i1l823
	
i1l2017:	
	
i1l2249:	
	setc
	
	goto	i1l823
	
i1l2019:	
	goto	i1l823
	
i1l2251:	
	line	13
	
i1l823:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
