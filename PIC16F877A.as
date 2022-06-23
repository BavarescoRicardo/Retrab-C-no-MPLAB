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
	FNCALL	_USART_Init,___aldiv
	FNCALL	_LCD_WriteString,_LCD_WriteData
	FNCALL	_LCD_Init,_LCD_WriteCmd
	FNCALL	_LCD_Clear,_LCD_WriteCmd
	FNROOT	_main
	FNCALL	_ISR,_Fuzzy
	FNCALL	_ISR,_USART_ReceiveChar
	FNCALL	_ISR,_USART_WriteString
	FNCALL	_ISR,___lwdiv
	FNCALL	_ISR,___wmul
	FNCALL	_ISR,_send
	FNCALL	_ISR,i1_PWM_DutyCycle2
	FNCALL	_ISR,i1_TIMER0_Set
	FNCALL	_send,_USART_WriteChar
	FNCALL	_USART_ReceiveChar,_USART_WriteString
	FNCALL	_USART_WriteString,_USART_WriteChar
	FNCALL	_Fuzzy,___awtoft
	FNCALL	_Fuzzy,___ftadd
	FNCALL	_Fuzzy,___ftdiv
	FNCALL	_Fuzzy,___ftge
	FNCALL	_Fuzzy,___ftmul
	FNCALL	_Fuzzy,___ftneg
	FNCALL	_Fuzzy,___fttol
	FNCALL	_Fuzzy,___lwtoft
	FNCALL	_Fuzzy,___wmul
	FNCALL	_Fuzzy,_abs
	FNCALL	_Fuzzy,_maximo
	FNCALL	_Fuzzy,_minimo
	FNCALL	_Fuzzy,_trapmf
	FNCALL	_Fuzzy,i1_PWM_DutyCycle2
	FNCALL	_trapmf,___ftadd
	FNCALL	_trapmf,___ftdiv
	FNCALL	_trapmf,___ftge
	FNCALL	_trapmf,___ftneg
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_minimo,___ftge
	FNCALL	_maximo,___ftge
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_pas_cooler
	global	_pwm
	global	_cruzeiroSet
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	26

;initializer for _pas_cooler
	retlw	07h
	retlw	0

	line	29

;initializer for _pwm
	retlw	01h
	retlw	0

	line	31

;initializer for _cruzeiroSet
	retlw	04Eh
	global	_ADCResult
	global	_status
	global	_x
	global	_fitemp
	global	_rulegrande
	global	_rulemedio
	global	_rulepequeno
	global	_antigoUI
	global	_contagens_tm0
	global	_cruzeiroVel
	global	_deltaV
	global	_pulsos
	global	_rpm
	global	_setpointUI
	global	_y
	global	_buffer
	global	_antigo
	global	_ativa_fan
	global	_sum
	global	_total_area
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
	global __stringdata
__stringdata:
	
STR_4:	
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
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	10
	retlw	13
	retlw	0
psect	strings
	
STR_3:	
	retlw	107	;'k'
	retlw	109	;'m'
	retlw	72	;'H'
	retlw	58	;':'
	retlw	32	;' '
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
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_ADCResult:
       ds      2

_status:
       ds      2

_x:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_fitemp:
       ds      3

_rulegrande:
       ds      3

_rulemedio:
       ds      3

_rulepequeno:
       ds      3

_antigoUI:
       ds      2

_contagens_tm0:
       ds      2

_cruzeiroVel:
       ds      2

_deltaV:
       ds      2

_pulsos:
       ds      2

_rpm:
       ds      2

_setpointUI:
       ds      2

_y:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	26
_pas_cooler:
       ds      2

psect	dataBANK1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	29
_pwm:
       ds      2

psect	dataBANK1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	31
_cruzeiroSet:
       ds      1

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_buffer:
       ds      13

_antigo:
       ds      3

_ativa_fan:
       ds      3

_sum:
       ds      3

_total_area:
       ds      3

_display_rpm:
       ds      10

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
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+01Ch)
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+023h)
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
	fcall	__pidataBANK1+2		;fetch initializer
	movwf	__pdataBANK1+2&07fh		
	fcall	__pidataBANK1+3		;fetch initializer
	movwf	__pdataBANK1+3&07fh		
	fcall	__pidataBANK1+4		;fetch initializer
	movwf	__pdataBANK1+4&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
?_PWM_DutyCycle2:	; 0 bytes @ 0x0
??_TIMER0_Set:	; 0 bytes @ 0x0
??_TIMER0_Init:	; 0 bytes @ 0x0
??_ADC_Init:	; 0 bytes @ 0x0
??_PWM_Init:	; 0 bytes @ 0x0
?_LCD_Cursor:	; 0 bytes @ 0x0
?_PWM_DutyCycle1:	; 0 bytes @ 0x0
??_LCD_WriteCmd:	; 0 bytes @ 0x0
??_LCD_WriteData:	; 0 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	TIMER0_Set@contagens
TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	LCD_Cursor@Col
LCD_Cursor@Col:	; 1 bytes @ 0x0
	global	PWM_DutyCycle1@valor
PWM_DutyCycle1@valor:	; 2 bytes @ 0x0
	global	PWM_DutyCycle2@valor
PWM_DutyCycle2@valor:	; 2 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	1
??_LCD_Cursor:	; 0 bytes @ 0x1
	global	LCD_WriteCmd@Byte
LCD_WriteCmd@Byte:	; 1 bytes @ 0x1
	global	LCD_WriteData@Byte
LCD_WriteData@Byte:	; 1 bytes @ 0x1
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
	ds	2
??_LCD_WriteString:	; 0 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	4
??___aldiv:	; 0 bytes @ 0x8
	ds	1
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x9
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0xA
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0xB
	ds	4
?_USART_Init:	; 0 bytes @ 0xF
	global	USART_Init@BaudRate
USART_Init@BaudRate:	; 4 bytes @ 0xF
	ds	4
??_USART_Init:	; 0 bytes @ 0x13
	ds	4
??_main:	; 0 bytes @ 0x17
	ds	3
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_Fuzzy$1689
_Fuzzy$1689:	; 3 bytes @ 0x0
	ds	3
	global	_Fuzzy$1690
_Fuzzy$1690:	; 2 bytes @ 0x3
	ds	2
	global	Fuzzy@reajuste
Fuzzy@reajuste:	; 3 bytes @ 0x5
	ds	3
	global	_Fuzzy$249
_Fuzzy$249:	; 2 bytes @ 0x8
	ds	2
	global	Fuzzy@a
Fuzzy@a:	; 2 bytes @ 0xA
	ds	2
	global	Fuzzy@a_242
Fuzzy@a_242:	; 2 bytes @ 0xC
	ds	2
	global	Fuzzy@a_243
Fuzzy@a_243:	; 2 bytes @ 0xE
	ds	2
	global	Fuzzy@a_244
Fuzzy@a_244:	; 2 bytes @ 0x10
	ds	2
	global	Fuzzy@delta
Fuzzy@delta:	; 2 bytes @ 0x12
	ds	2
	global	Fuzzy@soma
Fuzzy@soma:	; 3 bytes @ 0x14
	ds	3
	global	Fuzzy@total_area
Fuzzy@total_area:	; 3 bytes @ 0x17
	ds	3
	global	Fuzzy@a_247
Fuzzy@a_247:	; 2 bytes @ 0x1A
	ds	2
	global	Fuzzy@rule
Fuzzy@rule:	; 3 bytes @ 0x1C
	ds	3
	global	Fuzzy@x
Fuzzy@x:	; 3 bytes @ 0x1F
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
?_send:	; 0 bytes @ 0x0
?_Fuzzy:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_LCD_WriteCmd:	; 0 bytes @ 0x0
?_LCD_WriteData:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?i1_TIMER0_Set:	; 0 bytes @ 0x0
??i1_TIMER0_Set:	; 0 bytes @ 0x0
?i1_PWM_DutyCycle2:	; 0 bytes @ 0x0
?_USART_ReceiveChar:	; 1 bytes @ 0x0
	global	?_abs
?_abs:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	USART_WriteChar@byte
USART_WriteChar@byte:	; 1 bytes @ 0x0
	global	i1TIMER0_Set@contagens
i1TIMER0_Set@contagens:	; 1 bytes @ 0x0
	global	abs@a
abs@a:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	i1PWM_DutyCycle2@valor
i1PWM_DutyCycle2@valor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	1
??_USART_WriteString:	; 0 bytes @ 0x1
??_send:	; 0 bytes @ 0x1
	ds	1
??_abs:	; 0 bytes @ 0x2
??i1_PWM_DutyCycle2:	; 0 bytes @ 0x2
	global	send@checksum
send@checksum:	; 1 bytes @ 0x2
	global	USART_WriteString@str
USART_WriteString@str:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	1
??_USART_ReceiveChar:	; 0 bytes @ 0x3
	global	send@index
send@index:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??___lwdiv:	; 0 bytes @ 0x4
	global	USART_ReceiveChar@byte
USART_ReceiveChar@byte:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds	3
??___awtoft:	; 0 bytes @ 0xB
??___lwtoft:	; 0 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
??_trapmf:	; 0 bytes @ 0xE
??_maximo:	; 0 bytes @ 0xE
??_minimo:	; 0 bytes @ 0xE
??___wmul:	; 0 bytes @ 0xE
??___ftneg:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_minimo
?_minimo:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	minimo@a
minimo@a:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	ds	3
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x3
	global	minimo@b
minimo@b:	; 3 bytes @ 0x3
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x3
	ds	3
	global	?_maximo
?_maximo:	; 3 bytes @ 0x6
	global	maximo@a
maximo@a:	; 3 bytes @ 0x6
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x6
	ds	3
??___ftadd:	; 0 bytes @ 0x9
	global	maximo@b
maximo@b:	; 3 bytes @ 0x9
	ds	3
	global	?___fttol
?___fttol:	; 4 bytes @ 0xC
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0xC
	ds	1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0xD
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xE
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0xF
	ds	1
??___fttol:	; 0 bytes @ 0x10
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x10
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x10
	ds	3
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x13
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x14
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x15
	ds	1
??___ftdiv:	; 0 bytes @ 0x16
	ds	3
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x19
	ds	1
	global	?___wmul
?___wmul:	; 2 bytes @ 0x1A
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1A
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x1A
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1B
	ds	1
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x1C
	ds	2
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x1E
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x1E
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?_trapmf
?_trapmf:	; 3 bytes @ 0x20
	global	trapmf@x
trapmf@x:	; 3 bytes @ 0x20
	ds	3
	global	trapmf@a
trapmf@a:	; 3 bytes @ 0x23
	ds	3
	global	trapmf@b
trapmf@b:	; 3 bytes @ 0x26
	ds	3
	global	trapmf@c
trapmf@c:	; 3 bytes @ 0x29
	ds	3
	global	trapmf@d
trapmf@d:	; 3 bytes @ 0x2C
	ds	3
	global	trapmf@ua
trapmf@ua:	; 3 bytes @ 0x2F
	ds	3
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x32
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x32
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x35
	ds	3
??___ftmul:	; 0 bytes @ 0x38
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x3C
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x3D
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x40
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x41
	ds	1
??_Fuzzy:	; 0 bytes @ 0x42
	ds	2
??_ISR:	; 0 bytes @ 0x44
	ds	5
;!
;!Data Sizes:
;!    Strings     73
;!    Constant    0
;!    Data        5
;!    BSS         69
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     73      79
;!    BANK1            80     34      67
;!    BANK3            96     26      61
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    LCD_WriteString@Str	PTR const unsigned char  size(2) Largest target is 17
;!		 -> display_rpm(BANK3[10]), STR_3(CODE[6]), STR_2(CODE[17]), 
;!
;!    USART_WriteString@str	PTR const unsigned char  size(1) Largest target is 40
;!		 -> STR_4(CODE[40]), STR_1(CODE[10]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _send->_USART_WriteChar
;!    _USART_ReceiveChar->_USART_WriteString
;!    _USART_WriteString->_USART_WriteChar
;!    _Fuzzy->___awtoft
;!    _trapmf->___awtoft
;!    ___ftneg->___awtoft
;!    ___ftadd->___awtoft
;!    _minimo->___awtoft
;!    _maximo->___awtoft
;!    ___lwtoft->___ftpack
;!    ___fttol->___awtoft
;!    ___ftmul->___awtoft
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _ISR->_Fuzzy
;!    _Fuzzy->___ftmul
;!    _trapmf->___ftdiv
;!    ___ftdiv->___ftadd
;!    ___ftadd->___ftneg
;!    _maximo->_minimo
;!    ___wmul->___fttol
;!    ___fttol->_maximo
;!    ___ftmul->_trapmf
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    _ISR->_Fuzzy
;!
;!Critical Paths under _main in BANK3
;!
;!    _main->_USART_Init
;!    _USART_Init->___aldiv
;!    _LCD_WriteString->_LCD_WriteData
;!    _LCD_Init->_LCD_WriteCmd
;!    _LCD_Clear->_LCD_WriteCmd
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
;! (0) _main                                                 3     3      0    1890
;!                                             23 BANK3      3     3      0
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
;! ---------------------------------------------------------------------------------
;! (1) _USART_Init                                           8     4      4     707
;!                                             15 BANK3      8     4      4
;!                            ___aldiv
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     599
;!                                              0 BANK3     15     7      8
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Set                                           1     1      0      31
;!                                              0 BANK3      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER0_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle2                                       4     2      2     223
;!                                              0 BANK3      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _PWM_DutyCycle1                                       4     2      2     139
;!                                              0 BANK3      4     2      2
;! ---------------------------------------------------------------------------------
;! (1) _LCD_WriteString                                      2     0      2     327
;!                                              2 BANK3      2     0      2
;!                      _LCD_WriteData
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteData                                        2     2      0      31
;!                                              0 BANK3      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0      31
;!                                              2 BANK3      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Cursor                                           3     2      1     401
;!                                              0 BANK3      3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Clear                                            2     2      0      31
;!                                              2 BANK3      2     2      0
;!                       _LCD_WriteCmd
;! ---------------------------------------------------------------------------------
;! (2) _LCD_WriteCmd                                         2     2      0      31
;!                                              0 BANK3      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _ISR                                                  5     5      0   53668
;!                                             68 BANK0      5     5      0
;!                              _Fuzzy
;!                  _USART_ReceiveChar
;!                  _USART_WriteString
;!                            ___lwdiv
;!                             ___wmul
;!                               _send
;!                   i1_PWM_DutyCycle2
;!                       i1_TIMER0_Set
;! ---------------------------------------------------------------------------------
;! (4) i1_TIMER0_Set                                         1     1      0      22
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _send                                                 3     3      0     136
;!                                              1 COMMON     3     3      0
;!                    _USART_WriteChar
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              8     4      4     290
;!                                              0 COMMON     8     4      4
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
;! (4) _Fuzzy                                               36    36      0   52498
;!                                             66 BANK0      2     2      0
;!                                              0 BANK1     34    34      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                           ___lwtoft
;!                             ___wmul
;!                                _abs
;!                             _maximo
;!                             _minimo
;!                             _trapmf
;!                   i1_PWM_DutyCycle2
;! ---------------------------------------------------------------------------------
;! (4) i1_PWM_DutyCycle2                                     4     2      2      96
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (5) _trapmf                                              18     3     15   19869
;!                                             32 BANK0     18     3     15
;!                           ___awtoft (ARG)
;!                            ___ftadd
;!                            ___ftdiv
;!                             ___ftge
;!                            ___ftneg
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftneg                                              3     0      3     621
;!                                              0 BANK0      3     0      3
;!                           ___awtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftdiv                                             16    10      6    3007
;!                                             16 BANK0     16    10      6
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (6) ___ftadd                                             13     7      6    7603
;!                                              3 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) _minimo                                               6     0      6    3552
;!                                              0 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                             ___ftge
;!                           ___lwtoft (ARG)
;!                                _abs (ARG)
;! ---------------------------------------------------------------------------------
;! (5) _maximo                                               6     0      6    3296
;!                                              6 BANK0      6     0      6
;!                           ___awtoft (ARG)
;!                             ___ftge
;!                           ___lwtoft (ARG)
;!                                _abs (ARG)
;!                             _minimo (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___ftge                                              12     6      6    2952
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (5) _abs                                                  4     2      2     194
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4     348
;!                                             26 BANK0      6     2      4
;!                            ___fttol (ARG)
;!                            ___lwdiv (ARG)
;!                           ___lwtoft (ARG)
;!                             _maximo (ARG)
;!                             _minimo (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___lwtoft                                             4     1      3    2493
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (5) ___fttol                                             14    10      4     508
;!                                             12 BANK0     14    10      4
;!                           ___awtoft (ARG)
;!                           ___lwtoft (ARG)
;!                                _abs (ARG)
;!                             _maximo (ARG)
;!                             _minimo (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___ftmul                                             16    10      6    3053
;!                                             50 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                             _trapmf (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___awtoft                                             6     3      3    2434
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;!                                _abs (ARG)
;! ---------------------------------------------------------------------------------
;! (7) ___ftpack                                             8     3      5    2087
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
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
;!
;! _ISR (ROOT)
;!   _Fuzzy
;!     ___awtoft
;!       ___ftpack
;!       _abs (ARG)
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!       ___ftpack (ARG)
;!     ___ftdiv
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!       ___ftpack (ARG)
;!     ___ftge
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _trapmf (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               _abs (ARG)
;!           ___ftpack (ARG)
;!         ___ftdiv (ARG)
;!           ___ftadd (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               _abs (ARG)
;!             ___ftneg (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!                 _abs (ARG)
;!             ___ftpack (ARG)
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               _abs (ARG)
;!           ___ftpack (ARG)
;!         ___ftge (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     ___ftneg
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _abs (ARG)
;!       _maximo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!         _minimo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!     ___lwtoft
;!       ___ftpack
;!     ___wmul
;!       ___fttol (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!         _maximo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _abs (ARG)
;!           _minimo (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               _abs (ARG)
;!             ___ftge (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!             _abs (ARG)
;!         _minimo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _abs (ARG)
;!       ___lwdiv (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _maximo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!         _minimo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!     _abs
;!     _maximo
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!     _minimo
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _abs (ARG)
;!     _trapmf
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!         ___ftpack (ARG)
;!       ___ftdiv (ARG)
;!         ___ftadd (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftneg (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!               _abs (ARG)
;!           ___ftpack (ARG)
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!         ___ftpack (ARG)
;!       ___ftge (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     i1_PWM_DutyCycle2
;!   _USART_ReceiveChar
;!     _USART_WriteString
;!       _USART_WriteChar
;!   _USART_WriteString
;!     _USART_WriteChar
;!   ___lwdiv
;!   ___wmul
;!     ___fttol (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _abs (ARG)
;!       _maximo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!         _minimo (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!             _abs (ARG)
;!           ___ftge (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!           _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!     ___lwdiv (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!     _maximo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _abs (ARG)
;!       _minimo (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!           _abs (ARG)
;!         ___ftge (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _abs (ARG)
;!     _minimo (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!         _abs (ARG)
;!       ___ftge (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _abs (ARG)
;!   _send
;!     _USART_WriteChar
;!   i1_PWM_DutyCycle2
;!   i1_TIMER0_Set
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     1A      3D       9       63.5%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     22      43       7       83.8%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     49      4F       5       98.8%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      DD      12        0.0%
;!ABS                  0      0      DD       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 481 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	481
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	481
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	483
	
l3272:	
;main.c: 483: TRISA = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	484
;main.c: 484: PORTA = 0b00000001;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	485
	
l3274:	
;main.c: 485: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	486
	
l3276:	
;main.c: 486: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	487
;main.c: 487: TRISC = 0b10000001;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	488
;main.c: 488: PORTC = 0b11000000;
	movlw	(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	489
	
l3278:	
;main.c: 489: TRISD = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	490
	
l3280:	
;main.c: 490: PORTD = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	491
	
l3282:	
;main.c: 491: TRISE = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	492
	
l3284:	
;main.c: 492: PORTE = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	495
;main.c: 495: T1CON = 0x03;
	movlw	(03h)
	movwf	(16)	;volatile
	line	496
	
l3286:	
;main.c: 496: TMR1L = 0x00;
	clrf	(14)	;volatile
	line	497
	
l3288:	
;main.c: 497: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	500
	
l3290:	
;main.c: 500: USART_Init(115200);
	movlw	0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(USART_Init@BaudRate+3)^0180h
	movlw	01h
	movwf	(USART_Init@BaudRate+2)^0180h
	movlw	0C2h
	movwf	(USART_Init@BaudRate+1)^0180h
	movlw	0
	movwf	(USART_Init@BaudRate)^0180h

	fcall	_USART_Init
	line	501
;main.c: 501: TIMER0_Init();
	fcall	_TIMER0_Init
	line	502
;main.c: 502: ADC_Init();
	fcall	_ADC_Init
	line	503
	
l3292:	
;main.c: 503: PWM_Init();
	fcall	_PWM_Init
	line	504
	
l3294:	
;main.c: 504: LCD_Init();
	fcall	_LCD_Init
	line	507
	
l3296:	
;main.c: 507: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	508
	
l3298:	
;main.c: 508: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	515
	
l3300:	
;main.c: 515: LCD_Init();
	fcall	_LCD_Init
	line	516
	
l3302:	
;main.c: 516: LCD_Cursor(0,0);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(LCD_Cursor@Col)^0180h
	movlw	(0)
	fcall	_LCD_Cursor
	line	517
	
l3304:	
;main.c: 517: LCD_WriteString("Inicializando...");
	movlw	low((STR_2)-__stringbase)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteString@Str)^0180h
	movlw	80h
	movwf	(LCD_WriteString@Str+1)^0180h
	fcall	_LCD_WriteString
	line	520
	
l3306:	
;main.c: 520: PWM_DutyCycle1(0);
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(PWM_DutyCycle1@valor)^0180h
	movlw	high(0)
	movwf	((PWM_DutyCycle1@valor)^0180h)+1
	fcall	_PWM_DutyCycle1
	line	521
	
l3308:	
;main.c: 521: PWM_DutyCycle2(0);
	movlw	low(0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(PWM_DutyCycle2@valor)^0180h
	movlw	high(0)
	movwf	((PWM_DutyCycle2@valor)^0180h)+1
	fcall	_PWM_DutyCycle2
	line	524
	
l3310:	
;main.c: 524: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	_TIMER0_Set
	line	527
	
l3312:	
;main.c: 527: _delay((unsigned long)((1000)*(18432000/4000.0)));
	opt asmopt_off
movlw  24
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2),f
movlw	97
movwf	((??_main+0)^0180h+0+1),f
	movlw	110
movwf	((??_main+0)^0180h+0),f
u5717:
	decfsz	((??_main+0)^0180h+0),f
	goto	u5717
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5717
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u5717
	nop
opt asmopt_on

	goto	l3314
	line	530
;main.c: 530: while(1)
	
l218:	
	line	537
	
l3314:	
;main.c: 531: {
;main.c: 537: LCD_Clear();
	fcall	_LCD_Clear
	line	538
	
l3316:	
;main.c: 538: LCD_Cursor(0,0);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(LCD_Cursor@Col)^0180h
	movlw	(0)
	fcall	_LCD_Cursor
	line	539
;main.c: 539: LCD_WriteString("kmH: ");
	movlw	low((STR_3)-__stringbase)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteString@Str)^0180h
	movlw	80h
	movwf	(LCD_WriteString@Str+1)^0180h
	fcall	_LCD_WriteString
	line	540
	
l3318:	
;main.c: 540: LCD_Cursor(0,6);
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(??_main+0)^0180h+0
	movf	(??_main+0)^0180h+0,w
	movwf	(LCD_Cursor@Col)^0180h
	movlw	(0)
	fcall	_LCD_Cursor
	line	541
	
l3320:	
;main.c: 541: LCD_WriteString(display_rpm);
	movlw	(_display_rpm&0ffh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteString@Str)^0180h
	movlw	(0x1)
	movwf	(LCD_WriteString@Str+1)^0180h
	fcall	_LCD_WriteString
	line	542
;main.c: 542: LCD_Cursor(1,0);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(LCD_Cursor@Col)^0180h
	movlw	(01h)
	fcall	_LCD_Cursor
	line	547
	
l3322:	
;main.c: 547: _delay((unsigned long)((200)*(18432000/4000.0)));
	opt asmopt_off
movlw  5
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_main+0)^0180h+0+2),f
movlw	173
movwf	((??_main+0)^0180h+0+1),f
	movlw	224
movwf	((??_main+0)^0180h+0),f
u5727:
	decfsz	((??_main+0)^0180h+0),f
	goto	u5727
	decfsz	((??_main+0)^0180h+0+1),f
	goto	u5727
	decfsz	((??_main+0)^0180h+0+2),f
	goto	u5727
opt asmopt_on

	goto	l3314
	line	548
	
l219:	
	line	530
	goto	l3314
	
l220:	
	line	549
	
l221:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_USART_Init

;; *************** function _USART_Init *****************
;; Defined at:
;;		line 6 in file "R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
;; Parameters:    Size  Location     Type
;;  BaudRate        4   15[BANK3 ] long 
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
;;      Params:         0       0       0       4       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       4       0
;;      Totals:         0       0       0       8       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	6
global __ptext1
__ptext1:	;psect for function _USART_Init
psect	text1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	6
	global	__size_of_USART_Init
	__size_of_USART_Init	equ	__end_of_USART_Init-_USART_Init
	
_USART_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _USART_Init: [wreg+status,2+status,0+pclath+cstack]
	line	13
	
l3140:	
;usart.c: 13: SPBRG = (unsigned char)(18432000 / (16 * BaudRate)) - 1;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(USART_Init@BaudRate)^0180h,w
	movwf	(??_USART_Init+0)^0180h+0
	movf	(USART_Init@BaudRate+1)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+1)
	movf	(USART_Init@BaudRate+2)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+2)
	movf	(USART_Init@BaudRate+3)^0180h,w
	movwf	((??_USART_Init+0)^0180h+0+3)
	movlw	04h
u3815:
	clrc
	rlf	(??_USART_Init+0)^0180h+0,f
	rlf	(??_USART_Init+0)^0180h+1,f
	rlf	(??_USART_Init+0)^0180h+2,f
	rlf	(??_USART_Init+0)^0180h+3,f
u3810:
	addlw	-1
	skipz
	goto	u3815
	movf	3+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+3)^0180h
	movf	2+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+2)^0180h
	movf	1+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor+1)^0180h
	movf	0+(??_USART_Init+0)^0180h+0,w
	movwf	(___aldiv@divisor)^0180h

	movlw	01h
	movwf	(___aldiv@dividend+3)^0180h
	movlw	019h
	movwf	(___aldiv@dividend+2)^0180h
	movlw	040h
	movwf	(___aldiv@dividend+1)^0180h
	movlw	0
	movwf	(___aldiv@dividend)^0180h

	fcall	___aldiv
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(((0+(?___aldiv))^0180h)),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	16
	
l3142:	
;usart.c: 16: TXSTAbits.CSRC = 0;
	bcf	(152)^080h,7	;volatile
	line	17
	
l3144:	
;usart.c: 17: TXSTAbits.TX9 = 0;
	bcf	(152)^080h,6	;volatile
	line	18
	
l3146:	
;usart.c: 18: TXSTAbits.TXEN = 1;
	bsf	(152)^080h,5	;volatile
	line	19
	
l3148:	
;usart.c: 19: TXSTAbits.SYNC = 0;
	bcf	(152)^080h,4	;volatile
	line	21
	
l3150:	
;usart.c: 21: TXSTAbits.BRGH = 1;
	bsf	(152)^080h,2	;volatile
	line	22
	
l3152:	
;usart.c: 22: TXSTAbits.TRMT = 1;
	bsf	(152)^080h,1	;volatile
	line	23
	
l3154:	
;usart.c: 23: TXSTAbits.TX9D = 0;
	bcf	(152)^080h,0	;volatile
	line	26
	
l3156:	
;usart.c: 26: RCSTAbits.SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(24),7	;volatile
	line	27
	
l3158:	
;usart.c: 27: RCSTAbits.RX9 = 0;
	bcf	(24),6	;volatile
	line	28
	
l3160:	
;usart.c: 28: RCSTAbits.SREN = 0;
	bcf	(24),5	;volatile
	line	29
	
l3162:	
;usart.c: 29: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	30
	
l3164:	
;usart.c: 30: RCSTAbits.ADDEN = 0;
	bcf	(24),3	;volatile
	line	31
	
l3166:	
;usart.c: 31: RCSTAbits.FERR = 0;
	bcf	(24),2	;volatile
	line	32
	
l3168:	
;usart.c: 32: RCSTAbits.OERR = 0;
	bcf	(24),1	;volatile
	line	33
	
l3170:	
;usart.c: 33: RCSTAbits.RX9D = 0;
	bcf	(24),0	;volatile
	line	36
	
l3172:	
;usart.c: 36: PIE1bits.TXIE = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,4	;volatile
	line	37
	
l3174:	
;usart.c: 37: PIR1bits.TXIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),4	;volatile
	line	38
	
l3176:	
;usart.c: 38: PIE1bits.RCIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,5	;volatile
	line	39
	
l3178:	
;usart.c: 39: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	line	40
	
l240:	
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
;;  divisor         4    0[BANK3 ] long 
;;  dividend        4    4[BANK3 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   11[BANK3 ] long 
;;  sign            1   10[BANK3 ] unsigned char 
;;  counter         1    9[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK3 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       8       0
;;      Locals:         0       0       0       6       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0      15       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USART_Init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
global __ptext2
__ptext2:	;psect for function ___aldiv
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\aldiv.c"
	line	6
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	14
	
l3094:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(___aldiv@sign)^0180h
	line	15
	
l3096:	
	btfss	(___aldiv@divisor+3)^0180h,7
	goto	u3701
	goto	u3700
u3701:
	goto	l622
u3700:
	line	16
	
l3098:	
	comf	(___aldiv@divisor)^0180h,f
	comf	(___aldiv@divisor+1)^0180h,f
	comf	(___aldiv@divisor+2)^0180h,f
	comf	(___aldiv@divisor+3)^0180h,f
	incf	(___aldiv@divisor)^0180h,f
	skipnz
	incf	(___aldiv@divisor+1)^0180h,f
	skipnz
	incf	(___aldiv@divisor+2)^0180h,f
	skipnz
	incf	(___aldiv@divisor+3)^0180h,f
	line	17
	clrf	(___aldiv@sign)^0180h
	incf	(___aldiv@sign)^0180h,f
	line	18
	
l622:	
	line	19
	btfss	(___aldiv@dividend+3)^0180h,7
	goto	u3711
	goto	u3710
u3711:
	goto	l3104
u3710:
	line	20
	
l3100:	
	comf	(___aldiv@dividend)^0180h,f
	comf	(___aldiv@dividend+1)^0180h,f
	comf	(___aldiv@dividend+2)^0180h,f
	comf	(___aldiv@dividend+3)^0180h,f
	incf	(___aldiv@dividend)^0180h,f
	skipnz
	incf	(___aldiv@dividend+1)^0180h,f
	skipnz
	incf	(___aldiv@dividend+2)^0180h,f
	skipnz
	incf	(___aldiv@dividend+3)^0180h,f
	line	21
	
l3102:	
	movlw	(01h)
	movwf	(??___aldiv+0)^0180h+0
	movf	(??___aldiv+0)^0180h+0,w
	xorwf	(___aldiv@sign)^0180h,f
	goto	l3104
	line	22
	
l623:	
	line	23
	
l3104:	
	movlw	0
	movwf	(___aldiv@quotient+3)^0180h
	movlw	0
	movwf	(___aldiv@quotient+2)^0180h
	movlw	0
	movwf	(___aldiv@quotient+1)^0180h
	movlw	0
	movwf	(___aldiv@quotient)^0180h

	line	24
	
l3106:	
	movf	(___aldiv@divisor+3)^0180h,w
	iorwf	(___aldiv@divisor+2)^0180h,w
	iorwf	(___aldiv@divisor+1)^0180h,w
	iorwf	(___aldiv@divisor)^0180h,w
	skipnz
	goto	u3721
	goto	u3720
u3721:
	goto	l3126
u3720:
	line	25
	
l3108:	
	clrf	(___aldiv@counter)^0180h
	incf	(___aldiv@counter)^0180h,f
	line	26
	goto	l3112
	
l626:	
	line	27
	
l3110:	
	movlw	01h
	movwf	(??___aldiv+0)^0180h+0
u3735:
	clrc
	rlf	(___aldiv@divisor)^0180h,f
	rlf	(___aldiv@divisor+1)^0180h,f
	rlf	(___aldiv@divisor+2)^0180h,f
	rlf	(___aldiv@divisor+3)^0180h,f
	decfsz	(??___aldiv+0)^0180h+0
	goto	u3735
	line	28
	movlw	(01h)
	movwf	(??___aldiv+0)^0180h+0
	movf	(??___aldiv+0)^0180h+0,w
	addwf	(___aldiv@counter)^0180h,f
	goto	l3112
	line	29
	
l625:	
	line	26
	
l3112:	
	btfss	(___aldiv@divisor+3)^0180h,(31)&7
	goto	u3741
	goto	u3740
u3741:
	goto	l3110
u3740:
	goto	l3114
	
l627:	
	goto	l3114
	line	30
	
l628:	
	line	31
	
l3114:	
	movlw	01h
	movwf	(??___aldiv+0)^0180h+0
u3755:
	clrc
	rlf	(___aldiv@quotient)^0180h,f
	rlf	(___aldiv@quotient+1)^0180h,f
	rlf	(___aldiv@quotient+2)^0180h,f
	rlf	(___aldiv@quotient+3)^0180h,f
	decfsz	(??___aldiv+0)^0180h+0
	goto	u3755
	line	32
	
l3116:	
	movf	(___aldiv@divisor+3)^0180h,w
	subwf	(___aldiv@dividend+3)^0180h,w
	skipz
	goto	u3765
	movf	(___aldiv@divisor+2)^0180h,w
	subwf	(___aldiv@dividend+2)^0180h,w
	skipz
	goto	u3765
	movf	(___aldiv@divisor+1)^0180h,w
	subwf	(___aldiv@dividend+1)^0180h,w
	skipz
	goto	u3765
	movf	(___aldiv@divisor)^0180h,w
	subwf	(___aldiv@dividend)^0180h,w
u3765:
	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3122
u3760:
	line	33
	
l3118:	
	movf	(___aldiv@divisor)^0180h,w
	subwf	(___aldiv@dividend)^0180h,f
	movf	(___aldiv@divisor+1)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+1)^0180h,w
	subwf	(___aldiv@dividend+1)^0180h,f
	movf	(___aldiv@divisor+2)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+2)^0180h,w
	subwf	(___aldiv@dividend+2)^0180h,f
	movf	(___aldiv@divisor+3)^0180h,w
	skipc
	incfsz	(___aldiv@divisor+3)^0180h,w
	subwf	(___aldiv@dividend+3)^0180h,f
	line	34
	
l3120:	
	bsf	(___aldiv@quotient)^0180h+(0/8),(0)&7
	goto	l3122
	line	35
	
l629:	
	line	36
	
l3122:	
	movlw	01h
u3775:
	clrc
	rrf	(___aldiv@divisor+3)^0180h,f
	rrf	(___aldiv@divisor+2)^0180h,f
	rrf	(___aldiv@divisor+1)^0180h,f
	rrf	(___aldiv@divisor)^0180h,f
	addlw	-1
	skipz
	goto	u3775

	line	37
	
l3124:	
	movlw	low(01h)
	subwf	(___aldiv@counter)^0180h,f
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3114
u3780:
	goto	l3126
	
l630:	
	goto	l3126
	line	38
	
l624:	
	line	39
	
l3126:	
	movf	(___aldiv@sign)^0180h,w
	skipz
	goto	u3790
	goto	l3130
u3790:
	line	40
	
l3128:	
	comf	(___aldiv@quotient)^0180h,f
	comf	(___aldiv@quotient+1)^0180h,f
	comf	(___aldiv@quotient+2)^0180h,f
	comf	(___aldiv@quotient+3)^0180h,f
	incf	(___aldiv@quotient)^0180h,f
	skipnz
	incf	(___aldiv@quotient+1)^0180h,f
	skipnz
	incf	(___aldiv@quotient+2)^0180h,f
	skipnz
	incf	(___aldiv@quotient+3)^0180h,f
	goto	l3130
	
l631:	
	line	41
	
l3130:	
	movf	(___aldiv@quotient+3)^0180h,w
	movwf	(?___aldiv+3)^0180h
	movf	(___aldiv@quotient+2)^0180h,w
	movwf	(?___aldiv+2)^0180h
	movf	(___aldiv@quotient+1)^0180h,w
	movwf	(?___aldiv+1)^0180h
	movf	(___aldiv@quotient)^0180h,w
	movwf	(?___aldiv)^0180h

	goto	l632
	
l3132:	
	line	42
	
l632:	
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
;;  contagens       1    0[BANK3 ] unsigned char 
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
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       1       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
	line	20
global __ptext3
__ptext3:	;psect for function _TIMER0_Set
psect	text3
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
	line	20
	global	__size_of_TIMER0_Set
	__size_of_TIMER0_Set	equ	__end_of_TIMER0_Set-_TIMER0_Set
	
_TIMER0_Set:	
;incstack = 0
	opt	stack 2
; Regs used in _TIMER0_Set: [wreg]
;TIMER0_Set@contagens stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(TIMER0_Set@contagens)^0180h
	line	22
	
l3138:	
;timers.c: 22: TMR0 = contagens;
	movf	(TIMER0_Set@contagens)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
l300:	
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
psect	text4,local,class=CODE,delta=2,merge=1
	line	6
global __ptext4
__ptext4:	;psect for function _TIMER0_Init
psect	text4
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
	line	6
	global	__size_of_TIMER0_Init
	__size_of_TIMER0_Init	equ	__end_of_TIMER0_Init-_TIMER0_Init
	
_TIMER0_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _TIMER0_Init: []
	line	8
	
l3180:	
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
	
l297:	
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
psect	text5,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	5
global __ptext5
__ptext5:	;psect for function _PWM_Init
psect	text5
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	5
	global	__size_of_PWM_Init
	__size_of_PWM_Init	equ	__end_of_PWM_Init-_PWM_Init
	
_PWM_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_Init: [wreg]
	line	14
	
l3184:	
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
	
l3186:	
;pwm.c: 27: PR2 = 255;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	43
	
l3188:	
;pwm.c: 43: CCP1CONbits.CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(23),3	;volatile
	line	44
	
l3190:	
;pwm.c: 44: CCP1CONbits.CCP1M2 = 1;
	bsf	(23),2	;volatile
	line	45
	
l3192:	
;pwm.c: 45: CCP1CONbits.CCP1M1 = 1;
	bsf	(23),1	;volatile
	line	46
	
l3194:	
;pwm.c: 46: CCP1CONbits.CCP1M0 = 1;
	bsf	(23),0	;volatile
	line	49
	
l3196:	
;pwm.c: 49: PIE1bits.CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,2	;volatile
	line	50
	
l3198:	
;pwm.c: 50: PIR1bits.CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),2	;volatile
	line	53
	
l3200:	
;pwm.c: 53: CCP2CONbits.CCP2M3 = 1;
	bsf	(29),3	;volatile
	line	54
	
l3202:	
;pwm.c: 54: CCP2CONbits.CCP2M2 = 1;
	bsf	(29),2	;volatile
	line	55
	
l3204:	
;pwm.c: 55: CCP2CONbits.CCP2M1 = 1;
	bsf	(29),1	;volatile
	line	56
	
l3206:	
;pwm.c: 56: CCP2CONbits.CCP2M0 = 1;
	bsf	(29),0	;volatile
	line	59
	
l3208:	
;pwm.c: 59: PIE2bits.CCP2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(141)^080h,0	;volatile
	line	60
	
l3210:	
;pwm.c: 60: PIR2bits.CCP2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(13),0	;volatile
	line	61
	
l448:	
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
;;  valor           2    0[BANK3 ] int 
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
;;      Params:         0       0       0       2       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	96
global __ptext6
__ptext6:	;psect for function _PWM_DutyCycle2
psect	text6
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	96
	global	__size_of_PWM_DutyCycle2
	__size_of_PWM_DutyCycle2	equ	__end_of_PWM_DutyCycle2-_PWM_DutyCycle2
	
_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
l3134:	
;pwm.c: 98: CCPR2L = valor >> 2;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle2@valor+1)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0+1
	movf	(PWM_DutyCycle2@valor)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0
	rlf	(??_PWM_DutyCycle2+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle2+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle2+0)^0180h+0,f
	rlf	(??_PWM_DutyCycle2+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle2+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle2+0)^0180h+0,f
	movf	0+(??_PWM_DutyCycle2+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	99
	
l3136:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle2@valor)^0180h,w
	movwf	(??_PWM_DutyCycle2+0)^0180h+0
	movlw	(04h)-1
u3805:
	clrc
	rlf	(??_PWM_DutyCycle2+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u3805
	clrc
	rlf	(??_PWM_DutyCycle2+0)^0180h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(29)	;volatile
	line	100
	
l454:	
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
;;  valor           2    0[BANK3 ] int 
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
;;      Params:         0       0       0       2       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       4       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	64
global __ptext7
__ptext7:	;psect for function _PWM_DutyCycle1
psect	text7
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	64
	global	__size_of_PWM_DutyCycle1
	__size_of_PWM_DutyCycle1	equ	__end_of_PWM_DutyCycle1-_PWM_DutyCycle1
	
_PWM_DutyCycle1:	
;incstack = 0
	opt	stack 2
; Regs used in _PWM_DutyCycle1: [wreg+status,2+status,0]
	line	91
	
l3258:	
;pwm.c: 91: CCPR1L = valor >> 2;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle1@valor+1)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0+1
	movf	(PWM_DutyCycle1@valor)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0
	rlf	(??_PWM_DutyCycle1+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle1+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle1+0)^0180h+0,f
	rlf	(??_PWM_DutyCycle1+0)^0180h+1,w
	rrf	(??_PWM_DutyCycle1+0)^0180h+1,f
	rrf	(??_PWM_DutyCycle1+0)^0180h+0,f
	movf	0+(??_PWM_DutyCycle1+0)^0180h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	92
	
l3260:	
;pwm.c: 92: CCP1CON = (valor << 4)|0X0C;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(PWM_DutyCycle1@valor)^0180h,w
	movwf	(??_PWM_DutyCycle1+0)^0180h+0
	movlw	(04h)-1
u3845:
	clrc
	rlf	(??_PWM_DutyCycle1+0)^0180h+0,f
	addlw	-1
	skipz
	goto	u3845
	clrc
	rlf	(??_PWM_DutyCycle1+0)^0180h+0,w
	iorlw	0Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	94
	
l451:	
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
;;  Str             2    2[BANK3 ] PTR const unsigned char 
;;		 -> display_rpm(10), STR_3(6), STR_2(17), 
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
;;      Params:         0       0       0       2       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	61
global __ptext8
__ptext8:	;psect for function _LCD_WriteString
psect	text8
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	61
	global	__size_of_LCD_WriteString
	__size_of_LCD_WriteString	equ	__end_of_LCD_WriteString-_LCD_WriteString
	
_LCD_WriteString:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteString: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l3250:	
;lcd.c: 63: while(*Str != '\0')
	goto	l3256
	
l329:	
	line	65
	
l3252:	
;lcd.c: 64: {
;lcd.c: 65: LCD_WriteData(*Str);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteString@Str+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteString@Str)^0180h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	fcall	_LCD_WriteData
	line	66
	
l3254:	
;lcd.c: 66: Str++;
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(LCD_WriteString@Str)^0180h,f
	skipnc
	incf	(LCD_WriteString@Str+1)^0180h,f
	goto	l3256
	line	67
	
l328:	
	line	63
	
l3256:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteString@Str+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteString@Str)^0180h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l3252
u3830:
	goto	l331
	
l330:	
	line	68
	
l331:	
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
;;  Byte            1    1[BANK3 ] unsigned char 
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
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_WriteString
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	47
global __ptext9
__ptext9:	;psect for function _LCD_WriteData
psect	text9
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	47
	global	__size_of_LCD_WriteData
	__size_of_LCD_WriteData	equ	__end_of_LCD_WriteData-_LCD_WriteData
	
_LCD_WriteData:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteData: [wreg]
;LCD_WriteData@Byte stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteData@Byte)^0180h
	line	49
	
l3086:	
;lcd.c: 49: PORTEbits.RE0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(9),0	;volatile
	line	51
	
l3088:	
;lcd.c: 51: PORTD = Byte;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteData@Byte)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	53
	
l3090:	
;lcd.c: 53: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	55
;lcd.c: 55: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_WriteData+0)^0180h+0,f
u5737:
decfsz	(??_LCD_WriteData+0)^0180h+0,f
	goto	u5737
opt asmopt_on

	line	57
	
l3092:	
;lcd.c: 57: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	58
	
l325:	
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
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	87
global __ptext10
__ptext10:	;psect for function _LCD_Init
psect	text10
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	87
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_Init: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l3212:	
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
	
l3214:	
;lcd.c: 95: _delay((unsigned long)((15)*(18432000/4000.0)));
	opt asmopt_off
movlw	90
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	195
movwf	((??_LCD_Init+0)^0180h+0),f
u5747:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u5747
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u5747
opt asmopt_on

	line	97
	
l3216:	
;lcd.c: 97: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	98
	
l3218:	
;lcd.c: 98: _delay((unsigned long)((4)*(18432000/4000.0)));
	opt asmopt_off
movlw	24
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	239
movwf	((??_LCD_Init+0)^0180h+0),f
u5757:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u5757
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u5757
opt asmopt_on

	line	100
;lcd.c: 100: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	101
	
l3220:	
;lcd.c: 101: _delay((unsigned long)((100)*(18432000/4000000.0)));
	opt asmopt_off
movlw	153
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5767:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5767
opt asmopt_on

	line	103
	
l3222:	
;lcd.c: 103: LCD_WriteCmd(0x30);
	movlw	(030h)
	fcall	_LCD_WriteCmd
	line	104
;lcd.c: 104: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5777:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5777
opt asmopt_on

	line	106
	
l3224:	
;lcd.c: 106: LCD_WriteCmd(0x38);
	movlw	(038h)
	fcall	_LCD_WriteCmd
	line	107
	
l3226:	
;lcd.c: 107: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5787:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5787
opt asmopt_on

	line	109
;lcd.c: 109: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	110
	
l3228:	
;lcd.c: 110: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Init+0)^0180h+0+1),f
	movlw	247
movwf	((??_LCD_Init+0)^0180h+0),f
u5797:
	decfsz	((??_LCD_Init+0)^0180h+0),f
	goto	u5797
	decfsz	((??_LCD_Init+0)^0180h+0+1),f
	goto	u5797
opt asmopt_on

	line	112
	
l3230:	
;lcd.c: 112: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	113
;lcd.c: 113: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5807:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5807
opt asmopt_on

	line	115
	
l3232:	
;lcd.c: 115: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	116
	
l3234:	
;lcd.c: 116: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Init+0)^0180h+0,f
u5817:
decfsz	(??_LCD_Init+0)^0180h+0,f
	goto	u5817
opt asmopt_on

	line	117
	
l337:	
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
;;  Col             1    0[BANK3 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1    2[BANK3 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       1       0
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       3       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	10
global __ptext11
__ptext11:	;psect for function _LCD_Cursor
psect	text11
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	10
	global	__size_of_LCD_Cursor
	__size_of_LCD_Cursor	equ	__end_of_LCD_Cursor-_LCD_Cursor
	
_LCD_Cursor:	
;incstack = 0
	opt	stack 2
; Regs used in _LCD_Cursor: [wreg+status,2+status,0]
;LCD_Cursor@Row stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_Cursor@Row)^0180h
	line	12
	
l3236:	
;lcd.c: 12: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	14
	
l3238:	
;lcd.c: 14: if (Row == 0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_Cursor@Row)^0180h,f
	skipz
	goto	u3821
	goto	u3820
u3821:
	goto	l3242
u3820:
	line	16
	
l3240:	
;lcd.c: 15: {
;lcd.c: 16: PORTD = 0x80 + Col;
	movf	(LCD_Cursor@Col)^0180h,w
	addlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	17
;lcd.c: 17: }
	goto	l3244
	line	18
	
l317:	
	line	20
	
l3242:	
;lcd.c: 18: else
;lcd.c: 19: {
;lcd.c: 20: PORTD = 0xC0 + Col;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_Cursor@Col)^0180h,w
	addlw	0C0h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	goto	l3244
	line	21
	
l318:	
	line	24
	
l3244:	
;lcd.c: 21: }
;lcd.c: 24: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	26
	
l3246:	
;lcd.c: 26: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Cursor+0)^0180h+0,f
u5827:
decfsz	(??_LCD_Cursor+0)^0180h+0,f
	goto	u5827
opt asmopt_on

	line	28
	
l3248:	
;lcd.c: 28: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	29
	
l319:	
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
;;      Temps:          0       0       0       2       0
;;      Totals:         0       0       0       2       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCD_WriteCmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	71
global __ptext12
__ptext12:	;psect for function _LCD_Clear
psect	text12
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	71
	global	__size_of_LCD_Clear
	__size_of_LCD_Clear	equ	__end_of_LCD_Clear-_LCD_Clear
	
_LCD_Clear:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	73
	
l3262:	
;lcd.c: 73: LCD_WriteCmd(0x01);
	movlw	(01h)
	fcall	_LCD_WriteCmd
	line	75
	
l3264:	
;lcd.c: 75: _delay((unsigned long)((2)*(18432000/4000.0)));
	opt asmopt_off
movlw	12
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	((??_LCD_Clear+0)^0180h+0+1),f
	movlw	247
movwf	((??_LCD_Clear+0)^0180h+0),f
u5837:
	decfsz	((??_LCD_Clear+0)^0180h+0),f
	goto	u5837
	decfsz	((??_LCD_Clear+0)^0180h+0+1),f
	goto	u5837
opt asmopt_on

	line	77
	
l3266:	
;lcd.c: 77: LCD_WriteCmd(0x0C);
	movlw	(0Ch)
	fcall	_LCD_WriteCmd
	line	79
;lcd.c: 79: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Clear+0)^0180h+0,f
u5847:
decfsz	(??_LCD_Clear+0)^0180h+0,f
	goto	u5847
opt asmopt_on

	line	81
	
l3268:	
;lcd.c: 81: LCD_WriteCmd(0x06);
	movlw	(06h)
	fcall	_LCD_WriteCmd
	line	83
	
l3270:	
;lcd.c: 83: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_Clear+0)^0180h+0,f
u5857:
decfsz	(??_LCD_Clear+0)^0180h+0,f
	goto	u5857
opt asmopt_on

	line	84
	
l334:	
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
;;  Byte            1    1[BANK3 ] unsigned char 
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
;;      Locals:         0       0       0       1       0
;;      Temps:          0       0       0       1       0
;;      Totals:         0       0       0       2       0
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
psect	text13,local,class=CODE,delta=2,merge=1
	line	32
global __ptext13
__ptext13:	;psect for function _LCD_WriteCmd
psect	text13
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\lcd.c"
	line	32
	global	__size_of_LCD_WriteCmd
	__size_of_LCD_WriteCmd	equ	__end_of_LCD_WriteCmd-_LCD_WriteCmd
	
_LCD_WriteCmd:	
;incstack = 0
	opt	stack 1
; Regs used in _LCD_WriteCmd: [wreg]
;LCD_WriteCmd@Byte stored from wreg
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(LCD_WriteCmd@Byte)^0180h
	line	34
	
l3078:	
;lcd.c: 34: PORTEbits.RE0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),0	;volatile
	line	36
	
l3080:	
;lcd.c: 36: PORTD = Byte;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(LCD_WriteCmd@Byte)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l3082:	
;lcd.c: 39: PORTEbits.RE1 = 1;
	bsf	(9),1	;volatile
	line	41
;lcd.c: 41: _delay((unsigned long)((40)*(18432000/4000000.0)));
	opt asmopt_off
movlw	61
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
movwf	(??_LCD_WriteCmd+0)^0180h+0,f
u5867:
decfsz	(??_LCD_WriteCmd+0)^0180h+0,f
	goto	u5867
opt asmopt_on

	line	43
	
l3084:	
;lcd.c: 43: PORTEbits.RE1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(9),1	;volatile
	line	44
	
l322:	
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
psect	text14,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\adc.c"
	line	6
global __ptext14
__ptext14:	;psect for function _ADC_Init
psect	text14
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\adc.c"
	line	6
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
;incstack = 0
	opt	stack 2
; Regs used in _ADC_Init: []
	line	9
	
l3182:	
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
	
l274:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 322 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
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
;;      Temps:          0       5       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Fuzzy
;;		_USART_ReceiveChar
;;		_USART_WriteString
;;		___lwdiv
;;		___wmul
;;		_send
;;		i1_PWM_DutyCycle2
;;		i1_TIMER0_Set
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	322
global __ptext15
__ptext15:	;psect for function _ISR
psect	text15
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	322
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
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text15
	line	325
	
i1l3986:	
;main.c: 325: if (PIR1bits.RCIF)
	btfss	(12),5	;volatile
	goto	u548_21
	goto	u548_20
u548_21:
	goto	i1l4068
u548_20:
	line	327
	
i1l3988:	
;main.c: 326: {
;main.c: 327: if (USART_ReceiveChar() == '0')
	fcall	_USART_ReceiveChar
	xorlw	030h
	skipz
	goto	u549_21
	goto	u549_20
u549_21:
	goto	i1l3998
u549_20:
	line	329
	
i1l3990:	
;main.c: 328: {
;main.c: 329: USART_WriteString("\n\rfreio\n\r");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_USART_WriteString
	line	331
	
i1l3992:	
;main.c: 331: PWM_DutyCycle2(0);
	movlw	low(0)
	movwf	(i1PWM_DutyCycle2@valor)
	movlw	high(0)
	movwf	((i1PWM_DutyCycle2@valor))+1
	fcall	i1_PWM_DutyCycle2
	line	332
	
i1l3994:	
;main.c: 332: cruzeiroSet = 'N';
	movlw	(04Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_cruzeiroSet)^080h
	goto	i1l192
	line	333
	
i1l3996:	
;main.c: 333: return;
	goto	i1l192
	line	334
	
i1l191:	
	line	336
	
i1l3998:	
;main.c: 334: }
;main.c: 336: if (USART_ReceiveChar() == '1')
	fcall	_USART_ReceiveChar
	xorlw	031h
	skipz
	goto	u550_21
	goto	u550_20
u550_21:
	goto	i1l4002
u550_20:
	line	338
	
i1l4000:	
;main.c: 337: {
;main.c: 338: setpointUI = 430;
	movlw	low(01AEh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(01AEh)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4002
	line	339
	
i1l193:	
	line	341
	
i1l4002:	
;main.c: 339: }
;main.c: 341: if (USART_ReceiveChar() == '2')
	fcall	_USART_ReceiveChar
	xorlw	032h
	skipz
	goto	u551_21
	goto	u551_20
u551_21:
	goto	i1l4006
u551_20:
	line	343
	
i1l4004:	
;main.c: 342: {
;main.c: 343: setpointUI = 520;
	movlw	low(0208h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(0208h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4006
	line	344
	
i1l194:	
	line	346
	
i1l4006:	
;main.c: 344: }
;main.c: 346: if (USART_ReceiveChar() == '3')
	fcall	_USART_ReceiveChar
	xorlw	033h
	skipz
	goto	u552_21
	goto	u552_20
u552_21:
	goto	i1l4010
u552_20:
	line	348
	
i1l4008:	
;main.c: 347: {
;main.c: 348: setpointUI = 760;
	movlw	low(02F8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(02F8h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4010
	line	349
	
i1l195:	
	line	351
	
i1l4010:	
;main.c: 349: }
;main.c: 351: if (USART_ReceiveChar() == '4')
	fcall	_USART_ReceiveChar
	xorlw	034h
	skipz
	goto	u553_21
	goto	u553_20
u553_21:
	goto	i1l4014
u553_20:
	line	353
	
i1l4012:	
;main.c: 352: {
;main.c: 353: setpointUI = 890;
	movlw	low(037Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(037Ah)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4014
	line	354
	
i1l196:	
	line	356
	
i1l4014:	
;main.c: 354: }
;main.c: 356: if (USART_ReceiveChar() == '5')
	fcall	_USART_ReceiveChar
	xorlw	035h
	skipz
	goto	u554_21
	goto	u554_20
u554_21:
	goto	i1l4018
u554_20:
	line	358
	
i1l4016:	
;main.c: 357: {
;main.c: 358: setpointUI = 1250;
	movlw	low(04E2h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(04E2h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4018
	line	359
	
i1l197:	
	line	361
	
i1l4018:	
;main.c: 359: }
;main.c: 361: if (USART_ReceiveChar() == '6')
	fcall	_USART_ReceiveChar
	xorlw	036h
	skipz
	goto	u555_21
	goto	u555_20
u555_21:
	goto	i1l4022
u555_20:
	line	363
	
i1l4020:	
;main.c: 362: {
;main.c: 363: setpointUI = 2250;
	movlw	low(08CAh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(08CAh)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4022
	line	364
	
i1l198:	
	line	366
	
i1l4022:	
;main.c: 364: }
;main.c: 366: if (USART_ReceiveChar() == '7')
	fcall	_USART_ReceiveChar
	xorlw	037h
	skipz
	goto	u556_21
	goto	u556_20
u556_21:
	goto	i1l4026
u556_20:
	line	368
	
i1l4024:	
;main.c: 367: {
;main.c: 368: setpointUI = 3450;
	movlw	low(0D7Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(0D7Ah)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4026
	line	369
	
i1l199:	
	line	371
	
i1l4026:	
;main.c: 369: }
;main.c: 371: if (USART_ReceiveChar() == '8')
	fcall	_USART_ReceiveChar
	xorlw	038h
	skipz
	goto	u557_21
	goto	u557_20
u557_21:
	goto	i1l4030
u557_20:
	line	373
	
i1l4028:	
;main.c: 372: {
;main.c: 373: setpointUI = 4650;
	movlw	low(0122Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(0122Ah)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4030
	line	374
	
i1l200:	
	line	376
	
i1l4030:	
;main.c: 374: }
;main.c: 376: if (USART_ReceiveChar() == '9')
	fcall	_USART_ReceiveChar
	xorlw	039h
	skipz
	goto	u558_21
	goto	u558_20
u558_21:
	goto	i1l4034
u558_20:
	line	378
	
i1l4032:	
;main.c: 377: {
;main.c: 378: setpointUI = 5400;
	movlw	low(01518h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_setpointUI)^080h
	movlw	high(01518h)
	movwf	((_setpointUI)^080h)+1
	goto	i1l4034
	line	379
	
i1l201:	
	line	382
	
i1l4034:	
;main.c: 379: }
;main.c: 382: if(USART_ReceiveChar() == 'S' || cruzeiroSet == 'S')
	fcall	_USART_ReceiveChar
	xorlw	053h
	skipnz
	goto	u559_21
	goto	u559_20
u559_21:
	goto	i1l4038
u559_20:
	
i1l4036:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_cruzeiroSet)^080h,w
	xorlw	053h
	skipz
	goto	u560_21
	goto	u560_20
u560_21:
	goto	i1l4042
u560_20:
	goto	i1l4038
	
i1l204:	
	line	384
	
i1l4038:	
;main.c: 383: {
;main.c: 384: setpointUI = antigoUI;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_antigoUI+1)^080h,w
	clrf	(_setpointUI+1)^080h
	addwf	(_setpointUI+1)^080h
	movf	(_antigoUI)^080h,w
	clrf	(_setpointUI)^080h
	addwf	(_setpointUI)^080h

	line	385
;main.c: 385: cruzeiroVel = setpointUI;
	movf	(_setpointUI+1)^080h,w
	clrf	(_cruzeiroVel+1)^080h
	addwf	(_cruzeiroVel+1)^080h
	movf	(_setpointUI)^080h,w
	clrf	(_cruzeiroVel)^080h
	addwf	(_cruzeiroVel)^080h

	line	386
	
i1l4040:	
;main.c: 386: cruzeiroSet = 'S';
	movlw	(053h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_cruzeiroSet)^080h
	line	387
;main.c: 387: }else if(USART_ReceiveChar() == 'R' && cruzeiroSet == 'S')
	goto	i1l4058
	
i1l202:	
	
i1l4042:	
	fcall	_USART_ReceiveChar
	xorlw	052h
	skipz
	goto	u561_21
	goto	u561_20
u561_21:
	goto	i1l4050
u561_20:
	
i1l4044:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_cruzeiroSet)^080h,w
	xorlw	053h
	skipz
	goto	u562_21
	goto	u562_20
u562_21:
	goto	i1l4050
u562_20:
	line	389
	
i1l4046:	
;main.c: 388: {
;main.c: 389: setpointUI += 150;
	movlw	low(096h)
	addwf	(_setpointUI)^080h,f
	skipnc
	incf	(_setpointUI+1)^080h,f
	movlw	high(096h)
	addwf	(_setpointUI+1)^080h,f
	line	390
	
i1l4048:	
;main.c: 390: cruzeiroVel = setpointUI;
	movf	(_setpointUI+1)^080h,w
	clrf	(_cruzeiroVel+1)^080h
	addwf	(_cruzeiroVel+1)^080h
	movf	(_setpointUI)^080h,w
	clrf	(_cruzeiroVel)^080h
	addwf	(_cruzeiroVel)^080h

	line	391
;main.c: 391: }else if(USART_ReceiveChar() == 'R' && cruzeiroSet == 'N')
	goto	i1l4058
	
i1l206:	
	
i1l4050:	
	fcall	_USART_ReceiveChar
	xorlw	052h
	skipz
	goto	u563_21
	goto	u563_20
u563_21:
	goto	i1l4058
u563_20:
	
i1l4052:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_cruzeiroSet)^080h,w
	xorlw	04Eh
	skipz
	goto	u564_21
	goto	u564_20
u564_21:
	goto	i1l4058
u564_20:
	line	393
	
i1l4054:	
;main.c: 392: {
;main.c: 393: setpointUI = antigoUI;
	movf	(_antigoUI+1)^080h,w
	clrf	(_setpointUI+1)^080h
	addwf	(_setpointUI+1)^080h
	movf	(_antigoUI)^080h,w
	clrf	(_setpointUI)^080h
	addwf	(_setpointUI)^080h

	line	394
;main.c: 394: cruzeiroVel = setpointUI;
	movf	(_setpointUI+1)^080h,w
	clrf	(_cruzeiroVel+1)^080h
	addwf	(_cruzeiroVel+1)^080h
	movf	(_setpointUI)^080h,w
	clrf	(_cruzeiroVel)^080h
	addwf	(_cruzeiroVel)^080h

	line	395
	
i1l4056:	
;main.c: 395: cruzeiroSet = 'S';
	movlw	(053h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_cruzeiroSet)^080h
	goto	i1l4058
	line	396
	
i1l208:	
	goto	i1l4058
	line	399
	
i1l207:	
	goto	i1l4058
	
i1l205:	
	
i1l4058:	
;main.c: 396: }
;main.c: 399: Fuzzy();
	fcall	_Fuzzy
	line	400
	
i1l4060:	
;main.c: 400: antigoUI = setpointUI;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpointUI+1)^080h,w
	clrf	(_antigoUI+1)^080h
	addwf	(_antigoUI+1)^080h
	movf	(_setpointUI)^080h,w
	clrf	(_antigoUI)^080h
	addwf	(_antigoUI)^080h

	line	403
	
i1l4062:	
;main.c: 403: if(USART_ReceiveChar() == 'X')
	fcall	_USART_ReceiveChar
	xorlw	058h
	skipz
	goto	u565_21
	goto	u565_20
u565_21:
	goto	i1l4066
u565_20:
	line	405
	
i1l4064:	
;main.c: 404: {
;main.c: 405: send();
	fcall	_send
	goto	i1l4066
	line	406
	
i1l209:	
	line	408
	
i1l4066:	
;main.c: 406: }
;main.c: 408: PIR1bits.RCIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),5	;volatile
	goto	i1l4068
	line	409
	
i1l190:	
	line	412
	
i1l4068:	
;main.c: 409: }
;main.c: 412: if (PIR1bits.ADIF)
	btfss	(12),6	;volatile
	goto	u566_21
	goto	u566_20
u566_21:
	goto	i1l210
u566_20:
	line	417
	
i1l4070:	
;main.c: 413: {
;main.c: 417: PIR1bits.ADIF = 0;
	bcf	(12),6	;volatile
	line	418
	
i1l210:	
	line	422
;main.c: 418: }
;main.c: 422: if (INTCONbits.T0IF)
	btfss	(11),2	;volatile
	goto	u567_21
	goto	u567_20
u567_21:
	goto	i1l4094
u567_20:
	line	425
	
i1l4072:	
;main.c: 423: {
;main.c: 425: TIMER0_Set(238);
	movlw	(0EEh)
	fcall	i1_TIMER0_Set
	line	428
	
i1l4074:	
;main.c: 428: if (contagens_tm0 < 499)
	movlw	high(01F3h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_contagens_tm0+1)^080h,w
	movlw	low(01F3h)
	skipnz
	subwf	(_contagens_tm0)^080h,w
	skipnc
	goto	u568_21
	goto	u568_20
u568_21:
	goto	i1l4080
u568_20:
	line	431
	
i1l4076:	
;main.c: 429: {
;main.c: 431: contagens_tm0++;
	movlw	low(01h)
	addwf	(_contagens_tm0)^080h,f
	skipnc
	incf	(_contagens_tm0+1)^080h,f
	movlw	high(01h)
	addwf	(_contagens_tm0+1)^080h,f
	line	434
	
i1l4078:	
;main.c: 434: PORTBbits.RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),6	;volatile
	line	435
;main.c: 435: }
	goto	i1l4092
	line	436
	
i1l212:	
	line	439
	
i1l4080:	
;main.c: 436: else
;main.c: 437: {
;main.c: 439: contagens_tm0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_contagens_tm0)^080h
	clrf	(_contagens_tm0+1)^080h
	line	442
	
i1l4082:	
;main.c: 442: pulsos = (TMR1H << 8) + TMR1L;
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

	line	443
	
i1l4084:	
;main.c: 443: rpm = ((pulsos / pas_cooler) * 120);
	movf	(_pas_cooler+1)^080h,w
	clrf	(___lwdiv@divisor+1)
	addwf	(___lwdiv@divisor+1)
	movf	(_pas_cooler)^080h,w
	clrf	(___lwdiv@divisor)
	addwf	(___lwdiv@divisor)

	movf	(_pulsos+1)^080h,w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(_pulsos)^080h,w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	(0+(?___lwdiv)),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	movlw	low(078h)
	movwf	(___wmul@multiplicand)
	movlw	high(078h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm+1)^080h
	addwf	(_rpm+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_rpm)^080h
	addwf	(_rpm)^080h

	line	450
	
i1l4086:	
;main.c: 450: TMR1L = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(14)	;volatile
	line	451
	
i1l4088:	
;main.c: 451: TMR1H = 0x00;
	clrf	(15)	;volatile
	line	454
	
i1l4090:	
;main.c: 454: PORTBbits.RB6 = 0;
	bcf	(6),6	;volatile
	goto	i1l4092
	line	455
	
i1l213:	
	line	458
	
i1l4092:	
;main.c: 455: }
;main.c: 458: INTCONbits.T0IF = 0;
	bcf	(11),2	;volatile
	goto	i1l4094
	line	459
	
i1l211:	
	line	462
	
i1l4094:	
;main.c: 459: }
;main.c: 462: if (PIR1bits.TMR1IF)
	btfss	(12),0	;volatile
	goto	u569_21
	goto	u569_20
u569_21:
	goto	i1l214
u569_20:
	line	467
	
i1l4096:	
;main.c: 463: {
;main.c: 467: PIR1bits.TMR1IF = 0;
	bcf	(12),0	;volatile
	line	468
	
i1l214:	
	line	471
;main.c: 468: }
;main.c: 471: if (PIR1bits.SSPIF)
	btfss	(12),3	;volatile
	goto	u570_21
	goto	u570_20
u570_21:
	goto	i1l192
u570_20:
	line	476
	
i1l4098:	
;main.c: 472: {
;main.c: 476: PIR1bits.SSPIF = 0;
	bcf	(12),3	;volatile
	goto	i1l192
	line	477
	
i1l215:	
	line	478
	
i1l192:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^00h,w
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
psect	text16,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\timers.c"
	line	20
global __ptext16
__ptext16:	;psect for function i1_TIMER0_Set
psect	text16
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
	
i1l2874:	
;timers.c: 22: TMR0 = contagens;
	movf	(i1TIMER0_Set@contagens),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(1)	;volatile
	line	23
	
i1l300:	
	return
	opt stack 0
GLOBAL	__end_ofi1_TIMER0_Set
	__end_ofi1_TIMER0_Set:
	signat	i1_TIMER0_Set,88
	global	_send

;; *************** function _send *****************
;; Defined at:
;;		line 119 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
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
psect	text17,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	119
global __ptext17
__ptext17:	;psect for function _send
psect	text17
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	119
	global	__size_of_send
	__size_of_send	equ	__end_of_send-_send
	
_send:	
;incstack = 0
	opt	stack 3
; Regs used in _send: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	122
	
i1l2510:	
;main.c: 122: buffer[0] = '#';
	movlw	(023h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(_buffer)^0180h
	line	123
;main.c: 123: buffer[1] = '$';
	movlw	(024h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^0180h+01h
	line	124
;main.c: 124: buffer[2] = ':';
	movlw	(03Ah)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^0180h+02h
	line	128
	
i1l2512:	
;main.c: 128: buffer[3] = (rpm >> 8) & 0xFF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm+1)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+03h
	line	129
	
i1l2514:	
;main.c: 129: buffer[4] = rpm & 0xFF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rpm)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+04h
	line	130
	
i1l2516:	
;main.c: 130: buffer[5] = 'V';
	movlw	(056h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^0180h+05h
	line	133
	
i1l2518:	
;main.c: 133: buffer[6] = (setpointUI >> 8) & 0xFF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpointUI+1)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+06h
	line	134
;main.c: 134: buffer[7] = setpointUI & 0xFF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpointUI)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+07h
	line	135
;main.c: 135: buffer[8] = 'S';
	movlw	(053h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^0180h+08h
	line	138
	
i1l2520:	
;main.c: 138: buffer[9] = (deltaV >> 8) & 0xFF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV+1)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+09h
	line	139
	
i1l2522:	
;main.c: 139: buffer[10] = deltaV & 0xFF;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV)^080h,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+0Ah
	line	140
	
i1l2524:	
;main.c: 140: buffer[11] = 'S';
	movlw	(053h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	movwf	0+(_buffer)^0180h+0Bh
	line	142
;main.c: 142: unsigned char checksum = 0x00;
	clrf	(send@checksum)
	line	143
;main.c: 143: for (unsigned char index = 0; index < 12; index++)
	clrf	(send@index)
	
i1l2526:	
	movlw	(0Ch)
	subwf	(send@index),w
	skipc
	goto	u294_21
	goto	u294_20
u294_21:
	goto	i1l2530
u294_20:
	goto	i1l2538
	
i1l2528:	
	goto	i1l2538
	line	144
	
i1l145:	
	line	145
	
i1l2530:	
;main.c: 144: {
;main.c: 145: USART_WriteChar(buffer[index]);
	movf	(send@index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_USART_WriteChar
	line	146
	
i1l2532:	
;main.c: 146: checksum ^= buffer[index];
	movf	(send@index),w
	addlw	_buffer&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	xorwf	(send@checksum),f
	line	143
	
i1l2534:	
	movlw	(01h)
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	addwf	(send@index),f
	
i1l2536:	
	movlw	(0Ch)
	subwf	(send@index),w
	skipc
	goto	u295_21
	goto	u295_20
u295_21:
	goto	i1l2530
u295_20:
	goto	i1l2538
	
i1l146:	
	line	148
	
i1l2538:	
;main.c: 147: }
;main.c: 148: buffer[12] = checksum;
	movf	(send@checksum),w
	movwf	(??_send+0)+0
	movf	(??_send+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	0+(_buffer)^0180h+0Ch
	line	149
	
i1l2540:	
;main.c: 149: USART_WriteChar(buffer[12]);
	movf	0+(_buffer)^0180h+0Ch,w
	fcall	_USART_WriteChar
	line	150
	
i1l147:	
	return
	opt stack 0
GLOBAL	__end_of_send
	__end_of_send:
	signat	_send,88
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
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
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext18
__ptext18:	;psect for function ___lwdiv
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
i1l2848:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
i1l2850:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u334_21
	goto	u334_20
u334_21:
	goto	i1l2870
u334_20:
	line	16
	
i1l2852:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	i1l2858
	
i1l898:	
	line	18
	
i1l2854:	
	movlw	01h
	
u335_25:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u335_25
	line	19
	
i1l2856:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	i1l2858
	line	20
	
i1l897:	
	line	17
	
i1l2858:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u336_21
	goto	u336_20
u336_21:
	goto	i1l2854
u336_20:
	goto	i1l2860
	
i1l899:	
	goto	i1l2860
	line	21
	
i1l900:	
	line	22
	
i1l2860:	
	movlw	01h
	
u337_25:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u337_25
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u338_25
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u338_25:
	skipc
	goto	u338_21
	goto	u338_20
u338_21:
	goto	i1l2866
u338_20:
	line	24
	
i1l2862:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
i1l2864:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l2866
	line	26
	
i1l901:	
	line	27
	
i1l2866:	
	movlw	01h
	
u339_25:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u339_25
	line	28
	
i1l2868:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u340_21
	goto	u340_20
u340_21:
	goto	i1l2860
u340_20:
	goto	i1l2870
	
i1l902:	
	goto	i1l2870
	line	29
	
i1l896:	
	line	30
	
i1l2870:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	i1l903
	
i1l2872:	
	line	31
	
i1l903:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
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
psect	text19,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	63
global __ptext19
__ptext19:	;psect for function _USART_ReceiveChar
psect	text19
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\usart.c"
	line	63
	global	__size_of_USART_ReceiveChar
	__size_of_USART_ReceiveChar	equ	__end_of_USART_ReceiveChar-_USART_ReceiveChar
	
_USART_ReceiveChar:	
;incstack = 0
	opt	stack 2
; Regs used in _USART_ReceiveChar: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	67
	
i1l2694:	
;usart.c: 65: unsigned char byte;
;usart.c: 67: if (!OERR)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(193/8),(193)&7	;volatile
	goto	u329_21
	goto	u329_20
u329_21:
	goto	i1l2700
u329_20:
	line	69
	
i1l2696:	
;usart.c: 68: {
;usart.c: 69: byte = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@byte)
	line	70
	
i1l2698:	
;usart.c: 70: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	line	71
;usart.c: 71: }
	goto	i1l2710
	line	72
	
i1l255:	
	line	74
	
i1l2700:	
;usart.c: 72: else
;usart.c: 73: {
;usart.c: 74: USART_WriteString("\n\r ------- ESTOURO DE PILHA ------- \n\r ");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_USART_WriteString
	line	76
	
i1l2702:	
;usart.c: 76: RCSTAbits.CREN = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24),4	;volatile
	line	77
	
i1l2704:	
;usart.c: 77: byte = RCREG;
	movf	(26),w	;volatile
	movwf	(??_USART_ReceiveChar+0)+0
	movf	(??_USART_ReceiveChar+0)+0,w
	movwf	(USART_ReceiveChar@byte)
	line	78
	
i1l2706:	
;usart.c: 78: RCSTAbits.CREN = 1;
	bsf	(24),4	;volatile
	line	79
	
i1l2708:	
;usart.c: 79: PIR1bits.RCIF = 0;
	bcf	(12),5	;volatile
	goto	i1l2710
	line	80
	
i1l256:	
	line	82
	
i1l2710:	
;usart.c: 80: }
;usart.c: 82: return(byte);
	movf	(USART_ReceiveChar@byte),w
	goto	i1l257
	
i1l2712:	
	line	83
	
i1l257:	
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
;;		 -> STR_4(40), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  str             1    2[COMMON] PTR const unsigned char 
;;		 -> STR_4(40), STR_1(10), 
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
psect	text20,local,class=CODE,delta=2,merge=1
	line	52
global __ptext20
__ptext20:	;psect for function _USART_WriteString
psect	text20
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
	
i1l2320:	
;usart.c: 54: while(*str != '\0')
	goto	i1l2326
	
i1l250:	
	line	56
	
i1l2322:	
;usart.c: 55: {
;usart.c: 56: USART_WriteChar(*str);
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_USART_WriteChar
	line	57
	
i1l2324:	
;usart.c: 57: str++;
	movlw	(01h)
	movwf	(??_USART_WriteString+0)+0
	movf	(??_USART_WriteString+0)+0,w
	addwf	(USART_WriteString@str),f
	goto	i1l2326
	line	58
	
i1l249:	
	line	54
	
i1l2326:	
	movf	(USART_WriteString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u253_21
	goto	u253_20
u253_21:
	goto	i1l2322
u253_20:
	goto	i1l252
	
i1l251:	
	line	59
	
i1l252:	
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
psect	text21,local,class=CODE,delta=2,merge=1
	line	44
global __ptext21
__ptext21:	;psect for function _USART_WriteChar
psect	text21
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
	
i1l2122:	
;usart.c: 46: while(!PIR1bits.TXIF);
	goto	i1l243
	
i1l244:	
	
i1l243:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),4	;volatile
	goto	u203_21
	goto	u203_20
u203_21:
	goto	i1l243
u203_20:
	goto	i1l2124
	
i1l245:	
	line	47
	
i1l2124:	
;usart.c: 47: TXREG = byte;
	movf	(USART_WriteChar@byte),w
	movwf	(25)	;volatile
	line	48
	
i1l246:	
	return
	opt stack 0
GLOBAL	__end_of_USART_WriteChar
	__end_of_USART_WriteChar:
	signat	_USART_WriteChar,4216
	global	_Fuzzy

;; *************** function _Fuzzy *****************
;; Defined at:
;;		line 174 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               2   16[BANK1 ] int 
;;  a               2   14[BANK1 ] int 
;;  a               2   12[BANK1 ] int 
;;  a               2   10[BANK1 ] int 
;;  a               2   26[BANK1 ] int 
;;  x               3   31[BANK1 ] float 
;;  rule            3   28[BANK1 ] float 
;;  total_area      3   23[BANK1 ] float 
;;  soma            3   20[BANK1 ] float 
;;  reajuste        3    5[BANK1 ] float 
;;  delta           2   18[BANK1 ] int 
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
;;      Locals:         0       0      34       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      34       0       0
;;Total ram usage:       36 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		___lwtoft
;;		___wmul
;;		_abs
;;		_maximo
;;		_minimo
;;		_trapmf
;;		i1_PWM_DutyCycle2
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	174
global __ptext22
__ptext22:	;psect for function _Fuzzy
psect	text22
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	174
	global	__size_of_Fuzzy
	__size_of_Fuzzy	equ	__end_of_Fuzzy-_Fuzzy
	
_Fuzzy:	
;incstack = 0
	opt	stack 1
; Regs used in _Fuzzy: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	193
	
i1l3814:	
;main.c: 193: deltaV = minimo(abs(setpointUI - rpm), 2000);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@b)
	movlw	0xfa
	movwf	(minimo@b+1)
	movlw	0x44
	movwf	(minimo@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_rpm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Fuzzy+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_rpm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_Fuzzy+0)+0+1)
	incf	(??_Fuzzy+0)+0,f
	skipnz
	incf	((??_Fuzzy+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpointUI)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_Fuzzy+0)+0,w
	movwf	(abs@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_setpointUI+1)^080h,w
	skipnc
	incf	(_setpointUI+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_Fuzzy+0)+0,w
	movwf	1+(abs@a)
	fcall	_abs
	movf	(1+(?_abs)),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(0+(?_abs)),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a)
	movf	(1+(?___awtoft)),w
	movwf	(minimo@a+1)
	movf	(2+(?___awtoft)),w
	movwf	(minimo@a+2)
	fcall	_minimo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_minimo)),w
	movwf	(___fttol@f1)
	movf	(1+(?_minimo)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_minimo)),w
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

	line	194
;main.c: 194: int delta = maximo(minimo(abs(deltaV - antigoUI), 1000), 1);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(maximo@b)
	movlw	0x80
	movwf	(maximo@b+1)
	movlw	0x3f
	movwf	(maximo@b+2)
	movlw	0x0
	movwf	(minimo@b)
	movlw	0x7a
	movwf	(minimo@b+1)
	movlw	0x44
	movwf	(minimo@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_antigoUI)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Fuzzy+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	comf	(_antigoUI+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_Fuzzy+0)+0+1)
	incf	(??_Fuzzy+0)+0,f
	skipnz
	incf	((??_Fuzzy+0)+0+1),f
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_Fuzzy+0)+0,w
	movwf	(abs@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_deltaV+1)^080h,w
	skipnc
	incf	(_deltaV+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_Fuzzy+0)+0,w
	movwf	1+(abs@a)
	fcall	_abs
	movf	(1+(?_abs)),w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(0+(?_abs)),w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a)
	movf	(1+(?___awtoft)),w
	movwf	(minimo@a+1)
	movf	(2+(?___awtoft)),w
	movwf	(minimo@a+2)
	fcall	_minimo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_minimo)),w
	movwf	(maximo@a)
	movf	(1+(?_minimo)),w
	movwf	(maximo@a+1)
	movf	(2+(?_minimo)),w
	movwf	(maximo@a+2)
	fcall	_maximo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_maximo)),w
	movwf	(___fttol@f1)
	movf	(1+(?_maximo)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_maximo)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(Fuzzy@delta+1)^080h
	addwf	(Fuzzy@delta+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(Fuzzy@delta)^080h
	addwf	(Fuzzy@delta)^080h

	line	195
	
i1l3816:	
;main.c: 195: float x = 0;
	movlw	0x0
	movwf	(Fuzzy@x)^080h
	movlw	0x0
	movwf	(Fuzzy@x+1)^080h
	movlw	0x0
	movwf	(Fuzzy@x+2)^080h
	line	196
	
i1l3818:	
;main.c: 196: float rule = 0;
	movlw	0x0
	movwf	(Fuzzy@rule)^080h
	movlw	0x0
	movwf	(Fuzzy@rule+1)^080h
	movlw	0x0
	movwf	(Fuzzy@rule+2)^080h
	line	199
	
i1l3820:	
;main.c: 199: if (deltaV <= 100) {
	movlw	high(065h)
	subwf	(_deltaV+1)^080h,w
	movlw	low(065h)
	skipnz
	subwf	(_deltaV)^080h,w
	skipnc
	goto	u510_21
	goto	u510_20
u510_21:
	goto	i1l3842
u510_20:
	line	202
	
i1l3822:	
;main.c: 202: rule = trapmf(deltaV, -1, 0, 1, 100);
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
	movwf	(trapmf@x)
	movf	(1+(?___lwtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___lwtoft)),w
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x80
	movwf	(trapmf@a+1)
	movlw	0xbf
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x0
	movwf	(trapmf@b+1)
	movlw	0x0
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x80
	movwf	(trapmf@c+1)
	movlw	0x3f
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0xc8
	movwf	(trapmf@d+1)
	movlw	0x42
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule+2)^080h
	line	204
	
i1l3824:	
;main.c: 204: x = 0;
	movlw	0x0
	movwf	(Fuzzy@x)^080h
	movlw	0x0
	movwf	(Fuzzy@x+1)^080h
	movlw	0x0
	movwf	(Fuzzy@x+2)^080h
	line	205
	
i1l3826:	
;main.c: 205: for (int a = 0; a <= 15; a++) {
	clrf	(Fuzzy@a)^080h
	clrf	(Fuzzy@a+1)^080h
	
i1l3828:	
	movf	(Fuzzy@a+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u511_25
	movlw	low(010h)
	subwf	(Fuzzy@a)^080h,w
u511_25:

	skipc
	goto	u511_21
	goto	u511_20
u511_21:
	goto	i1l3832
u511_20:
	goto	i1l3842
	
i1l3830:	
	goto	i1l3842
	
i1l161:	
	line	206
	
i1l3832:	
;main.c: 206: rulepequeno = trapmf(x, -1, 0, 0, 5);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x80
	movwf	(trapmf@a+1)
	movlw	0xbf
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x0
	movwf	(trapmf@b+1)
	movlw	0x0
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x0
	movwf	(trapmf@c+1)
	movlw	0x0
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0xa0
	movwf	(trapmf@d+1)
	movlw	0x40
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulepequeno)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulepequeno+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulepequeno+2)^080h
	line	207
;main.c: 207: if (rulepequeno >= rule) {
	movf	(_rulepequeno)^080h,w
	movwf	(___ftge@ff1)
	movf	(_rulepequeno+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_rulepequeno+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(Fuzzy@rule)^080h,w
	movwf	(___ftge@ff2)
	movf	(Fuzzy@rule+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(Fuzzy@rule+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u512_21
	goto	u512_20
u512_21:
	goto	i1l3836
u512_20:
	line	208
	
i1l3834:	
;main.c: 208: rulepequeno = rule;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@rule)^080h,w
	movwf	(_rulepequeno)^080h
	movf	(Fuzzy@rule+1)^080h,w
	movwf	(_rulepequeno+1)^080h
	movf	(Fuzzy@rule+2)^080h,w
	movwf	(_rulepequeno+2)^080h
	goto	i1l3836
	line	209
	
i1l163:	
	line	211
	
i1l3836:	
;main.c: 209: }
;main.c: 211: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+2)^080h
	line	205
	
i1l3838:	
	movlw	low(01h)
	addwf	(Fuzzy@a)^080h,f
	skipnc
	incf	(Fuzzy@a+1)^080h,f
	movlw	high(01h)
	addwf	(Fuzzy@a+1)^080h,f
	
i1l3840:	
	movf	(Fuzzy@a+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u513_25
	movlw	low(010h)
	subwf	(Fuzzy@a)^080h,w
u513_25:

	skipc
	goto	u513_21
	goto	u513_20
u513_21:
	goto	i1l3832
u513_20:
	goto	i1l3842
	
i1l162:	
	goto	i1l3842
	line	213
	
i1l160:	
	line	217
	
i1l3842:	
;main.c: 212: }
;main.c: 213: }
;main.c: 217: if (deltaV >= 100 && deltaV <= 1001 && delta <= 200)
	movlw	high(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_deltaV+1)^080h,w
	movlw	low(064h)
	skipnz
	subwf	(_deltaV)^080h,w
	skipc
	goto	u514_21
	goto	u514_20
u514_21:
	goto	i1l3868
u514_20:
	
i1l3844:	
	movlw	high(03EAh)
	subwf	(_deltaV+1)^080h,w
	movlw	low(03EAh)
	skipnz
	subwf	(_deltaV)^080h,w
	skipnc
	goto	u515_21
	goto	u515_20
u515_21:
	goto	i1l3868
u515_20:
	
i1l3846:	
	movf	(Fuzzy@delta+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u516_25
	movlw	low(0C9h)
	subwf	(Fuzzy@delta)^080h,w
u516_25:

	skipnc
	goto	u516_21
	goto	u516_20
u516_21:
	goto	i1l3868
u516_20:
	line	221
	
i1l3848:	
;main.c: 218: {
;main.c: 220: rule = trapmf(deltaV, 50, 800, 800, 1550) *
;main.c: 221: (1 - trapmf(delta, -1, 0, 1, 200));
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@d)
	movlw	0x48
	movwf	(trapmf@d+1)
	movlw	0x43
	movwf	(trapmf@d+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x80
	movwf	(trapmf@c+1)
	movlw	0x3f
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x0
	movwf	(trapmf@b+1)
	movlw	0x0
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x80
	movwf	(trapmf@a+1)
	movlw	0xbf
	movwf	(trapmf@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@delta+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(Fuzzy@delta)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapmf@x+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Fuzzy$1689)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Fuzzy$1689+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Fuzzy$1689+2)^080h
;main.c: 218: {
;main.c: 220: rule = trapmf(deltaV, 50, 800, 800, 1550) *
;main.c: 221: (1 - trapmf(delta, -1, 0, 1, 200));
	movlw	0xc0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@d)
	movlw	0xc1
	movwf	(trapmf@d+1)
	movlw	0x44
	movwf	(trapmf@d+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x48
	movwf	(trapmf@c+1)
	movlw	0x44
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x48
	movwf	(trapmf@b+1)
	movlw	0x44
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x48
	movwf	(trapmf@a+1)
	movlw	0x42
	movwf	(trapmf@a+2)
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
	movwf	(trapmf@x)
	movf	(1+(?___lwtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___lwtoft)),w
	movwf	(trapmf@x+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	movwf	(___ftmul@f1)
	movf	(1+(?_trapmf)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?_trapmf)),w
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Fuzzy$1689)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Fuzzy$1689+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Fuzzy$1689+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	movwf	(___ftmul@f2)
	movf	(1+(?___ftadd)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftadd)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule+2)^080h
	line	223
	
i1l3850:	
;main.c: 223: x = 0;
	movlw	0x0
	movwf	(Fuzzy@x)^080h
	movlw	0x0
	movwf	(Fuzzy@x+1)^080h
	movlw	0x0
	movwf	(Fuzzy@x+2)^080h
	line	224
	
i1l3852:	
;main.c: 224: for (int a = 0; a <= 15; a++) {
	clrf	(Fuzzy@a_242)^080h
	clrf	(Fuzzy@a_242+1)^080h
	
i1l3854:	
	movf	(Fuzzy@a_242+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u517_25
	movlw	low(010h)
	subwf	(Fuzzy@a_242)^080h,w
u517_25:

	skipc
	goto	u517_21
	goto	u517_20
u517_21:
	goto	i1l3858
u517_20:
	goto	i1l3868
	
i1l3856:	
	goto	i1l3868
	
i1l165:	
	line	225
	
i1l3858:	
;main.c: 225: rulepequeno = trapmf(x, 2, 5, 5, 10);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x0
	movwf	(trapmf@a+1)
	movlw	0x40
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0xa0
	movwf	(trapmf@b+1)
	movlw	0x40
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xa0
	movwf	(trapmf@c+1)
	movlw	0x40
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0x20
	movwf	(trapmf@d+1)
	movlw	0x41
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulepequeno)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulepequeno+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulepequeno+2)^080h
	line	226
;main.c: 226: if (rulepequeno >= rule) {
	movf	(_rulepequeno)^080h,w
	movwf	(___ftge@ff1)
	movf	(_rulepequeno+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_rulepequeno+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(Fuzzy@rule)^080h,w
	movwf	(___ftge@ff2)
	movf	(Fuzzy@rule+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(Fuzzy@rule+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u518_21
	goto	u518_20
u518_21:
	goto	i1l3862
u518_20:
	line	227
	
i1l3860:	
;main.c: 227: rulepequeno = rule;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@rule)^080h,w
	movwf	(_rulepequeno)^080h
	movf	(Fuzzy@rule+1)^080h,w
	movwf	(_rulepequeno+1)^080h
	movf	(Fuzzy@rule+2)^080h,w
	movwf	(_rulepequeno+2)^080h
	goto	i1l3862
	line	228
	
i1l167:	
	line	230
	
i1l3862:	
;main.c: 228: }
;main.c: 230: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+2)^080h
	line	224
	
i1l3864:	
	movlw	low(01h)
	addwf	(Fuzzy@a_242)^080h,f
	skipnc
	incf	(Fuzzy@a_242+1)^080h,f
	movlw	high(01h)
	addwf	(Fuzzy@a_242+1)^080h,f
	
i1l3866:	
	movf	(Fuzzy@a_242+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u519_25
	movlw	low(010h)
	subwf	(Fuzzy@a_242)^080h,w
u519_25:

	skipc
	goto	u519_21
	goto	u519_20
u519_21:
	goto	i1l3858
u519_20:
	goto	i1l3868
	
i1l166:	
	goto	i1l3868
	line	232
	
i1l164:	
	line	236
	
i1l3868:	
;main.c: 231: }
;main.c: 232: }
;main.c: 236: if (deltaV >= 100 && deltaV <= 1001 && delta >= 201)
	movlw	high(064h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_deltaV+1)^080h,w
	movlw	low(064h)
	skipnz
	subwf	(_deltaV)^080h,w
	skipc
	goto	u520_21
	goto	u520_20
u520_21:
	goto	i1l3894
u520_20:
	
i1l3870:	
	movlw	high(03EAh)
	subwf	(_deltaV+1)^080h,w
	movlw	low(03EAh)
	skipnz
	subwf	(_deltaV)^080h,w
	skipnc
	goto	u521_21
	goto	u521_20
u521_21:
	goto	i1l3894
u521_20:
	
i1l3872:	
	movf	(Fuzzy@delta+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u522_25
	movlw	low(0C9h)
	subwf	(Fuzzy@delta)^080h,w
u522_25:

	skipc
	goto	u522_21
	goto	u522_20
u522_21:
	goto	i1l3894
u522_20:
	line	240
	
i1l3874:	
;main.c: 237: {
;main.c: 239: rule = trapmf(deltaV, 50, 800, 800, 1550) *
;main.c: 240: trapmf(delta, 200, 500, 2000, 2001);
	movlw	0x20
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@d)
	movlw	0xfa
	movwf	(trapmf@d+1)
	movlw	0x44
	movwf	(trapmf@d+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xfa
	movwf	(trapmf@c+1)
	movlw	0x44
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0xfa
	movwf	(trapmf@b+1)
	movlw	0x43
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x48
	movwf	(trapmf@a+1)
	movlw	0x43
	movwf	(trapmf@a+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@delta+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(Fuzzy@delta)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	movf	(1+(?___awtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___awtoft)),w
	movwf	(trapmf@x+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	movwf	(___ftmul@f1)
	movf	(1+(?_trapmf)),w
	movwf	(___ftmul@f1+1)
	movf	(2+(?_trapmf)),w
	movwf	(___ftmul@f1+2)
	movlw	0xc0
	movwf	(trapmf@d)
	movlw	0xc1
	movwf	(trapmf@d+1)
	movlw	0x44
	movwf	(trapmf@d+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x48
	movwf	(trapmf@c+1)
	movlw	0x44
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x48
	movwf	(trapmf@b+1)
	movlw	0x44
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x48
	movwf	(trapmf@a+1)
	movlw	0x42
	movwf	(trapmf@a+2)
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
	movwf	(trapmf@x)
	movf	(1+(?___lwtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___lwtoft)),w
	movwf	(trapmf@x+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	movwf	(___ftmul@f2)
	movf	(1+(?_trapmf)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?_trapmf)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule+2)^080h
	line	242
	
i1l3876:	
;main.c: 242: x = 0;
	movlw	0x0
	movwf	(Fuzzy@x)^080h
	movlw	0x0
	movwf	(Fuzzy@x+1)^080h
	movlw	0x0
	movwf	(Fuzzy@x+2)^080h
	line	243
	
i1l3878:	
;main.c: 243: for (int a = 0; a <= 15; a++) {
	clrf	(Fuzzy@a_243)^080h
	clrf	(Fuzzy@a_243+1)^080h
	
i1l3880:	
	movf	(Fuzzy@a_243+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u523_25
	movlw	low(010h)
	subwf	(Fuzzy@a_243)^080h,w
u523_25:

	skipc
	goto	u523_21
	goto	u523_20
u523_21:
	goto	i1l3884
u523_20:
	goto	i1l3894
	
i1l3882:	
	goto	i1l3894
	
i1l169:	
	line	244
	
i1l3884:	
;main.c: 244: rulemedio = trapmf(x, 2, 5, 5, 10);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0x0
	movwf	(trapmf@a+1)
	movlw	0x40
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0xa0
	movwf	(trapmf@b+1)
	movlw	0x40
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xa0
	movwf	(trapmf@c+1)
	movlw	0x40
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0x20
	movwf	(trapmf@d+1)
	movlw	0x41
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulemedio)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulemedio+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulemedio+2)^080h
	line	246
;main.c: 246: if (rulemedio >= rule) {
	movf	(_rulemedio)^080h,w
	movwf	(___ftge@ff1)
	movf	(_rulemedio+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_rulemedio+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(Fuzzy@rule)^080h,w
	movwf	(___ftge@ff2)
	movf	(Fuzzy@rule+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(Fuzzy@rule+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u524_21
	goto	u524_20
u524_21:
	goto	i1l3888
u524_20:
	line	247
	
i1l3886:	
;main.c: 247: rulemedio = rule;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@rule)^080h,w
	movwf	(_rulemedio)^080h
	movf	(Fuzzy@rule+1)^080h,w
	movwf	(_rulemedio+1)^080h
	movf	(Fuzzy@rule+2)^080h,w
	movwf	(_rulemedio+2)^080h
	goto	i1l3888
	line	248
	
i1l171:	
	line	250
	
i1l3888:	
;main.c: 248: }
;main.c: 250: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+2)^080h
	line	243
	
i1l3890:	
	movlw	low(01h)
	addwf	(Fuzzy@a_243)^080h,f
	skipnc
	incf	(Fuzzy@a_243+1)^080h,f
	movlw	high(01h)
	addwf	(Fuzzy@a_243+1)^080h,f
	
i1l3892:	
	movf	(Fuzzy@a_243+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u525_25
	movlw	low(010h)
	subwf	(Fuzzy@a_243)^080h,w
u525_25:

	skipc
	goto	u525_21
	goto	u525_20
u525_21:
	goto	i1l3884
u525_20:
	goto	i1l3894
	
i1l170:	
	goto	i1l3894
	line	252
	
i1l168:	
	line	255
	
i1l3894:	
;main.c: 251: }
;main.c: 252: }
;main.c: 255: if (deltaV >= 1001)
	movlw	high(03E9h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(_deltaV+1)^080h,w
	movlw	low(03E9h)
	skipnz
	subwf	(_deltaV)^080h,w
	skipc
	goto	u526_21
	goto	u526_20
u526_21:
	goto	i1l3916
u526_20:
	line	258
	
i1l3896:	
;main.c: 256: {
;main.c: 258: rule = trapmf(deltaV, 1001, 1500, 2000, 2001);
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
	movwf	(trapmf@x)
	movf	(1+(?___lwtoft)),w
	movwf	(trapmf@x+1)
	movf	(2+(?___lwtoft)),w
	movwf	(trapmf@x+2)
	movlw	0x40
	movwf	(trapmf@a)
	movlw	0x7a
	movwf	(trapmf@a+1)
	movlw	0x44
	movwf	(trapmf@a+2)
	movlw	0x80
	movwf	(trapmf@b)
	movlw	0xbb
	movwf	(trapmf@b+1)
	movlw	0x44
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0xfa
	movwf	(trapmf@c+1)
	movlw	0x44
	movwf	(trapmf@c+2)
	movlw	0x20
	movwf	(trapmf@d)
	movlw	0xfa
	movwf	(trapmf@d+1)
	movlw	0x44
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@rule+2)^080h
	line	260
	
i1l3898:	
;main.c: 260: x = 0;
	movlw	0x0
	movwf	(Fuzzy@x)^080h
	movlw	0x0
	movwf	(Fuzzy@x+1)^080h
	movlw	0x0
	movwf	(Fuzzy@x+2)^080h
	line	261
	
i1l3900:	
;main.c: 261: for (int a = 0; a <= 15; a++) {
	clrf	(Fuzzy@a_244)^080h
	clrf	(Fuzzy@a_244+1)^080h
	
i1l3902:	
	movf	(Fuzzy@a_244+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u527_25
	movlw	low(010h)
	subwf	(Fuzzy@a_244)^080h,w
u527_25:

	skipc
	goto	u527_21
	goto	u527_20
u527_21:
	goto	i1l3906
u527_20:
	goto	i1l3916
	
i1l3904:	
	goto	i1l3916
	
i1l173:	
	line	262
	
i1l3906:	
;main.c: 262: rulegrande = trapmf(x, 5, 10, 15, 16);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@x+2)
	movlw	0x0
	movwf	(trapmf@a)
	movlw	0xa0
	movwf	(trapmf@a+1)
	movlw	0x40
	movwf	(trapmf@a+2)
	movlw	0x0
	movwf	(trapmf@b)
	movlw	0x20
	movwf	(trapmf@b+1)
	movlw	0x41
	movwf	(trapmf@b+2)
	movlw	0x0
	movwf	(trapmf@c)
	movlw	0x70
	movwf	(trapmf@c+1)
	movlw	0x41
	movwf	(trapmf@c+2)
	movlw	0x0
	movwf	(trapmf@d)
	movlw	0x80
	movwf	(trapmf@d+1)
	movlw	0x41
	movwf	(trapmf@d+2)
	fcall	_trapmf
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulegrande)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulegrande+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_trapmf)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_rulegrande+2)^080h
	line	264
;main.c: 264: if (rulegrande >= rule) {
	movf	(_rulegrande)^080h,w
	movwf	(___ftge@ff1)
	movf	(_rulegrande+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(_rulegrande+2)^080h,w
	movwf	(___ftge@ff1+2)
	movf	(Fuzzy@rule)^080h,w
	movwf	(___ftge@ff2)
	movf	(Fuzzy@rule+1)^080h,w
	movwf	(___ftge@ff2+1)
	movf	(Fuzzy@rule+2)^080h,w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u528_21
	goto	u528_20
u528_21:
	goto	i1l3910
u528_20:
	line	265
	
i1l3908:	
;main.c: 265: rulegrande = rule;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@rule)^080h,w
	movwf	(_rulegrande)^080h
	movf	(Fuzzy@rule+1)^080h,w
	movwf	(_rulegrande+1)^080h
	movf	(Fuzzy@rule+2)^080h,w
	movwf	(_rulegrande+2)^080h
	goto	i1l3910
	line	266
	
i1l175:	
	line	268
	
i1l3910:	
;main.c: 266: }
;main.c: 268: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+2)^080h
	line	261
	
i1l3912:	
	movlw	low(01h)
	addwf	(Fuzzy@a_244)^080h,f
	skipnc
	incf	(Fuzzy@a_244+1)^080h,f
	movlw	high(01h)
	addwf	(Fuzzy@a_244+1)^080h,f
	
i1l3914:	
	movf	(Fuzzy@a_244+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u529_25
	movlw	low(010h)
	subwf	(Fuzzy@a_244)^080h,w
u529_25:

	skipc
	goto	u529_21
	goto	u529_20
u529_21:
	goto	i1l3906
u529_20:
	goto	i1l3916
	
i1l174:	
	goto	i1l3916
	line	270
	
i1l172:	
	line	274
	
i1l3916:	
;main.c: 269: }
;main.c: 270: }
;main.c: 274: x = 0;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x)^080h
	movlw	0x0
	movwf	(Fuzzy@x+1)^080h
	movlw	0x0
	movwf	(Fuzzy@x+2)^080h
	line	275
;main.c: 275: float total_area = 0;
	movlw	0x0
	movwf	(Fuzzy@total_area)^080h
	movlw	0x0
	movwf	(Fuzzy@total_area+1)^080h
	movlw	0x0
	movwf	(Fuzzy@total_area+2)^080h
	line	276
;main.c: 276: float soma = 0;
	movlw	0x0
	movwf	(Fuzzy@soma)^080h
	movlw	0x0
	movwf	(Fuzzy@soma+1)^080h
	movlw	0x0
	movwf	(Fuzzy@soma+2)^080h
	line	277
	
i1l3918:	
;main.c: 277: for (int a = 0; a <= 15; a++)
	clrf	(Fuzzy@a_247)^080h
	clrf	(Fuzzy@a_247+1)^080h
	
i1l3920:	
	movf	(Fuzzy@a_247+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u530_25
	movlw	low(010h)
	subwf	(Fuzzy@a_247)^080h,w
u530_25:

	skipc
	goto	u530_21
	goto	u530_20
u530_21:
	goto	i1l176
u530_20:
	goto	i1l3944
	
i1l3922:	
	goto	i1l3944
	line	278
	
i1l176:	
	line	279
;main.c: 278: {
;main.c: 279: if (a >= 0 && a <= 5) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(Fuzzy@a_247+1)^080h,7
	goto	u531_21
	goto	u531_20
u531_21:
	goto	i1l3928
u531_20:
	
i1l3924:	
	movf	(Fuzzy@a_247+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u532_25
	movlw	low(06h)
	subwf	(Fuzzy@a_247)^080h,w
u532_25:

	skipnc
	goto	u532_21
	goto	u532_20
u532_21:
	goto	i1l3928
u532_20:
	line	280
	
i1l3926:	
;main.c: 280: total_area += rulepequeno;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulepequeno)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulepequeno+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulepequeno+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area+2)^080h
	line	281
;main.c: 281: soma += (x * rulepequeno);
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulepequeno)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulepequeno+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulepequeno+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma+2)^080h
	goto	i1l3928
	line	282
	
i1l178:	
	line	284
	
i1l3928:	
;main.c: 282: }
;main.c: 284: if (a >= 5 && a <= 10) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@a_247+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u533_25
	movlw	low(05h)
	subwf	(Fuzzy@a_247)^080h,w
u533_25:

	skipc
	goto	u533_21
	goto	u533_20
u533_21:
	goto	i1l3934
u533_20:
	
i1l3930:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@a_247+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u534_25
	movlw	low(0Bh)
	subwf	(Fuzzy@a_247)^080h,w
u534_25:

	skipnc
	goto	u534_21
	goto	u534_20
u534_21:
	goto	i1l3934
u534_20:
	line	285
	
i1l3932:	
;main.c: 285: total_area += rulemedio;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulemedio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulemedio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulemedio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area+2)^080h
	line	286
;main.c: 286: soma += (x * rulemedio);
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulemedio)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulemedio+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulemedio+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma+2)^080h
	goto	i1l3934
	line	287
	
i1l179:	
	line	289
	
i1l3934:	
;main.c: 287: }
;main.c: 289: if (a >= 10 && a <= 15) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@a_247+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u535_25
	movlw	low(0Ah)
	subwf	(Fuzzy@a_247)^080h,w
u535_25:

	skipc
	goto	u535_21
	goto	u535_20
u535_21:
	goto	i1l180
u535_20:
	
i1l3936:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@a_247+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u536_25
	movlw	low(010h)
	subwf	(Fuzzy@a_247)^080h,w
u536_25:

	skipnc
	goto	u536_21
	goto	u536_20
u536_21:
	goto	i1l180
u536_20:
	line	290
	
i1l3938:	
;main.c: 290: total_area += rulegrande;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulegrande)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulegrande+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulegrande+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@total_area+2)^080h
	line	291
;main.c: 291: soma += (x * rulegrande);
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulegrande)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulegrande+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_rulegrande+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@soma+2)^080h
	line	292
	
i1l180:	
	line	293
;main.c: 292: }
;main.c: 293: x += 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0x3f
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@x+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@x+2)^080h
	line	277
	
i1l3940:	
	movlw	low(01h)
	addwf	(Fuzzy@a_247)^080h,f
	skipnc
	incf	(Fuzzy@a_247+1)^080h,f
	movlw	high(01h)
	addwf	(Fuzzy@a_247+1)^080h,f
	
i1l3942:	
	movf	(Fuzzy@a_247+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u537_25
	movlw	low(010h)
	subwf	(Fuzzy@a_247)^080h,w
u537_25:

	skipc
	goto	u537_21
	goto	u537_20
u537_21:
	goto	i1l176
u537_20:
	goto	i1l3944
	
i1l177:	
	line	297
	
i1l3944:	
;main.c: 294: }
;main.c: 297: float reajuste = 0;
	movlw	0x0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@reajuste)^080h
	movlw	0x0
	movwf	(Fuzzy@reajuste+1)^080h
	movlw	0x0
	movwf	(Fuzzy@reajuste+2)^080h
	line	298
;main.c: 298: if (total_area != 0)
	movf	(Fuzzy@total_area+2)^080h,w
	iorwf	(Fuzzy@total_area+1)^080h,w
	iorwf	(Fuzzy@total_area)^080h,w
	skipnz
	goto	u538_21
	goto	u538_20
u538_21:
	goto	i1l3948
u538_20:
	line	300
	
i1l3946:	
;main.c: 299: {
;main.c: 300: reajuste = soma / total_area;
	movf	(Fuzzy@total_area)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@total_area+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@soma+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@reajuste)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@reajuste+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(Fuzzy@reajuste+2)^080h
	goto	i1l3948
	line	301
	
i1l181:	
	line	304
	
i1l3948:	
;main.c: 301: }
;main.c: 304: pwm = maximo(minimo(pwm + ((int)minimo(reajuste, deltaV)) * (setpointUI > rpm ? 1 : -1), 1023), 0);
	movf	(_setpointUI+1)^080h,w
	subwf	(_rpm+1)^080h,w
	skipz
	goto	u539_25
	movf	(_setpointUI)^080h,w
	subwf	(_rpm)^080h,w
u539_25:
	skipc
	goto	u539_21
	goto	u539_20
u539_21:
	goto	i1l3952
u539_20:
	
i1l3950:	
	movlw	low(-1)
	movwf	(_Fuzzy$249)^080h
	movlw	high(-1)
	movwf	((_Fuzzy$249)^080h)+1
	goto	i1l3954
	
i1l183:	
	
i1l3952:	
	movlw	low(01h)
	movwf	(_Fuzzy$249)^080h
	movlw	high(01h)
	movwf	((_Fuzzy$249)^080h)+1
	goto	i1l3954
	
i1l185:	
	
i1l3954:	
	movf	(_Fuzzy$249+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Fuzzy$249)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

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
	movwf	(minimo@b)
	movf	(1+(?___lwtoft)),w
	movwf	(minimo@b+1)
	movf	(2+(?___lwtoft)),w
	movwf	(minimo@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@reajuste)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@reajuste+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(Fuzzy@reajuste+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a+2)
	fcall	_minimo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_minimo)),w
	movwf	(___fttol@f1)
	movf	(1+(?_minimo)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_minimo)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(___wmul@multiplier+1)
	addwf	(___wmul@multiplier+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(___wmul@multiplier)
	addwf	(___wmul@multiplier)

	fcall	___wmul
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_pwm)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(0+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Fuzzy$1690)^080h
	movf	(_pwm+1)^080h,w
	skipnc
	incf	(_pwm+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_Fuzzy$1690)^080h
	
i1l3956:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(maximo@b)
	movlw	0x0
	movwf	(maximo@b+1)
	movlw	0x0
	movwf	(maximo@b+2)
	movlw	0xc0
	movwf	(minimo@b)
	movlw	0x7f
	movwf	(minimo@b+1)
	movlw	0x44
	movwf	(minimo@b+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Fuzzy$1690+1)^080h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(_Fuzzy$1690)^080h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(minimo@a)
	movf	(1+(?___lwtoft)),w
	movwf	(minimo@a+1)
	movf	(2+(?___lwtoft)),w
	movwf	(minimo@a+2)
	fcall	_minimo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_minimo)),w
	movwf	(maximo@a)
	movf	(1+(?_minimo)),w
	movwf	(maximo@a+1)
	movf	(2+(?_minimo)),w
	movwf	(maximo@a+2)
	fcall	_maximo
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_maximo)),w
	movwf	(___fttol@f1)
	movf	(1+(?_maximo)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?_maximo)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pwm+1)^080h
	addwf	(_pwm+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_pwm)^080h
	addwf	(_pwm)^080h

	line	306
;main.c: 306: if(pwm > 0 && pwm < 1024)
	movf	(_pwm+1)^080h,w
	iorwf	(_pwm)^080h,w
	skipnz
	goto	u540_21
	goto	u540_20
u540_21:
	goto	i1l187
u540_20:
	
i1l3958:	
	movlw	high(0400h)
	subwf	(_pwm+1)^080h,w
	movlw	low(0400h)
	skipnz
	subwf	(_pwm)^080h,w
	skipnc
	goto	u541_21
	goto	u541_20
u541_21:
	goto	i1l187
u541_20:
	line	308
	
i1l3960:	
;main.c: 307: {
;main.c: 308: PWM_DutyCycle2(pwm);
	movf	(_pwm+1)^080h,w
	clrf	(i1PWM_DutyCycle2@valor+1)
	addwf	(i1PWM_DutyCycle2@valor+1)
	movf	(_pwm)^080h,w
	clrf	(i1PWM_DutyCycle2@valor)
	addwf	(i1PWM_DutyCycle2@valor)

	fcall	i1_PWM_DutyCycle2
	goto	i1l187
	line	309
	
i1l186:	
	line	311
	
i1l187:	
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
;;  valor           2    0[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fuzzy
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	96
global __ptext23
__ptext23:	;psect for function i1_PWM_DutyCycle2
psect	text23
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\pwm.c"
	line	96
	global	__size_ofi1_PWM_DutyCycle2
	__size_ofi1_PWM_DutyCycle2	equ	__end_ofi1_PWM_DutyCycle2-i1_PWM_DutyCycle2
	
i1_PWM_DutyCycle2:	
;incstack = 0
	opt	stack 4
; Regs used in i1_PWM_DutyCycle2: [wreg+status,2+status,0]
	line	98
	
i1l2506:	
;pwm.c: 98: CCPR2L = valor >> 2;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(27)	;volatile
	line	99
	
i1l2508:	
;pwm.c: 99: CCP2CON = (valor << 4)|0X0C;
	movf	(i1PWM_DutyCycle2@valor),w
	movwf	(??i1_PWM_DutyCycle2+0)+0
	movlw	(04h)-1
u293_25:
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,f
	addlw	-1
	skipz
	goto	u293_25
	clrc
	rlf	(??i1_PWM_DutyCycle2+0)+0,w
	iorlw	0Ch
	movwf	(29)	;volatile
	line	100
	
i1l454:	
	return
	opt stack 0
GLOBAL	__end_ofi1_PWM_DutyCycle2
	__end_ofi1_PWM_DutyCycle2:
	signat	i1_PWM_DutyCycle2,88
	global	_trapmf

;; *************** function _trapmf *****************
;; Defined at:
;;		line 85 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
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
psect	text24,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	85
global __ptext24
__ptext24:	;psect for function _trapmf
psect	text24
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	85
	global	__size_of_trapmf
	__size_of_trapmf	equ	__end_of_trapmf-_trapmf
	
_trapmf:	
;incstack = 0
	opt	stack 1
; Regs used in _trapmf: [wreg+status,2+status,0+pclath+cstack]
	line	87
	
i1l3784:	
;main.c: 87: float ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	line	89
	
i1l3786:	
;main.c: 89: if (x <= a)
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
	goto	u502_21
	goto	u502_20
u502_21:
	goto	i1l3790
u502_20:
	line	90
	
i1l3788:	
;main.c: 90: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	goto	i1l126
	line	91
	
i1l125:	
	
i1l3790:	
;main.c: 91: else if ((a < x) && (x <= b))
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
	goto	u503_21
	goto	u503_20
u503_21:
	goto	i1l3796
u503_20:
	
i1l3792:	
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
	goto	u504_21
	goto	u504_20
u504_21:
	goto	i1l3796
u504_20:
	line	92
	
i1l3794:	
;main.c: 92: ua = ((x - a) / (b - a));
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
	goto	i1l126
	line	93
	
i1l127:	
	
i1l3796:	
;main.c: 93: else if ((b <= x) && (x <= c))
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
	goto	u505_21
	goto	u505_20
u505_21:
	goto	i1l3802
u505_20:
	
i1l3798:	
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
	goto	u506_21
	goto	u506_20
u506_21:
	goto	i1l3802
u506_20:
	line	94
	
i1l3800:	
;main.c: 94: ua = 1;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x80
	movwf	(trapmf@ua+1)
	movlw	0x3f
	movwf	(trapmf@ua+2)
	goto	i1l126
	line	95
	
i1l129:	
	
i1l3802:	
;main.c: 95: else if ((c < x) && (x <= d))
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
	goto	u507_21
	goto	u507_20
u507_21:
	goto	i1l3808
u507_20:
	
i1l3804:	
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
	goto	u508_21
	goto	u508_20
u508_21:
	goto	i1l3808
u508_20:
	line	96
	
i1l3806:	
;main.c: 96: ua = ((d - x) / (d - c));
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
	goto	i1l126
	line	97
	
i1l131:	
	
i1l3808:	
;main.c: 97: else if (x > d)
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
	goto	u509_21
	goto	u509_20
u509_21:
	goto	i1l126
u509_20:
	line	98
	
i1l3810:	
;main.c: 98: ua = 0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(trapmf@ua)
	movlw	0x0
	movwf	(trapmf@ua+1)
	movlw	0x0
	movwf	(trapmf@ua+2)
	goto	i1l126
	
i1l133:	
	goto	i1l126
	line	100
	
i1l132:	
	goto	i1l126
	
i1l130:	
	goto	i1l126
	
i1l128:	
	
i1l126:	
;main.c: 100: return(ua);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trapmf@ua),w
	movwf	(?_trapmf)
	movf	(trapmf@ua+1),w
	movwf	(?_trapmf+1)
	movf	(trapmf@ua+2),w
	movwf	(?_trapmf+2)
	goto	i1l134
	
i1l3812:	
	line	101
	
i1l134:	
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
;;		_trapmf
;;		_Fuzzy
;;		_trimf
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext25
__ptext25:	;psect for function ___ftneg
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftneg: [wreg]
	line	17
	
i1l2260:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l2264
u241_20:
	line	18
	
i1l2262:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	i1l2264
	
i1l799:	
	line	19
	
i1l2264:	
	goto	i1l800
	
i1l2266:	
	line	20
	
i1l800:	
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
;;		_trapmf
;;		_Fuzzy
;;		_trimf
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext26
__ptext26:	;psect for function ___ftdiv
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l2198:	
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
	goto	u228_21
	goto	u228_20
u228_21:
	goto	i1l2204
u228_20:
	line	56
	
i1l2200:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l774
	
i1l2202:	
	goto	i1l774
	
i1l773:	
	line	57
	
i1l2204:	
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
	goto	u229_21
	goto	u229_20
u229_21:
	goto	i1l2210
u229_20:
	line	58
	
i1l2206:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l774
	
i1l2208:	
	goto	i1l774
	
i1l775:	
	line	59
	
i1l2210:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
i1l2212:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
i1l2214:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u230_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u230_20:
	addlw	-1
	skipz
	goto	u230_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
i1l2216:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u231_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u231_20:
	addlw	-1
	skipz
	goto	u231_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
i1l2218:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
i1l2220:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
i1l2222:	
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
	goto	i1l2224
	line	69
	
i1l776:	
	line	70
	
i1l2224:	
	movlw	01h
u232_25:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u232_25
	line	71
	
i1l2226:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u233_25
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u233_25
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u233_25:
	skipc
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l2232
u233_20:
	line	72
	
i1l2228:	
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
	
i1l2230:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	i1l2232
	line	74
	
i1l777:	
	line	75
	
i1l2232:	
	movlw	01h
u234_25:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u234_25
	line	76
	
i1l2234:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l2224
u235_20:
	goto	i1l2236
	
i1l778:	
	line	77
	
i1l2236:	
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
	goto	i1l774
	
i1l2238:	
	line	78
	
i1l774:	
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
;;		_trapmf
;;		_Fuzzy
;;		_trimf
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext27
__ptext27:	;psect for function ___ftadd
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l3712:	
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
	
i1l3714:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u478_20
	goto	i1l3720
u478_20:
	
i1l3716:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u479_21
	goto	u479_20
u479_21:
	goto	i1l3724
u479_20:
	
i1l3718:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u480_21
	goto	u480_20
u480_21:
	goto	i1l3724
u480_20:
	goto	i1l3720
	
i1l742:	
	line	93
	
i1l3720:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l743
	
i1l3722:	
	goto	i1l743
	
i1l740:	
	line	94
	
i1l3724:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u481_20
	goto	i1l746
u481_20:
	
i1l3726:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u482_21
	goto	u482_20
u482_21:
	goto	i1l3730
u482_20:
	
i1l3728:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u483_21
	goto	u483_20
u483_21:
	goto	i1l3730
u483_20:
	
i1l746:	
	line	95
	goto	i1l743
	
i1l744:	
	line	96
	
i1l3730:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
i1l3732:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u484_21
	goto	u484_20
u484_21:
	goto	i1l747
u484_20:
	line	98
	
i1l3734:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l747:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u485_21
	goto	u485_20
u485_21:
	goto	i1l748
u485_20:
	line	100
	
i1l3736:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l748:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l3738:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l3740:	
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
	goto	u486_21
	goto	u486_20
u486_21:
	goto	i1l3752
u486_20:
	goto	i1l3742
	line	109
	
i1l750:	
	line	110
	
i1l3742:	
	movlw	01h
u487_25:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u487_25
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
i1l3744:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u488_21
	goto	u488_20
u488_21:
	goto	i1l3750
u488_20:
	
i1l3746:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u489_21
	goto	u489_20
u489_21:
	goto	i1l3742
u489_20:
	goto	i1l3750
	
i1l752:	
	goto	i1l3750
	
i1l753:	
	line	113
	goto	i1l3750
	
i1l755:	
	line	114
	
i1l3748:	
	movlw	01h
u490_25:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u490_25

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	i1l3750
	line	116
	
i1l754:	
	line	113
	
i1l3750:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u491_21
	goto	u491_20
u491_21:
	goto	i1l3748
u491_20:
	goto	i1l757
	
i1l756:	
	line	117
	goto	i1l757
	
i1l749:	
	
i1l3752:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u492_21
	goto	u492_20
u492_21:
	goto	i1l757
u492_20:
	goto	i1l3754
	line	120
	
i1l759:	
	line	121
	
i1l3754:	
	movlw	01h
u493_25:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u493_25
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
i1l3756:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u494_21
	goto	u494_20
u494_21:
	goto	i1l3762
u494_20:
	
i1l3758:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u495_21
	goto	u495_20
u495_21:
	goto	i1l3754
u495_20:
	goto	i1l3762
	
i1l761:	
	goto	i1l3762
	
i1l762:	
	line	124
	goto	i1l3762
	
i1l764:	
	line	125
	
i1l3760:	
	movlw	01h
u496_25:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u496_25

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	i1l3762
	line	127
	
i1l763:	
	line	124
	
i1l3762:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u497_21
	goto	u497_20
u497_21:
	goto	i1l3760
u497_20:
	goto	i1l757
	
i1l765:	
	goto	i1l757
	line	128
	
i1l758:	
	line	129
	
i1l757:	
	btfss	(___ftadd@sign),(7)&7
	goto	u498_21
	goto	u498_20
u498_21:
	goto	i1l3766
u498_20:
	line	131
	
i1l3764:	
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
	goto	i1l3766
	line	133
	
i1l766:	
	line	134
	
i1l3766:	
	btfss	(___ftadd@sign),(6)&7
	goto	u499_21
	goto	u499_20
u499_21:
	goto	i1l3770
u499_20:
	line	136
	
i1l3768:	
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
	goto	i1l3770
	line	138
	
i1l767:	
	line	139
	
i1l3770:	
	clrf	(___ftadd@sign)
	line	140
	
i1l3772:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u500_21
	addwf	(___ftadd@f2+1),f
u500_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u500_22
	addwf	(___ftadd@f2+2),f
u500_22:

	line	141
	
i1l3774:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u501_21
	goto	u501_20
u501_21:
	goto	i1l3780
u501_20:
	line	142
	
i1l3776:	
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
	
i1l3778:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	i1l3780
	line	145
	
i1l768:	
	line	146
	
i1l3780:	
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
	goto	i1l743
	
i1l3782:	
	line	148
	
i1l743:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	_minimo

;; *************** function _minimo *****************
;; Defined at:
;;		line 110 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  a               3    0[BANK0 ] float 
;;  b               3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
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
psect	text28,local,class=CODE,delta=2,merge=1
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	110
global __ptext28
__ptext28:	;psect for function _minimo
psect	text28
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	110
	global	__size_of_minimo
	__size_of_minimo	equ	__end_of_minimo-_minimo
	
_minimo:	
;incstack = 0
	opt	stack 2
; Regs used in _minimo: [wreg+status,2+status,0+pclath+cstack]
	line	111
	
i1l2306:	
;main.c: 111: if (a < b) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(minimo@a),w
	movwf	(___ftge@ff1)
	movf	(minimo@a+1),w
	movwf	(___ftge@ff1+1)
	movf	(minimo@a+2),w
	movwf	(___ftge@ff1+2)
	movf	(minimo@b),w
	movwf	(___ftge@ff2)
	movf	(minimo@b+1),w
	movwf	(___ftge@ff2+1)
	movf	(minimo@b+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u251_21
	goto	u251_20
u251_21:
	goto	i1l2310
u251_20:
	line	112
	
i1l2308:	
;main.c: 112: return a;
	goto	i1l142
	line	113
	
i1l141:	
	line	114
	
i1l2310:	
;main.c: 113: }
;main.c: 114: return b;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(minimo@b),w
	movwf	(?_minimo)
	movf	(minimo@b+1),w
	movwf	(?_minimo+1)
	movf	(minimo@b+2),w
	movwf	(?_minimo+2)
	goto	i1l142
	
i1l2312:	
	line	115
	
i1l142:	
	return
	opt stack 0
GLOBAL	__end_of_minimo
	__end_of_minimo:
	signat	_minimo,8315
	global	_maximo

;; *************** function _maximo *****************
;; Defined at:
;;		line 103 in file "R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
;; Parameters:    Size  Location     Type
;;  a               3    6[BANK0 ] float 
;;  b               3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
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
psect	text29,local,class=CODE,delta=2,merge=1
	line	103
global __ptext29
__ptext29:	;psect for function _maximo
psect	text29
	file	"R:\Note\Sistema I\Ultimo C no MPLAB\main.c"
	line	103
	global	__size_of_maximo
	__size_of_maximo	equ	__end_of_maximo-_maximo
	
_maximo:	
;incstack = 0
	opt	stack 2
; Regs used in _maximo: [wreg+status,2+status,0+pclath+cstack]
	line	104
	
i1l2298:	
;main.c: 104: if (a > b) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(maximo@b),w
	movwf	(___ftge@ff1)
	movf	(maximo@b+1),w
	movwf	(___ftge@ff1+1)
	movf	(maximo@b+2),w
	movwf	(___ftge@ff1+2)
	movf	(maximo@a),w
	movwf	(___ftge@ff2)
	movf	(maximo@a+1),w
	movwf	(___ftge@ff2+1)
	movf	(maximo@a+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u250_21
	goto	u250_20
u250_21:
	goto	i1l2302
u250_20:
	line	105
	
i1l2300:	
;main.c: 105: return a;
	goto	i1l138
	line	106
	
i1l137:	
	line	107
	
i1l2302:	
;main.c: 106: }
;main.c: 107: return b;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(maximo@b),w
	movwf	(?_maximo)
	movf	(maximo@b+1),w
	movwf	(?_maximo+1)
	movf	(maximo@b+2),w
	movwf	(?_maximo+2)
	goto	i1l138
	
i1l2304:	
	line	108
	
i1l138:	
	return
	opt stack 0
GLOBAL	__end_of_maximo
	__end_of_maximo:
	signat	_maximo,8315
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_trapmf
;;		_maximo
;;		_minimo
;;		_Fuzzy
;;		_trimf
;;		_min_val
;;		_max_val
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext30
__ptext30:	;psect for function ___ftge
psect	text30
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
i1l2240:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l2244
u236_20:
	line	7
	
i1l2242:	
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
	goto	u237_21
	goto	u237_22
u237_21:
	addwf	(??___ftge+0)+1,f
	
u237_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u237_23
	goto	u237_24
u237_23:
	addwf	(??___ftge+0)+2,f
	
u237_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	i1l2244
	
i1l781:	
	line	8
	
i1l2244:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l2248
u238_20:
	line	9
	
i1l2246:	
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
	goto	u239_21
	goto	u239_22
u239_21:
	addwf	(??___ftge+0)+1,f
	
u239_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u239_23
	goto	u239_24
u239_23:
	addwf	(??___ftge+0)+2,f
	
u239_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	i1l2248
	
i1l782:	
	line	10
	
i1l2248:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
i1l2250:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
i1l2252:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u240_25
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u240_25
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u240_25:
	skipnc
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l2256
u240_20:
	
i1l2254:	
	clrc
	
	goto	i1l783
	
i1l2088:	
	
i1l2256:	
	setc
	
	goto	i1l783
	
i1l2090:	
	goto	i1l783
	
i1l2258:	
	line	13
	
i1l783:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_abs

;; *************** function _abs *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\abs.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\abs.c"
	line	4
global __ptext31
__ptext31:	;psect for function _abs
psect	text31
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\abs.c"
	line	4
	global	__size_of_abs
	__size_of_abs	equ	__end_of_abs-_abs
	
_abs:	
;incstack = 0
	opt	stack 3
; Regs used in _abs: [wreg+status,2+status,0]
	line	6
	
i1l2314:	
	btfss	(abs@a+1),7
	goto	u252_21
	goto	u252_20
u252_21:
	goto	i1l612
u252_20:
	line	7
	
i1l2316:	
	comf	(abs@a),w
	movwf	(??_abs+0)+0
	comf	(abs@a+1),w
	movwf	((??_abs+0)+0+1)
	incf	(??_abs+0)+0,f
	skipnz
	incf	((??_abs+0)+0+1),f
	movf	0+(??_abs+0)+0,w
	movwf	(?_abs)
	movf	1+(??_abs+0)+0,w
	movwf	(?_abs+1)
	goto	i1l613
	
i1l2318:	
	goto	i1l613
	
i1l612:	
	line	8
	line	9
	
i1l613:	
	return
	opt stack 0
GLOBAL	__end_of_abs
	__end_of_abs:
	signat	_abs,4218
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   26[BANK0 ] unsigned int 
;;  multiplicand    2   28[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   30[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   26[BANK0 ] unsigned int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Fuzzy
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext32
__ptext32:	;psect for function ___wmul
psect	text32
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
i1l2344:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	i1l2346
	line	44
	
i1l562:	
	line	45
	
i1l2346:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u254_21
	goto	u254_20
u254_21:
	goto	i1l563
u254_20:
	line	46
	
i1l2348:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
i1l563:	
	line	47
	movlw	01h
	
u255_25:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u255_25
	line	48
	
i1l2350:	
	movlw	01h
	
u256_25:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u256_25
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u257_21
	goto	u257_20
u257_21:
	goto	i1l2346
u257_20:
	goto	i1l2352
	
i1l564:	
	line	52
	
i1l2352:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	i1l565
	
i1l2354:	
	line	53
	
i1l565:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
psect	text33,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext33
__ptext33:	;psect for function ___lwtoft
psect	text33
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
i1l2502:	
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
	goto	i1l918
	
i1l2504:	
	line	31
	
i1l918:	
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
;;  f1              3   12[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   21[BANK0 ] unsigned long 
;;  exp1            1   25[BANK0 ] unsigned char 
;;  sign1           1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[BANK0 ] long 
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
psect	text34,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext34
__ptext34:	;psect for function ___fttol
psect	text34
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
i1l2458:	
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
	goto	u283_21
	goto	u283_20
u283_21:
	goto	i1l2464
u283_20:
	line	50
	
i1l2460:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l809
	
i1l2462:	
	goto	i1l809
	
i1l808:	
	line	51
	
i1l2464:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u284_25:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u284_20:
	addlw	-1
	skipz
	goto	u284_25
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
i1l2466:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l2468:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
i1l2470:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
i1l2472:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
i1l2474:	
	btfss	(___fttol@exp1),7
	goto	u285_21
	goto	u285_20
u285_21:
	goto	i1l2484
u285_20:
	line	57
	
i1l2476:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u286_21
	goto	u286_20
u286_21:
	goto	i1l2482
u286_20:
	line	58
	
i1l2478:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l809
	
i1l2480:	
	goto	i1l809
	
i1l811:	
	goto	i1l2482
	line	59
	
i1l812:	
	line	60
	
i1l2482:	
	movlw	01h
u287_25:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u287_25

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u288_21
	goto	u288_20
u288_21:
	goto	i1l2482
u288_20:
	goto	i1l2494
	
i1l813:	
	line	62
	goto	i1l2494
	
i1l810:	
	line	63
	
i1l2484:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u289_21
	goto	u289_20
u289_21:
	goto	i1l2492
u289_20:
	line	64
	
i1l2486:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l809
	
i1l2488:	
	goto	i1l809
	
i1l815:	
	line	65
	goto	i1l2492
	
i1l817:	
	line	66
	
i1l2490:	
	movlw	01h
	movwf	(??___fttol+0)+0
u290_25:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u290_25
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	i1l2492
	line	68
	
i1l816:	
	line	65
	
i1l2492:	
	movf	(___fttol@exp1),f
	skipz
	goto	u291_21
	goto	u291_20
u291_21:
	goto	i1l2490
u291_20:
	goto	i1l2494
	
i1l818:	
	goto	i1l2494
	line	69
	
i1l814:	
	line	70
	
i1l2494:	
	movf	(___fttol@sign1),w
	skipz
	goto	u292_20
	goto	i1l2498
u292_20:
	line	71
	
i1l2496:	
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
	goto	i1l2498
	
i1l819:	
	line	72
	
i1l2498:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	i1l809
	
i1l2500:	
	line	73
	
i1l809:	
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
;;  f1              3   50[BANK0 ] float 
;;  f2              3   53[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   61[BANK0 ] unsigned um
;;  sign            1   65[BANK0 ] unsigned char 
;;  cntr            1   64[BANK0 ] unsigned char 
;;  exp             1   60[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] float 
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
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext35
__ptext35:	;psect for function ___ftmul
psect	text35
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
i1l2408:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
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
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l2414
u269_20:
	line	68
	
i1l2410:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l789
	
i1l2412:	
	goto	i1l789
	
i1l788:	
	line	69
	
i1l2414:	
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
	goto	u270_21
	goto	u270_20
u270_21:
	goto	i1l2420
u270_20:
	line	70
	
i1l2416:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l789
	
i1l2418:	
	goto	i1l789
	
i1l790:	
	line	71
	
i1l2420:	
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
u271_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u271_20:
	addlw	-1
	skipz
	goto	u271_25
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
u272_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u272_20:
	addlw	-1
	skipz
	goto	u272_25
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
	
i1l2422:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
i1l2424:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
i1l2426:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
i1l2428:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
i1l2430:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l2432
	line	135
	
i1l791:	
	line	136
	
i1l2432:	
	btfss	(___ftmul@f1),(0)&7
	goto	u273_21
	goto	u273_20
u273_21:
	goto	i1l2436
u273_20:
	line	137
	
i1l2434:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u274_21
	addwf	(___ftmul@f3_as_product+1),f
u274_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u274_22
	addwf	(___ftmul@f3_as_product+2),f
u274_22:

	goto	i1l2436
	
i1l792:	
	line	138
	
i1l2436:	
	movlw	01h
u275_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u275_25

	line	139
	
i1l2438:	
	movlw	01h
u276_25:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u276_25
	line	140
	
i1l2440:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u277_21
	goto	u277_20
u277_21:
	goto	i1l2432
u277_20:
	goto	i1l2442
	
i1l793:	
	line	143
	
i1l2442:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l2444
	line	144
	
i1l794:	
	line	145
	
i1l2444:	
	btfss	(___ftmul@f1),(0)&7
	goto	u278_21
	goto	u278_20
u278_21:
	goto	i1l2448
u278_20:
	line	146
	
i1l2446:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u279_21
	addwf	(___ftmul@f3_as_product+1),f
u279_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u279_22
	addwf	(___ftmul@f3_as_product+2),f
u279_22:

	goto	i1l2448
	
i1l795:	
	line	147
	
i1l2448:	
	movlw	01h
u280_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u280_25

	line	148
	
i1l2450:	
	movlw	01h
u281_25:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u281_25

	line	149
	
i1l2452:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u282_21
	goto	u282_20
u282_21:
	goto	i1l2444
u282_20:
	goto	i1l2454
	
i1l796:	
	line	156
	
i1l2454:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	i1l789
	
i1l2456:	
	line	157
	
i1l789:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Fuzzy
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext36
__ptext36:	;psect for function ___awtoft
psect	text36
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l2396:	
	clrf	(___awtoft@sign)
	line	37
	
i1l2398:	
	btfss	(___awtoft@c+1),7
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l2404
u268_20:
	line	38
	
i1l2400:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
i1l2402:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	i1l2404
	line	40
	
i1l717:	
	line	41
	
i1l2404:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	i1l718
	
i1l2406:	
	line	42
	
i1l718:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
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
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext37
__ptext37:	;psect for function ___ftpack
psect	text37
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 1
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l2092:	
	movf	(___ftpack@exp),w
	skipz
	goto	u192_20
	goto	i1l2096
u192_20:
	
i1l2094:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u193_21
	goto	u193_20
u193_21:
	goto	i1l2102
u193_20:
	goto	i1l2096
	
i1l723:	
	line	65
	
i1l2096:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l724
	
i1l2098:	
	goto	i1l724
	
i1l721:	
	line	66
	goto	i1l2102
	
i1l726:	
	line	67
	
i1l2100:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u194_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u194_25

	goto	i1l2102
	line	69
	
i1l725:	
	line	66
	
i1l2102:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u195_21
	goto	u195_20
u195_21:
	goto	i1l2100
u195_20:
	goto	i1l728
	
i1l727:	
	line	70
	goto	i1l728
	
i1l729:	
	line	71
	
i1l2104:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l2106:	
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
	
i1l2108:	
	movlw	01h
u196_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u196_25

	line	74
	
i1l728:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u197_21
	goto	u197_20
u197_21:
	goto	i1l2104
u197_20:
	goto	i1l2112
	
i1l730:	
	line	75
	goto	i1l2112
	
i1l732:	
	line	76
	
i1l2110:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u198_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u198_25
	goto	i1l2112
	line	78
	
i1l731:	
	line	75
	
i1l2112:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u199_21
	goto	u199_20
u199_21:
	goto	i1l2110
u199_20:
	
i1l733:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u200_21
	goto	u200_20
u200_21:
	goto	i1l734
u200_20:
	line	80
	
i1l2114:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l734:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l2116:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u201_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u201_20:
	addlw	-1
	skipz
	goto	u201_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l2118:	
	movf	(___ftpack@sign),w
	skipz
	goto	u202_20
	goto	i1l735
u202_20:
	line	84
	
i1l2120:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l735:	
	line	85
	line	86
	
i1l724:	
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
