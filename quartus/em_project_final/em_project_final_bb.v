
module em_project_final (
	clk_clk,
	pll_0_outclk_shift_clk,
	pll_0_outclk_clk,
	pll_0_locked_export,
	sdram_controller_0_wire_addr,
	sdram_controller_0_wire_ba,
	sdram_controller_0_wire_cas_n,
	sdram_controller_0_wire_cke,
	sdram_controller_0_wire_cs_n,
	sdram_controller_0_wire_dq,
	sdram_controller_0_wire_dqm,
	sdram_controller_0_wire_ras_n,
	sdram_controller_0_wire_we_n,
	reset_reset_n);	

	input		clk_clk;
	output		pll_0_outclk_shift_clk;
	output		pll_0_outclk_clk;
	output		pll_0_locked_export;
	output	[12:0]	sdram_controller_0_wire_addr;
	output	[1:0]	sdram_controller_0_wire_ba;
	output		sdram_controller_0_wire_cas_n;
	output		sdram_controller_0_wire_cke;
	output		sdram_controller_0_wire_cs_n;
	inout	[15:0]	sdram_controller_0_wire_dq;
	output	[1:0]	sdram_controller_0_wire_dqm;
	output		sdram_controller_0_wire_ras_n;
	output		sdram_controller_0_wire_we_n;
	input		reset_reset_n;
endmodule
