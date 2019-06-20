
module soc_system (
	clk_clk,
	hps_0_h2f_reset_reset_n,
	hps_0_hps_io_hps_io_nand_inst_ALE,
	hps_0_hps_io_hps_io_nand_inst_CE,
	hps_0_hps_io_hps_io_nand_inst_CLE,
	hps_0_hps_io_hps_io_nand_inst_RE,
	hps_0_hps_io_hps_io_nand_inst_RB,
	hps_0_hps_io_hps_io_nand_inst_DQ0,
	hps_0_hps_io_hps_io_nand_inst_DQ1,
	hps_0_hps_io_hps_io_nand_inst_DQ2,
	hps_0_hps_io_hps_io_nand_inst_DQ3,
	hps_0_hps_io_hps_io_nand_inst_DQ4,
	hps_0_hps_io_hps_io_nand_inst_DQ5,
	hps_0_hps_io_hps_io_nand_inst_DQ6,
	hps_0_hps_io_hps_io_nand_inst_DQ7,
	hps_0_hps_io_hps_io_nand_inst_WP,
	hps_0_hps_io_hps_io_nand_inst_WE,
	hps_0_hps_io_hps_io_usb1_inst_D0,
	hps_0_hps_io_hps_io_usb1_inst_D1,
	hps_0_hps_io_hps_io_usb1_inst_D2,
	hps_0_hps_io_hps_io_usb1_inst_D3,
	hps_0_hps_io_hps_io_usb1_inst_D4,
	hps_0_hps_io_hps_io_usb1_inst_D5,
	hps_0_hps_io_hps_io_usb1_inst_D6,
	hps_0_hps_io_hps_io_usb1_inst_D7,
	hps_0_hps_io_hps_io_usb1_inst_CLK,
	hps_0_hps_io_hps_io_usb1_inst_STP,
	hps_0_hps_io_hps_io_usb1_inst_DIR,
	hps_0_hps_io_hps_io_usb1_inst_NXT,
	hps_0_hps_io_hps_io_spim0_inst_CLK,
	hps_0_hps_io_hps_io_spim0_inst_MOSI,
	hps_0_hps_io_hps_io_spim0_inst_MISO,
	hps_0_hps_io_hps_io_spim0_inst_SS0,
	hps_0_hps_io_hps_io_uart0_inst_RX,
	hps_0_hps_io_hps_io_uart0_inst_TX,
	hps_0_hps_io_hps_io_i2c0_inst_SDA,
	hps_0_hps_io_hps_io_i2c0_inst_SCL,
	hps_0_hps_io_hps_io_can1_inst_RX,
	hps_0_hps_io_hps_io_can1_inst_TX,
	memory_mem_a,
	memory_mem_ba,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_ras_n,
	memory_mem_cas_n,
	memory_mem_we_n,
	memory_mem_reset_n,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	memory_mem_odt,
	memory_mem_dm,
	memory_oct_rzqin,
	reset_reset_n);	

	input		clk_clk;
	output		hps_0_h2f_reset_reset_n;
	output		hps_0_hps_io_hps_io_nand_inst_ALE;
	output		hps_0_hps_io_hps_io_nand_inst_CE;
	output		hps_0_hps_io_hps_io_nand_inst_CLE;
	output		hps_0_hps_io_hps_io_nand_inst_RE;
	input		hps_0_hps_io_hps_io_nand_inst_RB;
	inout		hps_0_hps_io_hps_io_nand_inst_DQ0;
	inout		hps_0_hps_io_hps_io_nand_inst_DQ1;
	inout		hps_0_hps_io_hps_io_nand_inst_DQ2;
	inout		hps_0_hps_io_hps_io_nand_inst_DQ3;
	inout		hps_0_hps_io_hps_io_nand_inst_DQ4;
	inout		hps_0_hps_io_hps_io_nand_inst_DQ5;
	inout		hps_0_hps_io_hps_io_nand_inst_DQ6;
	inout		hps_0_hps_io_hps_io_nand_inst_DQ7;
	output		hps_0_hps_io_hps_io_nand_inst_WP;
	output		hps_0_hps_io_hps_io_nand_inst_WE;
	inout		hps_0_hps_io_hps_io_usb1_inst_D0;
	inout		hps_0_hps_io_hps_io_usb1_inst_D1;
	inout		hps_0_hps_io_hps_io_usb1_inst_D2;
	inout		hps_0_hps_io_hps_io_usb1_inst_D3;
	inout		hps_0_hps_io_hps_io_usb1_inst_D4;
	inout		hps_0_hps_io_hps_io_usb1_inst_D5;
	inout		hps_0_hps_io_hps_io_usb1_inst_D6;
	inout		hps_0_hps_io_hps_io_usb1_inst_D7;
	input		hps_0_hps_io_hps_io_usb1_inst_CLK;
	output		hps_0_hps_io_hps_io_usb1_inst_STP;
	input		hps_0_hps_io_hps_io_usb1_inst_DIR;
	input		hps_0_hps_io_hps_io_usb1_inst_NXT;
	output		hps_0_hps_io_hps_io_spim0_inst_CLK;
	output		hps_0_hps_io_hps_io_spim0_inst_MOSI;
	input		hps_0_hps_io_hps_io_spim0_inst_MISO;
	output		hps_0_hps_io_hps_io_spim0_inst_SS0;
	input		hps_0_hps_io_hps_io_uart0_inst_RX;
	output		hps_0_hps_io_hps_io_uart0_inst_TX;
	inout		hps_0_hps_io_hps_io_i2c0_inst_SDA;
	inout		hps_0_hps_io_hps_io_i2c0_inst_SCL;
	input		hps_0_hps_io_hps_io_can1_inst_RX;
	output		hps_0_hps_io_hps_io_can1_inst_TX;
	output	[14:0]	memory_mem_a;
	output	[2:0]	memory_mem_ba;
	output		memory_mem_ck;
	output		memory_mem_ck_n;
	output		memory_mem_cke;
	output		memory_mem_cs_n;
	output		memory_mem_ras_n;
	output		memory_mem_cas_n;
	output		memory_mem_we_n;
	output		memory_mem_reset_n;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	output		memory_mem_odt;
	output	[3:0]	memory_mem_dm;
	input		memory_oct_rzqin;
	input		reset_reset_n;
endmodule
