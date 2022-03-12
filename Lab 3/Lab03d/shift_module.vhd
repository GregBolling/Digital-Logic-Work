library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 
 
 
entity shift_module is     
	Port ( clock, reset : in  STD_LOGIC;            
			shift : out  STD_LOGIC_VECTOR (7 downto 0)); 
end shift_module; 
 
architecture Behavioral of shift_module is 
	signal shift_reg : std_logic_vector(7 downto 0) := "11111111"; 
   signal MemOnce   : std_logic;
begin    
	P1: process (clock, reset)     
	begin     
		if(reset='1') then         
				shift_reg <= "11111111";          
				MemOnce   <= '0';
		elsif (clock'Event and clock = '1') then        
				if (MemOnce = '0') then  -- do a left shift
					shift_reg(0) <= '0';    
					shift_reg(7 downto 1) <= shift_reg(6 downto 0);    
				    if(shift_reg(7)='0') then    
				      MemOnce   <= '1';
    					shift_reg <= "11111111";    
					end if;
				else  -- do a right shift 
					shift_reg(7) <= '0';    
					shift_reg(6 downto 0) <= shift_reg(7 downto 1);    
				    if(shift_reg(0)='0') then    
    					shift_reg <= "11111111";    
					end if;
				end if;
			end if;  
					shift <= shift_reg;
	end process; 
 
    -- display the result on the LEDs     shift <=  shift_reg; 
 
end Behavioral; --save the file as shift_module.vhd 