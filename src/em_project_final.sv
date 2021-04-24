
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module em_project_final(

	//////////// CLOCK //////////
	input 		          		CLOCK_50,

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SDRAM //////////
	output		    [12:0]		DRAM_ADDR,
	output		     [1:0]		DRAM_BA,
	output		          		DRAM_CAS_N,
	output		          		DRAM_CKE,
	output		          		DRAM_CLK,
	output		          		DRAM_CS_N,
	inout 		    [15:0]		DRAM_DQ,
	output		          		DRAM_LDQM,
	output		          		DRAM_RAS_N,
	output		          		DRAM_UDQM,
	output		          		DRAM_WE_N,

	//////////// VGA //////////
	output		          		VGA_BLANK_N,
	output		     [7:0]		VGA_B,
	output		          		VGA_CLK,
	output		     [7:0]		VGA_G,
	output		          		VGA_HS,
	output		     [7:0]		VGA_R,
	output		          		VGA_SYNC_N,
	output		          		VGA_VS
);



//=======================================================
//  REG/WIRE declarations
//=======================================================

logic clk; 
logic pll_locked, pll_outclk, pll_outclk_shift; //PLL wires
logic reset_n; 


//=======================================================
//  REG/WIRE assignments
//=======================================================
assign clk = CLOCK_50; 
assign reset_n = KEY[0]; 


assign DRAM_CLK = pll_outclk_shift; 
//=======================================================
//  Module declarations
//=======================================================



em_project_final_pd PD( .clk_clk(clk),               							//      clk.clk
						.pio_0_external_connection_export(LEDR), 				// 		pio_0_external_connection.export
						.pll_0_locked_export(pll_locked),           			//      pll_0_locked.export
						.pll_0_outclk_clk(pll_outclk),              			//      pll_0_outclk.clk
						.pll_0_outclk_shift_clk(pll_outclk_shift),  			//      pll_0_outclk_shift.clk
						.reset_reset_n(reset_n),                 				//      reset.reset_n
						.sdram_controller_0_wire_addr(DRAM_ADDR),   			// 		sdram_controller_0_wire.addr
						.sdram_controller_0_wire_ba(DRAM_BA),    				//      .ba
						.sdram_controller_0_wire_cas_n(DRAM_CAS_N), 			//      .cas_n
						.sdram_controller_0_wire_cke(DRAM_CKE),   				//      .cke
						.sdram_controller_0_wire_cs_n(DRAM_CS_N),  				//      .cs_n
						.sdram_controller_0_wire_dq(DRAM_DQ),    				//      .dq
						.sdram_controller_0_wire_dqm({DRAM_UDQM, DRAM_LDQM}),	//      .dqm
						.sdram_controller_0_wire_ras_n(DRAM_RAS_N), 			//      .ras_n
						.sdram_controller_0_wire_we_n (DRAM_WE_N)  				//      .we_n
						); 


endmodule