
---------------------------------------
-- Author:     Greg Bolling
-- Date:       February 3, 2020
-- Class;      EEL 3701 
-- Assignment: Lab 02 svnseg
-- Class:      12368
-- Section     7441
-- PI Name:     Savvas Ferekides
---------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity TestbenchTwoDigitDisplay is  
end TestbenchTwoDigitDisplay;

architecture arch_TwoDigitDisplay of TestbenchTwoDigitDisplay is
  Component TwoDigitDisplay
    port
    (		  
        binary1        :  in   std_logic_vector(3 downto 0);
        binary2        :  in   std_logic_vector(3 downto 0);
        a_to_g_1       :  out  std_logic_vector(6 downto 0);
		a_to_g_2       :  out  std_logic_vector(6 downto 0)
    );
	end component;
	
    signal binary1     :   std_logic_vector(3 downto 0);
    signal binary2     :   std_logic_vector(3 downto 0);
    signal a_to_g_1    :   std_logic_vector(6 downto 0);
	signal a_to_g_2    :   std_logic_vector(6 downto 0);
	
begin

   TwoDigit: TwoDigitDisplay
    port map
    (		  
        binary1        => binary1 , -- :  in   std_logic_vector(3 downto 0);
        binary2        => binary2 , -- :  in   std_logic_vector(3 downto 0);
        a_to_g_1       => a_to_g_1, -- :  out  std_logic_vector(6 downto 0);
		a_to_g_2       => a_to_g_2 -- :  out  std_logic_vector(6 downto 0)
    );
	binary1 <= "0000", "0001" after 1000 ns, 
	                   "0010" after 2000 ns,
	                   "0011" after 3000 ns,
	                   "0100" after 4000 ns,
	                   "0101" after 5000 ns,
	                   "0110" after 6000 ns,
	                   "0111" after 7000 ns,
	                   "1000" after 8000 ns,
	                   "1001" after 9000 ns,
	                   "1010" after 10000 ns,
	                   "1011" after 11000 ns,
	                   "1100" after 12000 ns,
	                   "1101" after 13000 ns,
	                   "1110" after 14000 ns,
	                   "1111" after 15000 ns;

	binary2 <= "0000", "0001" after 1000 ns, 
	                   "0010" after 2000 ns,
	                   "0011" after 3000 ns,
	                   "0100" after 4000 ns,
	                   "0101" after 5000 ns,
	                   "0110" after 6000 ns,
	                   "0111" after 7000 ns,
	                   "1000" after 8000 ns,
	                   "1001" after 9000 ns,
	                   "1010" after 10000 ns,
	                   "1011" after 11000 ns,
	                   "1100" after 12000 ns,
	                   "1101" after 13000 ns,
	                   "1110" after 14000 ns,
	                   "1111" after 15000 ns;
					   
end arch_TwoDigitDisplay;
