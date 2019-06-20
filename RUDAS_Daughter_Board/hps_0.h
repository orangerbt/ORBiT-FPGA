#ifndef _ALTERA_HPS_0_H_
#define _ALTERA_HPS_0_H_

/*
 * This file was automatically generated by the swinfo2header utility.
 * 
 * Created from SOPC Builder system 'soc_system' in
 * file './soc_system.sopcinfo'.
 */

/*
 * This file contains macros for module 'hps_0' and devices
 * connected to the following masters:
 *   h2f_axi_master
 *   h2f_lw_axi_master
 * 
 * Do not include this header file and another header file created for a
 * different module or master group at the same time.
 * Doing so may result in duplicate macro names.
 * Instead, use the system header file which has macros with unique names.
 */

/*
 * Macros for device 'i2c_0', class 'oc_iic'
 * The macros are prefixed with 'I2C_0_'.
 * The prefix is the slave descriptor.
 */
#define I2C_0_COMPONENT_TYPE oc_iic
#define I2C_0_COMPONENT_NAME i2c_0
#define I2C_0_BASE 0x0
#define I2C_0_SPAN 8
#define I2C_0_END 0x7
#define I2C_0_IRQ 1

/*
 * Macros for device 'spi_0', class 'altera_avalon_spi'
 * The macros are prefixed with 'SPI_0_'.
 * The prefix is the slave descriptor.
 */
#define SPI_0_COMPONENT_TYPE altera_avalon_spi
#define SPI_0_COMPONENT_NAME spi_0
#define SPI_0_BASE 0x40
#define SPI_0_SPAN 32
#define SPI_0_END 0x5f
#define SPI_0_IRQ 0
#define SPI_0_CLOCKMULT 1
#define SPI_0_CLOCKPHASE 0
#define SPI_0_CLOCKPOLARITY 0
#define SPI_0_CLOCKUNITS "Hz"
#define SPI_0_DATABITS 8
#define SPI_0_DATAWIDTH 16
#define SPI_0_DELAYMULT "1.0E-9"
#define SPI_0_DELAYUNITS "ns"
#define SPI_0_EXTRADELAY 0
#define SPI_0_INSERT_SYNC 0
#define SPI_0_ISMASTER 1
#define SPI_0_LSBFIRST 0
#define SPI_0_NUMSLAVES 1
#define SPI_0_PREFIX "spi_"
#define SPI_0_SYNC_REG_DEPTH 2
#define SPI_0_TARGETCLOCK 2000000
#define SPI_0_TARGETSSDELAY "0.0"

/*
 * Macros for device 'uart_0', class 'altera_avalon_uart'
 * The macros are prefixed with 'UART_0_'.
 * The prefix is the slave descriptor.
 */
#define UART_0_COMPONENT_TYPE altera_avalon_uart
#define UART_0_COMPONENT_NAME uart_0
#define UART_0_BASE 0x60
#define UART_0_SPAN 32
#define UART_0_END 0x7f
#define UART_0_IRQ 4
#define UART_0_BAUD 115200
#define UART_0_DATA_BITS 8
#define UART_0_FIXED_BAUD 0
#define UART_0_FREQ 50000000
#define UART_0_PARITY 'N'
#define UART_0_SIM_CHAR_STREAM ""
#define UART_0_SIM_TRUE_BAUD 0
#define UART_0_STOP_BITS 1
#define UART_0_SYNC_REG_DEPTH 2
#define UART_0_USE_CTS_RTS 0
#define UART_0_USE_EOP_REGISTER 0

/*
 * Macros for device 'alt_vip_vfr_tft', class 'alt_vip_vfr'
 * The macros are prefixed with 'ALT_VIP_VFR_TFT_'.
 * The prefix is the slave descriptor.
 */
#define ALT_VIP_VFR_TFT_COMPONENT_TYPE alt_vip_vfr
#define ALT_VIP_VFR_TFT_COMPONENT_NAME alt_vip_vfr_tft
#define ALT_VIP_VFR_TFT_BASE 0x100
#define ALT_VIP_VFR_TFT_SPAN 128
#define ALT_VIP_VFR_TFT_END 0x17f

/*
 * Macros for device 'sysid_qsys', class 'altera_avalon_sysid_qsys'
 * The macros are prefixed with 'SYSID_QSYS_'.
 * The prefix is the slave descriptor.
 */
#define SYSID_QSYS_COMPONENT_TYPE altera_avalon_sysid_qsys
#define SYSID_QSYS_COMPONENT_NAME sysid_qsys
#define SYSID_QSYS_BASE 0x10000
#define SYSID_QSYS_SPAN 8
#define SYSID_QSYS_END 0x10007
#define SYSID_QSYS_ID 2899645186
#define SYSID_QSYS_TIMESTAMP 1531366157

/*
 * Macros for device 'led_pio', class 'altera_avalon_pio'
 * The macros are prefixed with 'LED_PIO_'.
 * The prefix is the slave descriptor.
 */
#define LED_PIO_COMPONENT_TYPE altera_avalon_pio
#define LED_PIO_COMPONENT_NAME led_pio
#define LED_PIO_BASE 0x10040
#define LED_PIO_SPAN 32
#define LED_PIO_END 0x1005f
#define LED_PIO_BIT_CLEARING_EDGE_REGISTER 0
#define LED_PIO_BIT_MODIFYING_OUTPUT_REGISTER 1
#define LED_PIO_CAPTURE 0
#define LED_PIO_DATA_WIDTH 2
#define LED_PIO_DO_TEST_BENCH_WIRING 0
#define LED_PIO_DRIVEN_SIM_VALUE 0
#define LED_PIO_EDGE_TYPE NONE
#define LED_PIO_FREQ 50000000
#define LED_PIO_HAS_IN 0
#define LED_PIO_HAS_OUT 1
#define LED_PIO_HAS_TRI 0
#define LED_PIO_IRQ_TYPE NONE
#define LED_PIO_RESET_VALUE 0

/*
 * Macros for device 'button_pio', class 'altera_avalon_pio'
 * The macros are prefixed with 'BUTTON_PIO_'.
 * The prefix is the slave descriptor.
 */
#define BUTTON_PIO_COMPONENT_TYPE altera_avalon_pio
#define BUTTON_PIO_COMPONENT_NAME button_pio
#define BUTTON_PIO_BASE 0x100c0
#define BUTTON_PIO_SPAN 16
#define BUTTON_PIO_END 0x100cf
#define BUTTON_PIO_IRQ 3
#define BUTTON_PIO_BIT_CLEARING_EDGE_REGISTER 1
#define BUTTON_PIO_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BUTTON_PIO_CAPTURE 1
#define BUTTON_PIO_DATA_WIDTH 2
#define BUTTON_PIO_DO_TEST_BENCH_WIRING 0
#define BUTTON_PIO_DRIVEN_SIM_VALUE 0
#define BUTTON_PIO_EDGE_TYPE FALLING
#define BUTTON_PIO_FREQ 50000000
#define BUTTON_PIO_HAS_IN 1
#define BUTTON_PIO_HAS_OUT 0
#define BUTTON_PIO_HAS_TRI 0
#define BUTTON_PIO_IRQ_TYPE EDGE
#define BUTTON_PIO_RESET_VALUE 0


#endif /* _ALTERA_HPS_0_H_ */
