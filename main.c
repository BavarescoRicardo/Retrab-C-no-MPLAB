// Declara��o das configura��es e funcionalidades do PIC.
#include "config.h"

// Declara��o das bibliotecas padr�o da linguagem C.
#include <stdio.h>
#include <stdlib.h>		// comando ftoa().

// Declara��o das bibliotecas com as configuracoes e funcionalidades do PIC.
#include "usart.h"
#include "adc.h"
#include "timers.h"
#include "lcd.h"
#include "i2c.h"
// #include "spi.h"
// #include "eeprom.h"
#include "pwm.h"

//Variaveis Globais de Controle.
unsigned short ADCResult = 0;

//Configuracoes para formatacao de dados de saida.
// unsigned char display_rpm[10];
// unsigned char display_pwm[10];
unsigned char buffer[13];
unsigned char bufferRecebido[7];
unsigned char lendo = 'N';
int status = 0;
unsigned int pas_cooler = 7;
unsigned int pulsos = 0;
unsigned int rpm = 0;
unsigned int pwm = 1;
unsigned int indicebuffer = 0;
unsigned int cruzeiroVel = 0;
unsigned char cruzeiroSet = 'N';

unsigned int contagens_tm0 = 0;


// INICIO FUZZY
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------


int x=0;
int y=0;


// Variáveis Fuzzy.
float fitemp = 0;
float rulemedio = 0;
float rulepequeno = 0;
float rulegrande = 0;

// Variáveis de auxilio ao cálculo da centróide.
float sum = 0;
float total_area = 0;
float ativa_fan = 0;

// Entradas para o sistema.
float antigo = 0;
// Entradas em int 
unsigned int deltaV = 0;
unsigned int setpointUI = 0;
unsigned int antigoUI = 0;

//---------------------------------------------------------------------

// Função Triangular
float trimf(float x, float a, float b, float c)
{
	float ua = 0;

	if (x <= a)
		ua = 0;
	else if ((a < x) && (x <= b))
		ua = ((x - a) / (b - a));
	else if ((b < x) && (x <= c))
		ua = ((x - c) / (b - c));
	else if (x > c)
		ua = 0;

	return(ua);
}

//---------------------------------------------------------------------

// Função Trapezoidal
float trapmf(float x, float a, float b, float c, float d)
{
	float ua = 0;

	if (x <= a)
		ua = 0;
	else if ((a < x) && (x <= b))
		ua = ((x - a) / (b - a));
	else if ((b <= x) && (x <= c))
		ua = 1;
	else if ((c < x) && (x <= d))
		ua = ((d - x) / (d - c));
	else if (x > d)
		ua = 0;

	return(ua);
}

float maximo(float a, float b) {
  if (a > b) {
    return a;
  }
  return b;
}

float minimo(float a, float b) {
  if (a < b) {
    return a;
  }
  return b;
}

//---------------------------------------------------------------------
// Montagem do buffer de dados 
void enviabuffer()
{
	//Monta pacote de dados buffer
	buffer[0] = '#';
	buffer[1] = '$';
	buffer[2] = ':';

	// unsigned int velocidade = rpm * 40;
	// Conversao para char	rpm  
	buffer[3] = (rpm >> 8) & 0xFF;
	buffer[4] = rpm & 0xFF;
	buffer[5] = 'V';

	// Conversao para char	setpoint  
	buffer[6] = (setpointUI >> 8) & 0xFF;
	buffer[7] = setpointUI & 0xFF;
	buffer[8] = 'S';

	// Conversao para char	delta  
	buffer[9] = (deltaV >> 8) & 0xFF;
	buffer[10] = deltaV & 0xFF;
	buffer[11] = 'S';

	unsigned char checksum = 0x00;
	for (unsigned char index = 0; index < 12; index++)
	{
	USART_WriteChar(buffer[index]);
	checksum ^= buffer[index];
	}
	buffer[12] = checksum;
	USART_WriteChar(buffer[12]);
}

float min_val(float a, float b)
{
	if (a < b)
		return a;
	else
		return b;
}

//---------------------------------------------------------------------

float max_val(float a, float b)
{
	if (a > b)
		return a;
	else
		return b;
}


//---------------------------------------------------------------------------


void Fuzzy()
{   // Faz as coisas nebulosas
/*
  1 - fuzzificação das entradas
  2 - operadores fuzzy
  3 - métodos de implicação
  4 - métodos de agregação
  5 - defuzzificação das saídas (centróide)
*/

	deltaV = minimo(abs(setpointUI - rpm), 2000);
	int delta = maximo(minimo(abs(deltaV - antigoUI), 1000), 1);
	float x = 0;
	float rule = 0;

	// 1 regra - Se delta alto, entao o reajuste  baixo
	if (deltaV <= 100) {
		// Fuzzificar as entradas e aplicacao dos operadores
		rule = trapmf(deltaV, -1, 0, 1, 100);

		x = 0;
		for (int a = 0; a <= 15; a++) {
			rulepequeno = trapmf(x, -1, 0, 0, 5);
			if (rulepequeno >= rule) {
			rulepequeno = rule;
			}

			x += 1;
		}
	}

	// 2 regra - Se a delta  media e esta em ajuste baixo
	if (deltaV >= 100 && deltaV <= 1001 && delta <= 200) 
	{
		// Fuzzificar as entradas e aplicacao dos operadores
		rule = trapmf(deltaV, 50, 800, 800, 1550) *	(1 - trapmf(delta, -1, 0, 1, 200));

		x = 0;
		for (int a = 0; a <= 15; a++) {
			rulepequeno = trapmf(x, 2, 5, 5, 10);
			if (rulepequeno >= rule) {
			rulepequeno = rule;
			}

			x += 1;
		}
	}

	// 3 regra - Se delta medio e esta em ajuste alto, o reajuste
	if (deltaV >= 100 && deltaV <= 1001 && delta >= 201) 
	{
		// Fuzzificar as entradas e aplica��o dos operadores
		rule = trapmf(deltaV, 50, 800, 800, 1550) *
				trapmf(delta, 200, 500, 2000, 2001);

		x = 0;
		for (int a = 0; a <= 15; a++) {
			rulemedio = trapmf(x, 2, 5, 5, 10);

			if (rulemedio >= rule) {
			rulemedio = rule;
			}

			x += 1;
		}
	}

	// 4 regra - Se a delta baixa, entao o reajuste  alto
	if (deltaV >= 1001) 
	{
		// Fuzzificar as entradas e aplicacao dos operadores
		rule = trapmf(deltaV, 1001, 1500, 2000, 2001);

		x = 0;
		for (int a = 0; a <= 15; a++) {
			rulegrande = trapmf(x, 5, 10, 15, 16);

			if (rulegrande >= rule) {
			rulegrande = rule;
			}

			x += 1;
		}
	}

	// Aplicacao do Metodo de agregacao e implicacao
	x = 0;
	float total_area = 0;
	float soma = 0;
	for (int a = 0; a <= 15; a++) 
	{
		if (a >= 0 && a <= 5) {
			total_area += rulepequeno;
			soma += (x * rulepequeno);
		}

		if (a >= 5 && a <= 10) {
			total_area += rulemedio;
			soma += (x * rulemedio);
		}

		if (a >= 10 && a <= 15) {
			total_area += rulegrande;
			soma += (x * rulegrande);
		}
		x += 1;
	}

	// Calculo da Centroide.
	float reajuste = 0;
	if (total_area != 0) 
	{
		reajuste = soma / total_area;
	}

	// vAnterior + erro * (sentido) entre um maximo de 1023 e um minimo de 0
	pwm = maximo(minimo(pwm + ((int)minimo(reajuste, deltaV)) * (setpointUI > rpm ? 1 : -1), 1023), 0);
	
	// Garante que seja enviado um valor aceitavel ao DutyCycle
	if(pwm > 0 && pwm < 1024)
	{
		PWM_DutyCycle2(pwm);
	}

}

//---------------------------------------------------------------------------

	//FIM FUZZY
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
void interrupt ISR(void)
{	
	// Tratamento da interrupcao do buffer de recepcaoo.
	if (PIR1bits.RCIF)
	{	
		// recebe um buffer caractere por caractere via magica
    	unsigned char byte = USART_ReceiveChar();
		if (byte == '#')
		{
			indicebuffer = 0;
			lendo = 'S';
			PORTBbits.RB0 = 1;
			bufferRecebido[indicebuffer] = byte;
		} else  if(lendo == 'S'){
			indicebuffer++;
			bufferRecebido[indicebuffer] = byte;
		}		

		if (indicebuffer >= 6 && lendo == 'S') {
			indicebuffer = 0;			
			lendo == 'N';			
			if (bufferRecebido[0] == '#' && bufferRecebido[1] == '$' && bufferRecebido[2] == ':') {
				// Se buffer esta nos conformes - entao define setpoint e zera os anteriores
				antigoUI = 0;
				deltaV = 0;
				PORTBbits.RB2 = 1;

				setpointUI = (bufferRecebido[3] << 8) + (bufferRecebido[4]);				
				
				// // se recebido gira o cooler
				// if (setpointUI > 1000)
				// {
				// 	PWM_DutyCycle2(880);
				// 	PORTBbits.RB0 = 0;
				// }else{					
				// 	PORTBbits.RB1 = 1;
				// }			
			}			
		}
	

		if (USART_ReceiveChar() == '0' && lendo == 'N')
		{
			USART_WriteString("\n\rfreio\n\r");
			//pwm = 0;
			PWM_DutyCycle2(0);
			cruzeiroSet = 'N';
			return;
		}


		// Se o cruzeiroVel foi setado entao não deixa atualizar valores
		if((USART_ReceiveChar() == 'S' || cruzeiroSet == 'S') && (lendo == 'N'))
		{
			setpointUI = antigoUI;
			cruzeiroVel = setpointUI; 
			cruzeiroSet = 'S';
		}else if(USART_ReceiveChar() == 'R' && cruzeiroSet == 'S' && lendo == 'N')
		{
			setpointUI += 150;
			cruzeiroVel = setpointUI; 
		}else if(USART_ReceiveChar() == 'R' && cruzeiroSet == 'N' && lendo == 'N')
		{
			setpointUI = antigoUI;
			cruzeiroVel = setpointUI; 
			cruzeiroSet = 'S';
		}

		// No fim das condições manda o sinal para a função fuzzy
		if (lendo == 'N')
		{
			Fuzzy();
			antigoUI = setpointUI;		
		}

		// Apresenta as informacoes na USART.
		if(lendo == 'N')
		{
			enviabuffer();
		}
		// Flag de status da Interrupcao do buffer de recepcao da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrupcao do conversor A/D.
	if (PIR1bits.ADIF)
	{
		// Caso a interrupcao seja ativada a manipulacao dos dados pode ser feita aqui!	

		// Limpa a flag da interrupcao do conversor A/D.
		PIR1bits.ADIF = 0;	
	}

	// Tratamento da interrupcao do Timer0.
	// Controle da Interrupcao do TIMER0.
	if (INTCONbits.T0IF)
	{
		// Carrega o valor equivalente a contagens de 1ms.
		TIMER0_Set(238);

		// Controle do n�mero de contagens de tempo.
		if (contagens_tm0 < 499)		// (n-1) n=10ms, n=20ms, n=500ms
		{	
			// Vari�vel de controle/incremento do periodo de tempo.  	
			contagens_tm0++;

     		// Vari�veis de controle (nivel alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Vari�vel de controle do periodo de tempo.
			contagens_tm0 = 0;

			// Calculo das rotacaes por minuto.
			pulsos = (TMR1H << 8) + TMR1L;
			rpm = ((pulsos / pas_cooler) * 120);
			
			// Transforma rpm em km/h
				// cada 40 rpm sera 1 km
			// rpm = rpm / 40;

			// Limpa registrador para nova contagem.
			TMR1L = 0x00;
			TMR1H = 0x00;

			// Variaveis de controle (nivel baixo).
			PORTBbits.RB6 = 0;
		}

		// Resetar a flag do Timer0 para uma nova contagem.
		INTCONbits.T0IF = 0;
	}		

	// Tratamento da interrupcao do Timer1.
	if (PIR1bits.TMR1IF) 
	{
		// Caso a interrupcao seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Resetar a flag do Timer1 para uma nova contagem.
        PIR1bits.TMR1IF = 0;		
	}

	// Tratamento da interrupcao da SPI.
	if (PIR1bits.SSPIF) 
	{
		// Caso a interrupcao seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Resetar a flag do SPI para uma nova contagem.
        PIR1bits.SSPIF = 0;		
	}
}

//-----------------------------------------------------------------------------
void main(void)
{
    TRISA = 0b00000001;		// Configuracao dos canais do PORTA.
    PORTA = 0b00000001;  	// Inicializacao dos canais do PORTA.
    TRISB = 0b00000000;		// Configuracao das entradas/saidas do PORTB (RB4 e RB5 PWM).
    PORTB = 0b00000000;  	// Inicializacao das entradas/saidas do PORTB.
	TRISC = 0b10000001;		// Configuracao do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
    PORTC = 0b11000000; 	// Inicializacao dos pinos RX e TX em n�vel alto (Modo IDLE).
    TRISD = 0b00000000;		// Configuracao das entradas/saidas do PORTD.		
    PORTD = 0b00000000;  	// Inicializacao das das entradas/saidas do PORTD.
    TRISE = 0b00000000;		// Configuracao dos canais do PORTE.
    PORTE = 0b00000000;  	// Inicializacao dos canais do PORTE.

	// Configuracoes do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;
	
	// Inicializacao dos perifericos do microcontrolador.
	USART_Init(115200);		// Inicializacao do  USART.
	TIMER0_Init();			// Inicializacao do  do Timer0.
	ADC_Init();				// Inicializacao do  do conversor A/D.
	PWM_Init();	 			// 1.125khz, prescaler 16, 1024 passos.
	LCD_Init();				// Inicializacao do LCD.
	
	// Ativacao das interrupces do microcontrolador.
	INTCONbits.PEIE	= 1;	// Habilita Interrupcao de Perif�ricos do Microcontrolador.
	INTCONbits.GIE	= 1;	// Habilita Interrupcao Global.

	// Rotinas do USART.
 	// USART_WriteString("Inicializando o PIC16F877A\n\r");
 	// USART_WriteString("USART: 115.200bps\n\r");

	// Rotinas do LCD.
	LCD_Init();								// Inicializacao do LCD.
	LCD_Cursor(0,0);						// Posicionamento da string na linha 0 e coluna 0;
	LCD_WriteString("Inicializando...");	// Escrita da string no LCD.

	// Inicia os m�dulos PWM desligados.
	PWM_DutyCycle1(0);
	PWM_DutyCycle2(0);

	// Seta o TIMER 0 para estouro de 1 em 1ms.
	TIMER0_Set(238);

	// Delay para estabilizacao.
	__delay_ms(1000);

	// La�o principal do firmware.
	while(1)
	{
		
		//sprintf(display_rpm,"%04d", deltaV);
		//sprintf(display_rpm,"%04d", rpm);		

     	// Apresenta as informacoes no LCD.
		LCD_Clear();
		LCD_Cursor(0,0);
		LCD_WriteString("kmH: ");
		// LCD_Cursor(0,6);
		// LCD_WriteString(display_rpm);
		LCD_Cursor(1,0);
		// LCD_WriteString("Delta: ");
		//LCD_Cursor(1,6);
		// LCD_WriteString(display_pwm);

		__delay_ms(200);
	}
}
