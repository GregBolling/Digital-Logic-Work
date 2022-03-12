-------------------------------------------------------------------------------
-- Author:     Greg Bolling
-- Date:       March 12, 2020
-- Class;      EEL 3701 
-- Assignment: DesignProblem4 Top Level Entity
-- Class:      12368
-- Section     7441
-- PI Name:    Savvas Ferekides
-------------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

entity TBDesignProblem4Part2c is
end TBDesignProblem4Part2c;


architecture AttachAll of TBDesignProblem4Part2c is 
 component DesignProblem4Part2c
  port (clock, reset : in    STD_LOGIC;     
		display: out std_logic_vector(3 DOWNTO 0);     
		Seven_Seg : out std_logic_vector(6 DOWNTO 0));  
  end component;
 
 signal clock : std_logic;
 signal reset : std_logic;
 signal display: std_logic_vector(3 DOWNTO 0);     
 signal Seven_Seg : std_logic_vector(6 downto 0);
 
begin 

  PartC: DesignProblem4Part2c
  port map (
        clock     => clock, -- 
 		reset     => reset, -- : in    STD_LOGIC;     
		display   => display, -- : out std_logic_vector(3 DOWNTO 0);     
		Seven_Seg => Seven_Seg -- : out std_logic_vector(6 DOWNTO 0));  
		);
  TheClock: process 
  begin 
      clock <= '0';
	  wait for 10 ns;
	  clock <= '1';
	  wait for 10 ns;
  end process;

  reset <= '1', '0' after 100 ns;
				   
  
 
end AttachAll;
