/**
 * \file
 *
 * \brief Empty user application template
 *
 */

/**
 * \mainpage User Application template doxygen documentation
 *
 * \par Empty user application template
 *
 * Bare minimum empty user application template
 *
 * \par Content
 *
 * -# Include the ASF header files (through asf.h)
 * -# "Insert system clock initialization code here" comment
 * -# Minimal main function that starts with a call to board_init()
 * -# "Insert application code here" comment
 *
 */

/*
 * Include header files for all drivers that have been imported from
 * Atmel Software Framework (ASF).
 */
/*
 * TODO: Button interrupts
 * TODO: Timer interrupt/counter
 * TODO: Display printouts
 * TODO: Adjust backlight
 * TODO: Logic for setting time
 * TODO: PWM for buzzer
 * TODO: Logic for setting alarm
 */

#include <asf.h>
#include "main.h"

volatile unsigned char count = 0;

int main (void)
{
	unsigned char sec = 0;
	board_init(); /* Initialize board */
	config_dip204(); /* Configure display */
	configure_PB_int(); /* Configure push button interrupts */
	dip204_init(100, true); /* Initialize display */

	dip204_clear_display();
	dip204_set_cursor_position(1,1);
	dip204_write_string("Hello, World!");
	dip204_set_cursor_position(1,2);
	dip204_write_string("And the rest");
	dip204_hide_cursor();
	while(1) 
	{
		delay_ms(1000);
		dip204_set_cursor_position(1,4);
		dip204_write_data(sec++);
	}
}

void config_dip204(void)
{
	static const gpio_map_t DIP204_SPI_GPIO_MAP =
	{
		{DIP204_SPI_SCK_PIN,  DIP204_SPI_SCK_FUNCTION },  /* SPI Clock. */
		{DIP204_SPI_MISO_PIN, DIP204_SPI_MISO_FUNCTION},  /* MISO. */
		{DIP204_SPI_MOSI_PIN, DIP204_SPI_MOSI_FUNCTION},  /* MOSI. */
		{DIP204_SPI_NPCS_PIN, DIP204_SPI_NPCS_FUNCTION}   /* Chip Select NPCS. */
	};

	spi_options_t spiOptions2 =
	{
	.reg          = DIP204_SPI_NPCS,
	.baudrate     = 1000000,
	.bits         = 8,
	.spck_delay   = 0,
	.trans_delay  = 0,
	.stay_act     = 1,
	.spi_mode     = 0,
	.modfdis      = 1
	};
	gpio_enable_module(DIP204_SPI_GPIO_MAP,
	sizeof(DIP204_SPI_GPIO_MAP) / sizeof(DIP204_SPI_GPIO_MAP[0]));

	spi_initMaster(DIP204_SPI, &spiOptions2);
	spi_selectionMode(DIP204_SPI, 0, 0, 0);
	spi_enable(DIP204_SPI);
	spi_setupChipReg(DIP204_SPI, &spiOptions2, FOSC0);
}

#if __GNUC__
__attribute__((__interrupt__))
#elif __ICCAVR32__
__interrupt
#endif
void PB_int_handler(void) 
{
	if (gpio_get_pin_interrupt_flag(GPIO_SET_TIME))
	{
		dip204_set_cursor_position(1,3);
		dip204_write_string("Count: ");
		dip204_set_cursor_position(8,3);
		dip204_printf_string("%i", count++);
	}
	gpio_clear_pin_interrupt_flag(GPIO_SET_TIME);
}

void configure_PB_int(void)
{
	gpio_enable_pin_interrupt(GPIO_SET_TIME, GPIO_FALLING_EDGE); /* Enable interrupt */

	/* Disable interrupts */
	Disable_global_interrupt();
	/* Connect interrupt routines to interrupt */
    INTC_register_interrupt( &PB_int_handler, AVR32_GPIO_IRQ_0 + (GPIO_SET_TIME/8), AVR32_INTC_INT1);
	/* Enable interrupts */
	Enable_global_interrupt();
}
