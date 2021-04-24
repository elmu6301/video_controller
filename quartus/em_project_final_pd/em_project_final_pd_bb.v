
module em_project_final_pd (
	clk_clk,
	fifo_0_out_valid,
	fifo_0_out_data,
	fifo_0_out_channel,
	fifo_0_out_error,
	fifo_0_out_startofpacket,
	fifo_0_out_endofpacket,
	fifo_0_out_empty,
	fifo_0_out_ready,
	pio_0_external_connection_export,
	pll_rfr_locked_export,
	pll_rfr_outclk_clk,
	pll_sdram_locked_export,
	pll_sdram_outclk_clk,
	reset_reset_n,
	sdram_controller_0_wire_addr,
	sdram_controller_0_wire_ba,
	sdram_controller_0_wire_cas_n,
	sdram_controller_0_wire_cke,
	sdram_controller_0_wire_cs_n,
	sdram_controller_0_wire_dq,
	sdram_controller_0_wire_dqm,
	sdram_controller_0_wire_ras_n,
	sdram_controller_0_wire_we_n,
	pll_sdram_outclk_ps_clk);	

	input		clk_clk;
	output		fifo_0_out_valid;
	output	[31:0]	fifo_0_out_data;
	output	[7:0]	fifo_0_out_channel;
	output	[7:0]	fifo_0_out_error;
	output		fifo_0_out_startofpacket;
	output		fifo_0_out_endofpacket;
	output		fifo_0_out_empty;
	input		fifo_0_out_ready;
	output	[9:0]	pio_0_external_connection_export;
	output		pll_rfr_locked_export;
	output		pll_rfr_outclk_clk;
	output		pll_sdram_locked_export;
	output		pll_sdram_outclk_clk;
	input		reset_reset_n;
	output	[12:0]	sdram_controller_0_wire_addr;
	output	[1:0]	sdram_controller_0_wire_ba;
	output		sdram_controller_0_wire_cas_n;
	output		sdram_controller_0_wire_cke;
	output		sdram_controller_0_wire_cs_n;
	inout	[15:0]	sdram_controller_0_wire_dq;
	output	[1:0]	sdram_controller_0_wire_dqm;
	output		sdram_controller_0_wire_ras_n;
	output		sdram_controller_0_wire_we_n;
	output		pll_sdram_outclk_ps_clk;
endmodule
