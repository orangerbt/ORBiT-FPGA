// (C) 2001-2018 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files from any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel FPGA IP License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


module soc_system_hps_0_hps_io_border(
// memory
  output wire [15 - 1 : 0 ] mem_a
 ,output wire [3 - 1 : 0 ] mem_ba
 ,output wire [1 - 1 : 0 ] mem_ck
 ,output wire [1 - 1 : 0 ] mem_ck_n
 ,output wire [1 - 1 : 0 ] mem_cke
 ,output wire [1 - 1 : 0 ] mem_cs_n
 ,output wire [1 - 1 : 0 ] mem_ras_n
 ,output wire [1 - 1 : 0 ] mem_cas_n
 ,output wire [1 - 1 : 0 ] mem_we_n
 ,output wire [1 - 1 : 0 ] mem_reset_n
 ,inout wire [32 - 1 : 0 ] mem_dq
 ,inout wire [4 - 1 : 0 ] mem_dqs
 ,inout wire [4 - 1 : 0 ] mem_dqs_n
 ,output wire [1 - 1 : 0 ] mem_odt
 ,output wire [4 - 1 : 0 ] mem_dm
 ,input wire [1 - 1 : 0 ] oct_rzqin
// hps_io
 ,output wire [1 - 1 : 0 ] hps_io_nand_inst_ALE
 ,output wire [1 - 1 : 0 ] hps_io_nand_inst_CE
 ,output wire [1 - 1 : 0 ] hps_io_nand_inst_CLE
 ,output wire [1 - 1 : 0 ] hps_io_nand_inst_RE
 ,input wire [1 - 1 : 0 ] hps_io_nand_inst_RB
 ,inout wire [1 - 1 : 0 ] hps_io_nand_inst_DQ0
 ,inout wire [1 - 1 : 0 ] hps_io_nand_inst_DQ1
 ,inout wire [1 - 1 : 0 ] hps_io_nand_inst_DQ2
 ,inout wire [1 - 1 : 0 ] hps_io_nand_inst_DQ3
 ,inout wire [1 - 1 : 0 ] hps_io_nand_inst_DQ4
 ,inout wire [1 - 1 : 0 ] hps_io_nand_inst_DQ5
 ,inout wire [1 - 1 : 0 ] hps_io_nand_inst_DQ6
 ,inout wire [1 - 1 : 0 ] hps_io_nand_inst_DQ7
 ,output wire [1 - 1 : 0 ] hps_io_nand_inst_WP
 ,output wire [1 - 1 : 0 ] hps_io_nand_inst_WE
 ,inout wire [1 - 1 : 0 ] hps_io_usb1_inst_D0
 ,inout wire [1 - 1 : 0 ] hps_io_usb1_inst_D1
 ,inout wire [1 - 1 : 0 ] hps_io_usb1_inst_D2
 ,inout wire [1 - 1 : 0 ] hps_io_usb1_inst_D3
 ,inout wire [1 - 1 : 0 ] hps_io_usb1_inst_D4
 ,inout wire [1 - 1 : 0 ] hps_io_usb1_inst_D5
 ,inout wire [1 - 1 : 0 ] hps_io_usb1_inst_D6
 ,inout wire [1 - 1 : 0 ] hps_io_usb1_inst_D7
 ,input wire [1 - 1 : 0 ] hps_io_usb1_inst_CLK
 ,output wire [1 - 1 : 0 ] hps_io_usb1_inst_STP
 ,input wire [1 - 1 : 0 ] hps_io_usb1_inst_DIR
 ,input wire [1 - 1 : 0 ] hps_io_usb1_inst_NXT
 ,output wire [1 - 1 : 0 ] hps_io_spim0_inst_CLK
 ,output wire [1 - 1 : 0 ] hps_io_spim0_inst_MOSI
 ,input wire [1 - 1 : 0 ] hps_io_spim0_inst_MISO
 ,output wire [1 - 1 : 0 ] hps_io_spim0_inst_SS0
 ,output wire [1 - 1 : 0 ] hps_io_spim1_inst_CLK
 ,output wire [1 - 1 : 0 ] hps_io_spim1_inst_MOSI
 ,input wire [1 - 1 : 0 ] hps_io_spim1_inst_MISO
 ,output wire [1 - 1 : 0 ] hps_io_spim1_inst_SS0
 ,input wire [1 - 1 : 0 ] hps_io_uart0_inst_RX
 ,output wire [1 - 1 : 0 ] hps_io_uart0_inst_TX
 ,inout wire [1 - 1 : 0 ] hps_io_i2c0_inst_SDA
 ,inout wire [1 - 1 : 0 ] hps_io_i2c0_inst_SCL
 ,inout wire [1 - 1 : 0 ] hps_io_i2c1_inst_SDA
 ,inout wire [1 - 1 : 0 ] hps_io_i2c1_inst_SCL
 ,input wire [1 - 1 : 0 ] hps_io_can1_inst_RX
 ,output wire [1 - 1 : 0 ] hps_io_can1_inst_TX
);

assign hps_io_nand_inst_DQ0 = intermediate[2] ? intermediate[1] : 'z;
assign hps_io_nand_inst_DQ1 = intermediate[4] ? intermediate[3] : 'z;
assign hps_io_nand_inst_DQ2 = intermediate[6] ? intermediate[5] : 'z;
assign hps_io_nand_inst_DQ3 = intermediate[8] ? intermediate[7] : 'z;
assign hps_io_nand_inst_DQ4 = intermediate[10] ? intermediate[9] : 'z;
assign hps_io_nand_inst_DQ5 = intermediate[12] ? intermediate[11] : 'z;
assign hps_io_nand_inst_DQ6 = intermediate[14] ? intermediate[13] : 'z;
assign hps_io_nand_inst_DQ7 = intermediate[16] ? intermediate[15] : 'z;
assign hps_io_usb1_inst_D0 = intermediate[18] ? intermediate[17] : 'z;
assign hps_io_usb1_inst_D1 = intermediate[20] ? intermediate[19] : 'z;
assign hps_io_usb1_inst_D2 = intermediate[22] ? intermediate[21] : 'z;
assign hps_io_usb1_inst_D3 = intermediate[24] ? intermediate[23] : 'z;
assign hps_io_usb1_inst_D4 = intermediate[26] ? intermediate[25] : 'z;
assign hps_io_usb1_inst_D5 = intermediate[28] ? intermediate[27] : 'z;
assign hps_io_usb1_inst_D6 = intermediate[30] ? intermediate[29] : 'z;
assign hps_io_usb1_inst_D7 = intermediate[32] ? intermediate[31] : 'z;
assign hps_io_spim0_inst_MOSI = intermediate[34] ? intermediate[33] : 'z;
assign hps_io_spim1_inst_MOSI = intermediate[36] ? intermediate[35] : 'z;
assign hps_io_i2c0_inst_SDA = intermediate[37] ? '0 : 'z;
assign hps_io_i2c0_inst_SCL = intermediate[38] ? '0 : 'z;
assign hps_io_i2c1_inst_SDA = intermediate[39] ? '0 : 'z;
assign hps_io_i2c1_inst_SCL = intermediate[40] ? '0 : 'z;

wire [41 - 1 : 0] intermediate;
assign intermediate[8:8] = intermediate[0:0];
assign intermediate[6:6] = intermediate[0:0];
assign intermediate[4:4] = intermediate[0:0];
assign intermediate[2:2] = intermediate[0:0];
assign intermediate[16:16] = intermediate[0:0];
assign intermediate[14:14] = intermediate[0:0];
assign intermediate[12:12] = intermediate[0:0];
assign intermediate[10:10] = intermediate[0:0];

cyclonev_hps_peripheral_nand nand_inst(
 .NAND_CE_N({
    hps_io_nand_inst_CE[0:0] // 0:0
  })
,.NAND_ADQ_I({
    hps_io_nand_inst_DQ7[0:0] // 7:7
   ,hps_io_nand_inst_DQ6[0:0] // 6:6
   ,hps_io_nand_inst_DQ5[0:0] // 5:5
   ,hps_io_nand_inst_DQ4[0:0] // 4:4
   ,hps_io_nand_inst_DQ3[0:0] // 3:3
   ,hps_io_nand_inst_DQ2[0:0] // 2:2
   ,hps_io_nand_inst_DQ1[0:0] // 1:1
   ,hps_io_nand_inst_DQ0[0:0] // 0:0
  })
,.NAND_RE_N({
    hps_io_nand_inst_RE[0:0] // 0:0
  })
,.NAND_ALE({
    hps_io_nand_inst_ALE[0:0] // 0:0
  })
,.NAND_WP_N({
    hps_io_nand_inst_WP[0:0] // 0:0
  })
,.NAND_ADQ_OE({
    intermediate[0:0] // 0:0
  })
,.NAND_CLE({
    hps_io_nand_inst_CLE[0:0] // 0:0
  })
,.NAND_ADQ_O({
    intermediate[15:15] // 7:7
   ,intermediate[13:13] // 6:6
   ,intermediate[11:11] // 5:5
   ,intermediate[9:9] // 4:4
   ,intermediate[7:7] // 3:3
   ,intermediate[5:5] // 2:2
   ,intermediate[3:3] // 1:1
   ,intermediate[1:1] // 0:0
  })
,.NAND_RDY_BUSYN({
    hps_io_nand_inst_RB[0:0] // 0:0
  })
,.NAND_WE_N({
    hps_io_nand_inst_WE[0:0] // 0:0
  })
);


cyclonev_hps_peripheral_usb usb1_inst(
 .USB_ULPI_STP({
    hps_io_usb1_inst_STP[0:0] // 0:0
  })
,.USB_ULPI_DATA_I({
    hps_io_usb1_inst_D7[0:0] // 7:7
   ,hps_io_usb1_inst_D6[0:0] // 6:6
   ,hps_io_usb1_inst_D5[0:0] // 5:5
   ,hps_io_usb1_inst_D4[0:0] // 4:4
   ,hps_io_usb1_inst_D3[0:0] // 3:3
   ,hps_io_usb1_inst_D2[0:0] // 2:2
   ,hps_io_usb1_inst_D1[0:0] // 1:1
   ,hps_io_usb1_inst_D0[0:0] // 0:0
  })
,.USB_ULPI_NXT({
    hps_io_usb1_inst_NXT[0:0] // 0:0
  })
,.USB_ULPI_DIR({
    hps_io_usb1_inst_DIR[0:0] // 0:0
  })
,.USB_ULPI_DATA_O({
    intermediate[31:31] // 7:7
   ,intermediate[29:29] // 6:6
   ,intermediate[27:27] // 5:5
   ,intermediate[25:25] // 4:4
   ,intermediate[23:23] // 3:3
   ,intermediate[21:21] // 2:2
   ,intermediate[19:19] // 1:1
   ,intermediate[17:17] // 0:0
  })
,.USB_ULPI_DATA_OE({
    intermediate[32:32] // 7:7
   ,intermediate[30:30] // 6:6
   ,intermediate[28:28] // 5:5
   ,intermediate[26:26] // 4:4
   ,intermediate[24:24] // 3:3
   ,intermediate[22:22] // 2:2
   ,intermediate[20:20] // 1:1
   ,intermediate[18:18] // 0:0
  })
,.USB_ULPI_CLK({
    hps_io_usb1_inst_CLK[0:0] // 0:0
  })
);


cyclonev_hps_peripheral_spi_master spim0_inst(
 .SPI_MASTER_RXD({
    hps_io_spim0_inst_MISO[0:0] // 0:0
  })
,.SPI_MASTER_TXD({
    intermediate[33:33] // 0:0
  })
,.SPI_MASTER_SSI_OE_N({
    intermediate[34:34] // 0:0
  })
,.SPI_MASTER_SCLK({
    hps_io_spim0_inst_CLK[0:0] // 0:0
  })
,.SPI_MASTER_SS_0_N({
    hps_io_spim0_inst_SS0[0:0] // 0:0
  })
);


cyclonev_hps_peripheral_spi_master spim1_inst(
 .SPI_MASTER_RXD({
    hps_io_spim1_inst_MISO[0:0] // 0:0
  })
,.SPI_MASTER_TXD({
    intermediate[35:35] // 0:0
  })
,.SPI_MASTER_SSI_OE_N({
    intermediate[36:36] // 0:0
  })
,.SPI_MASTER_SCLK({
    hps_io_spim1_inst_CLK[0:0] // 0:0
  })
,.SPI_MASTER_SS_0_N({
    hps_io_spim1_inst_SS0[0:0] // 0:0
  })
);


cyclonev_hps_peripheral_uart uart0_inst(
 .UART_RXD({
    hps_io_uart0_inst_RX[0:0] // 0:0
  })
,.UART_TXD({
    hps_io_uart0_inst_TX[0:0] // 0:0
  })
);


cyclonev_hps_peripheral_i2c i2c0_inst(
 .I2C_DATA({
    hps_io_i2c0_inst_SDA[0:0] // 0:0
  })
,.I2C_CLK({
    hps_io_i2c0_inst_SCL[0:0] // 0:0
  })
,.I2C_DATA_OE({
    intermediate[37:37] // 0:0
  })
,.I2C_CLK_OE({
    intermediate[38:38] // 0:0
  })
);


cyclonev_hps_peripheral_i2c i2c1_inst(
 .I2C_DATA({
    hps_io_i2c1_inst_SDA[0:0] // 0:0
  })
,.I2C_CLK({
    hps_io_i2c1_inst_SCL[0:0] // 0:0
  })
,.I2C_DATA_OE({
    intermediate[39:39] // 0:0
  })
,.I2C_CLK_OE({
    intermediate[40:40] // 0:0
  })
);


cyclonev_hps_peripheral_can can1_inst(
 .CAN_TXD({
    hps_io_can1_inst_TX[0:0] // 0:0
  })
,.CAN_RXD({
    hps_io_can1_inst_RX[0:0] // 0:0
  })
);


hps_sdram hps_sdram_inst(
 .mem_dq({
    mem_dq[31:0] // 31:0
  })
,.mem_odt({
    mem_odt[0:0] // 0:0
  })
,.mem_ras_n({
    mem_ras_n[0:0] // 0:0
  })
,.mem_dqs_n({
    mem_dqs_n[3:0] // 3:0
  })
,.mem_dqs({
    mem_dqs[3:0] // 3:0
  })
,.mem_dm({
    mem_dm[3:0] // 3:0
  })
,.mem_we_n({
    mem_we_n[0:0] // 0:0
  })
,.mem_cas_n({
    mem_cas_n[0:0] // 0:0
  })
,.mem_ba({
    mem_ba[2:0] // 2:0
  })
,.mem_a({
    mem_a[14:0] // 14:0
  })
,.mem_cs_n({
    mem_cs_n[0:0] // 0:0
  })
,.mem_ck({
    mem_ck[0:0] // 0:0
  })
,.mem_cke({
    mem_cke[0:0] // 0:0
  })
,.oct_rzqin({
    oct_rzqin[0:0] // 0:0
  })
,.mem_reset_n({
    mem_reset_n[0:0] // 0:0
  })
,.mem_ck_n({
    mem_ck_n[0:0] // 0:0
  })
);

endmodule

