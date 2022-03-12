
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

entity TwoDigitDisplay is  
    port
    (		  
        binary1        :  in   std_logic_vector(3 downto 0);
        binary2        :  in   std_logic_vector(3 downto 0);
        a_to_g_1       :  out  std_logic_vector(6 downto 0);
		  a_to_g_2       :  out  std_logic_vector(6 downto 0)
    );

end TwoDigitDisplay;

architecture arch_TwoDigitDisplay of TwoDigitDisplay is
begin
	 P1: process(binary1) 
	 begin
	     case (binary1) is 
		      when "0000" => a_to_g_1 <= "1000000"; -- display 0 => '1' is off and a '0' is on
		      when "0001" => a_to_g_1 <= "1111001"; -- display 1 => '1' is off and a '0' is on
		      when "0010" => a_to_g_1 <= "0100100"; -- display 2 => '1' is off and a '0' is on
		      when "0011" => a_to_g_1 <= "0110000"; -- display 3 => '1' is off and a '0' is on
		      when "0100" => a_to_g_1 <= "0011001"; -- display 4 => '1' is off and a '0' is on
		      when "0101" => a_to_g_1 <= "0010010"; -- display 5 => '1' is off and a '0' is on
		      when "0110" => a_to_g_1 <= "0000010"; -- display 6 => '1' is off and a '0' is on
		      when "0111" => a_to_g_1 <= "1111000"; -- display 7 => '1' is off and a '0' is on
		      when "1000" => a_to_g_1 <= "0000000"; -- display 8 => '1' is off and a '0' is on
		      when "1001" => a_to_g_1 <= "0011000"; -- display 9 => '1' is off and a '0' is on
		      when others => a_to_g_1 <= "1111111"; -- display nothing
		  end case;
	 end process;
	 
		P2: process(binary2) 
	 begin
	     case (binary2) is 
		      when "0000" => a_to_g_2 <= "1000000"; -- display 0 => '1' is off and a '0' is on
		      when "0001" => a_to_g_2 <= "1111001"; -- display 1 => '1' is off and a '0' is on
		      when "0010" => a_to_g_2 <= "0100100"; -- display 2 => '1' is off and a '0' is on
		      when "0011" => a_to_g_2 <= "0110000"; -- display 3 => '1' is off and a '0' is on
		      when "0100" => a_to_g_2 <= "0011001"; -- display 4 => '1' is off and a '0' is on
		      when "0101" => a_to_g_2 <= "0010010"; -- display 5 => '1' is off and a '0' is on
		      when "0110" => a_to_g_2 <= "0000010"; -- display 6 => '1' is off and a '0' is on
		      when "0111" => a_to_g_2 <= "1111000"; -- display 7 => '1' is off and a '0' is on
		      when "1000" => a_to_g_2 <= "0000000"; -- display 8 => '1' is off and a '0' is on
		      when "1001" => a_to_g_2 <= "0011000"; -- display 9 => '1' is off and a '0' is on
		      when others => a_to_g_2 <= "1111111"; -- display nothing
		  end case;
	 end process;
end arch_TwoDigitDisplay;
