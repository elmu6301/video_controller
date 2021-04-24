// em_project_final.v

// Generated using ACDS version 20.1 720

`timescale 1 ps / 1 ps
module em_project_final (
		input  wire        clk_clk,                       //                     clk.clk
		output wire        pll_0_locked_export,           //            pll_0_locked.export
		output wire        pll_0_outclk_clk,              //            pll_0_outclk.clk
		output wire        pll_0_outclk_shift_clk,        //      pll_0_outclk_shift.clk
		input  wire        reset_reset_n,                 //                   reset.reset_n
		output wire [12:0] sdram_controller_0_wire_addr,  // sdram_controller_0_wire.addr
		output wire [1:0]  sdram_controller_0_wire_ba,    //                        .ba
		output wire        sdram_controller_0_wire_cas_n, //                        .cas_n
		output wire        sdram_controller_0_wire_cke,   //                        .cke
		output wire        sdram_controller_0_wire_cs_n,  //                        .cs_n
		inout  wire [15:0] sdram_controller_0_wire_dq,    //                        .dq
		output wire [1:0]  sdram_controller_0_wire_dqm,   //                        .dqm
		output wire        sdram_controller_0_wire_ras_n, //                        .ras_n
		output wire        sdram_controller_0_wire_we_n   //                        .we_n
	);

	wire         pll_0_outclk1_clk;                                              // pll_0:outclk_1 -> [master_0:clk_clk, mm_interconnect_0:pll_0_outclk1_clk, pio_0:clk, rst_controller:clk, rst_controller_002:clk, sdram_controller_0:clk]
	wire  [63:0] pll_0_reconfig_from_pll_reconfig_from_pll;                      // pll_0:reconfig_from_pll -> pll_reconfig_0:reconfig_from_pll
	wire  [63:0] pll_reconfig_0_reconfig_to_pll_reconfig_to_pll;                 // pll_reconfig_0:reconfig_to_pll -> pll_0:reconfig_to_pll
	wire  [31:0] master_0_master_readdata;                                       // mm_interconnect_0:master_0_master_readdata -> master_0:master_readdata
	wire         master_0_master_waitrequest;                                    // mm_interconnect_0:master_0_master_waitrequest -> master_0:master_waitrequest
	wire  [31:0] master_0_master_address;                                        // master_0:master_address -> mm_interconnect_0:master_0_master_address
	wire         master_0_master_read;                                           // master_0:master_read -> mm_interconnect_0:master_0_master_read
	wire   [3:0] master_0_master_byteenable;                                     // master_0:master_byteenable -> mm_interconnect_0:master_0_master_byteenable
	wire         master_0_master_readdatavalid;                                  // mm_interconnect_0:master_0_master_readdatavalid -> master_0:master_readdatavalid
	wire         master_0_master_write;                                          // master_0:master_write -> mm_interconnect_0:master_0_master_write
	wire  [31:0] master_0_master_writedata;                                      // master_0:master_writedata -> mm_interconnect_0:master_0_master_writedata
	wire  [31:0] mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_readdata;    // pll_reconfig_0:mgmt_readdata -> mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_readdata
	wire         mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_waitrequest; // pll_reconfig_0:mgmt_waitrequest -> mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_waitrequest
	wire   [5:0] mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_address;     // mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_address -> pll_reconfig_0:mgmt_address
	wire         mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_read;        // mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_read -> pll_reconfig_0:mgmt_read
	wire         mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_write;       // mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_write -> pll_reconfig_0:mgmt_write
	wire  [31:0] mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_writedata;   // mm_interconnect_0:pll_reconfig_0_mgmt_avalon_slave_writedata -> pll_reconfig_0:mgmt_writedata
	wire         mm_interconnect_0_pio_0_s1_chipselect;                          // mm_interconnect_0:pio_0_s1_chipselect -> pio_0:chipselect
	wire  [31:0] mm_interconnect_0_pio_0_s1_readdata;                            // pio_0:readdata -> mm_interconnect_0:pio_0_s1_readdata
	wire   [1:0] mm_interconnect_0_pio_0_s1_address;                             // mm_interconnect_0:pio_0_s1_address -> pio_0:address
	wire         mm_interconnect_0_pio_0_s1_write;                               // mm_interconnect_0:pio_0_s1_write -> pio_0:write_n
	wire  [31:0] mm_interconnect_0_pio_0_s1_writedata;                           // mm_interconnect_0:pio_0_s1_writedata -> pio_0:writedata
	wire         mm_interconnect_0_sdram_controller_0_s1_chipselect;             // mm_interconnect_0:sdram_controller_0_s1_chipselect -> sdram_controller_0:az_cs
	wire  [15:0] mm_interconnect_0_sdram_controller_0_s1_readdata;               // sdram_controller_0:za_data -> mm_interconnect_0:sdram_controller_0_s1_readdata
	wire         mm_interconnect_0_sdram_controller_0_s1_waitrequest;            // sdram_controller_0:za_waitrequest -> mm_interconnect_0:sdram_controller_0_s1_waitrequest
	wire  [24:0] mm_interconnect_0_sdram_controller_0_s1_address;                // mm_interconnect_0:sdram_controller_0_s1_address -> sdram_controller_0:az_addr
	wire         mm_interconnect_0_sdram_controller_0_s1_read;                   // mm_interconnect_0:sdram_controller_0_s1_read -> sdram_controller_0:az_rd_n
	wire   [1:0] mm_interconnect_0_sdram_controller_0_s1_byteenable;             // mm_interconnect_0:sdram_controller_0_s1_byteenable -> sdram_controller_0:az_be_n
	wire         mm_interconnect_0_sdram_controller_0_s1_readdatavalid;          // sdram_controller_0:za_valid -> mm_interconnect_0:sdram_controller_0_s1_readdatavalid
	wire         mm_interconnect_0_sdram_controller_0_s1_write;                  // mm_interconnect_0:sdram_controller_0_s1_write -> sdram_controller_0:az_wr_n
	wire  [15:0] mm_interconnect_0_sdram_controller_0_s1_writedata;              // mm_interconnect_0:sdram_controller_0_s1_writedata -> sdram_controller_0:az_data
	wire         rst_controller_reset_out_reset;                                 // rst_controller:reset_out -> [mm_interconnect_0:master_0_clk_reset_reset_bridge_in_reset_reset, mm_interconnect_0:pio_0_reset_reset_bridge_in_reset_reset, pio_0:reset_n]
	wire         rst_controller_001_reset_out_reset;                             // rst_controller_001:reset_out -> [mm_interconnect_0:pll_reconfig_0_mgmt_reset_reset_bridge_in_reset_reset, pll_reconfig_0:mgmt_reset]
	wire         rst_controller_002_reset_out_reset;                             // rst_controller_002:reset_out -> [mm_interconnect_0:sdram_controller_0_reset_reset_bridge_in_reset_reset, sdram_controller_0:reset_n]
	wire         master_0_master_reset_reset;                                    // master_0:master_reset_reset -> rst_controller_002:reset_in1

	em_project_final_master_0 #(
		.USE_PLI     (0),
		.PLI_PORT    (50000),
		.FIFO_DEPTHS (2)
	) master_0 (
		.clk_clk              (pll_0_outclk1_clk),             //          clk.clk
		.clk_reset_reset      (~reset_reset_n),                //    clk_reset.reset
		.master_address       (master_0_master_address),       //       master.address
		.master_readdata      (master_0_master_readdata),      //             .readdata
		.master_read          (master_0_master_read),          //             .read
		.master_write         (master_0_master_write),         //             .write
		.master_writedata     (master_0_master_writedata),     //             .writedata
		.master_waitrequest   (master_0_master_waitrequest),   //             .waitrequest
		.master_readdatavalid (master_0_master_readdatavalid), //             .readdatavalid
		.master_byteenable    (master_0_master_byteenable),    //             .byteenable
		.master_reset_reset   (master_0_master_reset_reset)    // master_reset.reset
	);

	em_project_final_pio_0 pio_0 (
		.clk        (pll_0_outclk1_clk),                     //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),       //               reset.reset_n
		.address    (mm_interconnect_0_pio_0_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_pio_0_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_pio_0_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_pio_0_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_pio_0_s1_readdata),   //                    .readdata
		.out_port   ()                                       // external_connection.export
	);

	em_project_final_pll_0 pll_0 (
		.refclk            (clk_clk),                                        //            refclk.clk
		.rst               (~reset_reset_n),                                 //             reset.reset
		.outclk_0          (pll_0_outclk_shift_clk),                         //           outclk0.clk
		.outclk_1          (pll_0_outclk1_clk),                              //           outclk1.clk
		.outclk_2          (pll_0_outclk_clk),                               //           outclk2.clk
		.locked            (pll_0_locked_export),                            //            locked.export
		.reconfig_to_pll   (pll_reconfig_0_reconfig_to_pll_reconfig_to_pll), //   reconfig_to_pll.reconfig_to_pll
		.reconfig_from_pll (pll_0_reconfig_from_pll_reconfig_from_pll)       // reconfig_from_pll.reconfig_from_pll
	);

	altera_pll_reconfig_top #(
		.device_family       ("Cyclone V"),
		.ENABLE_MIF          (0),
		.MIF_FILE_NAME       (""),
		.ENABLE_BYTEENABLE   (0),
		.BYTEENABLE_WIDTH    (4),
		.RECONFIG_ADDR_WIDTH (6),
		.RECONFIG_DATA_WIDTH (32),
		.reconf_width        (64),
		.WAIT_FOR_LOCK       (1)
	) pll_reconfig_0 (
		.mgmt_clk          (clk_clk),                                                        //          mgmt_clk.clk
		.mgmt_reset        (rst_controller_001_reset_out_reset),                             //        mgmt_reset.reset
		.mgmt_waitrequest  (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_waitrequest), // mgmt_avalon_slave.waitrequest
		.mgmt_read         (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_read),        //                  .read
		.mgmt_write        (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_write),       //                  .write
		.mgmt_readdata     (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_readdata),    //                  .readdata
		.mgmt_address      (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_address),     //                  .address
		.mgmt_writedata    (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_writedata),   //                  .writedata
		.reconfig_to_pll   (pll_reconfig_0_reconfig_to_pll_reconfig_to_pll),                 //   reconfig_to_pll.reconfig_to_pll
		.reconfig_from_pll (pll_0_reconfig_from_pll_reconfig_from_pll),                      // reconfig_from_pll.reconfig_from_pll
		.mgmt_byteenable   (4'b0000)                                                         //       (terminated)
	);

	em_project_final_sdram_controller_0 sdram_controller_0 (
		.clk            (pll_0_outclk1_clk),                                     //   clk.clk
		.reset_n        (~rst_controller_002_reset_out_reset),                   // reset.reset_n
		.az_addr        (mm_interconnect_0_sdram_controller_0_s1_address),       //    s1.address
		.az_be_n        (~mm_interconnect_0_sdram_controller_0_s1_byteenable),   //      .byteenable_n
		.az_cs          (mm_interconnect_0_sdram_controller_0_s1_chipselect),    //      .chipselect
		.az_data        (mm_interconnect_0_sdram_controller_0_s1_writedata),     //      .writedata
		.az_rd_n        (~mm_interconnect_0_sdram_controller_0_s1_read),         //      .read_n
		.az_wr_n        (~mm_interconnect_0_sdram_controller_0_s1_write),        //      .write_n
		.za_data        (mm_interconnect_0_sdram_controller_0_s1_readdata),      //      .readdata
		.za_valid       (mm_interconnect_0_sdram_controller_0_s1_readdatavalid), //      .readdatavalid
		.za_waitrequest (mm_interconnect_0_sdram_controller_0_s1_waitrequest),   //      .waitrequest
		.zs_addr        (sdram_controller_0_wire_addr),                          //  wire.export
		.zs_ba          (sdram_controller_0_wire_ba),                            //      .export
		.zs_cas_n       (sdram_controller_0_wire_cas_n),                         //      .export
		.zs_cke         (sdram_controller_0_wire_cke),                           //      .export
		.zs_cs_n        (sdram_controller_0_wire_cs_n),                          //      .export
		.zs_dq          (sdram_controller_0_wire_dq),                            //      .export
		.zs_dqm         (sdram_controller_0_wire_dqm),                           //      .export
		.zs_ras_n       (sdram_controller_0_wire_ras_n),                         //      .export
		.zs_we_n        (sdram_controller_0_wire_we_n)                           //      .export
	);

	em_project_final_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                         (clk_clk),                                                        //                                       clk_0_clk.clk
		.pll_0_outclk1_clk                                     (pll_0_outclk1_clk),                                              //                                   pll_0_outclk1.clk
		.master_0_clk_reset_reset_bridge_in_reset_reset        (rst_controller_reset_out_reset),                                 //        master_0_clk_reset_reset_bridge_in_reset.reset
		.pio_0_reset_reset_bridge_in_reset_reset               (rst_controller_reset_out_reset),                                 //               pio_0_reset_reset_bridge_in_reset.reset
		.pll_reconfig_0_mgmt_reset_reset_bridge_in_reset_reset (rst_controller_001_reset_out_reset),                             // pll_reconfig_0_mgmt_reset_reset_bridge_in_reset.reset
		.sdram_controller_0_reset_reset_bridge_in_reset_reset  (rst_controller_002_reset_out_reset),                             //  sdram_controller_0_reset_reset_bridge_in_reset.reset
		.master_0_master_address                               (master_0_master_address),                                        //                                 master_0_master.address
		.master_0_master_waitrequest                           (master_0_master_waitrequest),                                    //                                                .waitrequest
		.master_0_master_byteenable                            (master_0_master_byteenable),                                     //                                                .byteenable
		.master_0_master_read                                  (master_0_master_read),                                           //                                                .read
		.master_0_master_readdata                              (master_0_master_readdata),                                       //                                                .readdata
		.master_0_master_readdatavalid                         (master_0_master_readdatavalid),                                  //                                                .readdatavalid
		.master_0_master_write                                 (master_0_master_write),                                          //                                                .write
		.master_0_master_writedata                             (master_0_master_writedata),                                      //                                                .writedata
		.pio_0_s1_address                                      (mm_interconnect_0_pio_0_s1_address),                             //                                        pio_0_s1.address
		.pio_0_s1_write                                        (mm_interconnect_0_pio_0_s1_write),                               //                                                .write
		.pio_0_s1_readdata                                     (mm_interconnect_0_pio_0_s1_readdata),                            //                                                .readdata
		.pio_0_s1_writedata                                    (mm_interconnect_0_pio_0_s1_writedata),                           //                                                .writedata
		.pio_0_s1_chipselect                                   (mm_interconnect_0_pio_0_s1_chipselect),                          //                                                .chipselect
		.pll_reconfig_0_mgmt_avalon_slave_address              (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_address),     //                pll_reconfig_0_mgmt_avalon_slave.address
		.pll_reconfig_0_mgmt_avalon_slave_write                (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_write),       //                                                .write
		.pll_reconfig_0_mgmt_avalon_slave_read                 (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_read),        //                                                .read
		.pll_reconfig_0_mgmt_avalon_slave_readdata             (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_readdata),    //                                                .readdata
		.pll_reconfig_0_mgmt_avalon_slave_writedata            (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_writedata),   //                                                .writedata
		.pll_reconfig_0_mgmt_avalon_slave_waitrequest          (mm_interconnect_0_pll_reconfig_0_mgmt_avalon_slave_waitrequest), //                                                .waitrequest
		.sdram_controller_0_s1_address                         (mm_interconnect_0_sdram_controller_0_s1_address),                //                           sdram_controller_0_s1.address
		.sdram_controller_0_s1_write                           (mm_interconnect_0_sdram_controller_0_s1_write),                  //                                                .write
		.sdram_controller_0_s1_read                            (mm_interconnect_0_sdram_controller_0_s1_read),                   //                                                .read
		.sdram_controller_0_s1_readdata                        (mm_interconnect_0_sdram_controller_0_s1_readdata),               //                                                .readdata
		.sdram_controller_0_s1_writedata                       (mm_interconnect_0_sdram_controller_0_s1_writedata),              //                                                .writedata
		.sdram_controller_0_s1_byteenable                      (mm_interconnect_0_sdram_controller_0_s1_byteenable),             //                                                .byteenable
		.sdram_controller_0_s1_readdatavalid                   (mm_interconnect_0_sdram_controller_0_s1_readdatavalid),          //                                                .readdatavalid
		.sdram_controller_0_s1_waitrequest                     (mm_interconnect_0_sdram_controller_0_s1_waitrequest),            //                                                .waitrequest
		.sdram_controller_0_s1_chipselect                      (mm_interconnect_0_sdram_controller_0_s1_chipselect)              //                                                .chipselect
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (pll_0_outclk1_clk),              //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_001 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_001_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (2),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller_002 (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.reset_in1      (master_0_master_reset_reset),        // reset_in1.reset
		.clk            (pll_0_outclk1_clk),                  //       clk.clk
		.reset_out      (rst_controller_002_reset_out_reset), // reset_out.reset
		.reset_req      (),                                   // (terminated)
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule