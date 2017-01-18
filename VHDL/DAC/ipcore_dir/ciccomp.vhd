--------------------------------------------------------------------------------
--     (c) Copyright 1995 - 2010 Xilinx, Inc. All rights reserved.            --
--                                                                            --
--     This file contains confidential and proprietary information            --
--     of Xilinx, Inc. and is protected under U.S. and                        --
--     international copyright and other intellectual property                --
--     laws.                                                                  --
--                                                                            --
--     DISCLAIMER                                                             --
--     This disclaimer is not a license and does not grant any                --
--     rights to the materials distributed herewith. Except as                --
--     otherwise provided in a valid license issued to you by                 --
--     Xilinx, and to the maximum extent permitted by applicable              --
--     law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND                --
--     WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES            --
--     AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING              --
--     BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-                 --
--     INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and               --
--     (2) Xilinx shall not be liable (whether in contract or tort,           --
--     including negligence, or under any other theory of                     --
--     liability) for any loss or damage of any kind or nature                --
--     related to, arising under or in connection with these                  --
--     materials, including for any direct, or any indirect,                  --
--     special, incidental, or consequential loss or damage                   --
--     (including loss of data, profits, goodwill, or any type of             --
--     loss or damage suffered as a result of any action brought              --
--     by a third party) even if such damage or loss was                      --
--     reasonably foreseeable or Xilinx had been advised of the               --
--     possibility of the same.                                               --
--                                                                            --
--     CRITICAL APPLICATIONS                                                  --
--     Xilinx products are not designed or intended to be fail-               --
--     safe, or for use in any application requiring fail-safe                --
--     performance, such as life-support or safety devices or                 --
--     systems, Class III medical devices, nuclear facilities,                --
--     applications related to the deployment of airbags, or any              --
--     other applications that could lead to death, personal                  --
--     injury, or severe property or environmental damage                     --
--     (individually and collectively, "Critical                              --
--     Applications"). Customer assumes the sole risk and                     --
--     liability of any use of Xilinx products in Critical                    --
--     Applications, subject only to applicable laws and                      --
--     regulations governing limitations on product liability.                --
--                                                                            --
--     THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS               --
--     PART OF THIS FILE AT ALL TIMES.                                        --
--------------------------------------------------------------------------------

--  Generated from component ID: xilinx.com:ip:fir_compiler:5.0


-- You must compile the wrapper file ciccomp.vhd when simulating
-- the core, ciccomp. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY ciccomp IS
	port (
	clk: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	din_1: in std_logic_vector(23 downto 0);
	din_2: in std_logic_vector(23 downto 0);
	dout_1: out std_logic_vector(23 downto 0);
	dout_2: out std_logic_vector(23 downto 0));
END ciccomp;

ARCHITECTURE ciccomp_a OF ciccomp IS
-- synthesis translate_off
component wrapped_ciccomp
	port (
	clk: in std_logic;
	rfd: out std_logic;
	rdy: out std_logic;
	din_1: in std_logic_vector(23 downto 0);
	din_2: in std_logic_vector(23 downto 0);
	dout_1: out std_logic_vector(23 downto 0);
	dout_2: out std_logic_vector(23 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_ciccomp use entity XilinxCoreLib.fir_compiler_v5_0(behavioral)
		generic map(
			coef_width => 24,
			c_has_sclr => 0,
			datapath_memtype => 0,
			c_component_name => "ciccomp",
			c_family => "spartan6",
			round_mode => 1,
			output_width => 24,
			sclr_deterministic => 0,
			col_config => "1",
			coef_memtype => 0,
			clock_freq => 22579200,
			symmetry => 1,
			col_pipe_len => 4,
			c_latency => 24,
			chan_sel_width => 1,
			c_xdevicefamily => "spartan6",
			c_has_nd => 0,
			allow_approx => 0,
			num_channels => 1,
			data_width => 24,
			filter_sel_width => 1,
			sample_freq => 352800,
			coef_reload => 0,
			neg_symmetry => 0,
			filter_type => 0,
			data_type => 0,
			accum_width => 48,
			rate_change_type => 0,
			ipbuff_memtype => 0,
			c_optimization => 1,
			output_reg => 1,
			data_memtype => 0,
			c_has_data_valid => 0,
			decim_rate => 1,
			coef_type => 0,
			filter_arch => 1,
			interp_rate => 1,
			num_taps => 20,
			c_mem_init_file => "ciccomp.mif",
			zero_packing_factor => 1,
			num_paths => 2,
			num_filts => 1,
			col_mode => 0,
			c_has_ce => 0,
			chan_in_adv => 0,
			opbuff_memtype => 0,
			odd_symmetry => 0);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_ciccomp
		port map (
			clk => clk,
			rfd => rfd,
			rdy => rdy,
			din_1 => din_1,
			din_2 => din_2,
			dout_1 => dout_1,
			dout_2 => dout_2);
-- synthesis translate_on

END ciccomp_a;

