/*
 * UART sender.c
 * Sends data on UART when button is pressed
 * 
 * Created: 12/10/2016 4:26:50 PM
 * Author : Andreas Fröderberg
 */ 

#include <avr/io.h>
#include "main.h"

void USART_init(unsigned int ubrr)
{
	/* Set baud rate */
	UBRR0H = (unsigned char) (ubrr>>8);
	UBRR0L = (unsigned char) ubrr;
	/* Enable reciever and transmitter */
	UCSR0B = _BV(RXEN0) | _BV(TXEN0);
	/* Set frame format: 8data, 2stop bit */
	UCSR0C = _BV(USBS0) | _BV(UCSZ00) | _BV(UCSZ01);

}

void USART_transmit(unsigned char data)
{
	/* Wait for empty transimit buffer */
	while (!(UCSR0A & _BV(UDRE0)));
	/* Put data into buffer, sends the data */
	UDR0 = data;
}

int main(void)
{
	USART_init(MYUBRR);
    /* Replace with your application code */
	unsigned char c = 0;
    while (1) 
    {
		USART_transmit(c++);
		_delay_ms(1000);
    }
}

