
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

entity SevenSeg is  
    port
    (		  
        binary       :  in   std_logic_vector(3 downto 0);
        a_to_g       :  out  std_logic_vector(6 downto 0)
    );

end SevenSeg;

architecture arch_SevenSeg of SevenSeg is
begin
	 P1: process(binary) 
	 begin
	     case (binary) is 
		      when "0000" => a_to_g <= "0000001"; -- display 0 => '1' is off and a '0' is on
		      when "0001" => a_to_g <= "1001111"; -- display 1 => '1' is off and a '0' is on
		      when "0010" => a_to_g <= "0010010"; -- display 2 => '1' is off and a '0' is on
		      when "0011" => a_to_g <= "0000110"; -- display 3 => '1' is off and a '0' is on
		      when "0100" => a_to_g <= "1001100"; -- display 4 => '1' is off and a '0' is on
		      when "0101" => a_to_g <= "0100100"; -- display 5 => '1' is off and a '0' is on
		      when "0110" => a_to_g <= "0100000"; -- display 6 => '1' is off and a '0' is on
		      when "0111" => a_to_g <= "0001111"; -- display 7 => '1' is off and a '0' is on
		      when "1000" => a_to_g <= "0000000"; -- display 8 => '1' is off and a '0' is on
		      when "1001" => a_to_g <= "0001100"; -- display 9 => '1' is off and a '0' is on
		      when others => a_to_g <= "1111111"; -- display nothing
		  end case;
	 end process;
end arch_SevenSeg;
