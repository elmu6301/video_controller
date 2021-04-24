	em_project_final_pd u0 (
		.clk_clk                          (<connected-to-clk_clk>),                          //                       clk.clk
		.fifo_0_out_valid                 (<connected-to-fifo_0_out_valid>),                 //                fifo_0_out.valid
		.fifo_0_out_data                  (<connected-to-fifo_0_out_data>),                  //                          .data
		.fifo_0_out_channel               (<connected-to-fifo_0_out_channel>),               //                          .channel
		.fifo_0_out_error                 (<connected-to-fifo_0_out_error>),                 //                          .error
		.fifo_0_out_startofpacket         (<connected-to-fifo_0_out_startofpacket>),         //                          .startofpacket
		.fifo_0_out_endofpacket           (<connected-to-fifo_0_out_endofpacket>),           //                          .endofpacket
		.fifo_0_out_empty                 (<connected-to-fifo_0_out_empty>),                 //                          .empty
		.fifo_0_out_ready                 (<connected-to-fifo_0_out_ready>),                 //                          .ready
		.pio_0_external_connection_export (<connected-to-pio_0_external_connection_export>), // pio_0_external_connection.export
		.pll_rfr_locked_export            (<connected-to-pll_rfr_locked_export>),            //            pll_rfr_locked.export
		.pll_rfr_outclk_clk               (<connected-to-pll_rfr_outclk_clk>),               //            pll_rfr_outclk.clk
		.pll_sdram_locked_export          (<connected-to-pll_sdram_locked_export>),          //          pll_sdram_locked.export
		.pll_sdram_outclk_clk             (<connected-to-pll_sdram_outclk_clk>),             //          pll_sdram_outclk.clk
		.reset_reset_n                    (<connected-to-reset_reset_n>),                    //                     reset.reset_n
		.sdram_controller_0_wire_addr     (<connected-to-sdram_controller_0_wire_addr>),     //   sdram_controller_0_wire.addr
		.sdram_controller_0_wire_ba       (<connected-to-sdram_controller_0_wire_ba>),       //                          .ba
		.sdram_controller_0_wire_cas_n    (<connected-to-sdram_controller_0_wire_cas_n>),    //                          .cas_n
		.sdram_controller_0_wire_cke      (<connected-to-sdram_controller_0_wire_cke>),      //                          .cke
		.sdram_controller_0_wire_cs_n     (<connected-to-sdram_controller_0_wire_cs_n>),     //                          .cs_n
		.sdram_controller_0_wire_dq       (<connected-to-sdram_controller_0_wire_dq>),       //                          .dq
		.sdram_controller_0_wire_dqm      (<connected-to-sdram_controller_0_wire_dqm>),      //                          .dqm
		.sdram_controller_0_wire_ras_n    (<connected-to-sdram_controller_0_wire_ras_n>),    //                          .ras_n
		.sdram_controller_0_wire_we_n     (<connected-to-sdram_controller_0_wire_we_n>),     //                          .we_n
		.pll_sdram_outclk_ps_clk          (<connected-to-pll_sdram_outclk_ps_clk>)           //       pll_sdram_outclk_ps.clk
	);

