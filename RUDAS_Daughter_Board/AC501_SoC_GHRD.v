module AC501_SoC_GHRD(
		input  wire        fpga_clk50m,                               //             clk.clk
		input  wire [1:0]  fpga_button,                     //      button_pio.export
		
		output wire        hps_eth1_TX_CLK, //    hps_0_hps_io.hps_io_emac1_inst_TX_CLK
		output wire        hps_eth1_TXD0,   //                .hps_io_emac1_inst_TXD0
		output wire        hps_eth1_TXD1,   //                .hps_io_emac1_inst_TXD1
		output wire        hps_eth1_TXD2,   //                .hps_io_emac1_inst_TXD2
		output wire        hps_eth1_TXD3,   //                .hps_io_emac1_inst_TXD3
		input  wire        hps_eth1_RXD0,   //                .hps_io_emac1_inst_RXD0
		inout  wire        hps_eth1_MDIO,   //                .hps_io_emac1_inst_MDIO
		output wire        hps_eth1_MDC,    //                .hps_io_emac1_inst_MDC
		input  wire        hps_eth1_RX_CTL, //                .hps_io_emac1_inst_RX_CTL
		output wire        hps_eth1_TX_CTL, //                .hps_io_emac1_inst_TX_CTL
		input  wire        hps_eth1_RX_CLK, //                .hps_io_emac1_inst_RX_CLK
		input  wire        hps_eth1_RXD1,   //                .hps_io_emac1_inst_RXD1
		input  wire        hps_eth1_RXD2,   //                .hps_io_emac1_inst_RXD2
		input  wire        hps_eth1_RXD3,   //                .hps_io_emac1_inst_RXD3
		inout  wire        hps_eth1_INT_N,  //                .hps_io_emac1_inst_RXD3
		
		inout  wire        hps_sdio_CMD,     //                .hps_io_sdio_inst_CMD
		inout  wire        hps_sdio_D0,      //                .hps_io_sdio_inst_D0
		inout  wire        hps_sdio_D1,      //                .hps_io_sdio_inst_D1
		output wire        hps_sdio_CLK,     //                .hps_io_sdio_inst_CLK
		inout  wire        hps_sdio_D2,      //                .hps_io_sdio_inst_D2
		inout  wire        hps_sdio_D3,      //                .hps_io_sdio_inst_D3
		
		inout  wire        hps_usb1_CONV_N,  //                .hps_io_usb1_inst_D0		
		inout  wire        hps_usb1_D0,      //                .hps_io_usb1_inst_D0
		inout  wire        hps_usb1_D1,      //                .hps_io_usb1_inst_D1
		inout  wire        hps_usb1_D2,      //                .hps_io_usb1_inst_D2
		inout  wire        hps_usb1_D3,      //                .hps_io_usb1_inst_D3
		inout  wire        hps_usb1_D4,      //                .hps_io_usb1_inst_D4
		inout  wire        hps_usb1_D5,      //                .hps_io_usb1_inst_D5
		inout  wire        hps_usb1_D6,      //                .hps_io_usb1_inst_D6
		inout  wire        hps_usb1_D7,      //                .hps_io_usb1_inst_D7
		input  wire        hps_usb1_CLK,     //                .hps_io_usb1_inst_CLK
		output wire        hps_usb1_STP,     //                .hps_io_usb1_inst_STP
		input  wire        hps_usb1_DIR,     //                .hps_io_usb1_inst_DIR
		input  wire        hps_usb1_NXT,     //                .hps_io_usb1_inst_NXT
		
		output wire        hps_spim0_CLK,    //                .hps_io_spim0_inst_CLK
		output wire        hps_spim0_MOSI,   //                .hps_io_spim0_inst_MOSI
		input  wire        hps_spim0_MISO,   //                .hps_io_spim0_inst_MISO
		output wire        hps_spim0_SS0,    //                .hps_io_spim0_inst_SS0
		
		output wire        hps_spim1_CLK,    //                .hps_io_spim1_inst_CLK
		output wire        hps_spim1_MOSI,   //                .hps_io_spim1_inst_MOSI
		input  wire        hps_spim1_MISO,   //                .hps_io_spim1_inst_MISO
		output wire        hps_spim1_SS0,    //                .hps_io_spim1_inst_SS0
		
		input  wire        hps_uart0_RX,     //                .hps_io_uart0_inst_RX
		output wire        hps_uart0_TX,     //                .hps_io_uart0_inst_TX
		
		inout  wire        hps_i2c0_SDA,     //                .hps_io_i2c0_inst_SDA
		inout  wire        hps_i2c0_SCL,     //                .hps_io_i2c0_inst_SCL
		
		inout  wire        hps_i2c1_SDA,     //                .hps_io_i2c1_inst_SDA
		inout  wire        hps_i2c1_SCL,     //                .hps_io_i2c1_inst_SCL
		
		input  wire        hps_can1_RX,      //                .hps_io_can1_inst_RX
		output wire        hps_can1_TX,      //                .hps_io_can1_inst_TX
		
		inout  wire        hps_gpio_GPIO00,  //                .hps_io_gpio_inst_GPIO00

		inout  wire        hps_gpio_GPIO37,  //                .hps_io_gpio_inst_GPIO37
		inout  wire        hps_gpio_GPIO44,  //                .hps_io_gpio_inst_GPIO44
		inout  wire        hps_gpio_GPIO48,  //                .hps_io_gpio_inst_GPIO48
		inout  wire        hps_gpio_GPIO61,  //                .hps_io_gpio_inst_GPIO61
		inout  wire        hps_gpio_GPIO62,  //                .hps_io_gpio_inst_GPIO62
		
		inout  wire [1:0]  hps_key, 
		inout  wire [1:0]  hps_led,                     
		
		inout  wire        fpga_i2c_0_sda,                          //           i2c_0.sda_in
		inout  wire        fpga_i2c_0_scl,                          //                .scl_in

		output wire [1:0]  fpga_led,                        //         led_pio.export
		
		output wire [14:0] memory_mem_a,                          //          memory.mem_a
		output wire [2:0]  memory_mem_ba,                         //                .mem_ba
		output wire        memory_mem_ck,                         //                .mem_ck
		output wire        memory_mem_ck_n,                       //                .mem_ck_n
		output wire        memory_mem_cke,                        //                .mem_cke
		output wire        memory_mem_cs_n,                       //                .mem_cs_n
		output wire        memory_mem_ras_n,                      //                .mem_ras_n
		output wire        memory_mem_cas_n,                      //                .mem_cas_n
		output wire        memory_mem_we_n,                       //                .mem_we_n
		output wire        memory_mem_reset_n,                    //                .mem_reset_n
		inout  wire [31:0] memory_mem_dq,                         //                .mem_dq
		inout  wire [3:0]  memory_mem_dqs,                        //                .mem_dqs
		inout  wire [3:0]  memory_mem_dqs_n,                      //                .mem_dqs_n
		output wire        memory_mem_odt,                        //                .mem_odt
		output wire [3:0]  memory_mem_dm,                         //                .mem_dm
		input  wire        memory_oct_rzqin,                      //                .oct_rzqin
		
		input  wire        fpga_spi_0_MISO,                            //           spi_0.MISO
		output wire        fpga_spi_0_MOSI,                            //                .MOSI
		output wire        fpga_spi_0_SCLK,                            //                .SCLK
		output wire        fpga_spi_0_SS_n,                            //                .SS_n

		input  wire        fpga_uart_0_rxd,                            //          uart_0.rxd
		output wire        fpga_uart_0_txd,                            //                .txd
		
		output wire        video_tft_vid_clk,                     //       video_tft.vid_clk
		output wire [23:0] video_tft_vid_data,                    //                .vid_data
		output wire        video_tft_vid_datavalid,               //                .vid_datavalid
		output wire        video_tft_vid_v_sync,                  //                .vid_v_sync
		output wire        video_tft_vid_h_sync,                  //                .vid_h_sync
		output wire        video_tft_bl                     //       video_tft.vid_clk
);

	wire hps_0_h2f_reset_n;
	
	wire clk_tft;
	wire clk66m;
	
	wire [1:0]FPGA_BUTTON_debounced;
	
	vga_pll vga_pll(
		.refclk(fpga_clk50m),   //  refclk.clk
		.rst(0),      //   reset.reset
		.outclk_0(clk_tft), // outclk0.clk
		.outclk_1(clk66m), // outclk1.clk
		.locked()    //  locked.export
	);
	
	assign video_tft_vid_clk = clk_tft;
	assign video_tft_bl = 1;
	
	
	key_filter key_filter0(
		.Clk(fpga_clk50m),
		.Rst_n(hps_0_h2f_reset_n),
		.key_in(fpga_button[0]),
		.key_flag(),
		.key_state(FPGA_BUTTON_debounced[0])
	);
	
	key_filter key_filter1(
		.Clk(fpga_clk50m),
		.Rst_n(hps_0_h2f_reset_n),
		.key_in(fpga_button[1]),
		.key_flag(),
		.key_state(FPGA_BUTTON_debounced[1])
	);

	soc_system u0 (
		.video_tft_vid_clk                     (video_tft_vid_clk),                     //       video_tft.vid_clk
		.video_tft_vid_data                    (video_tft_vid_data),                    //                .vid_data
		.video_tft_underflow                   (),                   //                .underflow
		.video_tft_vid_datavalid               (video_tft_vid_datavalid),               //                .vid_datavalid
		.video_tft_vid_v_sync                  (video_tft_vid_v_sync),                  //                .vid_v_sync
		.video_tft_vid_h_sync                  (video_tft_vid_h_sync),                  //                .vid_h_sync
		.video_tft_vid_f                       (),                       //                .vid_f
		.video_tft_vid_h                       (),                       //                .vid_h
		.video_tft_vid_v                       (),                       //                .vid_v
		
		.button_pio_export                     (FPGA_BUTTON_debounced),                     //      button_pio.export
		
		.clk_clk                               (fpga_clk50m),                               //             clk.clk
		
		.hps_0_h2f_reset_reset_n               (hps_0_h2f_reset_n),               // hps_0_h2f_reset.reset_n
		
		.hps_0_hps_io_hps_io_emac1_inst_TX_CLK (hps_eth1_TX_CLK), //    hps_0_hps_io.hps_io_emac1_inst_TX_CLK
		.hps_0_hps_io_hps_io_emac1_inst_TXD0   (hps_eth1_TXD0),   //                .hps_io_emac1_inst_TXD0
		.hps_0_hps_io_hps_io_emac1_inst_TXD1   (hps_eth1_TXD1),   //                .hps_io_emac1_inst_TXD1
		.hps_0_hps_io_hps_io_emac1_inst_TXD2   (hps_eth1_TXD2),   //                .hps_io_emac1_inst_TXD2
		.hps_0_hps_io_hps_io_emac1_inst_TXD3   (hps_eth1_TXD3),   //                .hps_io_emac1_inst_TXD3
		.hps_0_hps_io_hps_io_emac1_inst_RXD0   (hps_eth1_RXD0),   //                .hps_io_emac1_inst_RXD0
		.hps_0_hps_io_hps_io_emac1_inst_MDIO   (hps_eth1_MDIO),   //                .hps_io_emac1_inst_MDIO
		.hps_0_hps_io_hps_io_emac1_inst_MDC    (hps_eth1_MDC),    //                .hps_io_emac1_inst_MDC
		.hps_0_hps_io_hps_io_emac1_inst_RX_CTL (hps_eth1_RX_CTL), //                .hps_io_emac1_inst_RX_CTL
		.hps_0_hps_io_hps_io_emac1_inst_TX_CTL (hps_eth1_TX_CTL), //                .hps_io_emac1_inst_TX_CTL
		.hps_0_hps_io_hps_io_emac1_inst_RX_CLK (hps_eth1_RX_CLK), //                .hps_io_emac1_inst_RX_CLK
		.hps_0_hps_io_hps_io_emac1_inst_RXD1   (hps_eth1_RXD1),   //                .hps_io_emac1_inst_RXD1
		.hps_0_hps_io_hps_io_emac1_inst_RXD2   (hps_eth1_RXD2),   //                .hps_io_emac1_inst_RXD2
		.hps_0_hps_io_hps_io_emac1_inst_RXD3   (hps_eth1_RXD3),   //                .hps_io_emac1_inst_RXD3
		
		.hps_0_hps_io_hps_io_sdio_inst_CMD     (hps_sdio_CMD),     //                .hps_io_sdio_inst_CMD
		.hps_0_hps_io_hps_io_sdio_inst_D0      (hps_sdio_D0),      //                .hps_io_sdio_inst_D0
		.hps_0_hps_io_hps_io_sdio_inst_D1      (hps_sdio_D1),      //                .hps_io_sdio_inst_D1
		.hps_0_hps_io_hps_io_sdio_inst_CLK     (hps_sdio_CLK),     //                .hps_io_sdio_inst_CLK
		.hps_0_hps_io_hps_io_sdio_inst_D2      (hps_sdio_D2),      //                .hps_io_sdio_inst_D2
		.hps_0_hps_io_hps_io_sdio_inst_D3      (hps_sdio_D3),      //                .hps_io_sdio_inst_D3
		
		.hps_0_hps_io_hps_io_usb1_inst_D0      (hps_usb1_D0),      //                .hps_io_usb1_inst_D0
		.hps_0_hps_io_hps_io_usb1_inst_D1      (hps_usb1_D1),      //                .hps_io_usb1_inst_D1
		.hps_0_hps_io_hps_io_usb1_inst_D2      (hps_usb1_D2),      //                .hps_io_usb1_inst_D2
		.hps_0_hps_io_hps_io_usb1_inst_D3      (hps_usb1_D3),      //                .hps_io_usb1_inst_D3
		.hps_0_hps_io_hps_io_usb1_inst_D4      (hps_usb1_D4),      //                .hps_io_usb1_inst_D4
		.hps_0_hps_io_hps_io_usb1_inst_D5      (hps_usb1_D5),      //                .hps_io_usb1_inst_D5
		.hps_0_hps_io_hps_io_usb1_inst_D6      (hps_usb1_D6),      //                .hps_io_usb1_inst_D6
		.hps_0_hps_io_hps_io_usb1_inst_D7      (hps_usb1_D7),      //                .hps_io_usb1_inst_D7
		.hps_0_hps_io_hps_io_usb1_inst_CLK     (hps_usb1_CLK),     //                .hps_io_usb1_inst_CLK
		.hps_0_hps_io_hps_io_usb1_inst_STP     (hps_usb1_STP),     //                .hps_io_usb1_inst_STP
		.hps_0_hps_io_hps_io_usb1_inst_DIR     (hps_usb1_DIR),     //                .hps_io_usb1_inst_DIR
		.hps_0_hps_io_hps_io_usb1_inst_NXT     (hps_usb1_NXT),     //                .hps_io_usb1_inst_NXT
		
		.hps_0_hps_io_hps_io_spim0_inst_CLK    (hps_spim0_CLK),    //                .hps_io_spim0_inst_CLK
		.hps_0_hps_io_hps_io_spim0_inst_MOSI   (hps_spim0_MOSI),   //                .hps_io_spim0_inst_MOSI
		.hps_0_hps_io_hps_io_spim0_inst_MISO   (hps_spim0_MISO),   //                .hps_io_spim0_inst_MISO
		.hps_0_hps_io_hps_io_spim0_inst_SS0    (hps_spim0_SS0),    //                .hps_io_spim0_inst_SS0
		
		.hps_0_hps_io_hps_io_spim1_inst_CLK    (hps_spim1_CLK),    //                .hps_io_spim1_inst_CLK
		.hps_0_hps_io_hps_io_spim1_inst_MOSI   (hps_spim1_MOSI),   //                .hps_io_spim1_inst_MOSI
		.hps_0_hps_io_hps_io_spim1_inst_MISO   (hps_spim1_MISO),   //                .hps_io_spim1_inst_MISO
		.hps_0_hps_io_hps_io_spim1_inst_SS0    (hps_spim1_SS0),    //                .hps_io_spim1_inst_SS0
		
		.hps_0_hps_io_hps_io_uart0_inst_RX     (hps_uart0_RX),     //                .hps_io_uart0_inst_RX
		.hps_0_hps_io_hps_io_uart0_inst_TX     (hps_uart0_TX),     //                .hps_io_uart0_inst_TX
		
		.hps_0_hps_io_hps_io_i2c0_inst_SDA     (hps_i2c0_SDA),     //                .hps_io_i2c0_inst_SDA
		.hps_0_hps_io_hps_io_i2c0_inst_SCL     (hps_i2c0_SCL),     //                .hps_io_i2c0_inst_SCL
		
		.hps_0_hps_io_hps_io_i2c1_inst_SDA     (hps_i2c1_SDA),     //                .hps_io_i2c1_inst_SDA
		.hps_0_hps_io_hps_io_i2c1_inst_SCL     (hps_i2c1_SCL),     //                .hps_io_i2c1_inst_SCL
		
		.hps_0_hps_io_hps_io_can1_inst_RX      (hps_can1_RX),      //                .hps_io_can1_inst_RX
		.hps_0_hps_io_hps_io_can1_inst_TX      (hps_can1_TX),      //                .hps_io_can1_inst_TX
		
		.hps_0_hps_io_hps_io_gpio_inst_GPIO00  (hps_gpio_GPIO00),  //                .hps_io_gpio_inst_GPIO00

		.hps_0_hps_io_hps_io_gpio_inst_GPIO09  (hps_usb1_CONV_N),  //                .hps_io_gpio_inst_GPIO09

		.hps_0_hps_io_hps_io_gpio_inst_GPIO29  (hps_key[0]),  //                .hps_io_gpio_inst_GPIO29
		.hps_0_hps_io_hps_io_gpio_inst_GPIO30  (hps_key[1]),  //                .hps_io_gpio_inst_GPIO30
		.hps_0_hps_io_hps_io_gpio_inst_GPIO31  (hps_led[0]),  //                .hps_io_gpio_inst_GPIO31
		.hps_0_hps_io_hps_io_gpio_inst_GPIO32  (hps_led[1]),  //                .hps_io_gpio_inst_GPIO32
		.hps_0_hps_io_hps_io_gpio_inst_GPIO34  (hps_eth1_INT_N),  //                .hps_io_gpio_inst_GPIO34
		.hps_0_hps_io_hps_io_gpio_inst_GPIO37  (hps_gpio_GPIO37),  //                .hps_io_gpio_inst_GPIO37
		.hps_0_hps_io_hps_io_gpio_inst_GPIO44  (hps_gpio_GPIO44),  //                .hps_io_gpio_inst_GPIO44
		.hps_0_hps_io_hps_io_gpio_inst_GPIO48  (hps_gpio_GPIO48),  //                .hps_io_gpio_inst_GPIO48
		.hps_0_hps_io_hps_io_gpio_inst_GPIO61  (hps_gpio_GPIO61),  //                .hps_io_gpio_inst_GPIO61
		.hps_0_hps_io_hps_io_gpio_inst_GPIO62  (hps_gpio_GPIO62),  //                .hps_io_gpio_inst_GPIO62
		
		.led_pio_export                        (fpga_led),                        //         led_pio.export
		
		.memory_mem_a                          (memory_mem_a),                          //          memory.mem_a
		.memory_mem_ba                         (memory_mem_ba),                         //                .mem_ba
		.memory_mem_ck                         (memory_mem_ck),                         //                .mem_ck
		.memory_mem_ck_n                       (memory_mem_ck_n),                       //                .mem_ck_n
		.memory_mem_cke                        (memory_mem_cke),                        //                .mem_cke
		.memory_mem_cs_n                       (memory_mem_cs_n),                       //                .mem_cs_n
		.memory_mem_ras_n                      (memory_mem_ras_n),                      //                .mem_ras_n
		.memory_mem_cas_n                      (memory_mem_cas_n),                      //                .mem_cas_n
		.memory_mem_we_n                       (memory_mem_we_n),                       //                .mem_we_n
		.memory_mem_reset_n                    (memory_mem_reset_n),                    //                .mem_reset_n
		.memory_mem_dq                         (memory_mem_dq),                         //                .mem_dq
		.memory_mem_dqs                        (memory_mem_dqs),                        //                .mem_dqs
		.memory_mem_dqs_n                      (memory_mem_dqs_n),                      //                .mem_dqs_n
		.memory_mem_odt                        (memory_mem_odt),                        //                .mem_odt
		.memory_mem_dm                         (memory_mem_dm),                         //                .mem_dm
		.memory_oct_rzqin                      (memory_oct_rzqin),                      //                .oct_rzqin
		
		.reset_reset_n                         (hps_0_h2f_reset_n),                         //           reset.reset_n
		
		.uart_0_rxd                            (fpga_uart_0_rxd),                            //          uart_0.rxd
		.uart_0_txd                            (fpga_uart_0_txd),                            //                .txd
		
		.clk66m_clk                            (clk66m),                            //          clk66m.clk
		
		.spi_0_MISO                            (fpga_spi_0_MISO),                            //           spi_0.MISO
		.spi_0_MOSI                            (fpga_spi_0_MOSI),                            //                .MOSI
		.spi_0_SCLK                            (fpga_spi_0_SCLK),                            //                .SCLK
		.spi_0_SS_n                            (fpga_spi_0_SS_n),                            //                .SS_n

      .i2c_0_scl_pad_io                      (fpga_i2c_0_scl),                      //           i2c_0.scl_pad_io
      .i2c_0_sda_pad_io                      (fpga_i2c_0_sda)  
	);
	 
endmodule