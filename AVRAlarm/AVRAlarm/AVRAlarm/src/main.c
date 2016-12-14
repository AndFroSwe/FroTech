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

int main (void)
{
	board_init(); /* Initialize board */
	config_dip204(); /* Configure display */
	dip204_init(100, true); /* Initialize display */

	dip204_clear_display();
	dip204_set_cursor_position(1,1);
	dip204_write_string("Hello, World!");
	dip204_set_cursor_position(1,2);
	dip204_write_string("And the rest");
	dip204_hide_cursor();
	delay_ms(1000);
	while(1);
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
