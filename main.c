// Declara��o das configura��es e funcionalidades do PIC.
#include "config.h"

// Declara��o das bibliotecas padr�o da linguagem C.
#include <stdio.h>
#include <stdlib.h>		// comando ftoa().

// Declara��o das bibliotecas com as configura��es e funcionalidades do PIC.
#include "usart.h"
#include "adc.h"
#include "timers.h"
#include "lcd.h"
#include "i2c.h"
// #include "spi.h"
// #include "eeprom.h"
#include "pwm.h"

//Vari�veis Globais de Controle.
unsigned short ADCResult = 0;

//Configura��es para formata��o de dados de sa�da.
unsigned char display_rpm[10];
// unsigned char display_pwm[10];
unsigned char buffer[7];
int status = 0;
unsigned int pas_cooler = 7;
unsigned int pulsos = 0;
unsigned int rpm = 0;
unsigned int pwm = 50;
unsigned int deltaV = 0;
unsigned int setpointUI = 0;

unsigned int contagens_tm0 = 0;


// INICIO FUZZY
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------


float x=0;
float y=0;


// Variáveis Fuzzy.
float fitemp = 0;
float fop_rule1 = 0;
float fop_rule2 = 0;
float fop_rule3 = 0;

// Variáveis de auxilio ao cálculo da centróide.
float sum = 0;
float total_area = 0;
float ativa_fan = 0;

// Entradas para o sistema.
float tf = 50;
float setpoint = 20;

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

//---------------------------------------------------------------------
// Montagem do buffer de dados 
void send()
{

  //Monta pacote de dados buffer
  buffer[0] = '#';
  buffer[1] = '$';
  buffer[2] = ':';

  // Conversao para char
  buffer[3] = (rpm >> 8) & 0xFF;
  buffer[4] = rpm & 0xFF;
  buffer[5] = 0;

  unsigned char checksum = 0x00;
  for (unsigned char index = 0; index < 6; index++)
  {
    USART_WriteChar(buffer[index]);
    checksum ^= buffer[index];
  }
  buffer[6] = checksum;
  USART_WriteChar(buffer[6]);
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
{   // passos para a execução do problema
/*passos
  1 - fuzzificação das entradas
  2 - operadores fuzzy
  3 - métodos de implicação
  4 - métodos de agregação
  5 - defuzzificação das saídas (centróide)

*/
	// Converte variavel recebida de int para float
	setpoint = (float)setpointUI;
	float deltaRpm = 0;

	// Variavel para indicar se esta reduzindo ou aumentando
	unsigned int freio = 0;
	// Variaveis de fuzzy
		// setpoint	--- Definido
		// deltaRpm	--- Diferença
		// rpm		--- Atual

	float mantem = 0;
	float reduz = 0;
	float aumenta = 0;
	float tip;
	fitemp = 0;

	//  calculo do erro para o setpoint
	deltaRpm = (setpoint - tf);//
	deltaRpm = (deltaRpm/100);
	
	deltaV = deltaRpm;
	
	if (deltaRpm <0)
	{
			if(PORTBbits.RB1 == 0)
			{
				PORTBbits.RB1 = 1;
			}else{
				PORTBbits.RB1 = 0;
			}

		 deltaRpm = deltaRpm*-1;
		 freio = 1;
	}
	//Limites (valores acima recebem o maximo...)
	if (deltaRpm >90) deltaRpm = 90;

	// 1ª regra - If delta é menor e esta lento - fica mais pouco lento 
	if (deltaRpm < 25)
	{

		// 1 - Reduz as velocidades.
		// [0 0 13 32.4]
		fitemp = trapmf(deltaRpm, 0,0,13,32);

		// 2 - Aplicação dos operadores Fuzzy.
		fop_rule1 = max_val(fitemp,0.1);

		//3 - Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;
		for (int a=0; a<=90; a++)
		{
			y = trapmf(x,0,0,13,32);

			if (y > fop_rule1)
			{
				reduz += fop_rule1;
			}
			else
			{
				reduz += y;
			}

			x=x+1;
		}

	}



	// 2ª regra - If deltaRpm is na faixa de diferenca é meida e esta lento - fica mais na mesma 
	//  [9 45 81]
	if ((deltaRpm > 20) && (deltaRpm < 70))
	{

		// 1 - Fuzzificar as entradas.
		fitemp = trimf(deltaRpm, 9, 45, 81);

		// 2 - Aplicação dos operadores Fuzzy.
		fop_rule2 = max_val(fitemp,0.1);

		 // 3 - Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;
		for (int a=0; a<=90; a++)
		{
			y = trimf(x, 9, 45, 81);

			if (y >= fop_rule2)
			{
				mantem += fop_rule2;
			}
			else
			{
				mantem += y;
			}

			x=x+1;
		}

	}



	// 3ª regra - If deltaRpm is acima  e esta lento - aumentaa velocidade
	// [62 79 90 90]
	if (deltaRpm > 70 )
	{
	
		// 1 - Fuzzificar as entradas.
		fitemp = trapmf(deltaRpm, 62, 79, 90, 90);
//		fiFood    = trapmf(food,7,9,10,10);

		// 2 - Aplicação dos operadores Fuzzy.
		fop_rule3 = max_val(fitemp,0.1);

		// 3 - Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;
		for (int a=0; a<=90; a++)
		{
			y = trapmf(x, 62, 79, 90, 90);

			if (y >= fop_rule3)
			{
				aumenta += fop_rule3;
			}
			else
			{
				aumenta += y;
			}

			x=x+1;
		}

	}

	// 4 - Aplicação do Método de Agregação.
	if (deltaRpm < 25)
	{
		tip = reduz;
	}else
	if (deltaRpm >= 25 && deltaRpm < 75)
	{
		tip = mantem;
	}else
	{
		tip = aumenta;
	}

	// 5 - desfuzifica
	total_area = 90;
	sum = 0;	
	sum = sum + tip;

	// Cálculo da Centróide.
	ativa_fan = sum/total_area;

	// Normaliza valores para o duty_cicle
	ativa_fan = ativa_fan*100;
	// deltaV = (unsigned int)ativa_fan;

	// Envia o valor calculado para o duty cicle pwm
	if (freio = 1)
	{	
		if ((tf + deltaV) >0 && (tf + deltaV) < 1020)
		{
			PWM_DutyCycle2(tf + deltaV);
		}
	}else 
	{
		if ((tf - deltaV) >0 && (tf - deltaV) < 1020)
		{
			PWM_DutyCycle2(tf - deltaV);
		}
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
		if (USART_ReceiveChar() == '0')
		{
			USART_WriteString("\n\rdesligado\n\r");
			//pwm = 0;
			PWM_DutyCycle2(0);
			return;
		}

		if (USART_ReceiveChar() == '1')
		{
			setpointUI = 720;
			// PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '2')
		{
			setpointUI = 1450;
			// PWM_DutyCycle2(pwm);			
		}

		if (USART_ReceiveChar() == '3')
		{
			setpointUI = 2828;
			// PWM_DutyCycle2(pwm);
		}
		
		if (USART_ReceiveChar() == '4')
		{
			setpointUI = 3256;
			//PWM_DutyCycle2(setpointUI);			
		}

		if (USART_ReceiveChar() == '5')
		{
			setpointUI = 4510;
			// PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '6')
		{
			setpointUI = 5760;
			//PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '7')
		{
			setpointUI = 6890;
			// PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '8')
		{
			setpointUI = 8100;
			// PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '9')
		{
			setpointUI = 9000;
			//PWM_DutyCycle2(pwm);
		}


		// No fim das condições manda o sinal para a função fuzzy
		Fuzzy();
		tf = (setpointUI - 100);		

		// Apresenta as informacoes na USART.
		if(USART_ReceiveChar() == 'X')
		{
			send();
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

	// Configura��es do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;
	
	// Inicializa��o dos perif�ricos do microcontrolador.
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
		sprintf(display_rpm,"%03d", rpm);		

     	// Apresenta as informacoes no LCD.
		LCD_Clear();
		LCD_Cursor(0,0);
		LCD_WriteString("kmH: ");
		LCD_Cursor(0,6);
		LCD_WriteString(display_rpm);
		// LCD_Cursor(1,0);
		// LCD_WriteString("Delta: ");
		LCD_Cursor(1,6);
		// LCD_WriteString(display_pwm);

		__delay_ms(200);
	}
}
