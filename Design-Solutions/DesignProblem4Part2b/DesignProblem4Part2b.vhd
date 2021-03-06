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

--------------fastclock for sevensegment display------------- 

entity DesignProblem4Part2b is     
Port (clock, reset : in    STD_LOGIC;     
		display: out std_logic_vector(3 DOWNTO 0);     
		SevenSeg : out std_logic_vector(6 DOWNTO 0));  
end DesignProblem4Part2b; 

architecture Behavioral of DesignProblem4Part2b is 
  
signal a_g : std_logic_vector(6 downto 0); -- declare the (state-machine) enumerated type  
signal present_state : std_logic_vector(7 downto 0);
type ARam is array (0 to 63) of std_logic_vector(7 downto 0);
signal TheRam          : ARam := ( 
									"00000001",  -- location 0
									"00000010",  -- location 1
									"00000011",  -- location 2
									"00000000",  -- location 3
									"00000000",  -- location 4
									"00000000",  -- location 5
									"00000000",  -- location 6
									"00000000",  -- location 7

									"00000000",  -- location 8
									"00000000",  -- location 9
									"00000000",  -- location 10
									"00000000",  -- location 11
									"00000000",  -- location 12
									"00000000",  -- location 13
									"00000000",  -- location 14
									"00000000",  -- location 15

									"00000000",  -- location 16
									"00000000",  -- location 17
									"00000000",  -- location 18
									"00000000",  -- location 19
									"00000000",  -- location 20
									"00000000",  -- location 21
									"00000000",  -- location 22
									"00000000",  -- location 23

									"00000000",  -- location 24
									"00000000",  -- location 25
									"00000000",  -- location 26
									"00000000",  -- location 27
									"00000000",  -- location 28
									"00000000",  -- location 29
									"00000000",  -- location 30
									"00000000",  -- location 31

									"00000000",  -- location 32
									"00000000",  -- location 33
									"00000000",  -- location 34
									"00000000",  -- location 35
									"00000000",  -- location 36
									"00000000",  -- location 37
									"00000000",  -- location 38
									"00000000",  -- location 39

									"00000000",  -- location 40
									"00000000",  -- location 41
									"00000000",  -- location 42
									"00000000",  -- location 43 
									"00000000",  -- location 44
									"00000000",  -- location 45
									"00000000",  -- location 46
									"00000000",  -- location 47

									"00000000",  -- location 48
									"00000000",  -- location 49
									"00000000",  -- location 50
									"00000000",  -- location 51
									"00000000",  -- location 52
									"00000000",  -- location 53
									"00000000",  -- location 54
									"00000000",  -- location 55

									"00000000",  -- location 56
									"00000000",  -- location 57
									"00000000",  -- location 58
									"00000000",  -- location 59
									"00000000",  -- location 60
									"00000000",  -- location 61
									"00000000",  -- location 62
									"00000000"   -- location 63
);
 
 
begin 
  
	P0: process(clock, reset)  
	begin   
		if(reset = '1') then    
			present_state <= (others =>'0');   
		elsif (clock='1' and clock'event) then    
			present_state <= TheRam(to_integer(unsigned(present_state)));   
		end if;  
	end process;   
 
	P1: process(present_state, a_g)  
	begin   
		case present_state(1 downto 0) is    
				when  "00" =>          
								a_g<= "0000001";     
								display <= "0001";    
				when "01" =>  
								a_g<= "0100100";     
								display <= "0010";    
				when "10" => 
								a_g<= "0000000";     
								display <= "0100";    
				when "11" => 
								a_g<= "0001100";     
								display <= "1000";    
				when others => 
								a_g<= "0001100";     
								display <= "1000";    
 		end case;  
	end process;      
	
	SevenSeg <= a_g(0) & a_g(1) & a_g(2) & 
	            a_g(3) & a_g(4) & a_g(5) & a_g(6); 

end Behavioral; 
  
