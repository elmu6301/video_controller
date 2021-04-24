	component em_project_final is
		port (
			clk_clk                       : in    std_logic                     := 'X';             -- clk
			pll_0_outclk_shift_clk        : out   std_logic;                                        -- clk
			pll_0_outclk_clk              : out   std_logic;                                        -- clk
			pll_0_locked_export           : out   std_logic;                                        -- export
			sdram_controller_0_wire_addr  : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_controller_0_wire_ba    : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_controller_0_wire_cas_n : out   std_logic;                                        -- cas_n
			sdram_controller_0_wire_cke   : out   std_logic;                                        -- cke
			sdram_controller_0_wire_cs_n  : out   std_logic;                                        -- cs_n
			sdram_controller_0_wire_dq    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_controller_0_wire_dqm   : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_controller_0_wire_ras_n : out   std_logic;                                        -- ras_n
			sdram_controller_0_wire_we_n  : out   std_logic;                                        -- we_n
			reset_reset_n                 : in    std_logic                     := 'X'              -- reset_n
		);
	end component em_project_final;

	u0 : component em_project_final
		port map (
			clk_clk                       => CONNECTED_TO_clk_clk,                       --                     clk.clk
			pll_0_outclk_shift_clk        => CONNECTED_TO_pll_0_outclk_shift_clk,        --      pll_0_outclk_shift.clk
			pll_0_outclk_clk              => CONNECTED_TO_pll_0_outclk_clk,              --            pll_0_outclk.clk
			pll_0_locked_export           => CONNECTED_TO_pll_0_locked_export,           --            pll_0_locked.export
			sdram_controller_0_wire_addr  => CONNECTED_TO_sdram_controller_0_wire_addr,  -- sdram_controller_0_wire.addr
			sdram_controller_0_wire_ba    => CONNECTED_TO_sdram_controller_0_wire_ba,    --                        .ba
			sdram_controller_0_wire_cas_n => CONNECTED_TO_sdram_controller_0_wire_cas_n, --                        .cas_n
			sdram_controller_0_wire_cke   => CONNECTED_TO_sdram_controller_0_wire_cke,   --                        .cke
			sdram_controller_0_wire_cs_n  => CONNECTED_TO_sdram_controller_0_wire_cs_n,  --                        .cs_n
			sdram_controller_0_wire_dq    => CONNECTED_TO_sdram_controller_0_wire_dq,    --                        .dq
			sdram_controller_0_wire_dqm   => CONNECTED_TO_sdram_controller_0_wire_dqm,   --                        .dqm
			sdram_controller_0_wire_ras_n => CONNECTED_TO_sdram_controller_0_wire_ras_n, --                        .ras_n
			sdram_controller_0_wire_we_n  => CONNECTED_TO_sdram_controller_0_wire_we_n,  --                        .we_n
			reset_reset_n                 => CONNECTED_TO_reset_reset_n                  --                   reset.reset_n
		);

