/*
 * main.h
 *
 * Created: 12/10/2016 4:44:03 PM
 *  Author: Andreas Fröderberg
 */ 


#ifndef MAIN_H_
#define MAIN_H_

/* Delay include */
#define F_CPU 8000000UL
#include <util/delay.h>

/* Defines for UART */
#define FOSC 8000000
#define BAUD 9600
#define MYUBRR FOSC/16/BAUD-1

/* Function prototypes */
void USART_init(unsigned int); /* Initiate USART */
void USART_transmit(unsigned char); /* Send data on USART */



#endif /* MAIN_H_ */