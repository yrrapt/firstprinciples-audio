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
		dout_1	: out std_logic_vector(24 downto 0);
		dout_2	: out std_logic_vector(24 downto 0)
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
		dout_1	: out std_logic_vector(24 downto 0);
		dout_2	: out std_logic_vector(24 downto 0)
	);
end component;

-- CIC compensator
component ciccomp
	port
	(
		clk		: in 	std_logic;
		rfd		: out	std_logic;
		rdy		: out	std_logic;
		din_1		: in 	std_logic_vector(23 downto 0);
		din_2		: in 	std_logic_vector(23 downto 0);
		dout_1	: out	std_logic_vector(23 downto 0);
		dout_2	: out	std_logic_vector(23 downto 0)
	);
end component;

-- CIC interpolator
component cic
	port
	(
		din		: in 	std_logic_vector(19 downto 0);
		clk		: in 	std_logic;
		dout		: out std_logic_vector(23 downto 0);
		rdy		: out std_logic;
		rfd		: out std_logic
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
signal int2_out_left		:	std_logic_vector(24 downto 0);
signal int2_out_right	:	std_logic_vector(24 downto 0);

-- interpolator three
signal int3_rfd			:	std_logic;
signal int3_rdy			:	std_logic;
signal int3_out_left		:	std_logic_vector(24 downto 0);
signal int3_out_right	:	std_logic_vector(24 downto 0);

-- CIC compensator
signal comp_rfd			:	std_logic;
signal comp_rdy			:	std_logic;
signal comp_out_left		:	std_logic_vector(23 downto 0);
signal comp_out_right	:	std_logic_vector(23 downto 0);

-- left CIC interpolator
signal lcic_rfd			:	std_logic;
signal lcic_rdy			:	std_logic;
signal lcic_out_left		:	std_logic_vector(23 downto 0);

-- right CIC interpolator
signal rcic_rfd			:	std_logic;
signal rcic_rdy			:	std_logic;
signal rcic_out_right	:	std_logic_vector(23 downto 0);

-- clock = 22.5792MHz


begin

-- assign second interpolator as output for testing
Out_Left 	<= lcic_out_left;
Out_Right 	<= rcic_out_right;

Sample_Tick_Out <= lcic_rdy;


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
		Din_1		=>	int1_out_left(23 downto 0),
		Din_2		=>	int1_out_right(23 downto 0),
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
		Din_1		=>	int2_out_left(23 downto 0),
		Din_2		=>	int2_out_right(23 downto 0),
		Dout_1	=>	int3_out_left,
		Dout_2	=>	int3_out_right
	);

-- CIC compensation filter
COMP : ciccomp
	port map 
	(
		Clk 		=> Sys_Clk,
		Rfd 		=> comp_rfd,
		Rdy 		=> comp_rdy,
		Din_1 	=> int3_out_left(23 downto 0),
		Din_2 	=> int3_out_right(23 downto 0),
		Dout_1 	=> comp_out_left,
		Dout_2 	=> comp_out_right
	);

-- left CIC intepolator
LCIC : cic
	port map
	(
		din 		=> comp_out_left(20 downto 1),
		clk 		=> Sys_Clk,
		dout 		=> lcic_out_left,
		rdy 		=> lcic_rdy,
		rfd 		=> lcic_rfd
	);
	
-- right CIC intepolator
RCIC : cic
	port map
	(
		din 		=> comp_out_right(20 downto 1),
		clk 		=> Sys_Clk,
		dout 		=> rcic_out_right,
		rdy 		=> rcic_rdy,
		rfd 		=> rcic_rfd
	);

end behavioral;

