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
	FNCALL	_main,_sprintf
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,_isdigit
	FNCALL	_USART_Init,___aldiv
	FNCALL	_LCD_WriteString,_LCD_WriteData
	FNCALL	_LCD_Init,_LCD_WriteCmd
	FNCALL	_LCD_Clear,_LCD_WriteCmd
	FNROOT	_main
	FNCALL	_ISR,_Fuzzy
	FNCALL	_ISR,_USART_ReceiveChar
	FNCALL	_ISR,_USART_WriteString
	FNCALL	_ISR,___lwtoft
	FNCALL	_ISR,_send
	FNCALL	_ISR,i1_PWM_DutyCycle2
	FNCALL	_ISR,i1_TIMER0_Set
	FNCALL	_ISR,i1___lwdiv
	FNCALL	_ISR,i1___wmul
	FNCALL	_send,_USART_WriteChar
	FNCALL	_USART_ReceiveChar,_USART_WriteString
	FNCALL	_USART_WriteString,_USART_WriteChar
	FNCALL	_Fuzzy,___ftadd
	FNCALL	_Fuzzy,___ftdiv
	FNCALL	_Fuzzy,___ftge
	FNCALL	_Fuzzy,___ftmul
	FNCALL	_Fuzzy,___ftneg
	FNCALL	_Fuzzy,___fttol
	FNCALL	_Fuzzy,___lwtoft
	FNCALL	_Fuzzy,_max_val
	FNCALL	_Fuzzy,_trapmf
	FNCALL	_Fuzzy,_trimf
	FNCALL	_Fuzzy,i1_PWM_DutyCycle2
	FNCALL	_trimf,___ftadd
	FNCALL	_trimf,___ftdiv
	FNCALL	_trimf,___ftge
	FNCALL	_trimf,___ftneg
	FNCALL	_trapmf,___ftadd
	FNCALL	_trapmf,___ftdiv
	FNCALL	_trapmf,___ftge
	FNCALL	_trapmf,___ftneg
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_max_val,___ftge
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_tf
	global	_setpoint
	global	_pas_cooler
	global	_pwm
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	57

;initializer for _tf
	retlw	0x0
	retlw	0x48
	retlw	0x42

psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	line	58

;initializer for _setpoint
	retlw	0x0
	retlw	0xa0
	retlw	0x41

	line	26

;initializer for _pas_cooler
	retlw	07h
	retlw	0

psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	line	29

;initializer for _pwm
	retlw	032h
	retlw	0

	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
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
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
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
	global	_ativa_fan
	global	_fitemp
	global	_fop_rule1
	global	_fop_rule2
	global	_fop_rule3
	global	_sum
	global	_total_area
	global	_x
	global	_y
	global	_ADCResult
	global	_contagens_tm0
	global	_deltaV
	global	_pulsos
	global	_rpm
	global	_setpointUI
	global	_status
	global	_buffer
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
	
STR_5:	
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
psect	strings
	
STR_2:	
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
psect	strings
	
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
psect	strings
	
STR_4:	
	retlw	82	;'R'
	retlw	80	;'P'
	retlw	77	;'M'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	37	;'%'
	retlw	48	;'0'
	retlw	52	;'4'
	retlw	100	;'d'
	retlw	0
psect	strings
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
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	57
_tf:
       ds      3

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_ativa_fan:
       ds      3

_fitemp:
       ds      3

_fop_rule1:
       ds      3

_fop_rule2:
       ds      3

_fop_rule3:
       ds      3

_sum:
       ds      3

_total_area:
       ds      3

_x:
       ds      3

_y:
       ds      3

_ADCResult:
       ds      2

_contagens_tm0:
       ds      2

_deltaV:
       ds      2

_pulsos:
       ds      2

_rpm:
       ds      2

_setpointUI:
       ds      2

_status:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	58
_setpoint:
       ds      3

psect	dataBANK1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	26
_pas_cooler:
       ds      2

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_buffer:
       ds      7

_display_rpm:
       ds      10

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	29
_pwm:
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

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+029h)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+011h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK3
	global __pidataBANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	fcall	__pidataBANK3+0		;fetch initializer
	movwf	__pdataBANK3+0&07fh		
	fcall	__pidataBANK3+1		;fetch initializer
	movwf	__pdataBANK3+1&07fh		
; Initialize objects allocated to BANK1
	global __pidataBANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	fcall	__pidataBANK1+0		;fetch initializer
	movwf	__pdataBANK1+0&07fh		
	fcall	__pidataBANK1+1		;fetch initializer
	movwf	__pdataBANK1+1&07fh		
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
?_PWM_DutyCycle2:	; 0 bytes @ 0x0
??_TIMER0_Set:	; 0 bytes @ 0x0
??_TIMER0_Init:	; 0 bytes @ 0x0
??_ADC_Init:	; 0 bytes @ 0x0
??_PWM_Init:	; 0 bytes @ 0x0
?_LCD_Cursor:	; 0 bytes @ 0x0
?_PWM_DutyCycle1:	; 0 bytes @ 0x0
??_isdigit:	; 0 bytes @ 0x0
??_LCD_WriteCmd:	; 0 bytes @ 0x0
??_LCD_WriteData:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	TIMER0_Set@contagens
TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	LCD_Cursor@Col
LCD_Cursor@Col:	; 1 bytes @ 0x0
	global	_isdigit$1439
_isdigit$1439:	; 1 bytes @ 0x0
	global	PWM_DutyCycle1@valor
PWM_DutyCycle1@valor:	; 2 bytes @ 0x0
	global	PWM_DutyCycle2@valor
PWM_DutyCycle2@valor:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
??_LCD_Cursor:	; 0 bytes @ 0x1
	global	LCD_WriteCmd@Byte
LCD_WriteCmd@Byte:	; 1 bytes @ 0x1
	global	LCD_WriteData@Byte
LCD_WriteData@Byte:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
??_PWM_DutyCycle2:	; 0 bytes @ 0x2
??_LCD_Init:	; 0 bytes @ 0x2
?_LCD_WriteString:	; 0 bytes @ 0x2
??_PWM_DutyCycle1:	; 0 bytes @ 0x2
??_LCD_Clear:	; 0 bytes @ 0x2
	global	LCD_Cursor@Row
LCD_Cursor@Row:	; 1 bytes @ 0x2
	global	LCD_WriteString@Str
LCD_WriteString@Str:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
??_LCD_WriteString:	; 0 bytes @ 0x4
??___wmul:	; 0 bytes @ 0x4
??___lwdiv:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
??___aldiv:	; 0 bytes @ 0x8
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x9
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0xA
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xB
	ds	1
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0xE
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0xE
	ds	1
?_USART_Init:	; 0 bytes @ 0xF
	global	USART_Init@BaudRate
USART_Init@BaudRate:	; 4 bytes @ 0xF
	ds	2
??_sprintf:	; 0 bytes @ 0x11
	ds	2
??_USART_Init:	; 0 bytes @ 0x13
	ds	1
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x14
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x15
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x16
	ds	4
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x1A
	ds	1
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0x1B
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1D
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x1E
	ds	1
??_main:	; 0 bytes @ 0x1F
	ds	3
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_USART_WriteChar:	; 0 bytes @ 0x0
??_USART_WriteChar:	; 0 bytes @ 0x0
?_USART_WriteString:	; 0 bytes @ 0x0
?_TIMER0_Set:	; 0 bytes @ 0x0
?_TIMER0_Init:	; 0 bytes @ 0x0
?_ADC_Init:	; 0 bytes @ 0x0
?_PWM_Init:	; 0 bytes @ 0x0
?_LCD_Init:	; 0 bytes @ 0x0
?_LCD_Clear:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_send:	; 0 bytes @ 0x0
?_Fuzzy:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_LCD_WriteCmd:	; 0 bytes @ 0x0
?_LCD_WriteData:	; 0 bytes @ 0x0
?i1_TIMER0_Set:	; 0 bytes @ 0x0
??i1_TIMER0_Set:	; 0 bytes @ 0x0
?_USART_ReceiveChar:	; 1 bytes @ 0x0
	global	?i1___lwdiv
?i1___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	USART_WriteChar@byte
USART_WriteChar@byte:	; 1 bytes @ 0x0
	global	i1TIMER0_Set@contagens
i1TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	i1___lwdiv@divisor
i1___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
??_USART_WriteString:	; 0 bytes @ 0x1
??_send:	; 0 bytes @ 0x1
	ds	1
	global	send@checksum
send@checksum:	; 1 bytes @ 0x2
	global	USART_WriteString@str
USART_WriteString@str:	; 1 bytes @ 0x2
	global	i1___lwdiv@dividend
i1___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_USART_ReceiveChar:	; 0 bytes @ 0x3
	global	send@index
send@index:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
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
	global	?i1___wmul
?i1___wmul:	; 2 bytes @ 0x8
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	i1___wmul@multiplier
i1___wmul@multiplier:	; 2 bytes @ 0x8
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x8
	ds	2
	global	i1___wmul@multiplicand
i1___wmul@multiplicand:	; 2 bytes @ 0xA
	ds	1
??___lwtoft:	; 0 bytes @ 0xB
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xB
	ds	1
??_trimf:	; 0 bytes @ 0xC
??_trapmf:	; 0 bytes @ 0xC
??_max_val:	; 0 bytes @ 0xC
??___ftneg:	; 0 bytes @ 0xC
??i1_PWM_DutyCycle2:	; 0 bytes @ 0xC
??i1___wmul:	; 0 bytes @ 0xC
	global	i1___wmul@product
i1___wmul@product:	; 2 bytes @ 0xC
	ds	2
??_Fuzzy:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftmul:	; 0 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	ds	3
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x3
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x3
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x4
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x5
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x6
	ds	2
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x8
	ds	1
??___ftadd:	; 0 bytes @ 0x9
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x9
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0xD
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xE
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0xF
	ds	1
?___ftge:	; 1 bit 
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x10
	global	?___fttol
?___fttol:	; 4 bytes @ 0x10
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x10
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x10
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x10
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x13
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x13
	ds	1
??___fttol:	; 0 bytes @ 0x14
	ds	2
??___ftdiv:	; 0 bytes @ 0x16
??___ftge:	; 0 bytes @ 0x16
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x18
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x19
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1A
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1B
	ds	1
	global	?_max_val
?_max_val:	; 3 bytes @ 0x1C
	global	max_val@a
max_val@a:	; 3 bytes @ 0x1C
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1D
	ds	1
?i1_PWM_DutyCycle2:	; 0 bytes @ 0x1E
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1E
	global	i1PWM_DutyCycle2@valor
i1PWM_DutyCycle2@valor:	; 2 bytes @ 0x1E
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1F
	global	max_val@b
max_val@b:	; 3 bytes @ 0x1F
	ds	1
	global	?_trimf
?_trimf:	; 3 bytes @ 0x20
	global	?_trapmf
?_trapmf:	; 3 bytes @ 0x20
	global	trimf@x
trimf@x:	; 3 bytes @ 0x20
	global	trapmf@x
trapmf@x:	; 3 bytes @ 0x20
	ds	3
	global	trimf@a
trimf@a:	; 3 bytes @ 0x23
	global	trapmf@a
trapmf@a:	; 3 bytes @ 0x23
	ds	3
	global	trimf@b
trimf@b:	; 3 bytes @ 0x26
	global	trapmf@b
trapmf@b:	; 3 bytes @ 0x26
	ds	3
	global	trimf@c
trimf@c:	; 3 bytes @ 0x29
	global	trapmf@c
trapmf@c:	; 3 bytes @ 0x29
	ds	3
	global	trimf@ua
trimf@ua:	; 3 bytes @ 0x2C
	global	trapmf@d
trapmf@d:	; 3 bytes @ 0x2C
	ds	3
	global	trapmf@ua
trapmf@ua:	; 3 bytes @ 0x2F
	ds	3
	global	Fuzzy@freio
Fuzzy@freio:	; 2 bytes @ 0x32
	ds	2
	global	Fuzzy@tip
Fuzzy@tip:	; 3 bytes @ 0x34
	ds	3
	global	Fuzzy@a
Fuzzy@a:	; 2 bytes @ 0x37
	ds	2
	global	Fuzzy@a_246
Fuzzy@a_246:	; 2 bytes @ 0x39
	ds	2
	global	Fuzzy@a_247
Fuzzy@a_247:	; 2 bytes @ 0x3B
	ds	2
	global	Fuzzy@mantem
Fuzzy@mantem:	; 3 bytes @ 0x3D
	ds	3
	global	Fuzzy@reduz
Fuzzy@reduz:	; 3 bytes @ 0x40
	ds	3
	global	Fuzzy@aumenta
Fuzzy@aumenta:	; 3 bytes @ 0x43
	ds	3
	global	Fuzzy@deltaRpm
Fuzzy@deltaRpm:	; 3 bytes @ 0x46
	ds	3
??_ISR:	; 0 bytes @ 0x49
	ds	4
;!
;!Data Sizes:
;!    Strings     82
;!    Constant    10
;!    Data        10
;!    BSS         58
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     77      80
;!    BANK1            80     34      80
;!    BANK3            96      0      19
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 5
;!		 -> STR_3(CODE[5]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 10
;!		 -> display_rpm(BANK3[10]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK1[2]), 
;!
;!    S1243$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    LCD_WriteString@Str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_4(CODE[6]), display_rpm(BANK3[10]), STR_2(CODE[17]), 
;!
;!    USART_WriteString@str	PTR const unsigned char  size(1) Largest target is 40
;!		 -> STR_5(CODE[40]), STR_1(CODE[14]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->i1_PWM_DutyCycle2
;!    _ISR->i1___wmul
;!    i1___wmul->i1___lwdiv
;!    _send->_USART_WriteChar
;!    _USART_ReceiveChar->_USART_WriteString
;!    _USART_WriteString->_USART_WriteChar
;!    _Fuzzy->___ftmul
;!    _Fuzzy->i1_PWM_DutyCycle2
;!    i1_PWM_DutyCycle2->___lwtoft
;!    ___ftneg->___lwtoft
;!    ___ftadd->___lwtoft
;!    ___ftge->___lwtoft
;!    ___lwtoft->___ftpack
;!    ___fttol->___lwtoft
;!    ___ftmul->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _ISR->_Fuzzy
;!    _Fuzzy->_trapmf
;!    i1_PWM_DutyCycle2->___fttol
;!    _trimf->___ftdiv
;!    _trapmf->___ftdiv
;!    ___ftdiv->___ftadd
;!    ___ftadd->___ftneg
;!    _max_val->___ftge
;!    ___ftge->___ftadd
;!    ___fttol->___ftadd
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!    _sprintf->___lwmod
;!    ___lwmod->___lwdiv
;!    _USART_Init->___aldiv
;!    _LCD_WriteString->_LCD_WriteData
;!    _LCD_Init->_LCD_WriteCmd
;!    _LCD_Clear->_LCD_WriteCmd
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
;! (0) _main                                                 3     3      0    3518
;!                                             31 BANK1      3     3      0
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
;!                            _sprintf
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             17    14      3    2027
;!                                             14 BANK1     17    14      3
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              2     2      0      68
;!                                              0 BANK1      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     296
;!                                              0 BANK1      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     287
;!                                              8 BANK1      6     2      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     366
;!                                              0 BANK1      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _USART_Init                                           8     4      4     514
;!                                             15 BANK1      8     4      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     428
;!                                              0 BANK1     15     7      8
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Set                                           1     1      0      22
;!                                              0 BANK1      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle2                                       4     2      2     222
;!                                              0 BANK1      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle1                                       4     2      2     108
;!                                              0 BANK1      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _LCD_WriteString                                      2     0      2     259
;!                                              2 BANK1      2     0      2
;!                      _LCD_WriteData
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteData                                        2     2      0      22
;!                                              0 BANK1      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      22
;!                                              2 BANK1      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Cursor                                           3     2      1     322
;!                                              0 BANK1      3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Clear                                            2     2      0      22
;!                                              2 BANK1      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteCmd                                         2     2      0      22
;!                                              0 BANK1      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  4     4      0   60496
;!                                             73 BANK0      4     4      0
;!                              _Fuzzy
;!                  _USART_ReceiveChar
;!                  _USART_WriteString
;!                           ___lwtoft
;!                               _send
;!                   i1_PWM_DutyCycle2
;!                       i1_TIMER0_Set
;!                          i1___lwdiv
;!                           i1___wmul
;! ---------------------------------------------------------------------------------
;! (4) i1___wmul                                             6     2      4     144
;!                                              8 COMMON     6     2      4
;!                          i1___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) i1___lwdiv                                            8     4      4     214
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! (4) i1_TIMER0_Set                                         1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _send                                                 3     3      0     136
;!                                              1 COMMON     3     3      0
;!                    _USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (4) _USART_ReceiveChar                                    2     2      0     151
;!                                              3 COMMON     2     2      0
;!                  _USART_WriteString
;! ---------------------------------------------------------------------------------
;! (4) _USART_WriteString                                    2     2      0     127
;!                                              1 COMMON     2     2      0
;!                    _USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (5) _USART_WriteChar                                      1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _Fuzzy                                               23    23      0   56998
;!                                             50 BANK0     23    23      0
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lwtoft
;!                            _max_val
;!                             _trapmf
;!                              _trimf
;!                   i1_PWM_DutyCycle2
;! ---------------------------------------------------------------------------------
;! (4) i1_PWM_DutyCycle2                                     4     2      2     122
;!                                             12 COMMON     2     2      0
;!                                             30 BANK0      2     0      2
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                            ___fttol (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _trimf                                               15     3     12   15310
;!                                             32 BANK0     15     3     12
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (5) _trapmf                                              18     3     15   16167
;!                                             32 BANK0     18     3     15
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftneg
;! ---------------------------------------------------------------------------------
;! (6) ___ftneg                                              3     0      3     813
;!                                              0 BANK0      3     0      3
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftdiv                                             16    10      6    3096
;!                                             16 BANK0     16    10      6
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (6) ___ftadd                                             13     7      6    6190
;!                                              3 BANK0     13     7      6
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _max_val                                              6     0      6    4704
;!                                             28 BANK0      6     0      6
;!                             ___ftge
;! ---------------------------------------------------------------------------------
;! (6) ___ftge                                              12     6      6    4232
;!                                             16 BANK0     12     6      6
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwtoft                                             4     1      3    2582
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___fttol                                             14    10      4     444
;!                                             16 BANK0     14    10      4
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftmul                                             16    10      6    2630
;!                                              8 COMMON     6     0      6
;!                                              0 BANK0     10    10      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___ftpack                                             8     3      5    2048
;!                                              0 COMMON     8     3      5
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
;!   _sprintf
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     ___wmul
;!     _isdigit
;!
;! _ISR (ROOT)
;!   _Fuzzy
;!     ___ftadd
;!       ___ftneg (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftdiv
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!     ___ftge
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul
;!       ___ftpack
;!     ___ftneg
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft
;!       ___ftpack
;!     _max_val
;!       ___ftge
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     _trapmf
;!       ___ftadd
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftdiv
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       ___ftge
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     _trimf
;!       ___ftadd
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftdiv
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!       ___ftge
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     i1_PWM_DutyCycle2
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___fttol (ARG)
;!         ___ftadd (ARG)
;!           ___ftneg (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!   _USART_ReceiveChar
;!     _USART_WriteString
;!       _USART_WriteChar
;!   _USART_WriteString
;!     _USART_WriteChar
;!   ___lwtoft
;!     ___ftpack
;!   _send
;!     _USART_WriteChar
;!   i1_PWM_DutyCycle2
;!     ___ftadd (ARG)
;!       ___ftneg (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftneg (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___fttol (ARG)
;!       ___ftadd (ARG)
;!         ___ftneg (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftneg (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   i1_TIMER0_Set
;!   i1___lwdiv
;!   i1___wmul
;!     i1___lwdiv (ARG)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0      13       9       19.8%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     22      50       7      100.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     4D      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      C1      12        0.0%
;!ABS                  0      0      C1       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 495 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
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
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    7
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
;;		_sprintf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	495
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	495
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	497
	
l3279:	
;main.c: 497: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	498
;main.c: 498: PORTA = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	499
	
l3281:	
;main.c: 499: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	500
	
l3283:	
;main.c: 500: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	501
;main.c: 501: TRISC = 0b10000001;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	502
;main.c: 502: PORTC = 0b11000000;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	503
	
l3285:	
;main.c: 503: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	504
	
l3287:	
;main.c: 504: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	505
	
l3289:	
;main.c: 505: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	506
	
l3291:	
;main.c: 506: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	509
;main.c: 509: T1CON = 0x03;
	movlw	(03h)
	movwf	(16)	;volatile
	line	510
	
l3293:	
;main.c: 510: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	511
	
l3295:	
;main.c: 511: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	514
	
l3297:	
;main.c: 514: USART_Init(115200);
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
	line	515
;main.c: 515: TIMER0_Init();
	fcall	_TIMER0_Init
	line	516
;main.c: 516: ADC_Init();
	fcall	_ADC_Init
	line	517
	
l3299:	
;main.c: 517: PWM_Init();
	fcall	_PWM_Init
	line	518
	
l3301:	
;main.c: 518: LCD_Init();
	fcall	_LCD_Init
	line	521
	
l3303:	
;main.c: 521: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	522
	
l3305:	
;main.c: 522: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	529
	
l3307:	
;main.c: 529: LCD_Init();
	fcall	_LCD_Init
	line	530
	
l3309:	
;main.c: 530: LCD_Cursor(0,0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(LCD_Cursor@Col)^080h
	movlw	(0)
	fcall	_LCD_Cursor
	line	531
	
l3311:	
;main.c: 531: LCD_WriteString("Inicializando...");
	movlw	low((STR_2)-__stringbase)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD_WriteString@Str)^080h
	movlw	80h
	movwf	(LCD_WriteString@Str+1)^080h
	fcall	_LCD_WriteString
	line	534
	
l3313:	
;main.c: 534: PWM_DutyCycle1(0);
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(PWM_DutyCycle1@valor)^080h
	movlw	high(0)
	movwf	((PWM_DutyCycle1@valor)^080h)+1
	fcall	_PWM_DutyCycle1
	line	535
	
l3315:	
;main.c: 535: PWM_DutyCycle2(0);
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(PWM_DutyCycle2@valor)^080h
	movlw	high(0)
	movwf	((PWM_DutyCycle2@valor)^080h)+1
	fcall	_PWM_DutyCycle2
	line	538
	
l3317:	
;main.c: 538: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	_TIMER0_Set
	line	541
	
l3319:	
;main.c: 541: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	97
movwf	((??_main+0)^080h+0+1),f
	movlw	110
movwf	((??_main+0)^080h+0),f
u4107:
	decfsz	((??_main+0)^080h+0),f
	goto	u4107
	decfsz	((??_main+0)^080h+0+1),f
	goto	u4107
	decfsz	((??_main+0)^080h+0+2),f
	goto	u4107
	nop
opt asmopt_on

	line	544
;main.c: 544: while(1)
	
l199:	
	line	549
;main.c: 545: {
;main.c: 549: sprintf(display_rpm,"%04d", rpm);
	movlw	((STR_3)-__stringbase)&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(sprintf@f)^080h
	movf	(_rpm+1)^080h,w
	clrf	1+(?_sprintf)^080h+01h
	addwf	1+(?_sprintf)^080h+01h
	movf	(_rpm)^080h,w
	clrf	0+(?_sprintf)^080h+01h
	addwf	0+(?_sprintf)^080h+01h

	movlw	(_display_rpm)&0ffh
	fcall	_sprintf
	line	552
	
l3321:	
;main.c: 552: LCD_Clear();
	fcall	_LCD_Clear
	line	553
	
l3323:	
;main.c: 553: LCD_Cursor(0,0);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(LCD_Cursor@Col)^080h
	movlw	(0)
	fcall	_LCD_Cursor
	line	554
;main.c: 554: LCD_WriteString("RPM: ");
	movlw	low((STR_4)-__stringbase)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD_WriteString@Str)^080h
	movlw	80h
	movwf	(LCD_WriteString@Str+1)^080h
	fcall	_LCD_WriteString
	line	555
	
l3325:	
;main.c: 555: LCD_Cursor(0,6);
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(LCD_Cursor@Col)^080h
	movlw	(0)
	fcall	_LCD_Cursor
	line	556
	
l3327:	
;main.c: 556: LCD_WriteString(display_rpm);
	movlw	(_display_rpm&0ffh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD_WriteString@Str)^080h
	movlw	(0x1)
	movwf	(LCD_WriteString@Str+1)^080h
	fcall	_LCD_WriteString
	line	559
;main.c: 559: LCD_Cursor(1,6);
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	movwf	(LCD_Cursor@Col)^080h
	movlw	(01h)
	fcall	_LCD_Cursor
	line	562
	
l3329:	
;main.c: 562: _delay((unsigned long)((200)*(18432000/4000.0)));
	opt asmopt_off
movlw  5
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_main+0)^080h+0+2),f
movlw	173
movwf	((??_main+0)^080h+0+1),f
	movlw	224
movwf	((??_main+0)^080h+0),f
u4117:
	decfsz	((??_main+0)^080h+0),f
	goto	u4117
	decfsz	((??_main+0)^080h+0+1),f
	goto	u4117
	decfsz	((??_main+0)^080h+0+2),f
	goto	u4117
opt asmopt_on

	goto	l199
	line	563
	
l200:	
	line	544
	goto	l199
	
l201:	
	line	564
	
l202:	
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
;;		 -> display_rpm(10), 
;;  f               1   14[BANK1 ] PTR const unsigned char 
;;		 -> STR_3(5), 
;; Auto vars:     Size  Location     Type
;;  sp              1   29[BANK1 ] PTR unsigned char 
;;		 -> display_rpm(10), 
;;  _val            4   22[BANK1 ] struct .
;;  width           2   27[BANK1 ] int 
;;  c               1   30[BANK1 ] char 
;;  flag            1   26[BANK1 ] unsigned char 
;;  prec            1   21[BANK1 ] char 
;;  ap              1   20[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2   14[BANK1 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       3       0       0
;;      Locals:         0       0      11       0       0
;;      Temps:          0       0       3       0       0
;;      Totals:         0       0      17       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
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
	opt	stack 1
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	line	542
	
l3025:	
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
	movlw	(?_sprintf+01h)&0ffh
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@ap)^080h
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l3129
	
l472:	
	line	547
	
l3027:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3631
	goto	u3630
u3631:
	goto	l3033
u3630:
	line	550
	
l3029:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3031:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	551
;doprnt.c: 551: continue;
	goto	l3129
	line	552
	
l473:	
	line	555
	
l3033:	
;doprnt.c: 552: }
;doprnt.c: 555: width = 0;
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	557
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)^080h
	goto	l3039
	line	559
;doprnt.c: 559: for(;;) {
	
l474:	
	line	560
;doprnt.c: 560: switch(*f) {
	goto	l3039
	line	588
;doprnt.c: 588: case '0':
	
l476:	
	line	589
;doprnt.c: 589: flag |= 0x04;
	bsf	(sprintf@flag)^080h+(2/8),(2)&7
	line	590
	
l3035:	
;doprnt.c: 590: f++;
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@f)^080h,f
	line	591
;doprnt.c: 591: continue;
	goto	l3039
	line	593
	
l3037:	
;doprnt.c: 593: }
	goto	l3041
	line	560
	
l475:	
	
l3039:	
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
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
	goto	l476
	goto	l3041
	opt asmopt_on

	line	593
	
l478:	
	line	594
;doprnt.c: 594: break;
	goto	l3041
	line	595
	
l477:	
;doprnt.c: 595: }
	goto	l3039
	
l479:	
	line	606
	
l3041:	
;doprnt.c: 606: if(isdigit((unsigned)*f)) {
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3641
	goto	u3640
u3641:
	goto	l3055
u3640:
	line	607
	
l3043:	
;doprnt.c: 607: width = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	goto	l3045
	line	608
;doprnt.c: 608: do {
	
l481:	
	line	609
	
l3045:	
;doprnt.c: 609: width *= 10;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(___wmul@multiplier)^080h
	movlw	high(0Ah)
	movwf	((___wmul@multiplier)^080h)+1
	movf	(sprintf@width+1)^080h,w
	clrf	(___wmul@multiplicand+1)^080h
	addwf	(___wmul@multiplicand+1)^080h
	movf	(sprintf@width)^080h,w
	clrf	(___wmul@multiplicand)^080h
	addwf	(___wmul@multiplicand)^080h

	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___wmul))^080h,w
	clrf	(sprintf@width+1)^080h
	addwf	(sprintf@width+1)^080h
	movf	(0+(?___wmul))^080h,w
	clrf	(sprintf@width)^080h
	addwf	(sprintf@width)^080h

	line	610
	
l3047:	
;doprnt.c: 610: width += *f++ - '0';
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	addlw	low(-48)
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
	
l3049:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@f)^080h,f
	line	611
	
l3051:	
;doprnt.c: 611: } while(isdigit((unsigned)*f));
	movf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3651
	goto	u3650
u3651:
	goto	l3045
u3650:
	goto	l3055
	
l482:	
	goto	l3055
	line	617
	
l480:	
	line	644
;doprnt.c: 617: }
;doprnt.c: 644: switch(c = *f++) {
	goto	l3055
	line	646
;doprnt.c: 646: case 0:
	
l484:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l3131
	line	706
;doprnt.c: 706: case 'd':
	
l486:	
	goto	l3057
	line	707
	
l487:	
	line	708
;doprnt.c: 707: case 'i':
;doprnt.c: 708: break;
	goto	l3057
	line	811
;doprnt.c: 811: default:
	
l489:	
	line	822
;doprnt.c: 822: continue;
	goto	l3129
	line	831
	
l3053:	
;doprnt.c: 831: }
	goto	l3057
	line	644
	
l483:	
	
l3055:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@f)^080h,f
	movlw	-01h
	addwf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
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
	goto	l3131
	xorlw	100^0	; case 100
	skipnz
	goto	l3057
	xorlw	105^100	; case 105
	skipnz
	goto	l3057
	goto	l3129
	opt asmopt_on

	line	831
	
l488:	
	line	1268
	
l3057:	
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
	
l3059:	
	movlw	(02h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@ap)^080h,f
	line	1270
	
l3061:	
;doprnt.c: 1270: if((int)_val._val < 0) {
	btfss	(sprintf@_val+1)^080h,7
	goto	u3661
	goto	u3660
u3661:
	goto	l3067
u3660:
	line	1271
	
l3063:	
;doprnt.c: 1271: flag |= 0x03;
	movlw	(03h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	iorwf	(sprintf@flag)^080h,f
	line	1272
	
l3065:	
;doprnt.c: 1272: _val._val = -_val._val;
	comf	(sprintf@_val)^080h,f
	comf	(sprintf@_val+1)^080h,f
	incf	(sprintf@_val)^080h,f
	skipnz
	incf	(sprintf@_val+1)^080h,f
	goto	l3067
	line	1273
	
l490:	
	line	1314
	
l3067:	
;doprnt.c: 1273: }
;doprnt.c: 1275: }
;doprnt.c: 1314: for(c = 1 ; c != sizeof dpowers/sizeof dpowers[0] ; c++)
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	movf	(sprintf@c)^080h,w
	xorlw	05h
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l3071
u3670:
	goto	l3079
	
l3069:	
	goto	l3079
	line	1315
	
l491:	
	
l3071:	
;doprnt.c: 1315: if(_val._val < dpowers[c])
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+1)^080h+0
	fcall	stringdir
	movwf	(??_sprintf+1)^080h+0+1
	movf	1+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3685
	movf	0+(??_sprintf+1)^080h+0,w
	subwf	(sprintf@_val)^080h,w
u3685:
	skipnc
	goto	u3681
	goto	u3680
u3681:
	goto	l3075
u3680:
	goto	l3079
	line	1316
	
l3073:	
;doprnt.c: 1316: break;
	goto	l3079
	
l493:	
	line	1314
	
l3075:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@c)^080h,f
	
l3077:	
	movf	(sprintf@c)^080h,w
	xorlw	05h
	skipz
	goto	u3691
	goto	u3690
u3691:
	goto	l3071
u3690:
	goto	l3079
	
l492:	
	line	1354
	
l3079:	
;doprnt.c: 1354: if(width && flag & 0x03)
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3701
	goto	u3700
u3701:
	goto	l494
u3700:
	
l3081:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3711
	goto	u3710
u3711:
	goto	l494
u3710:
	line	1355
	
l3083:	
;doprnt.c: 1355: width--;
	movlw	low(-1)
	addwf	(sprintf@width)^080h,f
	skipnc
	incf	(sprintf@width+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@width+1)^080h,f
	
l494:	
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
	goto	u3725
	movf	(sprintf@width)^080h,w
	subwf	0+(??_sprintf+0)^080h+0,w
u3725:

	skipnc
	goto	u3721
	goto	u3720
u3721:
	goto	l3087
u3720:
	line	1391
	
l3085:	
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
	goto	l3089
	line	1392
	
l495:	
	line	1393
	
l3087:	
;doprnt.c: 1392: else
;doprnt.c: 1393: width = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	goto	l3089
	
l496:	
	line	1396
	
l3089:	
;doprnt.c: 1396: if(flag & 0x04) {
	btfss	(sprintf@flag)^080h,(2)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l3105
u3730:
	line	1401
	
l3091:	
;doprnt.c: 1401: if(flag & 0x03)
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l3097
u3740:
	line	1402
	
l3093:	
;doprnt.c: 1402: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3095:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l3097
	
l498:	
	line	1424
	
l3097:	
;doprnt.c: 1424: if(width)
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3751
	goto	u3750
u3751:
	goto	l3119
u3750:
	goto	l3099
	line	1425
;doprnt.c: 1425: do
	
l500:	
	line	1426
	
l3099:	
;doprnt.c: 1426: ((*sp++ = ('0')));
	movlw	(030h)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3101:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1427
	
l3103:	
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
	goto	u3761
	goto	u3760
u3761:
	goto	l3099
u3760:
	goto	l3119
	
l501:	
	goto	l3119
	
l499:	
	line	1429
;doprnt.c: 1429: } else
	goto	l3119
	
l497:	
	line	1437
	
l3105:	
;doprnt.c: 1431: {
;doprnt.c: 1433: if(width
;doprnt.c: 1437: )
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3771
	goto	u3770
u3771:
	goto	l3113
u3770:
	goto	l3107
	line	1438
;doprnt.c: 1438: do
	
l504:	
	line	1439
	
l3107:	
;doprnt.c: 1439: ((*sp++ = (' ')));
	movlw	(020h)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3109:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	line	1440
	
l3111:	
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
	goto	u3781
	goto	u3780
u3781:
	goto	l3107
u3780:
	goto	l3113
	
l505:	
	goto	l3113
	
l503:	
	line	1447
	
l3113:	
;doprnt.c: 1447: if(flag & 0x03)
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l3119
u3790:
	line	1448
	
l3115:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3117:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l3119
	
l506:	
	goto	l3119
	line	1478
	
l502:	
	line	1481
	
l3119:	
;doprnt.c: 1478: }
;doprnt.c: 1481: prec = c;
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@prec)^080h
	line	1483
;doprnt.c: 1483: while(prec--) {
	goto	l3127
	
l508:	
	line	1498
	
l3121:	
;doprnt.c: 1487: {
;doprnt.c: 1498: c = (_val._val / dpowers[prec]) % 10 + '0';
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)^080h
	movlw	high(0Ah)
	movwf	((___lwmod@divisor)^080h)+1
	movf	(sprintf@prec)^080h,w
	movwf	(??_sprintf+0)^080h+0
	addwf	(??_sprintf+0)^080h+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lwdiv@divisor)^080h
	fcall	stringdir
	movwf	(___lwdiv@divisor+1)^080h
	movf	(sprintf@_val+1)^080h,w
	clrf	(___lwdiv@dividend+1)^080h
	addwf	(___lwdiv@dividend+1)^080h
	movf	(sprintf@_val)^080h,w
	clrf	(___lwdiv@dividend)^080h
	addwf	(___lwdiv@dividend)^080h

	fcall	___lwdiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(1+(?___lwdiv))^080h,w
	clrf	(___lwmod@dividend+1)^080h
	addwf	(___lwmod@dividend+1)^080h
	movf	(0+(?___lwdiv))^080h,w
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
	
l3123:	
;doprnt.c: 1532: }
;doprnt.c: 1533: ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	movwf	(??_sprintf+0)^080h+0
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(??_sprintf+0)^080h+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l3125:	
	movlw	(01h)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@sp)^080h,f
	goto	l3127
	line	1534
	
l507:	
	line	1483
	
l3127:	
	movlw	(-1)
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	addwf	(sprintf@prec)^080h,f
	movf	((sprintf@prec)^080h),w
	xorlw	-1
	skipz
	goto	u3801
	goto	u3800
u3801:
	goto	l3121
u3800:
	goto	l3129
	
l509:	
	goto	l3129
	line	1542
	
l471:	
	line	545
	
l3129:	
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@f)^080h,f
	movlw	-01h
	addwf	(sprintf@f)^080h,w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)^080h+0
	movf	(??_sprintf+0)^080h+0,w
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l3027
u3810:
	goto	l3131
	
l510:	
	goto	l3131
	line	1544
;doprnt.c: 1534: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l485:	
	line	1547
	
l3131:	
;doprnt.c: 1547: *sp = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	goto	l511
	line	1549
	
l3133:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l511:	
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
;;  c               1    1[BANK1 ] unsigned char 
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
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
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
	opt	stack 1
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(isdigit@c)^080h
	line	14
	
l2499:	
	clrf	(_isdigit$1439)^080h
	
l2501:	
	movlw	(03Ah)
	subwf	(isdigit@c)^080h,w
	skipnc
	goto	u2781
	goto	u2780
u2781:
	goto	l2507
u2780:
	
l2503:	
	movlw	(030h)
	subwf	(isdigit@c)^080h,w
	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l2507
u2790:
	
l2505:	
	clrf	(_isdigit$1439)^080h
	incf	(_isdigit$1439)^080h,f
	goto	l2507
	
l851:	
	
l2507:	
	rrf	(_isdigit$1439)^080h,w
	
	goto	l852
	
l2509:	
	line	15
	
l852:	
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
;;  multiplier      2    0[BANK1 ] unsigned int 
;;  multiplicand    2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK1 ] unsigned int 
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
;;      Locals:         0       0       2       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
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
	opt	stack 1
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2511:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___wmul@product)^080h
	clrf	(___wmul@product+1)^080h
	goto	l2513
	line	44
	
l594:	
	line	45
	
l2513:	
	btfss	(___wmul@multiplier)^080h,(0)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l595
u2800:
	line	46
	
l2515:	
	movf	(___wmul@multiplicand)^080h,w
	addwf	(___wmul@product)^080h,f
	skipnc
	incf	(___wmul@product+1)^080h,f
	movf	(___wmul@multiplicand+1)^080h,w
	addwf	(___wmul@product+1)^080h,f
	
l595:	
	line	47
	movlw	01h
	
u2815:
	clrc
	rlf	(___wmul@multiplicand)^080h,f
	rlf	(___wmul@multiplicand+1)^080h,f
	addlw	-1
	skipz
	goto	u2815
	line	48
	
l2517:	
	movlw	01h
	
u2825:
	clrc
	rrf	(___wmul@multiplier+1)^080h,f
	rrf	(___wmul@multiplier)^080h,f
	addlw	-1
	skipz
	goto	u2825
	line	49
	movf	((___wmul@multiplier+1)^080h),w
	iorwf	((___wmul@multiplier)^080h),w
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l2513
u2830:
	goto	l2519
	
l596:	
	line	52
	
l2519:	
	movf	(___wmul@product+1)^080h,w
	clrf	(?___wmul+1)^080h
	addwf	(?___wmul+1)^080h
	movf	(___wmul@product)^080h,w
	clrf	(?___wmul)^080h
	addwf	(?___wmul)^080h

	goto	l597
	
l2521:	
	line	53
	
l597:	
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
;;  divisor         2    8[BANK1 ] unsigned int 
;;  dividend        2   10[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[BANK1 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       4       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
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
	opt	stack 1
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l2683:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(___lwmod@divisor+1)^080h,w
	iorwf	(___lwmod@divisor)^080h,w
	skipnz
	goto	u3251
	goto	u3250
u3251:
	goto	l2701
u3250:
	line	14
	
l2685:	
	clrf	(___lwmod@counter)^080h
	incf	(___lwmod@counter)^080h,f
	line	15
	goto	l2691
	
l941:	
	line	16
	
l2687:	
	movlw	01h
	
u3265:
	clrc
	rlf	(___lwmod@divisor)^080h,f
	rlf	(___lwmod@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u3265
	line	17
	
l2689:	
	movlw	(01h)
	movwf	(??___lwmod+0)^080h+0
	movf	(??___lwmod+0)^080h+0,w
	addwf	(___lwmod@counter)^080h,f
	goto	l2691
	line	18
	
l940:	
	line	15
	
l2691:	
	btfss	(___lwmod@divisor+1)^080h,(15)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l2687
u3270:
	goto	l2693
	
l942:	
	goto	l2693
	line	19
	
l943:	
	line	20
	
l2693:	
	movf	(___lwmod@divisor+1)^080h,w
	subwf	(___lwmod@dividend+1)^080h,w
	skipz
	goto	u3285
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,w
u3285:
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l2697
u3280:
	line	21
	
l2695:	
	movf	(___lwmod@divisor)^080h,w
	subwf	(___lwmod@dividend)^080h,f
	movf	(___lwmod@divisor+1)^080h,w
	skipc
	decf	(___lwmod@dividend+1)^080h,f
	subwf	(___lwmod@dividend+1)^080h,f
	goto	l2697
	
l944:	
	line	22
	
l2697:	
	movlw	01h
	
u3295:
	clrc
	rrf	(___lwmod@divisor+1)^080h,f
	rrf	(___lwmod@divisor)^080h,f
	addlw	-1
	skipz
	goto	u3295
	line	23
	
l2699:	
	movlw	low(01h)
	subwf	(___lwmod@counter)^080h,f
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l2693
u3300:
	goto	l2701
	
l945:	
	goto	l2701
	line	24
	
l939:	
	line	25
	
l2701:	
	movf	(___lwmod@dividend+1)^080h,w
	clrf	(?___lwmod+1)^080h
	addwf	(?___lwmod+1)^080h
	movf	(___lwmod@dividend)^080h,w
	clrf	(?___lwmod)^080h
	addwf	(?___lwmod)^080h

	goto	l946
	
l2703:	
	line	26
	
l946:	
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
;;  divisor         2    0[BANK1 ] unsigned int 
;;  dividend        2    2[BANK1 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[BANK1 ] unsigned int 
;;  counter         1    7[BANK1 ] unsigned char 
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
;;      Locals:         0       0       3       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
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
	opt	stack 1
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l2657:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___lwdiv@quotient)^080h
	clrf	(___lwdiv@quotient+1)^080h
	line	15
	
l2659:	
	movf	(___lwdiv@divisor+1)^080h,w
	iorwf	(___lwdiv@divisor)^080h,w
	skipnz
	goto	u3181
	goto	u3180
u3181:
	goto	l2679
u3180:
	line	16
	
l2661:	
	clrf	(___lwdiv@counter)^080h
	incf	(___lwdiv@counter)^080h,f
	line	17
	goto	l2667
	
l931:	
	line	18
	
l2663:	
	movlw	01h
	
u3195:
	clrc
	rlf	(___lwdiv@divisor)^080h,f
	rlf	(___lwdiv@divisor+1)^080h,f
	addlw	-1
	skipz
	goto	u3195
	line	19
	
l2665:	
	movlw	(01h)
	movwf	(??___lwdiv+0)^080h+0
	movf	(??___lwdiv+0)^080h+0,w
	addwf	(___lwdiv@counter)^080h,f
	goto	l2667
	line	20
	
l930:	
	line	17
	
l2667:	
	btfss	(___lwdiv@divisor+1)^080h,(15)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l2663
u3200:
	goto	l2669
	
l932:	
	goto	l2669
	line	21
	
l933:	
	line	22
	
l2669:	
	movlw	01h
	
u3215:
	clrc
	rlf	(___lwdiv@quotient)^080h,f
	rlf	(___lwdiv@quotient+1)^080h,f
	addlw	-1
	skipz
	goto	u3215
	line	23
	movf	(___lwdiv@divisor+1)^080h,w
	subwf	(___lwdiv@dividend+1)^080h,w
	skipz
	goto	u3225
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,w
u3225:
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l2675
u3220:
	line	24
	
l2671:	
	movf	(___lwdiv@divisor)^080h,w
	subwf	(___lwdiv@dividend)^080h,f
	movf	(___lwdiv@divisor+1)^080h,w
	skipc
	decf	(___lwdiv@dividend+1)^080h,f
	subwf	(___lwdiv@dividend+1)^080h,f
	line	25
	
l2673:	
	bsf	(___lwdiv@quotient)^080h+(0/8),(0)&7
	goto	l2675
	line	26
	
l934:	
	line	27
	
l2675:	
	movlw	01h
	
u3235:
	clrc
	rrf	(___lwdiv@divisor+1)^080h,f
	rrf	(___lwdiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u3235
	line	28
	
l2677:	
	movlw	low(01h)
	subwf	(___lwdiv@counter)^080h,f
	btfss	status,2
	goto	u3241
	goto	u3240
u3241:
	goto	l2669
u3240:
	goto	l2679
	
l935:	
	goto	l2679
	line	29
	
l929:	
	line	30
	
l2679:	
	movf	(___lwdiv@quotient+1)^080h,w
	clrf	(?___lwdiv+1)^080h
	addwf	(?___lwdiv+1)^080h
	movf	(___lwdiv@quotient)^080h,w
	clrf	(?___lwdiv)^080h
	addwf	(?___lwdiv)^080h

	goto	l936
	
l2681:	
	line	31
	
l936:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_USART_Init

;; *************** function _USART_Init *****************
;; Defined at:
;;		line 6 in file "R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  BaudRate        4   15[BANK1 ] long 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	6
global __ptext6
__ptext6:	;psect for function _USART_Init
psect	text6
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	6
	global	__size_of_USART_Init
	__size_of_USART_Init	equ	__end_of_USART_Init-_USART_Init
	
_USART_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _USART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l2903:	
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
u3595:
	clrc
	rlf	(??_USART_Init+0)^080h+0,f
	rlf	(??_USART_Init+0)^080h+1,f
	rlf	(??_USART_Init+0)^080h+2,f
	rlf	(??_USART_Init+0)^080h+3,f
u3590:
	addlw	-1
	skipz
	goto	u3595
	movf	3+(??_USART_Init+0)^080h+0,w
	movwf	(___aldiv@divisor+3)^080h
	movf	2+(??_USART_Init+0)^080h+0,w
	movwf	(___aldiv@divisor+2)^080h
	movf	1+(??_USART_Init+0)^080h+0,w
	movwf	(___aldiv@divisor+1)^080h
	movf	0+(??_USART_Init+0)^080h+0,w
	movwf	(___aldiv@divisor)^080h

	movlw	01h
	movwf	(___aldiv@dividend+3)^080h
	movlw	019h
	movwf	(___aldiv@dividend+2)^080h
	movlw	040h
	movwf	(___aldiv@dividend+1)^080h
	movlw	0
	movwf	(___aldiv@dividend)^080h

	fcall	___aldiv
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(((0+(?___aldiv))^080h)),w
	addlw	0FFh
	movwf	(153)^080h	;volatile
	line	16
	
l2905:	
;usart.c: 16: TXSTAbits.CSRC = 0;
	bcf	(152)^080h,7	;volatile
	line	17
	
l2907:	
;usart.c: 17: TXSTAbits.TX9 = 0;
	bcf	(152)^080h,6	;volatile
	line	18
	
l2909:	
;usart.c: 18: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	19
	
l2911:	
;usart.c: 19: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	21
	
l2913:	
;usart.c: 21: TXSTAbits.BRGH = 1;
	bsf	(152)^080h,2	;volatile
	line	22
	
l2915:	
;usart.c: 22: TXSTAbits.TRMT = 1;
	bsf	(152)^080h,1	;volatile
	line	23
	
l2917:	
;usart.c: 23: TXSTAbits.TX9D = 0;
	bcf	(152)^080h,0	;volatile
	line	26
	
l2919:	
;usart.c: 26: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	27
	
l2921:	
;usart.c: 27: RCSTAbits.RX9 = 0;
	bcf	(24),6	;volatile
	line	28
	
l2923:	
;usart.c: 28: RCSTAbits.SREN = 0;
	bcf	(24),5	;volatile
	line	29
	
l2925:	
;usart.c: 29: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	30
	
l2927:	
;usart.c: 30: RCSTAbits.ADDEN = 0;
	bcf	(24),3	;volatile
	line	31
	
l2929:	
;usart.c: 31: RCSTAbits.FERR = 0;
	bcf	(24),2	;volatile
	line	32
	
l2931:	
;usart.c: 32: RCSTAbits.OERR = 0;
	bcf	(24),1	;volatile
	line	33
	
l2933:	
;usart.c: 33: RCSTAbits.RX9D = 0;
	bcf	(24),0	;volatile
	line	36
	
l2935:	
;usart.c: 36: PIE1bits.TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,4	;volatile
	line	37
	
l2937:	
;usart.c: 37: PIR1bits.TXIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),4	;volatile
	line	38
	
l2939:	
;usart.c: 38: PIE1bits.RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,5	;volatile
	line	39
	
l2941:	
;usart.c: 39: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	line	40
	
l221:	
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
;;  divisor         4    0[BANK1 ] long 
;;  dividend        4    4[BANK1 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   11[BANK1 ] long 
;;  sign            1   10[BANK1 ] unsigned char 
;;  counter         1    9[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       8       0       0
;;      Locals:         0       0       6       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0      15       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___aldiv
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	14
	
l2523:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(___aldiv@sign)^080h
	line	15
	
l2525:	
	btfss	(___aldiv@divisor+3)^080h,7
	goto	u2841
	goto	u2840
u2841:
	goto	l650
u2840:
	line	16
	
l2527:	
	comf	(___aldiv@divisor)^080h,f
	comf	(___aldiv@divisor+1)^080h,f
	comf	(___aldiv@divisor+2)^080h,f
	comf	(___aldiv@divisor+3)^080h,f
	incf	(___aldiv@divisor)^080h,f
	skipnz
	incf	(___aldiv@divisor+1)^080h,f
	skipnz
	incf	(___aldiv@divisor+2)^080h,f
	skipnz
	incf	(___aldiv@divisor+3)^080h,f
	line	17
	clrf	(___aldiv@sign)^080h
	incf	(___aldiv@sign)^080h,f
	line	18
	
l650:	
	line	19
	btfss	(___aldiv@dividend+3)^080h,7
	goto	u2851
	goto	u2850
u2851:
	goto	l2533
u2850:
	line	20
	
l2529:	
	comf	(___aldiv@dividend)^080h,f
	comf	(___aldiv@dividend+1)^080h,f
	comf	(___aldiv@dividend+2)^080h,f
	comf	(___aldiv@dividend+3)^080h,f
	incf	(___aldiv@dividend)^080h,f
	skipnz
	incf	(___aldiv@dividend+1)^080h,f
	skipnz
	incf	(___aldiv@dividend+2)^080h,f
	skipnz
	incf	(___aldiv@dividend+3)^080h,f
	line	21
	
l2531:	
	movlw	(01h)
	movwf	(??___aldiv+0)^080h+0
	movf	(??___aldiv+0)^080h+0,w
	xorwf	(___aldiv@sign)^080h,f
	goto	l2533
	line	22
	
l651:	
	line	23
	
l2533:	
	movlw	0
	movwf	(___aldiv@quotient+3)^080h
	movlw	0
	movwf	(___aldiv@quotient+2)^080h
	movlw	0
	movwf	(___aldiv@quotient+1)^080h
	movlw	0
	movwf	(___aldiv@quotient)^080h

	line	24
	
l2535:	
	movf	(___aldiv@divisor+3)^080h,w
	iorwf	(___aldiv@divisor+2)^080h,w
	iorwf	(___aldiv@divisor+1)^080h,w
	iorwf	(___aldiv@divisor)^080h,w
	skipnz
	goto	u2861
	goto	u2860
u2861:
	goto	l2555
u2860:
	line	25
	
l2537:	
	clrf	(___aldiv@counter)^080h
	incf	(___aldiv@counter)^080h,f
	line	26
	goto	l2541
	
l654:	
	line	27
	
l2539:	
	movlw	01h
	movwf	(??___aldiv+0)^080h+0
u2875:
	clrc
	rlf	(___aldiv@divisor)^080h,f
	rlf	(___aldiv@divisor+1)^080h,f
	rlf	(___aldiv@divisor+2)^080h,f
	rlf	(___aldiv@divisor+3)^080h,f
	decfsz	(??___aldiv+0)^080h+0
	goto	u2875
	line	28
	movlw	(01h)
	movwf	(??___aldiv+0)^080h+0
	movf	(??___aldiv+0)^080h+0,w
	addwf	(___aldiv@counter)^080h,f
	goto	l2541
	line	29
	
l653:	
	line	26
	
l2541:	
	btfss	(___aldiv@divisor+3)^080h,(31)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l2539
u2880:
	goto	l2543
	
l655:	
	goto	l2543
	line	30
	
l656:	
	line	31
	
l2543:	
	movlw	01h
	movwf	(??___aldiv+0)^080h+0
u2895:
	clrc
	rlf	(___aldiv@quotient)^080h,f
	rlf	(___aldiv@quotient+1)^080h,f
	rlf	(___aldiv@quotient+2)^080h,f
	rlf	(___aldiv@quotient+3)^080h,f
	decfsz	(??___aldiv+0)^080h+0
	goto	u2895
	line	32
	
l2545:	
	movf	(___aldiv@divisor+3)^080h,w
	subwf	(___aldiv@dividend+3)^080h,w
	skipz
	goto	u2905
	movf	(___aldiv@divisor+2)^080h,w
	subwf	(___aldiv@dividend+2)^080h,w
	skipz
	goto	u2905
	movf	(___aldiv@divisor+1)^080h,w
	subwf	(___aldiv@dividend+1)^080h,w
	skipz
	goto	u2905
	movf	(___aldiv@divisor)^080h,w
	subwf	(___aldiv@dividend)^080h,w
u2905:
	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l2551
u2900:
	line	33
	
l2547:	
	movf	(___aldiv@divisor)^080h,w
	subwf	(___aldiv@dividend)^080h,f
	movf	(___aldiv@divisor+1)^080h,w
	skipc
	incfsz	(___aldiv@divisor+1)^080h,w
	subwf	(___aldiv@dividend+1)^080h,f
	movf	(___aldiv@divisor+2)^080h,w
	skipc
	incfsz	(___aldiv@divisor+2)^080h,w
	subwf	(___aldiv@dividend+2)^080h,f
	movf	(___aldiv@divisor+3)^080h,w
	skipc
	incfsz	(___aldiv@divisor+3)^080h,w
	subwf	(___aldiv@dividend+3)^080h,f
	line	34
	
l2549:	
	bsf	(___aldiv@quotient)^080h+(0/8),(0)&7
	goto	l2551
	line	35
	
l657:	
	line	36
	
l2551:	
	movlw	01h
u2915:
	clrc
	rrf	(___aldiv@divisor+3)^080h,f
	rrf	(___aldiv@divisor+2)^080h,f
	rrf	(___aldiv@divisor+1)^080h,f
	rrf	(___aldiv@divisor)^080h,f
	addlw	-1
	skipz
	goto	u2915

	line	37
	
l2553:	
	movlw	low(01h)
	subwf	(___aldiv@counter)^080h,f
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l2543
u2920:
	goto	l2555
	
l658:	
	goto	l2555
	line	38
	
l652:	
	line	39
	
l2555:	
	movf	(___aldiv@sign)^080h,w
	skipz
	goto	u2930
	goto	l2559
u2930:
	line	40
	
l2557:	
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
	goto	l2559
	
l659:	
	line	41
	
l2559:	
	movf	(___aldiv@quotient+3)^080h,w
	movwf	(?___aldiv+3)^080h
	movf	(___aldiv@quotient+2)^080h,w
	movwf	(?___aldiv+2)^080h
	movf	(___aldiv@quotient+1)^080h,w
	movwf	(?___aldiv+1)^080h
	movf	(___aldiv@quotient)^080h,w
	movwf	(?___aldiv)^080h

	goto	l660
	
l2561:	
	line	42
	
l660:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_TIMER0_Set

;; *************** function _TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
;; Parameters:    Size  Location     Type
;;  contagens       1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  contagens       1    0[BANK1 ] unsigned char 
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
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
	line	20
global __ptext8
__ptext8:	;psect for function _TIMER0_Set
psect	text8
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
	line	20
	global	__size_of_TIMER0_Set
	__size_of_TIMER0_Set	equ	__end_of_TIMER0_Set-_TIMER0_Set
	
_TIMER0_Set:	
;incstack = 0
	opt	stack 2
; Regs used in _TIMER0_Set: [wreg]
;TIMER0_Set@contagens stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(TIMER0_Set@contagens)^080h
	line	22
	
l2901:	
;timers.c: 22: TMR0 = contagens;
	movf	(TIMER0_Set@contagens)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
l281:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Set
	__end_of_TIMER0_Set:
	signat	_TIMER0_Set,4216
	global	_TIMER0_Init

;; *************** function _TIMER0_Init *****************
;; Defined at:
;;		line 6 in file "R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	6
global __ptext9
__ptext9:	;psect for function _TIMER0_Init
psect	text9
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
	line	6
	global	__size_of_TIMER0_Init
	__size_of_TIMER0_Init	equ	__end_of_TIMER0_Init-_TIMER0_Init
	
_TIMER0_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _TIMER0_Init: []
	line	8
	
l2943:	
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
	
l278:	
	return
	opt stack 0
GLOBAL	__end_of_TIMER0_Init
	__end_of_TIMER0_Init:
	signat	_TIMER0_Init,88
	global	_PWM_Init

;; *************** function _PWM_Init *****************
;; Defined at:
;;		line 5 in file "R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	5
global __ptext10
__ptext10:	;psect for function _PWM_Init
psect	text10
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	5
	global	__size_of_PWM_Init
	__size_of_PWM_Init	equ	__end_of_PWM_Init-_PWM_Init
	
_PWM_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_Init: [wreg]
	line	14
	
l2947:	
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
	
l2949:	
;pwm.c: 27: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	43
	
l2951:	
;pwm.c: 43: CCP1CONbits.CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(23),3	;volatile
	line	44
	
l2953:	
;pwm.c: 44: CCP1CONbits.CCP1M2 = 1;
	bsf	(23),2	;volatile
	line	45
	
l2955:	
;pwm.c: 45: CCP1CONbits.CCP1M1 = 1;
	bsf	(23),1	;volatile
	line	46
	
l2957:	
;pwm.c: 46: CCP1CONbits.CCP1M0 = 1;
	bsf	(23),0	;volatile
	line	49
	
l2959:	
;pwm.c: 49: PIE1bits.CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,2	;volatile
	line	50
	
l2961:	
;pwm.c: 50: PIR1bits.CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),2	;volatile
	line	53
	
l2963:	
;pwm.c: 53: CCP2CONbits.CCP2M3 = 1;
	bsf	(29),3	;volatile
	line	54
	
l2965:	
;pwm.c: 54: CCP2CONbits.CCP2M2 = 1;
	bsf	(29),2	;volatile
	line	55
	
l2967:	
;pwm.c: 55: CCP2CONbits.CCP2M1 = 1;
	bsf	(29),1	;volatile
	line	56
	
l2969:	
;pwm.c: 56: CCP2CONbits.CCP2M0 = 1;
	bsf	(29),0	;volatile
	line	59
	
l2971:	
;pwm.c: 59: PIE2bits.CCP2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(141)^080h,0	;volatile
	line	60
	
l2973:	
;pwm.c: 60: PIR2bits.CCP2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(13),0	;volatile
	line	61
	
l429:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_Init
	__end_of_PWM_Init:
	signat	_PWM_Init,88
	global	_PWM_DutyCycle2

;; *************** function _PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    0[BANK1 ] int 
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
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	96
global __ptext11
__ptext11:	;psect for function _PWM_DutyCycle2
psect	text11
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	96
	global	__size_of_PWM_DutyCycle2
	__size_of_PWM_DutyCycle2	equ	__end_of_PWM_DutyCycle2-_PWM_DutyCycle2
	
_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
l2877:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(PWM_DutyCycle2@valor+1)^080h,w
	movwf	(??_PWM_DutyCycle2+0)^080h+0+1
	movf	(PWM_DutyCycle2@valor)^080h,w
	movwf	(??_PWM_DutyCycle2+0)^080h+0
	rlf	(??_PWM_DutyCycle2+0)^080h+1,w
	rrf	(??_PWM_DutyCycle2+0)^080h+1,f
	rrf	(??_PWM_DutyCycle2+0)^080h+0,f
	rlf	(??_PWM_DutyCycle2+0)^080h+1,w
	rrf	(??_PWM_DutyCycle2+0)^080h+1,f
	rrf	(??_PWM_DutyCycle2+0)^080h+0,f
	movf	0+(??_PWM_DutyCycle2+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	99
	
l2879:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(PWM_DutyCycle2@valor)^080h,w
	movwf	(??_PWM_DutyCycle2+0)^080h+0
	movlw	(04h)-1
u3575:
	clrc
	rlf	(??_PWM_DutyCycle2+0)^080h+0,f
	addlw	-1
	skipz
	goto	u3575
	clrc
	rlf	(??_PWM_DutyCycle2+0)^080h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(29)	;volatile
	line	100
	
l435:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle2
	__end_of_PWM_DutyCycle2:
	signat	_PWM_DutyCycle2,4216
	global	_PWM_DutyCycle1

;; *************** function _PWM_DutyCycle1 *****************
;; Defined at:
;;		line 64 in file "R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2    0[BANK1 ] int 
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
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	64
global __ptext12
__ptext12:	;psect for function _PWM_DutyCycle1
psect	text12
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	64
	global	__size_of_PWM_DutyCycle1
	__size_of_PWM_DutyCycle1	equ	__end_of_PWM_DutyCycle1-_PWM_DutyCycle1
	
_PWM_DutyCycle1:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_DutyCycle1: [wreg+status,2+status,0]
	line	91
	
l3021:	
;pwm.c: 91: CCPR1L = valor >> 2;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(PWM_DutyCycle1@valor+1)^080h,w
	movwf	(??_PWM_DutyCycle1+0)^080h+0+1
	movf	(PWM_DutyCycle1@valor)^080h,w
	movwf	(??_PWM_DutyCycle1+0)^080h+0
	rlf	(??_PWM_DutyCycle1+0)^080h+1,w
	rrf	(??_PWM_DutyCycle1+0)^080h+1,f
	rrf	(??_PWM_DutyCycle1+0)^080h+0,f
	rlf	(??_PWM_DutyCycle1+0)^080h+1,w
	rrf	(??_PWM_DutyCycle1+0)^080h+1,f
	rrf	(??_PWM_DutyCycle1+0)^080h+0,f
	movf	0+(??_PWM_DutyCycle1+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	92
	
l3023:	
;pwm.c: 92: CCP1CON = (valor << 4)|0X0C;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(PWM_DutyCycle1@valor)^080h,w
	movwf	(??_PWM_DutyCycle1+0)^080h+0
	movlw	(04h)-1
u3625:
	clrc
	rlf	(??_PWM_DutyCycle1+0)^080h+0,f
	addlw	-1
	skipz
	goto	u3625
	clrc
	rlf	(??_PWM_DutyCycle1+0)^080h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	94
	
l432:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_DutyCycle1
	__end_of_PWM_DutyCycle1:
	signat	_PWM_DutyCycle1,4216
	global	_LCD_WriteString

;; *************** function _LCD_WriteString *****************
;; Defined at:
;;		line 61 in file "R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Str             2    2[BANK1 ] PTR const unsigned char 
;;		 -> STR_4(6), display_rpm(10), STR_2(17), 
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
;;      Params:         0       0       2       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	61
global __ptext13
__ptext13:	;psect for function _LCD_WriteString
psect	text13
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	61
	global	__size_of_LCD_WriteString
	__size_of_LCD_WriteString	equ	__end_of_LCD_WriteString-_LCD_WriteString
	
_LCD_WriteString:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l3013:	
;lcd.c: 63: while(*Str != '\0')
	goto	l3019
	
l310:	
	line	65
	
l3015:	
;lcd.c: 64: {
;lcd.c: 65: LCD_WriteData(*Str);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_WriteString@Str+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_WriteString@Str)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	fcall	_LCD_WriteData
	line	66
	
l3017:	
;lcd.c: 66: Str++;
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(LCD_WriteString@Str)^080h,f
	skipnc
	incf	(LCD_WriteString@Str+1)^080h,f
	goto	l3019
	line	67
	
l309:	
	line	63
	
l3019:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_WriteString@Str+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_WriteString@Str)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l3015
u3610:
	goto	l312
	
l311:	
	line	68
	
l312:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteString
	__end_of_LCD_WriteString:
	signat	_LCD_WriteString,4216
	global	_LCD_WriteData

;; *************** function _LCD_WriteData *****************
;; Defined at:
;;		line 47 in file "R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    1[BANK1 ] unsigned char 
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
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_WriteString
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	47
global __ptext14
__ptext14:	;psect for function _LCD_WriteData
psect	text14
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	47
	global	__size_of_LCD_WriteData
	__size_of_LCD_WriteData	equ	__end_of_LCD_WriteData-_LCD_WriteData
	
_LCD_WriteData:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteData: [wreg]
;LCD_WriteData@Byte stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD_WriteData@Byte)^080h
	line	49
	
l2491:	
;lcd.c: 49: PORTEbits.RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),0	;volatile
	line	51
	
l2493:	
;lcd.c: 51: PORTD = Byte;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_WriteData@Byte)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	53
	
l2495:	
;lcd.c: 53: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	55
;lcd.c: 55: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_WriteData+0)^080h+0,f
u4127:
decfsz	(??_LCD_WriteData+0)^080h+0,f
	goto	u4127
opt asmopt_on

	line	57
	
l2497:	
;lcd.c: 57: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	58
	
l306:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteData
	__end_of_LCD_WriteData:
	signat	_LCD_WriteData,4216
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 87 in file "R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
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
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	line	87
global __ptext15
__ptext15:	;psect for function _LCD_Init
psect	text15
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	87
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2975:	
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
	
l2977:	
;lcd.c: 95: _delay((unsigned long)((15)*(18432000/4000.0)));
	opt asmopt_off
movlw	90
movwf	((??_LCD_Init+0)^080h+0+1),f
	movlw	195
movwf	((??_LCD_Init+0)^080h+0),f
u4137:
	decfsz	((??_LCD_Init+0)^080h+0),f
	goto	u4137
	decfsz	((??_LCD_Init+0)^080h+0+1),f
	goto	u4137
opt asmopt_on

	line	97
	
l2979:	
;lcd.c: 97: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	98
	
l2981:	
;lcd.c: 98: _delay((unsigned long)((4)*(18432000/4000.0)));
	opt asmopt_off
movlw	24
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_LCD_Init+0)^080h+0+1),f
	movlw	239
movwf	((??_LCD_Init+0)^080h+0),f
u4147:
	decfsz	((??_LCD_Init+0)^080h+0),f
	goto	u4147
	decfsz	((??_LCD_Init+0)^080h+0+1),f
	goto	u4147
opt asmopt_on

	line	100
;lcd.c: 100: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	101
	
l2983:	
;lcd.c: 101: _delay((unsigned long)((100)*(18432000/4000000.0)));
	opt asmopt_off
movlw	153
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_Init+0)^080h+0,f
u4157:
decfsz	(??_LCD_Init+0)^080h+0,f
	goto	u4157
opt asmopt_on

	line	103
	
l2985:	
;lcd.c: 103: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	104
;lcd.c: 104: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_Init+0)^080h+0,f
u4167:
decfsz	(??_LCD_Init+0)^080h+0,f
	goto	u4167
opt asmopt_on

	line	106
	
l2987:	
;lcd.c: 106: LCD_WriteCmd(0x38);
	movlw	(038h)
	fcall	_LCD_WriteCmd
	line	107
	
l2989:	
;lcd.c: 107: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_Init+0)^080h+0,f
u4177:
decfsz	(??_LCD_Init+0)^080h+0,f
	goto	u4177
opt asmopt_on

	line	109
;lcd.c: 109: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	110
	
l2991:	
;lcd.c: 110: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_LCD_Init+0)^080h+0+1),f
	movlw	247
movwf	((??_LCD_Init+0)^080h+0),f
u4187:
	decfsz	((??_LCD_Init+0)^080h+0),f
	goto	u4187
	decfsz	((??_LCD_Init+0)^080h+0+1),f
	goto	u4187
opt asmopt_on

	line	112
	
l2993:	
;lcd.c: 112: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	113
;lcd.c: 113: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_Init+0)^080h+0,f
u4197:
decfsz	(??_LCD_Init+0)^080h+0,f
	goto	u4197
opt asmopt_on

	line	115
	
l2995:	
;lcd.c: 115: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	116
	
l2997:	
;lcd.c: 116: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_Init+0)^080h+0,f
u4207:
decfsz	(??_LCD_Init+0)^080h+0,f
	goto	u4207
opt asmopt_on

	line	117
	
l318:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,88
	global	_LCD_Cursor

;; *************** function _LCD_Cursor *****************
;; Defined at:
;;		line 10 in file "R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Row             1    wreg     unsigned char 
;;  Col             1    0[BANK1 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1    2[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       1       0       0
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	10
global __ptext16
__ptext16:	;psect for function _LCD_Cursor
psect	text16
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	10
	global	__size_of_LCD_Cursor
	__size_of_LCD_Cursor	equ	__end_of_LCD_Cursor-_LCD_Cursor
	
_LCD_Cursor:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_Cursor: [wreg+status,2+status,0]
;LCD_Cursor@Row stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD_Cursor@Row)^080h
	line	12
	
l2999:	
;lcd.c: 12: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	14
	
l3001:	
;lcd.c: 14: if (Row == 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_Cursor@Row)^080h,f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l3005
u3600:
	line	16
	
l3003:	
;lcd.c: 15: {
;lcd.c: 16: PORTD = 0x80 + Col;
	movf	(LCD_Cursor@Col)^080h,w
	addlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	17
;lcd.c: 17: }
	goto	l3007
	line	18
	
l298:	
	line	20
	
l3005:	
;lcd.c: 18: else
;lcd.c: 19: {
;lcd.c: 20: PORTD = 0xC0 + Col;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_Cursor@Col)^080h,w
	addlw	0C0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	goto	l3007
	line	21
	
l299:	
	line	24
	
l3007:	
;lcd.c: 21: }
;lcd.c: 24: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	26
	
l3009:	
;lcd.c: 26: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_Cursor+0)^080h+0,f
u4217:
decfsz	(??_LCD_Cursor+0)^080h+0,f
	goto	u4217
opt asmopt_on

	line	28
	
l3011:	
;lcd.c: 28: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	29
	
l300:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Cursor
	__end_of_LCD_Cursor:
	signat	_LCD_Cursor,8312
	global	_LCD_Clear

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 71 in file "R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
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
;;      Temps:          0       0       2       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	line	71
global __ptext17
__ptext17:	;psect for function _LCD_Clear
psect	text17
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	71
	global	__size_of_LCD_Clear
	__size_of_LCD_Clear	equ	__end_of_LCD_Clear-_LCD_Clear
	
_LCD_Clear:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	73
	
l3135:	
;lcd.c: 73: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	75
	
l3137:	
;lcd.c: 75: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	((??_LCD_Clear+0)^080h+0+1),f
	movlw	247
movwf	((??_LCD_Clear+0)^080h+0),f
u4227:
	decfsz	((??_LCD_Clear+0)^080h+0),f
	goto	u4227
	decfsz	((??_LCD_Clear+0)^080h+0+1),f
	goto	u4227
opt asmopt_on

	line	77
	
l3139:	
;lcd.c: 77: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	79
;lcd.c: 79: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_Clear+0)^080h+0,f
u4237:
decfsz	(??_LCD_Clear+0)^080h+0,f
	goto	u4237
opt asmopt_on

	line	81
	
l3141:	
;lcd.c: 81: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	83
	
l3143:	
;lcd.c: 83: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_Clear+0)^080h+0,f
u4247:
decfsz	(??_LCD_Clear+0)^080h+0,f
	goto	u4247
opt asmopt_on

	line	84
	
l315:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
	signat	_LCD_Clear,88
	global	_LCD_WriteCmd

;; *************** function _LCD_WriteCmd *****************
;; Defined at:
;;		line 32 in file "R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
;; Parameters:    Size  Location     Type
;;  Byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Byte            1    1[BANK1 ] unsigned char 
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
;;      Locals:         0       0       1       0       0
;;      Temps:          0       0       1       0       0
;;      Totals:         0       0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Clear
;;		_LCD_Init
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	32
global __ptext18
__ptext18:	;psect for function _LCD_WriteCmd
psect	text18
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	32
	global	__size_of_LCD_WriteCmd
	__size_of_LCD_WriteCmd	equ	__end_of_LCD_WriteCmd-_LCD_WriteCmd
	
_LCD_WriteCmd:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteCmd: [wreg]
;LCD_WriteCmd@Byte stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(LCD_WriteCmd@Byte)^080h
	line	34
	
l2483:	
;lcd.c: 34: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	36
	
l2485:	
;lcd.c: 36: PORTD = Byte;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(LCD_WriteCmd@Byte)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l2487:	
;lcd.c: 39: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	41
;lcd.c: 41: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
movwf	(??_LCD_WriteCmd+0)^080h+0,f
u4257:
decfsz	(??_LCD_WriteCmd+0)^080h+0,f
	goto	u4257
opt asmopt_on

	line	43
	
l2489:	
;lcd.c: 43: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	44
	
l303:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_WriteCmd
	__end_of_LCD_WriteCmd:
	signat	_LCD_WriteCmd,4216
	global	_ADC_Init

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 6 in file "R:\Note\Sistema I\Ultimo C no MPLAB\adc.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\adc.c"
	line	6
global __ptext19
__ptext19:	;psect for function _ADC_Init
psect	text19
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\adc.c"
	line	6
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _ADC_Init: []
	line	9
	
l2945:	
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
	
l255:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 348 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Fuzzy
;;		_USART_ReceiveChar
;;		_USART_WriteString
;;		___lwtoft
;;		_send
;;		i1_PWM_DutyCycle2
;;		i1_TIMER0_Set
;;		i1___lwdiv
;;		i1___wmul
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	348
global __ptext20
__ptext20:	;psect for function _ISR
psect	text20
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	348
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 1
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
psect	text20
	line	351
	
i1l3191:	
;main.c: 351: if (PIR1bits.RCIF)
	btfss	(12),5	;volatile
	goto	u393_21
	goto	u393_20
u393_21:
	goto	i1l3247
u393_20:
	line	353
	
i1l3193:	
;main.c: 352: {
;main.c: 353: if (USART_ReceiveChar() == '0')
	fcall	_USART_ReceiveChar
	xorlw	030h
	skipz
	goto	u394_21
	goto	u394_20
u394_21:
	goto	i1l3201
u394_20:
	line	355
	
i1l3195:	
;main.c: 354: {
;main.c: 355: USART_WriteString("\n\rdesligado\n\r");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_USART_WriteString
	line	357
	
i1l3197:	
;main.c: 357: PWM_DutyCycle2(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(i1PWM_DutyCycle2@valor)
	movlw	high(0)
	movwf	((i1PWM_DutyCycle2@valor))+1
	fcall	i1_PWM_DutyCycle2
	goto	i1l180
	line	358
	
i1l3199:	
;main.c: 358: return;
	goto	i1l180
	line	359
	
i1l179:	
	line	361
	
i1l3201:	
;main.c: 359: }
;main.c: 361: if (USART_ReceiveChar() == '1')
	fcall	_USART_ReceiveChar
	xorlw	031h
	skipz
	goto	u395_21
	goto	u395_20
u395_21:
	goto	i1l3205
u395_20:
	line	363
	
i1l3203:	
;main.c: 362: {
;main.c: 363: setpointUI = 720;
	movlw	low(02D0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(02D0h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3205
	line	365
	
i1l181:	
	line	367
	
i1l3205:	
;main.c: 365: }
;main.c: 367: if (USART_ReceiveChar() == '2')
	fcall	_USART_ReceiveChar
	xorlw	032h
	skipz
	goto	u396_21
	goto	u396_20
u396_21:
	goto	i1l3209
u396_20:
	line	369
	
i1l3207:	
;main.c: 368: {
;main.c: 369: setpointUI = 1450;
	movlw	low(05AAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(05AAh)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3209
	line	371
	
i1l182:	
	line	373
	
i1l3209:	
;main.c: 371: }
;main.c: 373: if (USART_ReceiveChar() == '3')
	fcall	_USART_ReceiveChar
	xorlw	033h
	skipz
	goto	u397_21
	goto	u397_20
u397_21:
	goto	i1l3213
u397_20:
	line	375
	
i1l3211:	
;main.c: 374: {
;main.c: 375: setpointUI = 2828;
	movlw	low(0B0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(0B0Ch)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3213
	line	377
	
i1l183:	
	line	379
	
i1l3213:	
;main.c: 377: }
;main.c: 379: if (USART_ReceiveChar() == '4')
	fcall	_USART_ReceiveChar
	xorlw	034h
	skipz
	goto	u398_21
	goto	u398_20
u398_21:
	goto	i1l3217
u398_20:
	line	381
	
i1l3215:	
;main.c: 380: {
;main.c: 381: setpointUI = 3256;
	movlw	low(0CB8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(0CB8h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3217
	line	383
	
i1l184:	
	line	385
	
i1l3217:	
;main.c: 383: }
;main.c: 385: if (USART_ReceiveChar() == '5')
	fcall	_USART_ReceiveChar
	xorlw	035h
	skipz
	goto	u399_21
	goto	u399_20
u399_21:
	goto	i1l3221
u399_20:
	line	387
	
i1l3219:	
;main.c: 386: {
;main.c: 387: setpointUI = 4510;
	movlw	low(0119Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(0119Eh)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3221
	line	389
	
i1l185:	
	line	391
	
i1l3221:	
;main.c: 389: }
;main.c: 391: if (USART_ReceiveChar() == '6')
	fcall	_USART_ReceiveChar
	xorlw	036h
	skipz
	goto	u400_21
	goto	u400_20
u400_21:
	goto	i1l3225
u400_20:
	line	393
	
i1l3223:	
;main.c: 392: {
;main.c: 393: setpointUI = 5760;
	movlw	low(01680h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(01680h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3225
	line	395
	
i1l186:	
	line	397
	
i1l3225:	
;main.c: 395: }
;main.c: 397: if (USART_ReceiveChar() == '7')
	fcall	_USART_ReceiveChar
	xorlw	037h
	skipz
	goto	u401_21
	goto	u401_20
u401_21:
	goto	i1l3229
u401_20:
	line	399
	
i1l3227:	
;main.c: 398: {
;main.c: 399: setpointUI = 6890;
	movlw	low(01AEAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(01AEAh)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3229
	line	401
	
i1l187:	
	line	403
	
i1l3229:	
;main.c: 401: }
;main.c: 403: if (USART_ReceiveChar() == '8')
	fcall	_USART_ReceiveChar
	xorlw	038h
	skipz
	goto	u402_21
	goto	u402_20
u402_21:
	goto	i1l3233
u402_20:
	line	405
	
i1l3231:	
;main.c: 404: {
;main.c: 405: setpointUI = 8100;
	movlw	low(01FA4h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(01FA4h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3233
	line	407
	
i1l188:	
	line	409
	
i1l3233:	
;main.c: 407: }
;main.c: 409: if (USART_ReceiveChar() == '9')
	fcall	_USART_ReceiveChar
	xorlw	039h
	skipz
	goto	u403_21
	goto	u403_20
u403_21:
	goto	i1l3237
u403_20:
	line	411
	
i1l3235:	
;main.c: 410: {
;main.c: 411: setpointUI = 9000;
	movlw	low(02328h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(02328h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l3237
	line	413
	
i1l189:	
	line	417
	
i1l3237:	
;main.c: 413: }
;main.c: 417: Fuzzy();
	fcall	_Fuzzy
	line	418
	
i1l3239:	
;main.c: 418: tf = (setpointUI - 100);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpointUI)^080h,w
	addlw	low(0FF9Ch)
	movwf	(___lwtoft@c)
	movf	(_setpointUI+1)^080h,w
	skipnc
	addlw	1
	addlw	high(0FF9Ch)
	movwf	1+(___lwtoft@c)
	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_tf)
	movf	(1+(?___lwtoft)),w
	movwf	(_tf+1)
	movf	(2+(?___lwtoft)),w
	movwf	(_tf+2)
	line	421
	
i1l3241:	
;main.c: 421: if(setpointUI != 0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpointUI+1)^080h,w
	iorwf	(_setpointUI)^080h,w
	skipnz
	goto	u404_21
	goto	u404_20
u404_21:
	goto	i1l3245
u404_20:
	line	423
	
i1l3243:	
;main.c: 422: {
;main.c: 423: send();
	fcall	_send
	goto	i1l3245
	line	424
	
i1l190:	
	line	426
	
i1l3245:	
;main.c: 424: }
;main.c: 426: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	goto	i1l3247
	line	427
	
i1l178:	
	line	430
	
i1l3247:	
;main.c: 427: }
;main.c: 430: if (PIR1bits.ADIF)
	btfss	(12),6	;volatile
	goto	u405_21
	goto	u405_20
u405_21:
	goto	i1l191
u405_20:
	line	435
	
i1l3249:	
;main.c: 431: {
;main.c: 435: PIR1bits.ADIF = 0;
	bcf	(12),6	;volatile
	line	436
	
i1l191:	
	line	440
;main.c: 436: }
;main.c: 440: if (INTCONbits.T0IF)
	btfss	(11),2	;volatile
	goto	u406_21
	goto	u406_20
u406_21:
	goto	i1l3273
u406_20:
	line	443
	
i1l3251:	
;main.c: 441: {
;main.c: 443: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	i1_TIMER0_Set
	line	446
	
i1l3253:	
;main.c: 446: if (contagens_tm0 < 499)
	movlw	high(01F3h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_contagens_tm0+1)^080h,w
	movlw	low(01F3h)
	skipnz
	subwf	(_contagens_tm0)^080h,w
	skipnc
	goto	u407_21
	goto	u407_20
u407_21:
	goto	i1l3259
u407_20:
	line	449
	
i1l3255:	
;main.c: 447: {
;main.c: 449: contagens_tm0++;
	movlw	low(01h)
	addwf	(_contagens_tm0)^080h,f
	skipnc
	incf	(_contagens_tm0+1)^080h,f
	movlw	high(01h)
	addwf	(_contagens_tm0+1)^080h,f
	line	452
	
i1l3257:	
;main.c: 452: PORTBbits.RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),6	;volatile
	line	453
;main.c: 453: }
	goto	i1l3271
	line	454
	
i1l193:	
	line	457
	
i1l3259:	
;main.c: 454: else
;main.c: 455: {
;main.c: 457: contagens_tm0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_contagens_tm0)^080h
	clrf	(_contagens_tm0+1)^080h
	line	460
	
i1l3261:	
;main.c: 460: pulsos = (TMR1H << 8) + TMR1L;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(15),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pulsos+1)^080h
	addwf	(_pulsos+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(14),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pulsos)^080h
	addwf	(_pulsos)^080h

	line	461
	
i1l3263:	
;main.c: 461: rpm = ((pulsos / pas_cooler) * 120);
	movf	(_pas_cooler+1)^080h,w
	clrf	(i1___lwdiv@divisor+1)
	addwf	(i1___lwdiv@divisor+1)
	movf	(_pas_cooler)^080h,w
	clrf	(i1___lwdiv@divisor)
	addwf	(i1___lwdiv@divisor)

	movf	(_pulsos+1)^080h,w
	clrf	(i1___lwdiv@dividend+1)
	addwf	(i1___lwdiv@dividend+1)
	movf	(_pulsos)^080h,w
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

	line	464
	
i1l3265:	
;main.c: 464: TMR1L = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	line	465
	
i1l3267:	
;main.c: 465: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	468
	
i1l3269:	
;main.c: 468: PORTBbits.RB6 = 0;
	bcf	(6),6	;volatile
	goto	i1l3271
	line	469
	
i1l194:	
	line	472
	
i1l3271:	
;main.c: 469: }
;main.c: 472: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	goto	i1l3273
	line	473
	
i1l192:	
	line	476
	
i1l3273:	
;main.c: 473: }
;main.c: 476: if (PIR1bits.TMR1IF)
	btfss	(12),0	;volatile
	goto	u408_21
	goto	u408_20
u408_21:
	goto	i1l195
u408_20:
	line	481
	
i1l3275:	
;main.c: 477: {
;main.c: 481: PIR1bits.TMR1IF = 0;
	bcf	(12),0	;volatile
	line	482
	
i1l195:	
	line	485
;main.c: 482: }
;main.c: 485: if (PIR1bits.SSPIF)
	btfss	(12),3	;volatile
	goto	u409_21
	goto	u409_20
u409_21:
	goto	i1l180
u409_20:
	line	490
	
i1l3277:	
;main.c: 486: {
;main.c: 490: PIR1bits.SSPIF = 0;
	bcf	(12),3	;volatile
	goto	i1l180
	line	491
	
i1l196:	
	line	492
	
i1l180:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext21
__ptext21:	;psect for function i1___wmul
psect	text21
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_ofi1___wmul
	__size_ofi1___wmul	equ	__end_ofi1___wmul-i1___wmul
	
i1___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in i1___wmul: [wreg+status,2+status,0]
	line	43
	
i1l3147:	
	clrf	(i1___wmul@product)
	clrf	(i1___wmul@product+1)
	goto	i1l3149
	line	44
	
i1l594:	
	line	45
	
i1l3149:	
	btfss	(i1___wmul@multiplier),(0)&7
	goto	u382_21
	goto	u382_20
u382_21:
	goto	i1l595
u382_20:
	line	46
	
i1l3151:	
	movf	(i1___wmul@multiplicand),w
	addwf	(i1___wmul@product),f
	skipnc
	incf	(i1___wmul@product+1),f
	movf	(i1___wmul@multiplicand+1),w
	addwf	(i1___wmul@product+1),f
	
i1l595:	
	line	47
	movlw	01h
	
u383_25:
	clrc
	rlf	(i1___wmul@multiplicand),f
	rlf	(i1___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u383_25
	line	48
	
i1l3153:	
	movlw	01h
	
u384_25:
	clrc
	rrf	(i1___wmul@multiplier+1),f
	rrf	(i1___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u384_25
	line	49
	movf	((i1___wmul@multiplier+1)),w
	iorwf	((i1___wmul@multiplier)),w
	skipz
	goto	u385_21
	goto	u385_20
u385_21:
	goto	i1l3149
u385_20:
	goto	i1l3155
	
i1l596:	
	line	52
	
i1l3155:	
	movf	(i1___wmul@product+1),w
	clrf	(?i1___wmul+1)
	addwf	(?i1___wmul+1)
	movf	(i1___wmul@product),w
	clrf	(?i1___wmul)
	addwf	(?i1___wmul)

	goto	i1l597
	
i1l3157:	
	line	53
	
i1l597:	
	return
	opt stack 0
GLOBAL	__end_ofi1___wmul
	__end_ofi1___wmul:
	signat	i1___wmul,90
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext22
__ptext22:	;psect for function i1___lwdiv
psect	text22
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_ofi1___lwdiv
	__size_ofi1___lwdiv	equ	__end_ofi1___lwdiv-i1___lwdiv
	
i1___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in i1___lwdiv: [wreg+status,2+status,0]
	line	14
	
i1l3159:	
	clrf	(i1___lwdiv@quotient)
	clrf	(i1___lwdiv@quotient+1)
	line	15
	
i1l3161:	
	movf	(i1___lwdiv@divisor+1),w
	iorwf	(i1___lwdiv@divisor),w
	skipnz
	goto	u386_21
	goto	u386_20
u386_21:
	goto	i1l3181
u386_20:
	line	16
	
i1l3163:	
	clrf	(i1___lwdiv@counter)
	incf	(i1___lwdiv@counter),f
	line	17
	goto	i1l3169
	
i1l931:	
	line	18
	
i1l3165:	
	movlw	01h
	
u387_25:
	clrc
	rlf	(i1___lwdiv@divisor),f
	rlf	(i1___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u387_25
	line	19
	
i1l3167:	
	movlw	(01h)
	movwf	(??i1___lwdiv+0)+0
	movf	(??i1___lwdiv+0)+0,w
	addwf	(i1___lwdiv@counter),f
	goto	i1l3169
	line	20
	
i1l930:	
	line	17
	
i1l3169:	
	btfss	(i1___lwdiv@divisor+1),(15)&7
	goto	u388_21
	goto	u388_20
u388_21:
	goto	i1l3165
u388_20:
	goto	i1l3171
	
i1l932:	
	goto	i1l3171
	line	21
	
i1l933:	
	line	22
	
i1l3171:	
	movlw	01h
	
u389_25:
	clrc
	rlf	(i1___lwdiv@quotient),f
	rlf	(i1___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u389_25
	line	23
	movf	(i1___lwdiv@divisor+1),w
	subwf	(i1___lwdiv@dividend+1),w
	skipz
	goto	u390_25
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),w
u390_25:
	skipc
	goto	u390_21
	goto	u390_20
u390_21:
	goto	i1l3177
u390_20:
	line	24
	
i1l3173:	
	movf	(i1___lwdiv@divisor),w
	subwf	(i1___lwdiv@dividend),f
	movf	(i1___lwdiv@divisor+1),w
	skipc
	decf	(i1___lwdiv@dividend+1),f
	subwf	(i1___lwdiv@dividend+1),f
	line	25
	
i1l3175:	
	bsf	(i1___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l3177
	line	26
	
i1l934:	
	line	27
	
i1l3177:	
	movlw	01h
	
u391_25:
	clrc
	rrf	(i1___lwdiv@divisor+1),f
	rrf	(i1___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u391_25
	line	28
	
i1l3179:	
	movlw	low(01h)
	subwf	(i1___lwdiv@counter),f
	btfss	status,2
	goto	u392_21
	goto	u392_20
u392_21:
	goto	i1l3171
u392_20:
	goto	i1l3181
	
i1l935:	
	goto	i1l3181
	line	29
	
i1l929:	
	line	30
	
i1l3181:	
	movf	(i1___lwdiv@quotient+1),w
	clrf	(?i1___lwdiv+1)
	addwf	(?i1___lwdiv+1)
	movf	(i1___lwdiv@quotient),w
	clrf	(?i1___lwdiv)
	addwf	(?i1___lwdiv)

	goto	i1l936
	
i1l3183:	
	line	31
	
i1l936:	
	return
	opt stack 0
GLOBAL	__end_ofi1___lwdiv
	__end_ofi1___lwdiv:
	signat	i1___lwdiv,90
	global	i1_TIMER0_Set

;; *************** function i1_TIMER0_Set *****************
;; Defined at:
;;		line 20 in file "R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
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
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
	line	20
global __ptext23
__ptext23:	;psect for function i1_TIMER0_Set
psect	text23
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
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
	
i1l3145:	
;timers.c: 22: TMR0 = contagens;
	movf	(i1TIMER0_Set@contagens),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
i1l281:	
	return
	opt stack 0
GLOBAL	__end_ofi1_TIMER0_Set
	__end_ofi1_TIMER0_Set:
	signat	i1_TIMER0_Set,88
	global	_send

;; *************** function _send *****************
;; Defined at:
;;		line 102 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  index           1    3[COMMON] unsigned char 
;;  checksum        1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USART_WriteChar
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	102
global __ptext24
__ptext24:	;psect for function _send
psect	text24
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	102
	global	__size_of_send
	__size_of_send	equ	__end_of_send-_send
	
_send:	
;incstack = 0
	opt	stack 3
; Regs used in _send: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	106
	
i1l2713:	
;main.c: 106: buffer[0] = '#';
	movlw	(023h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_buffer)^0180h
	line	107
;main.c: 107: buffer[1] = '$';
	movlw	(024h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^0180h+01h
	line	108
;main.c: 108: buffer[2] = ':';
	movlw	(03Ah)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^0180h+02h
	line	111
	
i1l2715:	
;main.c: 111: buffer[3] = (rpm >> 8) & 0xFF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm+1)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+03h
	line	112
	
i1l2717:	
;main.c: 112: buffer[4] = rpm & 0xFF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+04h
	line	113
	
i1l2719:	
;main.c: 113: buffer[5] = 0;
	clrf	0+(_buffer)^0180h+05h
	line	115
	
i1l2721:	
;main.c: 115: unsigned char checksum = 0x00;
	clrf	(send@checksum)
	line	116
	
i1l2723:	
;main.c: 116: for (unsigned char index = 0; index < 6; index++)
	clrf	(send@index)
	movlw	(06h)
	subwf	(send@index),w
	skipc
	goto	u332_21
	goto	u332_20
u332_21:
	goto	i1l2727
u332_20:
	goto	i1l2735
	
i1l2725:	
	goto	i1l2735
	line	117
	
i1l133:	
	line	118
	
i1l2727:	
;main.c: 117: {
;main.c: 118: USART_WriteChar(buffer[index]);
	movf	(send@index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_USART_WriteChar
	line	119
	
i1l2729:	
;main.c: 119: checksum ^= buffer[index];
	movf	(send@index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	xorwf	(send@checksum),f
	line	116
	
i1l2731:	
	movlw	(01h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	addwf	(send@index),f
	
i1l2733:	
	movlw	(06h)
	subwf	(send@index),w
	skipc
	goto	u333_21
	goto	u333_20
u333_21:
	goto	i1l2727
u333_20:
	goto	i1l2735
	
i1l134:	
	line	121
	
i1l2735:	
;main.c: 120: }
;main.c: 121: buffer[6] = checksum;
	movf	(send@checksum),w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+06h
	line	122
	
i1l2737:	
;main.c: 122: USART_WriteChar(buffer[6]);
	movf	0+(_buffer)^0180h+06h,w
	fcall	_USART_WriteChar
	line	123
	
i1l135:	
	return
	opt stack 0
GLOBAL	__end_of_send
	__end_of_send:
	signat	_send,88
	global	_USART_ReceiveChar

;; *************** function _USART_ReceiveChar *****************
;; Defined at:
;;		line 63 in file "R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte            1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_USART_WriteString
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	63
global __ptext25
__ptext25:	;psect for function _USART_ReceiveChar
psect	text25
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	63
	global	__size_of_USART_ReceiveChar
	__size_of_USART_ReceiveChar	equ	__end_of_USART_ReceiveChar-_USART_ReceiveChar
	
_USART_ReceiveChar:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_ReceiveChar: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	67
	
i1l2881:	
;usart.c: 65: unsigned char byte;
;usart.c: 67: if (!OERR)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(193/8),(193)&7	;volatile
	goto	u358_21
	goto	u358_20
u358_21:
	goto	i1l2887
u358_20:
	line	69
	
i1l2883:	
;usart.c: 68: {
;usart.c: 69: byte = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@byte)
	line	70
	
i1l2885:	
;usart.c: 70: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	line	71
;usart.c: 71: }
	goto	i1l2897
	line	72
	
i1l236:	
	line	74
	
i1l2887:	
;usart.c: 72: else
;usart.c: 73: {
;usart.c: 74: USART_WriteString("\n\r ------- ESTOURO DE PILHA ------- \n\r ");
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_USART_WriteString
	line	76
	
i1l2889:	
;usart.c: 76: RCSTAbits.CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24),4	;volatile
	line	77
	
i1l2891:	
;usart.c: 77: byte = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@byte)
	line	78
	
i1l2893:	
;usart.c: 78: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	79
	
i1l2895:	
;usart.c: 79: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	goto	i1l2897
	line	80
	
i1l237:	
	line	82
	
i1l2897:	
;usart.c: 80: }
;usart.c: 82: return(byte);
	movf	(USART_ReceiveChar@byte),w
	goto	i1l238
	
i1l2899:	
	line	83
	
i1l238:	
	return
	opt stack 0
GLOBAL	__end_of_USART_ReceiveChar
	__end_of_USART_ReceiveChar:
	signat	_USART_ReceiveChar,89
	global	_USART_WriteString

;; *************** function _USART_WriteString *****************
;; Defined at:
;;		line 52 in file "R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_5(40), STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR const unsigned char 
;;		 -> STR_5(40), STR_1(14), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_USART_WriteChar
;; This function is called by:
;;		_ISR
;;		_USART_ReceiveChar
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	line	52
global __ptext26
__ptext26:	;psect for function _USART_WriteString
psect	text26
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	52
	global	__size_of_USART_WriteString
	__size_of_USART_WriteString	equ	__end_of_USART_WriteString-_USART_WriteString
	
_USART_WriteString:	
;incstack = 0
	opt	stack 3
; Regs used in _USART_WriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;USART_WriteString@str stored from wreg
	movwf	(USART_WriteString@str)
	line	54
	
i1l2475:	
;usart.c: 54: while(*str != '\0')
	goto	i1l2481
	
i1l231:	
	line	56
	
i1l2477:	
;usart.c: 55: {
;usart.c: 56: USART_WriteChar(*str);
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_USART_WriteChar
	line	57
	
i1l2479:	
;usart.c: 57: str++;
	movlw	(01h)
	movwf	(??_USART_WriteString+0)+0
	movf	(??_USART_WriteString+0)+0,w
	addwf	(USART_WriteString@str),f
	goto	i1l2481
	line	58
	
i1l230:	
	line	54
	
i1l2481:	
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l2477
u277_20:
	goto	i1l233
	
i1l232:	
	line	59
	
i1l233:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteString
	__end_of_USART_WriteString:
	signat	_USART_WriteString,4216
	global	_USART_WriteChar

;; *************** function _USART_WriteChar *****************
;; Defined at:
;;		line 44 in file "R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
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
;;		_send
;;		_USART_WriteString
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	line	44
global __ptext27
__ptext27:	;psect for function _USART_WriteChar
psect	text27
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	44
	global	__size_of_USART_WriteChar
	__size_of_USART_WriteChar	equ	__end_of_USART_WriteChar-_USART_WriteChar
	
_USART_WriteChar:	
;incstack = 0
	opt	stack 3
; Regs used in _USART_WriteChar: [wreg]
;USART_WriteChar@byte stored from wreg
	movwf	(USART_WriteChar@byte)
	line	46
	
i1l2265:	
;usart.c: 46: while(!PIR1bits.TXIF);
	goto	i1l224
	
i1l225:	
	
i1l224:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l224
u223_20:
	goto	i1l2267
	
i1l226:	
	line	47
	
i1l2267:	
;usart.c: 47: TXREG = byte;
	movf	(USART_WriteChar@byte),w
	movwf	(25)	;volatile
	line	48
	
i1l227:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteChar
	__end_of_USART_WriteChar:
	signat	_USART_WriteChar,4216
	global	_Fuzzy

;; *************** function _Fuzzy *****************
;; Defined at:
;;		line 147 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               2   59[BANK0 ] int 
;;  a               2   57[BANK0 ] int 
;;  a               2   55[BANK0 ] int 
;;  deltaRpm        3   70[BANK0 ] float 
;;  aumenta         3   67[BANK0 ] float 
;;  reduz           3   64[BANK0 ] float 
;;  mantem          3   61[BANK0 ] float 
;;  tip             3   52[BANK0 ] float 
;;  freio           2   50[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      23       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      23       0       0       0
;;Total ram usage:       23 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lwtoft
;;		_max_val
;;		_trapmf
;;		_trimf
;;		i1_PWM_DutyCycle2
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	147
global __ptext28
__ptext28:	;psect for function _Fuzzy
psect	text28
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	147
	global	__size_of_Fuzzy
	__size_of_Fuzzy	equ	__end_of_Fuzzy-_Fuzzy
	
_Fuzzy:	
;incstack = 0
	opt	stack 1
; Regs used in _Fuzzy: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	158
	
i1l2739:	
;main.c: 158: setpoint = (float)setpointUI;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpointUI+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_setpointUI)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpoint)^080h
	movf	(1+(?___lwtoft)),w
	movwf	(_setpoint+1)^080h
	movf	(2+(?___lwtoft)),w
	movwf	(_setpoint+2)^080h
	line	159
	
i1l2741:	
;main.c: 159: float deltaRpm = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Fuzzy@deltaRpm)
	movlw	0x0
	movwf	(Fuzzy@deltaRpm+1)
	movlw	0x0
	movwf	(Fuzzy@deltaRpm+2)
	line	162
	
i1l2743:	
;main.c: 162: unsigned int freio = 0;
	clrf	(Fuzzy@freio)
	clrf	(Fuzzy@freio+1)
	line	168
	
i1l2745:	
;main.c: 168: float mantem = 0;
	movlw	0x0
	movwf	(Fuzzy@mantem)
	movlw	0x0
	movwf	(Fuzzy@mantem+1)
	movlw	0x0
	movwf	(Fuzzy@mantem+2)
	line	169
	
i1l2747:	
;main.c: 169: float reduz = 0;
	movlw	0x0
	movwf	(Fuzzy@reduz)
	movlw	0x0
	movwf	(Fuzzy@reduz+1)
	movlw	0x0
	movwf	(Fuzzy@reduz+2)
	line	170
	
i1l2749:	
;main.c: 170: float aumenta = 0;
	movlw	0x0
	movwf	(Fuzzy@aumenta)
	movlw	0x0
	movwf	(Fuzzy@aumenta+1)
	movlw	0x0
	movwf	(Fuzzy@aumenta+2)
	line	172
	
i1l2751:	
;main.c: 171: float tip;
;main.c: 172: fitemp = 0;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp)^080h
	movlw	0x0
	movwf	(_fitemp+1)^080h
	movlw	0x0
	movwf	(_fitemp+2)^080h
	line	175
	
i1l2753:	
;main.c: 175: deltaRpm = (setpoint - tf);
	movf	(_setpoint)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpoint+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpoint+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	movf	(_tf),w
	movwf	(___ftneg@f1)
	movf	(_tf+1),w
	movwf	(___ftneg@f1+1)
	movf	(_tf+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(Fuzzy@deltaRpm)
	movf	(1+(?___ftadd)),w
	movwf	(Fuzzy@deltaRpm+1)
	movf	(2+(?___ftadd)),w
	movwf	(Fuzzy@deltaRpm+2)
	line	176
	
i1l2755:	
;main.c: 176: deltaRpm = (deltaRpm/100);
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0xc8
	movwf	(___ftdiv@f2+1)
	movlw	0x42
	movwf	(___ftdiv@f2+2)
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftdiv@f1)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftdiv@f1+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(Fuzzy@deltaRpm)
	movf	(1+(?___ftdiv)),w
	movwf	(Fuzzy@deltaRpm+1)
	movf	(2+(?___ftdiv)),w
	movwf	(Fuzzy@deltaRpm+2)
	line	178
	
i1l2757:	
;main.c: 178: deltaV = deltaRpm;
	movf	(Fuzzy@deltaRpm),w
	movwf	(___fttol@f1)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___fttol@f1+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_deltaV+1)^080h
	addwf	(_deltaV+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_deltaV)^080h
	addwf	(_deltaV)^080h

	line	180
	
i1l2759:	
;main.c: 180: if (deltaRpm <0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff1)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff1+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l2769
u334_20:
	line	182
	
i1l2761:	
;main.c: 181: {
;main.c: 182: if(PORTBbits.RB1 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(6),1	;volatile
	goto	u335_21
	goto	u335_20
u335_21:
	goto	i1l149
u335_20:
	line	184
	
i1l2763:	
;main.c: 183: {
;main.c: 184: PORTBbits.RB1 = 1;
	bsf	(6),1	;volatile
	line	185
;main.c: 185: }else{
	goto	i1l2765
	
i1l149:	
	line	186
;main.c: 186: PORTBbits.RB1 = 0;
	bcf	(6),1	;volatile
	goto	i1l2765
	line	187
	
i1l150:	
	line	189
	
i1l2765:	
;main.c: 187: }
;main.c: 189: deltaRpm = deltaRpm*-1;
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x80
	movwf	(___ftmul@f1+1)
	movlw	0xbf
	movwf	(___ftmul@f1+2)
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftmul@f2)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftmul@f2+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Fuzzy@deltaRpm)
	movf	(1+(?___ftmul)),w
	movwf	(Fuzzy@deltaRpm+1)
	movf	(2+(?___ftmul)),w
	movwf	(Fuzzy@deltaRpm+2)
	line	190
	
i1l2767:	
;main.c: 190: freio = 1;
	movlw	low(01h)
	movwf	(Fuzzy@freio)
	movlw	high(01h)
	movwf	((Fuzzy@freio))+1
	goto	i1l2769
	line	191
	
i1l148:	
	line	193
	
i1l2769:	
;main.c: 191: }
;main.c: 193: if (deltaRpm >90) deltaRpm = 90;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0xb4
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff2)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff2+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l2773
u336_20:
	
i1l2771:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Fuzzy@deltaRpm)
	movlw	0xb4
	movwf	(Fuzzy@deltaRpm+1)
	movlw	0x42
	movwf	(Fuzzy@deltaRpm+2)
	goto	i1l2773
	
i1l151:	
	line	196
	
i1l2773:	
;main.c: 196: if (deltaRpm < 25)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff1)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff1+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u337_21
	goto	u337_20
u337_21:
	goto	i1l2797
u337_20:
	line	201
	
i1l2775:	
;main.c: 197: {
;main.c: 201: fitemp = trapmf(deltaRpm, 0,0,13,32);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(trapmf@x)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(trapmf@x+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x0
	movwf	(trapmf@a+1)
	movlw	0x0
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x0
	movwf	(trapmf@b+1)
	movlw	0x0
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x50
	movwf	(trapmf@c+1)
	movlw	0x41
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0x0
	movwf	(trapmf@d+1)
	movlw	0x42
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp+2)^080h
	line	204
;main.c: 204: fop_rule1 = max_val(fitemp,0.1);
	movf	(_fitemp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fitemp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fitemp+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a+2)
	movlw	0xcd
	movwf	(max_val@b)
	movlw	0xcc
	movwf	(max_val@b+1)
	movlw	0x3d
	movwf	(max_val@b+2)
	fcall	_max_val
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule1+2)^080h
	line	207
	
i1l2777:	
;main.c: 207: x=0;
	movlw	0x0
	movwf	(_x)^080h
	movlw	0x0
	movwf	(_x+1)^080h
	movlw	0x0
	movwf	(_x+2)^080h
	line	208
	
i1l2779:	
;main.c: 208: y=0;
	movlw	0x0
	movwf	(_y)^080h
	movlw	0x0
	movwf	(_y+1)^080h
	movlw	0x0
	movwf	(_y+2)^080h
	line	209
	
i1l2781:	
;main.c: 209: for (int a=0; a<=90; a++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Fuzzy@a)
	clrf	(Fuzzy@a+1)
	
i1l2783:	
	movf	(Fuzzy@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u338_25
	movlw	low(05Bh)
	subwf	(Fuzzy@a),w
u338_25:

	skipc
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l2787
u338_20:
	goto	i1l2797
	
i1l2785:	
	goto	i1l2797
	line	210
	
i1l153:	
	line	211
	
i1l2787:	
;main.c: 210: {
;main.c: 211: y = trapmf(x,0,0,13,32);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x0
	movwf	(trapmf@a+1)
	movlw	0x0
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x0
	movwf	(trapmf@b+1)
	movlw	0x0
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x50
	movwf	(trapmf@c+1)
	movlw	0x41
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0x0
	movwf	(trapmf@d+1)
	movlw	0x42
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y+2)^080h
	line	213
;main.c: 213: if (y > fop_rule1)
	movf	(_fop_rule1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u339_21
	goto	u339_20
u339_21:
	goto	i1l2791
u339_20:
	line	215
	
i1l2789:	
;main.c: 214: {
;main.c: 215: reduz += fop_rule1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule1+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule1+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	movf	(Fuzzy@reduz),w
	movwf	(___ftadd@f2)
	movf	(Fuzzy@reduz+1),w
	movwf	(___ftadd@f2+1)
	movf	(Fuzzy@reduz+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(Fuzzy@reduz)
	movf	(1+(?___ftadd)),w
	movwf	(Fuzzy@reduz+1)
	movf	(2+(?___ftadd)),w
	movwf	(Fuzzy@reduz+2)
	line	216
;main.c: 216: }
	goto	i1l156
	line	217
	
i1l155:	
	line	219
	
i1l2791:	
;main.c: 217: else
;main.c: 218: {
;main.c: 219: reduz += y;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	movf	(Fuzzy@reduz),w
	movwf	(___ftadd@f2)
	movf	(Fuzzy@reduz+1),w
	movwf	(___ftadd@f2+1)
	movf	(Fuzzy@reduz+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(Fuzzy@reduz)
	movf	(1+(?___ftadd)),w
	movwf	(Fuzzy@reduz+1)
	movf	(2+(?___ftadd)),w
	movwf	(Fuzzy@reduz+2)
	line	220
	
i1l156:	
	line	222
;main.c: 220: }
;main.c: 222: x=x+1;
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+2)^080h
	line	209
	
i1l2793:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Fuzzy@a),f
	skipnc
	incf	(Fuzzy@a+1),f
	movlw	high(01h)
	addwf	(Fuzzy@a+1),f
	
i1l2795:	
	movf	(Fuzzy@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u340_25
	movlw	low(05Bh)
	subwf	(Fuzzy@a),w
u340_25:

	skipc
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l2787
u340_20:
	goto	i1l2797
	
i1l154:	
	goto	i1l2797
	line	225
	
i1l152:	
	line	231
	
i1l2797:	
;main.c: 223: }
;main.c: 225: }
;main.c: 231: if ((deltaRpm > 20) && (deltaRpm < 70))
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0xa0
	movwf	(___ftge@ff1+1)
	movlw	0x41
	movwf	(___ftge@ff1+2)
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff2)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff2+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u341_21
	goto	u341_20
u341_21:
	goto	i1l2823
u341_20:
	
i1l2799:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff1)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff1+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x8c
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u342_21
	goto	u342_20
u342_21:
	goto	i1l2823
u342_20:
	line	235
	
i1l2801:	
;main.c: 232: {
;main.c: 235: fitemp = trimf(deltaRpm, 9, 45, 81);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(trimf@x)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(trimf@x+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(trimf@x+2)
	movlw	0x0
	movwf	(trimf@a)
	movlw	0x10
	movwf	(trimf@a+1)
	movlw	0x41
	movwf	(trimf@a+2)
	movlw	0x0
	movwf	(trimf@b)
	movlw	0x34
	movwf	(trimf@b+1)
	movlw	0x42
	movwf	(trimf@b+2)
	movlw	0x0
	movwf	(trimf@c)
	movlw	0xa2
	movwf	(trimf@c+1)
	movlw	0x42
	movwf	(trimf@c+2)
	fcall	_trimf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trimf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trimf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trimf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp+2)^080h
	line	238
;main.c: 238: fop_rule2 = max_val(fitemp,0.1);
	movf	(_fitemp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fitemp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fitemp+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a+2)
	movlw	0xcd
	movwf	(max_val@b)
	movlw	0xcc
	movwf	(max_val@b+1)
	movlw	0x3d
	movwf	(max_val@b+2)
	fcall	_max_val
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule2+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule2+2)^080h
	line	241
	
i1l2803:	
;main.c: 241: x=0;
	movlw	0x0
	movwf	(_x)^080h
	movlw	0x0
	movwf	(_x+1)^080h
	movlw	0x0
	movwf	(_x+2)^080h
	line	242
	
i1l2805:	
;main.c: 242: y=0;
	movlw	0x0
	movwf	(_y)^080h
	movlw	0x0
	movwf	(_y+1)^080h
	movlw	0x0
	movwf	(_y+2)^080h
	line	243
	
i1l2807:	
;main.c: 243: for (int a=0; a<=90; a++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Fuzzy@a_246)
	clrf	(Fuzzy@a_246+1)
	
i1l2809:	
	movf	(Fuzzy@a_246+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u343_25
	movlw	low(05Bh)
	subwf	(Fuzzy@a_246),w
u343_25:

	skipc
	goto	u343_21
	goto	u343_20
u343_21:
	goto	i1l2813
u343_20:
	goto	i1l2823
	
i1l2811:	
	goto	i1l2823
	line	244
	
i1l158:	
	line	245
	
i1l2813:	
;main.c: 244: {
;main.c: 245: y = trimf(x, 9, 45, 81);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trimf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trimf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trimf@x+2)
	movlw	0x0
	movwf	(trimf@a)
	movlw	0x10
	movwf	(trimf@a+1)
	movlw	0x41
	movwf	(trimf@a+2)
	movlw	0x0
	movwf	(trimf@b)
	movlw	0x34
	movwf	(trimf@b+1)
	movlw	0x42
	movwf	(trimf@b+2)
	movlw	0x0
	movwf	(trimf@c)
	movlw	0xa2
	movwf	(trimf@c+1)
	movlw	0x42
	movwf	(trimf@c+2)
	fcall	_trimf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trimf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trimf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trimf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y+2)^080h
	line	247
;main.c: 247: if (y >= fop_rule2)
	movf	(_y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u344_21
	goto	u344_20
u344_21:
	goto	i1l2817
u344_20:
	line	249
	
i1l2815:	
;main.c: 248: {
;main.c: 249: mantem += fop_rule2;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule2+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule2+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	movf	(Fuzzy@mantem),w
	movwf	(___ftadd@f2)
	movf	(Fuzzy@mantem+1),w
	movwf	(___ftadd@f2+1)
	movf	(Fuzzy@mantem+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(Fuzzy@mantem)
	movf	(1+(?___ftadd)),w
	movwf	(Fuzzy@mantem+1)
	movf	(2+(?___ftadd)),w
	movwf	(Fuzzy@mantem+2)
	line	250
;main.c: 250: }
	goto	i1l161
	line	251
	
i1l160:	
	line	253
	
i1l2817:	
;main.c: 251: else
;main.c: 252: {
;main.c: 253: mantem += y;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	movf	(Fuzzy@mantem),w
	movwf	(___ftadd@f2)
	movf	(Fuzzy@mantem+1),w
	movwf	(___ftadd@f2+1)
	movf	(Fuzzy@mantem+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(Fuzzy@mantem)
	movf	(1+(?___ftadd)),w
	movwf	(Fuzzy@mantem+1)
	movf	(2+(?___ftadd)),w
	movwf	(Fuzzy@mantem+2)
	line	254
	
i1l161:	
	line	256
;main.c: 254: }
;main.c: 256: x=x+1;
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+2)^080h
	line	243
	
i1l2819:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Fuzzy@a_246),f
	skipnc
	incf	(Fuzzy@a_246+1),f
	movlw	high(01h)
	addwf	(Fuzzy@a_246+1),f
	
i1l2821:	
	movf	(Fuzzy@a_246+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u345_25
	movlw	low(05Bh)
	subwf	(Fuzzy@a_246),w
u345_25:

	skipc
	goto	u345_21
	goto	u345_20
u345_21:
	goto	i1l2813
u345_20:
	goto	i1l2823
	
i1l159:	
	goto	i1l2823
	line	259
	
i1l157:	
	line	265
	
i1l2823:	
;main.c: 257: }
;main.c: 259: }
;main.c: 265: if (deltaRpm > 70 )
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0x8c
	movwf	(___ftge@ff1+1)
	movlw	0x42
	movwf	(___ftge@ff1+2)
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff2)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff2+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u346_21
	goto	u346_20
u346_21:
	goto	i1l2847
u346_20:
	line	269
	
i1l2825:	
;main.c: 266: {
;main.c: 269: fitemp = trapmf(deltaRpm, 62, 79, 90, 90);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(trapmf@x)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(trapmf@x+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x78
	movwf	(trapmf@a+1)
	movlw	0x42
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x9e
	movwf	(trapmf@b+1)
	movlw	0x42
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xb4
	movwf	(trapmf@c+1)
	movlw	0x42
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0xb4
	movwf	(trapmf@d+1)
	movlw	0x42
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fitemp+2)^080h
	line	273
;main.c: 273: fop_rule3 = max_val(fitemp,0.1);
	movf	(_fitemp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fitemp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fitemp+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(max_val@a+2)
	movlw	0xcd
	movwf	(max_val@b)
	movlw	0xcc
	movwf	(max_val@b+1)
	movlw	0x3d
	movwf	(max_val@b+2)
	fcall	_max_val
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule3+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_max_val)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_fop_rule3+2)^080h
	line	276
	
i1l2827:	
;main.c: 276: x=0;
	movlw	0x0
	movwf	(_x)^080h
	movlw	0x0
	movwf	(_x+1)^080h
	movlw	0x0
	movwf	(_x+2)^080h
	line	277
	
i1l2829:	
;main.c: 277: y=0;
	movlw	0x0
	movwf	(_y)^080h
	movlw	0x0
	movwf	(_y+1)^080h
	movlw	0x0
	movwf	(_y+2)^080h
	line	278
	
i1l2831:	
;main.c: 278: for (int a=0; a<=90; a++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Fuzzy@a_247)
	clrf	(Fuzzy@a_247+1)
	
i1l2833:	
	movf	(Fuzzy@a_247+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u347_25
	movlw	low(05Bh)
	subwf	(Fuzzy@a_247),w
u347_25:

	skipc
	goto	u347_21
	goto	u347_20
u347_21:
	goto	i1l2837
u347_20:
	goto	i1l2847
	
i1l2835:	
	goto	i1l2847
	line	279
	
i1l163:	
	line	280
	
i1l2837:	
;main.c: 279: {
;main.c: 280: y = trapmf(x, 62, 79, 90, 90);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x78
	movwf	(trapmf@a+1)
	movlw	0x42
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x9e
	movwf	(trapmf@b+1)
	movlw	0x42
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xb4
	movwf	(trapmf@c+1)
	movlw	0x42
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0xb4
	movwf	(trapmf@d+1)
	movlw	0x42
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_y+2)^080h
	line	282
;main.c: 282: if (y >= fop_rule3)
	movf	(_y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u348_21
	goto	u348_20
u348_21:
	goto	i1l2841
u348_20:
	line	284
	
i1l2839:	
;main.c: 283: {
;main.c: 284: aumenta += fop_rule3;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule3+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_fop_rule3+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	movf	(Fuzzy@aumenta),w
	movwf	(___ftadd@f2)
	movf	(Fuzzy@aumenta+1),w
	movwf	(___ftadd@f2+1)
	movf	(Fuzzy@aumenta+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(Fuzzy@aumenta)
	movf	(1+(?___ftadd)),w
	movwf	(Fuzzy@aumenta+1)
	movf	(2+(?___ftadd)),w
	movwf	(Fuzzy@aumenta+2)
	line	285
;main.c: 285: }
	goto	i1l166
	line	286
	
i1l165:	
	line	288
	
i1l2841:	
;main.c: 286: else
;main.c: 287: {
;main.c: 288: aumenta += y;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_y+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	movf	(Fuzzy@aumenta),w
	movwf	(___ftadd@f2)
	movf	(Fuzzy@aumenta+1),w
	movwf	(___ftadd@f2+1)
	movf	(Fuzzy@aumenta+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(Fuzzy@aumenta)
	movf	(1+(?___ftadd)),w
	movwf	(Fuzzy@aumenta+1)
	movf	(2+(?___ftadd)),w
	movwf	(Fuzzy@aumenta+2)
	line	289
	
i1l166:	
	line	291
;main.c: 289: }
;main.c: 291: x=x+1;
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_x+2)^080h
	line	278
	
i1l2843:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Fuzzy@a_247),f
	skipnc
	incf	(Fuzzy@a_247+1),f
	movlw	high(01h)
	addwf	(Fuzzy@a_247+1),f
	
i1l2845:	
	movf	(Fuzzy@a_247+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u349_25
	movlw	low(05Bh)
	subwf	(Fuzzy@a_247),w
u349_25:

	skipc
	goto	u349_21
	goto	u349_20
u349_21:
	goto	i1l2837
u349_20:
	goto	i1l2847
	
i1l164:	
	goto	i1l2847
	line	294
	
i1l162:	
	line	297
	
i1l2847:	
;main.c: 292: }
;main.c: 294: }
;main.c: 297: if (deltaRpm < 25)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff1)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff1+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u350_21
	goto	u350_20
u350_21:
	goto	i1l2851
u350_20:
	line	299
	
i1l2849:	
;main.c: 298: {
;main.c: 299: tip = reduz;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@reduz),w
	movwf	(Fuzzy@tip)
	movf	(Fuzzy@reduz+1),w
	movwf	(Fuzzy@tip+1)
	movf	(Fuzzy@reduz+2),w
	movwf	(Fuzzy@tip+2)
	line	300
;main.c: 300: }else
	goto	i1l168
	
i1l167:	
	line	301
	
i1l2851:	
;main.c: 301: if (deltaRpm >= 25 && deltaRpm < 75)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff1)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff1+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0xc8
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u351_21
	goto	u351_20
u351_21:
	goto	i1l2857
u351_20:
	
i1l2853:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@deltaRpm),w
	movwf	(___ftge@ff1)
	movf	(Fuzzy@deltaRpm+1),w
	movwf	(___ftge@ff1+1)
	movf	(Fuzzy@deltaRpm+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x96
	movwf	(___ftge@ff2+1)
	movlw	0x42
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u352_21
	goto	u352_20
u352_21:
	goto	i1l2857
u352_20:
	line	303
	
i1l2855:	
;main.c: 302: {
;main.c: 303: tip = mantem;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@mantem),w
	movwf	(Fuzzy@tip)
	movf	(Fuzzy@mantem+1),w
	movwf	(Fuzzy@tip+1)
	movf	(Fuzzy@mantem+2),w
	movwf	(Fuzzy@tip+2)
	line	304
;main.c: 304: }else
	goto	i1l168
	
i1l169:	
	line	306
	
i1l2857:	
;main.c: 305: {
;main.c: 306: tip = aumenta;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@aumenta),w
	movwf	(Fuzzy@tip)
	movf	(Fuzzy@aumenta+1),w
	movwf	(Fuzzy@tip+1)
	movf	(Fuzzy@aumenta+2),w
	movwf	(Fuzzy@tip+2)
	goto	i1l168
	line	307
	
i1l170:	
	
i1l168:	
	line	310
;main.c: 307: }
;main.c: 310: total_area = 90;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_total_area)^080h
	movlw	0xb4
	movwf	(_total_area+1)^080h
	movlw	0x42
	movwf	(_total_area+2)^080h
	line	311
;main.c: 311: sum = 0;
	movlw	0x0
	movwf	(_sum)^080h
	movlw	0x0
	movwf	(_sum+1)^080h
	movlw	0x0
	movwf	(_sum+2)^080h
	line	312
	
i1l2859:	
;main.c: 312: sum = sum + tip;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Fuzzy@tip),w
	movwf	(___ftadd@f1)
	movf	(Fuzzy@tip+1),w
	movwf	(___ftadd@f1+1)
	movf	(Fuzzy@tip+2),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sum)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sum+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sum+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sum)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sum+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sum+2)^080h
	line	315
	
i1l2861:	
;main.c: 315: ativa_fan = sum/total_area;
	movf	(_total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sum)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sum+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sum+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ativa_fan)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ativa_fan+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ativa_fan+2)^080h
	line	318
	
i1l2863:	
;main.c: 318: ativa_fan = ativa_fan*100;
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xc8
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	movf	(_ativa_fan)^080h,w
	movwf	(___ftmul@f2)
	movf	(_ativa_fan+1)^080h,w
	movwf	(___ftmul@f2+1)
	movf	(_ativa_fan+2)^080h,w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_ativa_fan)^080h
	movf	(1+(?___ftmul)),w
	movwf	(_ativa_fan+1)^080h
	movf	(2+(?___ftmul)),w
	movwf	(_ativa_fan+2)^080h
	line	322
	
i1l2865:	
;main.c: 322: if (freio = 1)
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Fuzzy@freio)
	movlw	high(01h)
	movwf	((Fuzzy@freio))+1
	line	324
;main.c: 323: {
;main.c: 324: if ((tf + deltaV) >0 && (tf + deltaV) < 1020)
	movlw	0x0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x0
	movwf	(___ftge@ff1+2)
	movf	(_tf),w
	movwf	(___ftadd@f1)
	movf	(_tf+1),w
	movwf	(___ftadd@f1+1)
	movf	(_tf+2),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_deltaV)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u353_21
	goto	u353_20
u353_21:
	goto	i1l175
u353_20:
	
i1l2867:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tf),w
	movwf	(___ftadd@f1)
	movf	(_tf+1),w
	movwf	(___ftadd@f1+1)
	movf	(_tf+2),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_deltaV)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x7f
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u354_21
	goto	u354_20
u354_21:
	goto	i1l175
u354_20:
	line	326
	
i1l2869:	
;main.c: 325: {
;main.c: 326: PWM_DutyCycle2(tf + deltaV);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_deltaV)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftadd@f2+2)
	movf	(_tf),w
	movwf	(___ftadd@f1)
	movf	(_tf+1),w
	movwf	(___ftadd@f1+1)
	movf	(_tf+2),w
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	goto	i1l175
	line	327
	
i1l172:	
	line	328
;main.c: 327: }
;main.c: 328: }else
	goto	i1l175
	
i1l171:	
	line	330
	
i1l2871:	
;main.c: 329: {
;main.c: 330: if ((tf - deltaV) >0 && (tf - deltaV) < 1020)
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftge@ff1)
	movlw	0x0
	movwf	(___ftge@ff1+1)
	movlw	0x0
	movwf	(___ftge@ff1+2)
	movf	(_tf),w
	movwf	(___ftadd@f1)
	movf	(_tf+1),w
	movwf	(___ftadd@f1+1)
	movf	(_tf+2),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_deltaV)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftge@ff2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftge@ff2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u355_21
	goto	u355_20
u355_21:
	goto	i1l175
u355_20:
	
i1l2873:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tf),w
	movwf	(___ftadd@f1)
	movf	(_tf+1),w
	movwf	(___ftadd@f1+1)
	movf	(_tf+2),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_deltaV)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftge@ff1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftge@ff1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x7f
	movwf	(___ftge@ff2+1)
	movlw	0x44
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u356_21
	goto	u356_20
u356_21:
	goto	i1l175
u356_20:
	line	332
	
i1l2875:	
;main.c: 331: {
;main.c: 332: PWM_DutyCycle2(tf - deltaV);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_deltaV)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	movf	(_tf),w
	movwf	(___ftadd@f1)
	movf	(_tf+1),w
	movwf	(___ftadd@f1+1)
	movf	(_tf+2),w
	movwf	(___ftadd@f1+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	goto	i1l175
	line	333
	
i1l174:	
	goto	i1l175
	line	334
	
i1l173:	
	line	337
	
i1l175:	
	return
	opt stack 0
GLOBAL	__end_of_Fuzzy
	__end_of_Fuzzy:
	signat	_Fuzzy,88
	global	i1_PWM_DutyCycle2

;; *************** function i1_PWM_DutyCycle2 *****************
;; Defined at:
;;		line 96 in file "R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
;; Parameters:    Size  Location     Type
;;  valor           2   30[BANK0 ] int 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       2       0       0       0
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
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	96
global __ptext29
__ptext29:	;psect for function i1_PWM_DutyCycle2
psect	text29
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	96
	global	__size_ofi1_PWM_DutyCycle2
	__size_ofi1_PWM_DutyCycle2	equ	__end_ofi1_PWM_DutyCycle2-i1_PWM_DutyCycle2
	
i1_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 4
; Regs used in i1_PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
i1l2709:	
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
	
i1l2711:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	movlw	(04h)-1
u331_25:
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,f
	addlw	-1
	skipz
	goto	u331_25
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,w
	iorlw	0Ch
	movwf	(29)	;volatile
	line	100
	
i1l435:	
	return
	opt stack 0
GLOBAL	__end_ofi1_PWM_DutyCycle2
	__end_ofi1_PWM_DutyCycle2:
	signat	i1_PWM_DutyCycle2,88
	global	_trimf

;; *************** function _trimf *****************
;; Defined at:
;;		line 63 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  x               3   32[BANK0 ] float 
;;  a               3   35[BANK0 ] float 
;;  b               3   38[BANK0 ] float 
;;  c               3   41[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  ua              3   44[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      12       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	63
global __ptext30
__ptext30:	;psect for function _trimf
psect	text30
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	63
	global	__size_of_trimf
	__size_of_trimf	equ	__end_of_trimf-_trimf
	
_trimf:	
;incstack = 0
	opt	stack 1
; Regs used in _trimf: [wreg+status,2+status,0+pclath+cstack]
	line	65
	
i1l2411:	
;main.c: 65: float ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trimf@ua)
	movlw	0x0
	movwf	(trimf@ua+1)
	movlw	0x0
	movwf	(trimf@ua+2)
	line	67
	
i1l2413:	
;main.c: 67: if (x <= a)
	movf	(trimf@a),w
	movwf	(___ftge@ff1)
	movf	(trimf@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trimf@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trimf@x),w
	movwf	(___ftge@ff2)
	movf	(trimf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trimf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u262_21
	goto	u262_20
u262_21:
	goto	i1l2417
u262_20:
	line	68
	
i1l2415:	
;main.c: 68: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trimf@ua)
	movlw	0x0
	movwf	(trimf@ua+1)
	movlw	0x0
	movwf	(trimf@ua+2)
	goto	i1l112
	line	69
	
i1l111:	
	
i1l2417:	
;main.c: 69: else if ((a < x) && (x <= b))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@a),w
	movwf	(___ftge@ff1)
	movf	(trimf@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trimf@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trimf@x),w
	movwf	(___ftge@ff2)
	movf	(trimf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trimf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u263_21
	goto	u263_20
u263_21:
	goto	i1l2423
u263_20:
	
i1l2419:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@b),w
	movwf	(___ftge@ff1)
	movf	(trimf@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(trimf@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(trimf@x),w
	movwf	(___ftge@ff2)
	movf	(trimf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trimf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u264_21
	goto	u264_20
u264_21:
	goto	i1l2423
u264_20:
	line	70
	
i1l2421:	
;main.c: 70: ua = ((x - a) / (b - a));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@b),w
	movwf	(___ftadd@f1)
	movf	(trimf@b+1),w
	movwf	(___ftadd@f1+1)
	movf	(trimf@b+2),w
	movwf	(___ftadd@f1+2)
	movf	(trimf@a),w
	movwf	(___ftneg@f1)
	movf	(trimf@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trimf@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trimf@x),w
	movwf	(___ftadd@f1)
	movf	(trimf@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(trimf@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(trimf@a),w
	movwf	(___ftneg@f1)
	movf	(trimf@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trimf@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(trimf@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(trimf@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(trimf@ua+2)
	goto	i1l112
	line	71
	
i1l113:	
	
i1l2423:	
;main.c: 71: else if ((b < x) && (x <= c))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@b),w
	movwf	(___ftge@ff1)
	movf	(trimf@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(trimf@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(trimf@x),w
	movwf	(___ftge@ff2)
	movf	(trimf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trimf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u265_21
	goto	u265_20
u265_21:
	goto	i1l2429
u265_20:
	
i1l2425:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@c),w
	movwf	(___ftge@ff1)
	movf	(trimf@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trimf@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trimf@x),w
	movwf	(___ftge@ff2)
	movf	(trimf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trimf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l2429
u266_20:
	line	72
	
i1l2427:	
;main.c: 72: ua = ((x - c) / (b - c));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@b),w
	movwf	(___ftadd@f1)
	movf	(trimf@b+1),w
	movwf	(___ftadd@f1+1)
	movf	(trimf@b+2),w
	movwf	(___ftadd@f1+2)
	movf	(trimf@c),w
	movwf	(___ftneg@f1)
	movf	(trimf@c+1),w
	movwf	(___ftneg@f1+1)
	movf	(trimf@c+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trimf@x),w
	movwf	(___ftadd@f1)
	movf	(trimf@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(trimf@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(trimf@c),w
	movwf	(___ftneg@f1)
	movf	(trimf@c+1),w
	movwf	(___ftneg@f1+1)
	movf	(trimf@c+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(trimf@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(trimf@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(trimf@ua+2)
	goto	i1l112
	line	73
	
i1l115:	
	
i1l2429:	
;main.c: 73: else if (x > c)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@c),w
	movwf	(___ftge@ff1)
	movf	(trimf@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trimf@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trimf@x),w
	movwf	(___ftge@ff2)
	movf	(trimf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trimf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l112
u267_20:
	line	74
	
i1l2431:	
;main.c: 74: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trimf@ua)
	movlw	0x0
	movwf	(trimf@ua+1)
	movlw	0x0
	movwf	(trimf@ua+2)
	goto	i1l112
	
i1l117:	
	goto	i1l112
	line	76
	
i1l116:	
	goto	i1l112
	
i1l114:	
	
i1l112:	
;main.c: 76: return(ua);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trimf@ua),w
	movwf	(?_trimf)
	movf	(trimf@ua+1),w
	movwf	(?_trimf+1)
	movf	(trimf@ua+2),w
	movwf	(?_trimf+2)
	goto	i1l118
	
i1l2433:	
	line	77
	
i1l118:	
	return
	opt stack 0
GLOBAL	__end_of_trimf
	__end_of_trimf:
	signat	_trimf,16507
	global	_trapmf

;; *************** function _trapmf *****************
;; Defined at:
;;		line 82 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  x               3   32[BANK0 ] float 
;;  a               3   35[BANK0 ] float 
;;  b               3   38[BANK0 ] float 
;;  c               3   41[BANK0 ] float 
;;  d               3   44[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  ua              3   47[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      15       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftneg
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	82
global __ptext31
__ptext31:	;psect for function _trapmf
psect	text31
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	82
	global	__size_of_trapmf
	__size_of_trapmf	equ	__end_of_trapmf-_trapmf
	
_trapmf:	
;incstack = 0
	opt	stack 1
; Regs used in _trapmf: [wreg+status,2+status,0+pclath+cstack]
	line	84
	
i1l2435:	
;main.c: 84: float ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	line	86
	
i1l2437:	
;main.c: 86: if (x <= a)
	movf	(trapmf@a),w
	movwf	(___ftge@ff1)
	movf	(trapmf@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l2441
u268_20:
	line	87
	
i1l2439:	
;main.c: 87: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	goto	i1l122
	line	88
	
i1l121:	
	
i1l2441:	
;main.c: 88: else if ((a < x) && (x <= b))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@a),w
	movwf	(___ftge@ff1)
	movf	(trapmf@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l2447
u269_20:
	
i1l2443:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@b),w
	movwf	(___ftge@ff1)
	movf	(trapmf@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l2447
u270_20:
	line	89
	
i1l2445:	
;main.c: 89: ua = ((x - a) / (b - a));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@b),w
	movwf	(___ftadd@f1)
	movf	(trapmf@b+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapmf@b+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapmf@a),w
	movwf	(___ftneg@f1)
	movf	(trapmf@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapmf@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trapmf@x),w
	movwf	(___ftadd@f1)
	movf	(trapmf@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapmf@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapmf@a),w
	movwf	(___ftneg@f1)
	movf	(trapmf@a+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapmf@a+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(trapmf@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(trapmf@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(trapmf@ua+2)
	goto	i1l122
	line	90
	
i1l123:	
	
i1l2447:	
;main.c: 90: else if ((b <= x) && (x <= c))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@x),w
	movwf	(___ftge@ff1)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@b),w
	movwf	(___ftge@ff2)
	movf	(trapmf@b+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@b+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u271_21
	goto	u271_20
u271_21:
	goto	i1l2453
u271_20:
	
i1l2449:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@c),w
	movwf	(___ftge@ff1)
	movf	(trapmf@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u272_21
	goto	u272_20
u272_21:
	goto	i1l2453
u272_20:
	line	91
	
i1l2451:	
;main.c: 91: ua = 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x80
	movwf	(trapmf@ua+1)
	movlw	0x3f
	movwf	(trapmf@ua+2)
	goto	i1l122
	line	92
	
i1l125:	
	
i1l2453:	
;main.c: 92: else if ((c < x) && (x <= d))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@c),w
	movwf	(___ftge@ff1)
	movf	(trapmf@c+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@c+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l2459
u273_20:
	
i1l2455:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@d),w
	movwf	(___ftge@ff1)
	movf	(trapmf@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@d+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u274_21
	goto	u274_20
u274_21:
	goto	i1l2459
u274_20:
	line	93
	
i1l2457:	
;main.c: 93: ua = ((d - x) / (d - c));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@d),w
	movwf	(___ftadd@f1)
	movf	(trapmf@d+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapmf@d+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapmf@c),w
	movwf	(___ftneg@f1)
	movf	(trapmf@c+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapmf@c+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f2+2)
	movf	(trapmf@d),w
	movwf	(___ftadd@f1)
	movf	(trapmf@d+1),w
	movwf	(___ftadd@f1+1)
	movf	(trapmf@d+2),w
	movwf	(___ftadd@f1+2)
	movf	(trapmf@x),w
	movwf	(___ftneg@f1)
	movf	(trapmf@x+1),w
	movwf	(___ftneg@f1+1)
	movf	(trapmf@x+2),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(___ftdiv@f1)
	movf	(1+(?___ftadd)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(trapmf@ua)
	movf	(1+(?___ftdiv)),w
	movwf	(trapmf@ua+1)
	movf	(2+(?___ftdiv)),w
	movwf	(trapmf@ua+2)
	goto	i1l122
	line	94
	
i1l127:	
	
i1l2459:	
;main.c: 94: else if (x > d)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@d),w
	movwf	(___ftge@ff1)
	movf	(trapmf@d+1),w
	movwf	(___ftge@ff1+1)
	movf	(trapmf@d+2),w
	movwf	(___ftge@ff1+2)
	movf	(trapmf@x),w
	movwf	(___ftge@ff2)
	movf	(trapmf@x+1),w
	movwf	(___ftge@ff2+1)
	movf	(trapmf@x+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u275_21
	goto	u275_20
u275_21:
	goto	i1l122
u275_20:
	line	95
	
i1l2461:	
;main.c: 95: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	goto	i1l122
	
i1l129:	
	goto	i1l122
	line	97
	
i1l128:	
	goto	i1l122
	
i1l126:	
	goto	i1l122
	
i1l124:	
	
i1l122:	
;main.c: 97: return(ua);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@ua),w
	movwf	(?_trapmf)
	movf	(trapmf@ua+1),w
	movwf	(?_trapmf+1)
	movf	(trapmf@ua+2),w
	movwf	(?_trapmf+2)
	goto	i1l130
	
i1l2463:	
	line	98
	
i1l130:	
	return
	opt stack 0
GLOBAL	__end_of_trapmf
	__end_of_trapmf:
	signat	_trapmf,20603
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_trimf
;;		_trapmf
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext32
__ptext32:	;psect for function ___ftneg
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
i1l2403:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u261_21
	goto	u261_20
u261_21:
	goto	i1l2407
u261_20:
	line	18
	
i1l2405:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	i1l2407
	
i1l827:	
	line	19
	
i1l2407:	
	goto	i1l828
	
i1l2409:	
	line	20
	
i1l828:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   16[BANK0 ] float 
;;  f1              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   27[BANK0 ] float 
;;  sign            1   31[BANK0 ] unsigned char 
;;  exp             1   30[BANK0 ] unsigned char 
;;  cntr            1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_trimf
;;		_trapmf
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext33
__ptext33:	;psect for function ___ftdiv
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l2341:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u248_21
	goto	u248_20
u248_21:
	goto	i1l2347
u248_20:
	line	56
	
i1l2343:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l802
	
i1l2345:	
	goto	i1l802
	
i1l801:	
	line	57
	
i1l2347:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u249_21
	goto	u249_20
u249_21:
	goto	i1l2353
u249_20:
	line	58
	
i1l2349:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l802
	
i1l2351:	
	goto	i1l802
	
i1l803:	
	line	59
	
i1l2353:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
i1l2355:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
i1l2357:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u250_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u250_20:
	addlw	-1
	skipz
	goto	u250_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
i1l2359:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u251_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u251_20:
	addlw	-1
	skipz
	goto	u251_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
i1l2361:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
i1l2363:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
i1l2365:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	i1l2367
	line	69
	
i1l804:	
	line	70
	
i1l2367:	
	movlw	01h
u252_25:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u252_25
	line	71
	
i1l2369:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u253_25
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u253_25
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u253_25:
	skipc
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l2375
u253_20:
	line	72
	
i1l2371:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
i1l2373:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	i1l2375
	line	74
	
i1l805:	
	line	75
	
i1l2375:	
	movlw	01h
u254_25:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u254_25
	line	76
	
i1l2377:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u255_21
	goto	u255_20
u255_21:
	goto	i1l2367
u255_20:
	goto	i1l2379
	
i1l806:	
	line	77
	
i1l2379:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	i1l802
	
i1l2381:	
	line	78
	
i1l802:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[BANK0 ] float 
;;  f2              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   15[BANK0 ] unsigned char 
;;  exp2            1   14[BANK0 ] unsigned char 
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_trimf
;;		_trapmf
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext34
__ptext34:	;psect for function ___ftadd
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l2269:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
i1l2271:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u224_20
	goto	i1l2277
u224_20:
	
i1l2273:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l2281
u225_20:
	
i1l2275:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u226_21
	goto	u226_20
u226_21:
	goto	i1l2281
u226_20:
	goto	i1l2277
	
i1l770:	
	line	93
	
i1l2277:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l771
	
i1l2279:	
	goto	i1l771
	
i1l768:	
	line	94
	
i1l2281:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u227_20
	goto	i1l774
u227_20:
	
i1l2283:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l2287
u228_20:
	
i1l2285:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l2287
u229_20:
	
i1l774:	
	line	95
	goto	i1l771
	
i1l772:	
	line	96
	
i1l2287:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
i1l2289:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u230_21
	goto	u230_20
u230_21:
	goto	i1l775
u230_20:
	line	98
	
i1l2291:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l775:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l776
u231_20:
	line	100
	
i1l2293:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l776:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l2295:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l2297:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l2309
u232_20:
	goto	i1l2299
	line	109
	
i1l778:	
	line	110
	
i1l2299:	
	movlw	01h
u233_25:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u233_25
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
i1l2301:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l2307
u234_20:
	
i1l2303:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l2299
u235_20:
	goto	i1l2307
	
i1l780:	
	goto	i1l2307
	
i1l781:	
	line	113
	goto	i1l2307
	
i1l783:	
	line	114
	
i1l2305:	
	movlw	01h
u236_25:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u236_25

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	i1l2307
	line	116
	
i1l782:	
	line	113
	
i1l2307:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l2305
u237_20:
	goto	i1l785
	
i1l784:	
	line	117
	goto	i1l785
	
i1l777:	
	
i1l2309:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l785
u238_20:
	goto	i1l2311
	line	120
	
i1l787:	
	line	121
	
i1l2311:	
	movlw	01h
u239_25:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u239_25
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
i1l2313:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l2319
u240_20:
	
i1l2315:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l2311
u241_20:
	goto	i1l2319
	
i1l789:	
	goto	i1l2319
	
i1l790:	
	line	124
	goto	i1l2319
	
i1l792:	
	line	125
	
i1l2317:	
	movlw	01h
u242_25:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u242_25

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	i1l2319
	line	127
	
i1l791:	
	line	124
	
i1l2319:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u243_21
	goto	u243_20
u243_21:
	goto	i1l2317
u243_20:
	goto	i1l785
	
i1l793:	
	goto	i1l785
	line	128
	
i1l786:	
	line	129
	
i1l785:	
	btfss	(___ftadd@sign),(7)&7
	goto	u244_21
	goto	u244_20
u244_21:
	goto	i1l2323
u244_20:
	line	131
	
i1l2321:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	i1l2323
	line	133
	
i1l794:	
	line	134
	
i1l2323:	
	btfss	(___ftadd@sign),(6)&7
	goto	u245_21
	goto	u245_20
u245_21:
	goto	i1l2327
u245_20:
	line	136
	
i1l2325:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	i1l2327
	line	138
	
i1l795:	
	line	139
	
i1l2327:	
	clrf	(___ftadd@sign)
	line	140
	
i1l2329:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u246_21
	addwf	(___ftadd@f2+1),f
u246_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u246_22
	addwf	(___ftadd@f2+2),f
u246_22:

	line	141
	
i1l2331:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u247_21
	goto	u247_20
u247_21:
	goto	i1l2337
u247_20:
	line	142
	
i1l2333:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
i1l2335:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	i1l2337
	line	145
	
i1l796:	
	line	146
	
i1l2337:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	i1l771
	
i1l2339:	
	line	148
	
i1l771:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_max_val

;; *************** function _max_val *****************
;; Defined at:
;;		line 135 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  a               3   28[BANK0 ] float 
;;  b               3   31[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   28[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftge
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	135
global __ptext35
__ptext35:	;psect for function _max_val
psect	text35
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	135
	global	__size_of_max_val
	__size_of_max_val	equ	__end_of_max_val-_max_val
	
_max_val:	
;incstack = 0
	opt	stack 2
; Regs used in _max_val: [wreg+status,2+status,0+pclath+cstack]
	line	137
	
i1l2465:	
;main.c: 137: if (a > b)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(max_val@b),w
	movwf	(___ftge@ff1)
	movf	(max_val@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(max_val@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(max_val@a),w
	movwf	(___ftge@ff2)
	movf	(max_val@a+1),w
	movwf	(___ftge@ff2+1)
	movf	(max_val@a+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u276_21
	goto	u276_20
u276_21:
	goto	i1l2471
u276_20:
	line	138
	
i1l2467:	
;main.c: 138: return a;
	goto	i1l144
	
i1l2469:	
	goto	i1l144
	line	139
	
i1l143:	
	line	140
	
i1l2471:	
;main.c: 139: else
;main.c: 140: return b;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(max_val@b),w
	movwf	(?_max_val)
	movf	(max_val@b+1),w
	movwf	(?_max_val+1)
	movf	(max_val@b+2),w
	movwf	(?_max_val+2)
	goto	i1l144
	
i1l2473:	
	goto	i1l144
	
i1l145:	
	line	141
	
i1l144:	
	return
	opt stack 0
GLOBAL	__end_of_max_val
	__end_of_max_val:
	signat	_max_val,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   16[BANK0 ] float 
;;  ff2             3   19[BANK0 ] float 
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
;;		_trimf
;;		_trapmf
;;		_max_val
;;		_Fuzzy
;;		_min_val
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
	opt	stack 2
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
i1l2383:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u256_21
	goto	u256_20
u256_21:
	goto	i1l2387
u256_20:
	line	7
	
i1l2385:	
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
	goto	u257_21
	goto	u257_22
u257_21:
	addwf	(??___ftge+0)+1,f
	
u257_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u257_23
	goto	u257_24
u257_23:
	addwf	(??___ftge+0)+2,f
	
u257_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	i1l2387
	
i1l809:	
	line	8
	
i1l2387:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u258_21
	goto	u258_20
u258_21:
	goto	i1l2391
u258_20:
	line	9
	
i1l2389:	
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
	goto	u259_21
	goto	u259_22
u259_21:
	addwf	(??___ftge+0)+1,f
	
u259_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u259_23
	goto	u259_24
u259_23:
	addwf	(??___ftge+0)+2,f
	
u259_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	i1l2391
	
i1l810:	
	line	10
	
i1l2391:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
i1l2393:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
i1l2395:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u260_25
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u260_25
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u260_25:
	skipnc
	goto	u260_21
	goto	u260_20
u260_21:
	goto	i1l2399
u260_20:
	
i1l2397:	
	clrc
	
	goto	i1l811
	
i1l2231:	
	
i1l2399:	
	setc
	
	goto	i1l811
	
i1l2233:	
	goto	i1l811
	
i1l2401:	
	line	13
	
i1l811:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
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
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext37
__ptext37:	;psect for function ___lwtoft
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
i1l2705:	
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
	goto	i1l951
	
i1l2707:	
	line	31
	
i1l951:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   25[BANK0 ] unsigned long 
;;  exp1            1   29[BANK0 ] unsigned char 
;;  sign1           1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext38
__ptext38:	;psect for function ___fttol
psect	text38
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
i1l2613:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u308_21
	goto	u308_20
u308_21:
	goto	i1l2619
u308_20:
	line	50
	
i1l2615:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l837
	
i1l2617:	
	goto	i1l837
	
i1l836:	
	line	51
	
i1l2619:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u309_25:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u309_20:
	addlw	-1
	skipz
	goto	u309_25
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
i1l2621:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l2623:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
i1l2625:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
i1l2627:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
i1l2629:	
	btfss	(___fttol@exp1),7
	goto	u310_21
	goto	u310_20
u310_21:
	goto	i1l2639
u310_20:
	line	57
	
i1l2631:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u311_21
	goto	u311_20
u311_21:
	goto	i1l2637
u311_20:
	line	58
	
i1l2633:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l837
	
i1l2635:	
	goto	i1l837
	
i1l839:	
	goto	i1l2637
	line	59
	
i1l840:	
	line	60
	
i1l2637:	
	movlw	01h
u312_25:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u312_25

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u313_21
	goto	u313_20
u313_21:
	goto	i1l2637
u313_20:
	goto	i1l2649
	
i1l841:	
	line	62
	goto	i1l2649
	
i1l838:	
	line	63
	
i1l2639:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u314_21
	goto	u314_20
u314_21:
	goto	i1l2647
u314_20:
	line	64
	
i1l2641:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l837
	
i1l2643:	
	goto	i1l837
	
i1l843:	
	line	65
	goto	i1l2647
	
i1l845:	
	line	66
	
i1l2645:	
	movlw	01h
	movwf	(??___fttol+0)+0
u315_25:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u315_25
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	i1l2647
	line	68
	
i1l844:	
	line	65
	
i1l2647:	
	movf	(___fttol@exp1),f
	skipz
	goto	u316_21
	goto	u316_20
u316_21:
	goto	i1l2645
u316_20:
	goto	i1l2649
	
i1l846:	
	goto	i1l2649
	line	69
	
i1l842:	
	line	70
	
i1l2649:	
	movf	(___fttol@sign1),w
	skipz
	goto	u317_20
	goto	i1l2653
u317_20:
	line	71
	
i1l2651:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	i1l2653
	
i1l847:	
	line	72
	
i1l2653:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	i1l837
	
i1l2655:	
	line	73
	
i1l837:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3    5[BANK0 ] unsigned um
;;  sign            1    9[BANK0 ] unsigned char 
;;  cntr            1    8[BANK0 ] unsigned char 
;;  exp             1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext39
__ptext39:	;psect for function ___ftmul
psect	text39
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
i1l2563:	
	movf	(___ftmul@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l2569
u294_20:
	line	68
	
i1l2565:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l817
	
i1l2567:	
	goto	i1l817
	
i1l816:	
	line	69
	
i1l2569:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l2575
u295_20:
	line	70
	
i1l2571:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l817
	
i1l2573:	
	goto	i1l817
	
i1l818:	
	line	71
	
i1l2575:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u296_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u296_20:
	addlw	-1
	skipz
	goto	u296_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u297_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u297_20:
	addlw	-1
	skipz
	goto	u297_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
i1l2577:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
i1l2579:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
i1l2581:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
i1l2583:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
i1l2585:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l2587
	line	135
	
i1l819:	
	line	136
	
i1l2587:	
	btfss	(___ftmul@f1),(0)&7
	goto	u298_21
	goto	u298_20
u298_21:
	goto	i1l2591
u298_20:
	line	137
	
i1l2589:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u299_21
	addwf	(___ftmul@f3_as_product+1),f
u299_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u299_22
	addwf	(___ftmul@f3_as_product+2),f
u299_22:

	goto	i1l2591
	
i1l820:	
	line	138
	
i1l2591:	
	movlw	01h
u300_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u300_25

	line	139
	
i1l2593:	
	movlw	01h
u301_25:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u301_25
	line	140
	
i1l2595:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u302_21
	goto	u302_20
u302_21:
	goto	i1l2587
u302_20:
	goto	i1l2597
	
i1l821:	
	line	143
	
i1l2597:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l2599
	line	144
	
i1l822:	
	line	145
	
i1l2599:	
	btfss	(___ftmul@f1),(0)&7
	goto	u303_21
	goto	u303_20
u303_21:
	goto	i1l2603
u303_20:
	line	146
	
i1l2601:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u304_21
	addwf	(___ftmul@f3_as_product+1),f
u304_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u304_22
	addwf	(___ftmul@f3_as_product+2),f
u304_22:

	goto	i1l2603
	
i1l823:	
	line	147
	
i1l2603:	
	movlw	01h
u305_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u305_25

	line	148
	
i1l2605:	
	movlw	01h
u306_25:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u306_25

	line	149
	
i1l2607:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u307_21
	goto	u307_20
u307_21:
	goto	i1l2599
u307_20:
	goto	i1l2609
	
i1l824:	
	line	156
	
i1l2609:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	i1l817
	
i1l2611:	
	line	157
	
i1l817:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
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
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext40
__ptext40:	;psect for function ___ftpack
psect	text40
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l2235:	
	movf	(___ftpack@exp),w
	skipz
	goto	u212_20
	goto	i1l2239
u212_20:
	
i1l2237:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u213_21
	goto	u213_20
u213_21:
	goto	i1l2245
u213_20:
	goto	i1l2239
	
i1l751:	
	line	65
	
i1l2239:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l752
	
i1l2241:	
	goto	i1l752
	
i1l749:	
	line	66
	goto	i1l2245
	
i1l754:	
	line	67
	
i1l2243:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u214_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u214_25

	goto	i1l2245
	line	69
	
i1l753:	
	line	66
	
i1l2245:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u215_21
	goto	u215_20
u215_21:
	goto	i1l2243
u215_20:
	goto	i1l756
	
i1l755:	
	line	70
	goto	i1l756
	
i1l757:	
	line	71
	
i1l2247:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l2249:	
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
	
i1l2251:	
	movlw	01h
u216_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u216_25

	line	74
	
i1l756:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u217_21
	goto	u217_20
u217_21:
	goto	i1l2247
u217_20:
	goto	i1l2255
	
i1l758:	
	line	75
	goto	i1l2255
	
i1l760:	
	line	76
	
i1l2253:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u218_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u218_25
	goto	i1l2255
	line	78
	
i1l759:	
	line	75
	
i1l2255:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u219_21
	goto	u219_20
u219_21:
	goto	i1l2253
u219_20:
	
i1l761:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u220_21
	goto	u220_20
u220_21:
	goto	i1l762
u220_20:
	line	80
	
i1l2257:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l762:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l2259:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u221_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u221_20:
	addlw	-1
	skipz
	goto	u221_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l2261:	
	movf	(___ftpack@sign),w
	skipz
	goto	u222_20
	goto	i1l763
u222_20:
	line	84
	
i1l2263:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l763:	
	line	85
	line	86
	
i1l752:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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
