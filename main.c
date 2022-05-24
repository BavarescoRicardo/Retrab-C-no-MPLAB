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
#include "spi.h"
#include "eeprom.h"
#include "pwm.h"

//Vari�veis Globais de Controle.
unsigned short ADCResult = 0;
unsigned int temp_lida = 0;

//Configura��es para formata��o de dados de sa�da.
unsigned char display_rpm[10];
unsigned char display_pwm[10];
int status = 0;
unsigned int pas_cooler = 7;
unsigned int pulsos = 0;
unsigned int rpm = 0;
unsigned int pwm = 0;
unsigned int pwmAnt = 0;


unsigned int contagens_tm0 = 0;
unsigned int contador_rb6 = 0;
unsigned int tempo_rb6 = 0;



// INICIO FUZZY
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------

unsigned int ideal;
unsigned int tip_average;
unsigned int tip_gorgeous;
unsigned int tip;

unsigned int x=0;
unsigned int y=0;
unsigned int posicao_do_grafico = 0;
unsigned int posicao_do_grafico_food = 0;
unsigned int posicao_do_grafico_service = 0;

// Variáveis Fuzzy.
unsigned int fitemp = 0;
unsigned int fisetpoint    = 0;
unsigned int foTip     = 0;
unsigned int fop_rule1 = 0;
unsigned int fop_rule2 = 0;
unsigned int fop_rule3 = 0;

// Variáveis de auxilio ao cálculo da centróide.
unsigned int sum = 0;
unsigned int total_area = 0;
unsigned int ativa_fan = 0;


// Entradas para o sistema.
unsigned int temp = 0;
unsigned int tf = 20;
unsigned int derro = 0;
//unsigned int setpoint = 20;

//---------------------------------------------------------------------

// Função Triangular
unsigned int trimf(unsigned int x, unsigned int a, unsigned int b, unsigned int c)
{
	unsigned int ua = 0;

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
unsigned int trapmf(unsigned int x, unsigned int a, unsigned int b, unsigned int c, unsigned int d)
{
	unsigned int ua = 0;

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

unsigned int min_val(unsigned int a, unsigned int b)
{
	if (a < b)
		return a;
	else
		return b;
}

//---------------------------------------------------------------------

unsigned int max_val(unsigned int a, unsigned int b)
{
	if (a > b)
		return a;
	else
		return b;		
}


void Fuzzy(unsigned int setpoint)
{   // passos para a execução do problema
/*passos
  1 - fuzzificação das entradas
  2 - operadores fuzzy
  3 - métodos de implicação
  4 - métodos de agregação
  5 - defuzzificação das saídas (centróide)
  6 - simulação da parte gráfica das funções e processos
*/

   fitemp =0;
   //									setpoint = FmFuzzy->tbsetpoint->Position;


   //  calculo do erro para o setpoint
   
    = (pwmAnt - setpoint);//*0.1;

   //Limites (valores acima recebem o maximo...)
   if (temp >10) temp = 10;
   if (temp <0) temp = 0;
   //posicao_do_grafico_service = temp;

	// 1ª regra - If temp is < (2.5 + setpoint)
	if (temp < 2.5)
	{
		// 1 - Fuzzificar as entradas.
		fitemp 	= trapmf(temp,-1,0,1.5,3);

		// 2 - Aplicação dos operadores Fuzzy.
		fop_rule1 = max_val(fitemp,0.1);

		//3 - Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;

		y = trapmf(x,-1,0,1.5,3);

		if (y > fop_rule1)
		{
			ideal  = fop_rule1;
		}
		else
		{
			ideal  = y;
		}		 

	}


	// 2ª regra - If temp is acima do ideal
	if ((temp > 2) && (temp < 7))
	{
		// 1 - Fuzzificar as entradas.
		fitemp = trimf(temp,2,5,8);

		// 2 - Aplicação dos operadores Fuzzy.
		fop_rule2 = max_val(fitemp,0.1);

		 // 3 - Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;

		y = trimf(x,2,5,8);

		if (y >= fop_rule2)
		{
			tip_average  = fop_rule2;
		}
		else
		{
			tip_average  = y;
		}

		 	
	}


	// 3ª regra - If temp is acima do toleravel
	if (temp > 7 )
	{
		// 1 - Fuzzificar as entradas.
		fitemp = trapmf(temp,6,8.5,10,11);
//		fiFood    = trapmf(food,7,9,10,10);

		// 2 - Aplicação dos operadores Fuzzy.
		fop_rule3 = max_val(fitemp,0.1);

		// 3 - Aplicação do Método de Implicação (valores mínimos).
		x=0;
		y=0;

		y = trapmf(x,7,8.5,10,11);

		if (y >= fop_rule3)
		{
			tip_gorgeous  = fop_rule3;
		}
		else
		{
			tip_gorgeous  = y;
		}
		 
	}


	// 4 - Aplicação do Método de Agregação.
	if (temp < 2.5)
	{
		tip  = ideal ;
	}

	if (temp >= 2.5 && temp < 7.5)
	{
		tip  = tip_average ;
	}

	if (temp >= 7.5 && temp <= 10)
	{
		tip  = tip_gorgeous;
	}
	

	// Implicação dos antecedentes pelo consequente.
	// 5 - defuzzificação da saida
				// total_area = 0;
				// unsigned int sum = 0;

				// total_area = total_area + tip ;
				// sum = tip;
				
				

				// // Cálculo da Centróide.
				// ativa_fan = sum/total_area;	

				

	// //   6 - simulação da parte gráfica das funções e processos
	// for (int a=0; a<=10; a++)
	// {
	// 	FmFuzzy->Chart4->Series[0]->YValues->Value[a] = tip ;
	// }

	// FmFuzzy->Chart3->Refresh();
	// FmFuzzy->Chart4->Refresh();


	char velocidade[1];
	// Controle dos eventos
	if(ativa_fan <= 2.5 )
	{
	// 	 FmFuzzy->fan->Caption = unsigned intToStrF(0,ffFixed,10,2);
       	velocidade[0] =  '0';
	}
	if(ativa_fan > 2.5 && ativa_fan < 7.5)
	{
	// 	 FmFuzzy->fan->Caption = unsigned intToStrF(50,ffFixed,10,2);
	 	velocidade[0] =  '7';
	}

	if(ativa_fan >= 7.5)
	{
	//  FmFuzzy->fan->Caption = unsigned intToStrF(100,ffFixed,10,2);
		velocidade[0] =  '9';
	}

	// Passa o resultado final para o pwm
	//PWM_DutyCycle2(fitemp*110);
	//pwm = fitemp*110;
}


//---------------------------------------------------------------------------

	//FIM FUZZY
//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
void interrupt ISR(void)
{
	// Tratamento da interrup��o do buffer de recep��o.
	if (PIR1bits.RCIF)
	{
		pwmAnt = pwm;
		if (USART_ReceiveChar() == '0')
		{
			USART_WriteString("\n\rdesligado\n\r");
			pwm = 0;
			PWM_DutyCycle2(pwm);
			
		}

		if (USART_ReceiveChar() == '1')
		{
			USART_WriteString("\n\rpwm = 32\n\r");
			pwm = 32;
			// PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '2')
		{
			USART_WriteString("\n\rpwm = 64\n\r");
			pwm = 64;
			// PWM_DutyCycle2(pwm);			
		}

		if (USART_ReceiveChar() == '3')
		{
			USART_WriteString("\n\rpwm = 128\n\r");
			pwm = 128;
			// PWM_DutyCycle2(pwm);
			if(PORTBbits.RB0 == 0)
			{
				PORTBbits.RB0 = 1;
			}else{
				PORTBbits.RB0 = 0;
			}
		}
		
		if (USART_ReceiveChar() == '4')
		{
			USART_WriteString("\n\rpwm = 256\n\r");
			pwm = 256;
			// PWM_DutyCycle2(pwm);
			if(PORTBbits.RB1 == 0)
			{
				PORTBbits.RB1 = 1;
			}else{
				PORTBbits.RB1 = 0;
			}			
		}

		if (USART_ReceiveChar() == '5')
		{
			USART_WriteString("\n\rpwm = 512\n\r");
			pwm = 512;
			// PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '6')
		{
			USART_WriteString("\n\rpwm = 768\n\r");
			pwm = 768;
			//PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '7')
		{
			USART_WriteString("\n\rpwm = 896\n\r");
			pwm = 896;
			// PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '8')
		{
			USART_WriteString("\n\rpwm = 1000\n\r");
			pwm = 1000;
			// PWM_DutyCycle2(pwm);
		}

		if (USART_ReceiveChar() == '9')
		{
			USART_WriteString("\n\rpwm = 1023\n\r");
			pwm = 1023;
			//PWM_DutyCycle2(pwm);
		}


		// No fim das condições manda o sinal para a função fuzzy
		//Fuzzy(pwm);

		// Flag de status da Interrup��o do buffer de recep��o da USART.
		PIR1bits.RCIF = 0;
	}

	// Tratamento da interrup��o do conversor A/D.
	if (PIR1bits.ADIF)
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Limpa a flag da interrup��o do conversor A/D.
		PIR1bits.ADIF = 0;	
	}

	// Tratamento da interrup��o do Timer0.
	// Controle da Interrup��o do TIMER0.
	if (INTCONbits.T0IF)
	{
		// Carrega o valor equivalente a contagens de 1ms.
		TIMER0_Set(238);

		// Controle do n�mero de contagens de tempo.
		if (contagens_tm0 < 499)		// (n-1) n=10ms, n=20ms, n=500ms
		{	
			// Vari�vel de controle/incremento do per�odo de tempo.  	
			contagens_tm0++;

     		// Vari�veis de controle (n�vel alto).
			PORTBbits.RB6 = 1;
		}
		else
		{
			// Vari�vel de controle do per�odo de tempo.
			contagens_tm0 = 0;

			// C�lculo das rota��es por minuto.
			pulsos = (TMR1H << 8) + TMR1L;
			rpm = ((pulsos / pas_cooler) * 120);

			// Limpa registrador para nova contagem.
			TMR1L = 0x00;
			TMR1H = 0x00;

			// Vari�veis de controle (n�vel baixo).
			PORTBbits.RB6 = 0;
		}

		// Resetar a flag do Timer0 para uma nova contagem.
		INTCONbits.T0IF = 0;
	}

	// Tratamento da interrup��o do Timer1.
	if (PIR1bits.TMR1IF) 
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Resetar a flag do Timer1 para uma nova contagem.
        PIR1bits.TMR1IF = 0;		
	}

	// Tratamento da interrup��o da SPI.
	if (PIR1bits.SSPIF) 
	{
		// Caso a interrup��o seja ativada a manipula��o dos dados pode ser feita aqui!	

		// Resetar a flag do SPI para uma nova contagem.
        PIR1bits.SSPIF = 0;		
	}
}

//-----------------------------------------------------------------------------
void main(void)
{
    TRISA = 0b00000001;		// Configura��o dos canais anal�gicos do PORTA.
    PORTA = 0b00000001;  	// Inicializa��o dos canais anal�gicos do PORTA.
    TRISB = 0b00000000;		// Configura��o das entradas/sa�das do PORTB (RB4 e RB5 PWM).
    PORTB = 0b00000000;  	// Inicializa��o das entradas/sa�das do PORTB.
	TRISC = 0b10000001;		// Configura��o do PORTC - pinos RC0(TIMER), RC7(RX) e RC6(TX).
    PORTC = 0b11000000; 	// Inicializa��o dos pinos RX e TX em n�vel alto (Modo IDLE).
    TRISD = 0b00000000;		// Configura��o das entradas/sa�das do PORTD.		
    PORTD = 0b00000000;  	// Inicializa��o das das entradas/sa�das do PORTD.
    TRISE = 0b00000000;		// Configura��o dos canais anal�gicos do PORTE.
    PORTE = 0b00000000;  	// Inicializa��o dos canais anal�gicos do PORTE.

	// Configura��es do TIMER1 para contagem de pulsos externos.
	T1CON = 0x03;
	TMR1L = 0x00;
	TMR1H = 0x00;
	
	// Inicializa��o dos perif�ricos do microcontrolador.
	USART_Init(115200);		// Inicializa��o do m�dulo USART.
	TIMER0_Init();			// Inicializa��o do m�dulo do Timer0.
	ADC_Init();				// Inicializa��o do m�dulo do conversor A/D.
	PWM_Init();	 			// 1.125khz, prescaler 16, 1024 passos.
	LCD_Init();				// Inicializa��o do LCD.
	
	// Ativa��o das interrup��es do microcontrolador.
	INTCONbits.PEIE	= 1;	// Habilita Interrup��o de Perif�ricos do Microcontrolador.
	INTCONbits.GIE	= 1;	// Habilita Interrup��o Global.

	// Rotinas do USART.
 	USART_WriteString("Inicializando o PIC16F877A\n\r");
 	USART_WriteString("USART: 115.200bps\n\r");

	// Rotinas do LCD.
	LCD_Init();								// Inicializa��o do LCD.
	LCD_Cursor(0,0);						// Posicionamento da string na linha 0 e coluna 0;
	LCD_WriteString("Inicializando...");	// Escrita da string no LCD.

	// Inicia os m�dulos PWM desligados.
	PWM_DutyCycle1(0);
	PWM_DutyCycle2(0);

	// Seta o TIMER 0 para estouro de 1 em 1ms.
	TIMER0_Set(238);

	// Delay para estabiliza��o.
	__delay_ms(1000);

	// La�o principal do firmware.
	while(1)
	{
		// Formata os dados de rota��o para apresenta��o.
		sprintf(display_rpm,"%04d", rpm);
		sprintf(display_pwm,"%04d", pwm);

		// Apresenta as informa��es na USART.

		USART_WriteString(display_rpm);
 		USART_WriteString("\n\r");

     	// Apresenta as informa��es no LCD.
		LCD_Clear();
		LCD_Cursor(0,0);
		LCD_WriteString("RPM: ");
		LCD_Cursor(0,6);
		LCD_WriteString(display_rpm);
		LCD_Cursor(1,0);
		LCD_WriteString("PWM: ");
		LCD_Cursor(1,6);
		LCD_WriteString(display_pwm);

		__delay_ms(200);
	}
}
