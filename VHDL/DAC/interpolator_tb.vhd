--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:38:48 02/16/2013
-- Design Name:   
-- Module Name:   /home/tom/Dropbox/DAC/VHDL/DAC/interpolator_tb.vhd
-- Project Name:  DAC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: interpolator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY std;
USE std.textio.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
entity interpolator_tb is
end interpolator_tb;
 
architecture behavior of interpolator_tb is 
 
   -- Component Declaration for the Unit Under Test (UUT)
	component interpolator
		port
		(
			Sys_Clk 				: in	std_logic;
         Sample_Tick_In		: in	std_logic;
         In_Left 				: in	std_logic_vector(15 downto 0);
         In_Right 			: in	std_logic_vector(15 downto 0);
         Sample_Tick_Out 	: out	std_logic;
         Out_Left 			: out	std_logic_vector(23 downto 0);
         Out_Right 			: out	std_logic_vector(23 downto 0)
        );
    end component;
    

   --Inputs
   signal Sys_Clk 			: std_logic := '0';
   signal Sample_Tick_In 	: std_logic := '0';
   signal In_Left 			: std_logic_vector(15 downto 0) := (others => '0');
   signal In_Right 			: std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Sample_Tick_Out 	: std_logic;
   signal Out_Left 			: std_logic_vector(23 downto 0);
   signal Out_Right 			: std_logic_vector(23 downto 0);

   -- Clock period definitions
   constant Sys_Clk_period : time := 44 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   UUT : interpolator 
		port map
		(
			Sys_Clk 				=> Sys_Clk,
         Sample_Tick_In 	=> Sample_Tick_In,
         In_Left 				=> In_Left,
         In_Right 			=> In_Right,
         Sample_Tick_Out	=> Sample_Tick_Out,
         Out_Left 			=> Out_Left,
         Out_Right 			=> Out_Right
      );

   -- Clock process definitions
   Sys_Clk_process :process
   begin
		Sys_Clk <= '0';
		wait for Sys_Clk_period/2;
		Sys_Clk <= '1';
		wait for Sys_Clk_period/2;
   end process;
 

--   -- read from file process
--   read_proc : process
--		variable i 				: integer := 0;
--		file   	infile    	: text is in  "input.txt";
--		variable inline    	: line;
--		variable dataread		: real;
--   begin		
--      
--		while (i < 511) and (not endfile(infile)) loop
--			
--			wait until rising_edge(Sys_Clk);
--			Sample_Tick_In <= '0';
--		end loop;
--		
--		i := 0;
--		Sample_Tick_In <= '1';
--		readline(infile, inline);
--		read(inline, dataread);
--		In_Left <= std_logic_vector(to_signed(dataread));
--
--      wait;
--   end process;
	
	-- write to file process
	some_process : process(Sys_Clk)
		file      outfile  : text is out "output.txt";
		variable  outline  : line;
	begin
	
		if rising_edge(Sys_Clk) then
		
			if Sample_Tick_Out = '1' then
				
				write(outline, to_integer(signed(Out_Left)));
				writeline(outfile, outline);
			end if;
		end if;	
	
	end process;
	
	-- stimulus process to get obtain impulse response
	impulse_proc : process
	begin
	
		wait until rising_edge(Sys_Clk);
		
		Sample_Tick_In <= '1';
		In_Left <= (15 => '0', others => '1');
		
		wait for 30000 ns;
		
		Sample_Tick_In <= '0';
		In_Left <= (others => '0');
		
		wait;
	end process;
	
	
		-- write to file process
	--some_process : process
		--file      outfile  : text is out "output.txt";
		--variable  outline  : line;
	--begin
	
		--if rising_edge(Sys_Clk) then
		
			--if Sample_Tick_Out = '1' then
				
				--write(outline, to_integer(signed(Out_Left)));
				--writeline(outfile, outline);
			--end if;
		--end if;	
	
	--end process;

END;
