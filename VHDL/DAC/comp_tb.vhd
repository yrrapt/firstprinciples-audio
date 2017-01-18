--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:16:50 08/18/2016
-- Design Name:   
-- Module Name:   C:/Users/tom/firstprinciples-audio/VHDL/DAC/comp_tb.vhd
-- Project Name:  DAC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ciccomp
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
 
ENTITY comp_tb IS
END comp_tb;
 
ARCHITECTURE behavior OF comp_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ciccomp
    PORT(
         clk : IN  std_logic;
         rfd : OUT  std_logic;
         rdy : OUT  std_logic;
         din_1 : IN  std_logic_vector(23 downto 0);
         din_2 : IN  std_logic_vector(23 downto 0);
         dout_1 : OUT  std_logic_vector(19 downto 0);
         dout_2 : OUT  std_logic_vector(19 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal din_1 : std_logic_vector(23 downto 0) := (others => '0');
   signal din_2 : std_logic_vector(23 downto 0) := (others => '0');

 	--Outputs
   signal rfd : std_logic;
   signal rdy : std_logic;
   signal dout_1 : std_logic_vector(19 downto 0);
   signal dout_2 : std_logic_vector(19 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ciccomp PORT MAP (
          clk => clk,
          rfd => rfd,
          rdy => rdy,
          din_1 => din_1,
          din_2 => din_2,
          dout_1 => dout_1,
          dout_2 => dout_2
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

	
	
	-- write to file process
	some_process : process(clk)
		file      outfile  : text is out "output_ciccomp.txt";
		variable  outline  : line;
	begin
	
		if rising_edge(clk) then
		
			if rdy = '1' then
				
				write(outline, to_integer(signed(dout_1)));
				writeline(outfile, outline);
			end if;
		end if;	
	
	end process;
	
	
	
	-- stimulus process to get obtain impulse response
	impulse_proc : process
	begin
	
		wait until rising_edge(clk);
		
		din_1 <= (23 => '0', others => '1');
		
		wait for 800 ns;
		
		din_1 <= (others => '0');
		
		wait;
	end process;

END;
