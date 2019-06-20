// soc_system_hps_0_hps_io.v

// This file was auto-generated from altera_hps_io_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module soc_system_hps_0_hps_io (
		output wire [14:0] mem_a,                  // memory.mem_a
		output wire [2:0]  mem_ba,                 //       .mem_ba
		output wire        mem_ck,                 //       .mem_ck
		output wire        mem_ck_n,               //       .mem_ck_n
		output wire        mem_cke,                //       .mem_cke
		output wire        mem_cs_n,               //       .mem_cs_n
		output wire        mem_ras_n,              //       .mem_ras_n
		output wire        mem_cas_n,              //       .mem_cas_n
		output wire        mem_we_n,               //       .mem_we_n
		output wire        mem_reset_n,            //       .mem_reset_n
		inout  wire [31:0] mem_dq,                 //       .mem_dq
		inout  wire [3:0]  mem_dqs,                //       .mem_dqs
		inout  wire [3:0]  mem_dqs_n,              //       .mem_dqs_n
		output wire        mem_odt,                //       .mem_odt
		output wire [3:0]  mem_dm,                 //       .mem_dm
		input  wire        oct_rzqin,              //       .oct_rzqin
		output wire        hps_io_nand_inst_ALE,   // hps_io.hps_io_nand_inst_ALE
		output wire        hps_io_nand_inst_CE,    //       .hps_io_nand_inst_CE
		output wire        hps_io_nand_inst_CLE,   //       .hps_io_nand_inst_CLE
		output wire        hps_io_nand_inst_RE,    //       .hps_io_nand_inst_RE
		input  wire        hps_io_nand_inst_RB,    //       .hps_io_nand_inst_RB
		inout  wire        hps_io_nand_inst_DQ0,   //       .hps_io_nand_inst_DQ0
		inout  wire        hps_io_nand_inst_DQ1,   //       .hps_io_nand_inst_DQ1
		inout  wire        hps_io_nand_inst_DQ2,   //       .hps_io_nand_inst_DQ2
		inout  wire        hps_io_nand_inst_DQ3,   //       .hps_io_nand_inst_DQ3
		inout  wire        hps_io_nand_inst_DQ4,   //       .hps_io_nand_inst_DQ4
		inout  wire        hps_io_nand_inst_DQ5,   //       .hps_io_nand_inst_DQ5
		inout  wire        hps_io_nand_inst_DQ6,   //       .hps_io_nand_inst_DQ6
		inout  wire        hps_io_nand_inst_DQ7,   //       .hps_io_nand_inst_DQ7
		output wire        hps_io_nand_inst_WP,    //       .hps_io_nand_inst_WP
		output wire        hps_io_nand_inst_WE,    //       .hps_io_nand_inst_WE
		inout  wire        hps_io_usb1_inst_D0,    //       .hps_io_usb1_inst_D0
		inout  wire        hps_io_usb1_inst_D1,    //       .hps_io_usb1_inst_D1
		inout  wire        hps_io_usb1_inst_D2,    //       .hps_io_usb1_inst_D2
		inout  wire        hps_io_usb1_inst_D3,    //       .hps_io_usb1_inst_D3
		inout  wire        hps_io_usb1_inst_D4,    //       .hps_io_usb1_inst_D4
		inout  wire        hps_io_usb1_inst_D5,    //       .hps_io_usb1_inst_D5
		inout  wire        hps_io_usb1_inst_D6,    //       .hps_io_usb1_inst_D6
		inout  wire        hps_io_usb1_inst_D7,    //       .hps_io_usb1_inst_D7
		input  wire        hps_io_usb1_inst_CLK,   //       .hps_io_usb1_inst_CLK
		output wire        hps_io_usb1_inst_STP,   //       .hps_io_usb1_inst_STP
		input  wire        hps_io_usb1_inst_DIR,   //       .hps_io_usb1_inst_DIR
		input  wire        hps_io_usb1_inst_NXT,   //       .hps_io_usb1_inst_NXT
		output wire        hps_io_spim0_inst_CLK,  //       .hps_io_spim0_inst_CLK
		output wire        hps_io_spim0_inst_MOSI, //       .hps_io_spim0_inst_MOSI
		input  wire        hps_io_spim0_inst_MISO, //       .hps_io_spim0_inst_MISO
		output wire        hps_io_spim0_inst_SS0,  //       .hps_io_spim0_inst_SS0
		input  wire        hps_io_uart0_inst_RX,   //       .hps_io_uart0_inst_RX
		output wire        hps_io_uart0_inst_TX,   //       .hps_io_uart0_inst_TX
		inout  wire        hps_io_i2c0_inst_SDA,   //       .hps_io_i2c0_inst_SDA
		inout  wire        hps_io_i2c0_inst_SCL,   //       .hps_io_i2c0_inst_SCL
		input  wire        hps_io_can1_inst_RX,    //       .hps_io_can1_inst_RX
		output wire        hps_io_can1_inst_TX     //       .hps_io_can1_inst_TX
	);

	soc_system_hps_0_hps_io_border border (
		.mem_a                  (mem_a),                  // memory.mem_a
		.mem_ba                 (mem_ba),                 //       .mem_ba
		.mem_ck                 (mem_ck),                 //       .mem_ck
		.mem_ck_n               (mem_ck_n),               //       .mem_ck_n
		.mem_cke                (mem_cke),                //       .mem_cke
		.mem_cs_n               (mem_cs_n),               //       .mem_cs_n
		.mem_ras_n              (mem_ras_n),              //       .mem_ras_n
		.mem_cas_n              (mem_cas_n),              //       .mem_cas_n
		.mem_we_n               (mem_we_n),               //       .mem_we_n
		.mem_reset_n            (mem_reset_n),            //       .mem_reset_n
		.mem_dq                 (mem_dq),                 //       .mem_dq
		.mem_dqs                (mem_dqs),                //       .mem_dqs
		.mem_dqs_n              (mem_dqs_n),              //       .mem_dqs_n
		.mem_odt                (mem_odt),                //       .mem_odt
		.mem_dm                 (mem_dm),                 //       .mem_dm
		.oct_rzqin              (oct_rzqin),              //       .oct_rzqin
		.hps_io_nand_inst_ALE   (hps_io_nand_inst_ALE),   // hps_io.hps_io_nand_inst_ALE
		.hps_io_nand_inst_CE    (hps_io_nand_inst_CE),    //       .hps_io_nand_inst_CE
		.hps_io_nand_inst_CLE   (hps_io_nand_inst_CLE),   //       .hps_io_nand_inst_CLE
		.hps_io_nand_inst_RE    (hps_io_nand_inst_RE),    //       .hps_io_nand_inst_RE
		.hps_io_nand_inst_RB    (hps_io_nand_inst_RB),    //       .hps_io_nand_inst_RB
		.hps_io_nand_inst_DQ0   (hps_io_nand_inst_DQ0),   //       .hps_io_nand_inst_DQ0
		.hps_io_nand_inst_DQ1   (hps_io_nand_inst_DQ1),   //       .hps_io_nand_inst_DQ1
		.hps_io_nand_inst_DQ2   (hps_io_nand_inst_DQ2),   //       .hps_io_nand_inst_DQ2
		.hps_io_nand_inst_DQ3   (hps_io_nand_inst_DQ3),   //       .hps_io_nand_inst_DQ3
		.hps_io_nand_inst_DQ4   (hps_io_nand_inst_DQ4),   //       .hps_io_nand_inst_DQ4
		.hps_io_nand_inst_DQ5   (hps_io_nand_inst_DQ5),   //       .hps_io_nand_inst_DQ5
		.hps_io_nand_inst_DQ6   (hps_io_nand_inst_DQ6),   //       .hps_io_nand_inst_DQ6
		.hps_io_nand_inst_DQ7   (hps_io_nand_inst_DQ7),   //       .hps_io_nand_inst_DQ7
		.hps_io_nand_inst_WP    (hps_io_nand_inst_WP),    //       .hps_io_nand_inst_WP
		.hps_io_nand_inst_WE    (hps_io_nand_inst_WE),    //       .hps_io_nand_inst_WE
		.hps_io_usb1_inst_D0    (hps_io_usb1_inst_D0),    //       .hps_io_usb1_inst_D0
		.hps_io_usb1_inst_D1    (hps_io_usb1_inst_D1),    //       .hps_io_usb1_inst_D1
		.hps_io_usb1_inst_D2    (hps_io_usb1_inst_D2),    //       .hps_io_usb1_inst_D2
		.hps_io_usb1_inst_D3    (hps_io_usb1_inst_D3),    //       .hps_io_usb1_inst_D3
		.hps_io_usb1_inst_D4    (hps_io_usb1_inst_D4),    //       .hps_io_usb1_inst_D4
		.hps_io_usb1_inst_D5    (hps_io_usb1_inst_D5),    //       .hps_io_usb1_inst_D5
		.hps_io_usb1_inst_D6    (hps_io_usb1_inst_D6),    //       .hps_io_usb1_inst_D6
		.hps_io_usb1_inst_D7    (hps_io_usb1_inst_D7),    //       .hps_io_usb1_inst_D7
		.hps_io_usb1_inst_CLK   (hps_io_usb1_inst_CLK),   //       .hps_io_usb1_inst_CLK
		.hps_io_usb1_inst_STP   (hps_io_usb1_inst_STP),   //       .hps_io_usb1_inst_STP
		.hps_io_usb1_inst_DIR   (hps_io_usb1_inst_DIR),   //       .hps_io_usb1_inst_DIR
		.hps_io_usb1_inst_NXT   (hps_io_usb1_inst_NXT),   //       .hps_io_usb1_inst_NXT
		.hps_io_spim0_inst_CLK  (hps_io_spim0_inst_CLK),  //       .hps_io_spim0_inst_CLK
		.hps_io_spim0_inst_MOSI (hps_io_spim0_inst_MOSI), //       .hps_io_spim0_inst_MOSI
		.hps_io_spim0_inst_MISO (hps_io_spim0_inst_MISO), //       .hps_io_spim0_inst_MISO
		.hps_io_spim0_inst_SS0  (hps_io_spim0_inst_SS0),  //       .hps_io_spim0_inst_SS0
		.hps_io_uart0_inst_RX   (hps_io_uart0_inst_RX),   //       .hps_io_uart0_inst_RX
		.hps_io_uart0_inst_TX   (hps_io_uart0_inst_TX),   //       .hps_io_uart0_inst_TX
		.hps_io_i2c0_inst_SDA   (hps_io_i2c0_inst_SDA),   //       .hps_io_i2c0_inst_SDA
		.hps_io_i2c0_inst_SCL   (hps_io_i2c0_inst_SCL),   //       .hps_io_i2c0_inst_SCL
		.hps_io_can1_inst_RX    (hps_io_can1_inst_RX),    //       .hps_io_can1_inst_RX
		.hps_io_can1_inst_TX    (hps_io_can1_inst_TX)     //       .hps_io_can1_inst_TX
	);

endmodule
