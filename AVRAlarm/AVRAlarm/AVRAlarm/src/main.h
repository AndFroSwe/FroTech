/*
 * main.h
 *
 * Created: 12/13/2016 10:31:43 PM
 *  Author: Andreas Fröderberg
 */ 


#ifndef MAIN_H_
#define MAIN_H_

/* Defines */
#define GPIO_SET_TIME GPIO_PUSH_BUTTON_0 /* Button for setting time */

/* Includes */

/* Function prototypes */
void config_dip204(void); /* Configuration of SPI for dip204 display */
void PB_int_handler(void); /* Interrupt handler for push button interrupts */
void configure_PB_int(void); /* Setup push button interrupts */

#endif /* MAIN_H_ */