library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

--------------fastclock for sevensegment display------------- 

entity lab3part3 is     
Port (clock, reset : in    STD_LOGIC;     
		display: out std_logic_vector(3 DOWNTO 0);     
		SevenSeg : out std_logic_vector(6 DOWNTO 0));  
end lab3part3; 

architecture Behavioral of lab3part3 is 
  
signal a_g : std_logic_vector(6 downto 0); -- declare the (state-machine) enumerated type  
type my_fms_states is (S0, S1, S2, S3);  
signal present_state, next_state : my_fms_states;  
 
begin 
  
	P0: process(clock, reset)  
	begin   
		if(reset = '1') then    
			present_state <= S0;   
		elsif (clock='1' and clock'event) then    
			present_state <= next_state;   
		end if;  
	end process;   
 
	P1: process(present_state, a_g)  
	begin   
		case present_state is    
				when  S0 =>          
								if(a_g = "1000000") then       
									next_state <= S1;     
								else       
									next_state <= S0;     
								end if;     
								a_g<= "1000000";     
								display <= "0001";    
				when S1 =>  
								if(a_g = "0010010") then       
									next_state <= S2;     
								else       
									next_state <= S1;     
								end if;     
								a_g<= "0010010";     
								display <= "0010";    
				when S2 => 
								if(a_g = "0000000") then       
									next_state <= S3;     
								else       
									next_state <= S2;     
								end if;     
								a_g<= "0000000";     
								display <= "0100";    
				when S3 => 
								if(a_g = "0011000") then       
									next_state <= S0;     
								else       
									next_state <= S3;     
								end if;     
								a_g<= "0011000";     
								display <= "1000";    
 		end case;  
	end process;      
	
	SevenSeg <= a_g; 

end Behavioral; 
  