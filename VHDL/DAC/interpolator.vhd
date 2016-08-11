----------------------------------------------------------------------------------
-- 
-- Engineer:				Thomas Parry 
-- 
-- Create Date:    		23:31:11 02/15/2013 
-- Design Name: 			Top level of interpolator module
-- Module Name:    		interpolator - behavioral 
-- Project Name: 			FPGA Delta Sigma DAC
-- Target Devices: 		Spartan 6 - LX9
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity interpolator is
	port
	( 
		Sys_Clk 				: in  std_logic;
      Sample_Tick_In 	: in  std_logic;
      In_Left 				: in  std_logic_vector(15 downto 0);
      In_Right 			: in  std_logic_vector(15 downto 0);
      Sample_Tick_Out	: out std_logic;
      Out_Left 			: out std_logic_vector(23 downto 0);
      Out_Right 			: out	std_logic_vector(23 downto 0)
	);
end interpolator;

architecture behavioral of interpolator is

---- components

-- interpolator one
component interpolation1
	port 
	(
		clk		: in 	std_logic;
		rfd		: out	std_logic;
		rdy		: out std_logic;
		din_1		: in 	std_logic_vector(15 downto 0);
		din_2		: in 	std_logic_vector(15 downto 0);
		dout_1	: out std_logic_vector(23 downto 0);
		dout_2	: out std_logic_vector(23 downto 0)
	);
end component;

-- interpolator two
component interpolation2
	port 
	(
		clk		: in 	std_logic;
		rfd		: out std_logic;
		rdy		: out std_logic;
		din_1		: in 	std_logic_vector(23 downto 0);
		din_2		: in 	std_logic_vector(23 downto 0);
		dout_1	: out std_logic_vector(23 downto 0);
		dout_2	: out std_logic_vector(23 downto 0)
	);
end component;

-- interpolator three
component interpolation3
	port 
	(
		clk		: in 	std_logic;
		rfd		: out std_logic;
		rdy		: out std_logic;
		din_1		: in 	std_logic_vector(23 downto 0);
		din_2		: in 	std_logic_vector(23 downto 0);
		dout_1	: out std_logic_vector(23 downto 0);
		dout_2	: out std_logic_vector(23 downto 0)
	);
end component;

---- signals

-- interpolator one
signal int1_rfd			:	std_logic;
signal int1_rdy			:	std_logic;
signal int1_out_left		:	std_logic_vector(23 downto 0);
signal int1_out_right	:	std_logic_vector(23 downto 0);

-- interpolator two
signal int2_rfd			:	std_logic;
signal int2_rdy			:	std_logic;
signal int2_out_left		:	std_logic_vector(23 downto 0);
signal int2_out_right	:	std_logic_vector(23 downto 0);

-- interpolator three
signal int3_rfd			:	std_logic;
signal int3_rdy			:	std_logic;
signal int3_out_left		:	std_logic_vector(23 downto 0);
signal int3_out_right	:	std_logic_vector(23 downto 0);


begin

-- assign second interpolator as output for testing
Out_Left <= int3_out_left;
Out_Right <= int3_out_right;

Sample_Tick_Out <= int3_rdy;


---- component instantiation

-- interpolator one
INTERP1 : interpolation1
	port map 
	(
		Clk 		=> Sys_Clk,
		Rfd 		=> int1_rfd,
		Rdy 		=> int1_rdy,
		Din_1 	=> In_Left,
		Din_2 	=> In_Right,
		Dout_1 	=> int1_out_left,
		Dout_2	=> int1_out_right
	);
	
-- interpolator two
INTERP2 : interpolation2
	port map
	(
		Clk		=>	Sys_Clk,
		Rfd		=>	int2_rfd,
		Rdy		=>	int2_rdy,
		Din_1		=>	int1_out_left,
		Din_2		=>	int1_out_right,
		Dout_1	=>	int2_out_left,
		Dout_2	=>	int2_out_right
	);
	
-- interpolator three
INTERP3 : interpolation3
	port map
	(
		Clk		=>	Sys_Clk,
		Rfd		=>	int3_rfd,
		Rdy		=>	int3_rdy,
		Din_1		=>	int2_out_left,
		Din_2		=>	int2_out_right,
		Dout_1	=>	int3_out_left,
		Dout_2	=>	int3_out_right
	);


end behavioral;

