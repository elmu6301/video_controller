	component em_project_final_pd is
		port (
			clk_clk                          : in    std_logic                     := 'X';             -- clk
			fifo_0_out_valid                 : out   std_logic;                                        -- valid
			fifo_0_out_data                  : out   std_logic_vector(31 downto 0);                    -- data
			fifo_0_out_channel               : out   std_logic_vector(7 downto 0);                     -- channel
			fifo_0_out_error                 : out   std_logic_vector(7 downto 0);                     -- error
			fifo_0_out_startofpacket         : out   std_logic;                                        -- startofpacket
			fifo_0_out_endofpacket           : out   std_logic;                                        -- endofpacket
			fifo_0_out_empty                 : out   std_logic;                                        -- empty
			fifo_0_out_ready                 : in    std_logic                     := 'X';             -- ready
			pio_0_external_connection_export : out   std_logic_vector(9 downto 0);                     -- export
			pll_rfr_locked_export            : out   std_logic;                                        -- export
			pll_rfr_outclk_clk               : out   std_logic;                                        -- clk
			pll_sdram_locked_export          : out   std_logic;                                        -- export
			pll_sdram_outclk_clk             : out   std_logic;                                        -- clk
			reset_reset_n                    : in    std_logic                     := 'X';             -- reset_n
			sdram_controller_0_wire_addr     : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_controller_0_wire_ba       : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_controller_0_wire_cas_n    : out   std_logic;                                        -- cas_n
			sdram_controller_0_wire_cke      : out   std_logic;                                        -- cke
			sdram_controller_0_wire_cs_n     : out   std_logic;                                        -- cs_n
			sdram_controller_0_wire_dq       : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_controller_0_wire_dqm      : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_controller_0_wire_ras_n    : out   std_logic;                                        -- ras_n
			sdram_controller_0_wire_we_n     : out   std_logic;                                        -- we_n
			pll_sdram_outclk_ps_clk          : out   std_logic                                         -- clk
		);
	end component em_project_final_pd;

	u0 : component em_project_final_pd
		port map (
			clk_clk                          => CONNECTED_TO_clk_clk,                          --                       clk.clk
			fifo_0_out_valid                 => CONNECTED_TO_fifo_0_out_valid,                 --                fifo_0_out.valid
			fifo_0_out_data                  => CONNECTED_TO_fifo_0_out_data,                  --                          .data
			fifo_0_out_channel               => CONNECTED_TO_fifo_0_out_channel,               --                          .channel
			fifo_0_out_error                 => CONNECTED_TO_fifo_0_out_error,                 --                          .error
			fifo_0_out_startofpacket         => CONNECTED_TO_fifo_0_out_startofpacket,         --                          .startofpacket
			fifo_0_out_endofpacket           => CONNECTED_TO_fifo_0_out_endofpacket,           --                          .endofpacket
			fifo_0_out_empty                 => CONNECTED_TO_fifo_0_out_empty,                 --                          .empty
			fifo_0_out_ready                 => CONNECTED_TO_fifo_0_out_ready,                 --                          .ready
			pio_0_external_connection_export => CONNECTED_TO_pio_0_external_connection_export, -- pio_0_external_connection.export
			pll_rfr_locked_export            => CONNECTED_TO_pll_rfr_locked_export,            --            pll_rfr_locked.export
			pll_rfr_outclk_clk               => CONNECTED_TO_pll_rfr_outclk_clk,               --            pll_rfr_outclk.clk
			pll_sdram_locked_export          => CONNECTED_TO_pll_sdram_locked_export,          --          pll_sdram_locked.export
			pll_sdram_outclk_clk             => CONNECTED_TO_pll_sdram_outclk_clk,             --          pll_sdram_outclk.clk
			reset_reset_n                    => CONNECTED_TO_reset_reset_n,                    --                     reset.reset_n
			sdram_controller_0_wire_addr     => CONNECTED_TO_sdram_controller_0_wire_addr,     --   sdram_controller_0_wire.addr
			sdram_controller_0_wire_ba       => CONNECTED_TO_sdram_controller_0_wire_ba,       --                          .ba
			sdram_controller_0_wire_cas_n    => CONNECTED_TO_sdram_controller_0_wire_cas_n,    --                          .cas_n
			sdram_controller_0_wire_cke      => CONNECTED_TO_sdram_controller_0_wire_cke,      --                          .cke
			sdram_controller_0_wire_cs_n     => CONNECTED_TO_sdram_controller_0_wire_cs_n,     --                          .cs_n
			sdram_controller_0_wire_dq       => CONNECTED_TO_sdram_controller_0_wire_dq,       --                          .dq
			sdram_controller_0_wire_dqm      => CONNECTED_TO_sdram_controller_0_wire_dqm,      --                          .dqm
			sdram_controller_0_wire_ras_n    => CONNECTED_TO_sdram_controller_0_wire_ras_n,    --                          .ras_n
			sdram_controller_0_wire_we_n     => CONNECTED_TO_sdram_controller_0_wire_we_n,     --                          .we_n
			pll_sdram_outclk_ps_clk          => CONNECTED_TO_pll_sdram_outclk_ps_clk           --       pll_sdram_outclk_ps.clk
		);

