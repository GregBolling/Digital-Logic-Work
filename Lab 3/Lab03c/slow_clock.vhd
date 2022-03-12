library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 
 
 
entity slow_clock is     
	Port ( clock, reset : in  STD_LOGIC;            
			 slow_clk : out  STD_LOGIC);
end slow_clock; 
 
architecture Behavioral of slow_clock is 
	signal slow_clock : std_logic; 
	signal count : std_logic_vector(23 DOWNTO 0):= X"000000"; 
 begin   
	P1 : process (clock, reset)    
	begin   
		if(reset= '1') then    
			count <= X"000000";   
		elsif (clock='1' and clock'event) then    
			if(count = X"111111") then     
				count <= X"000000";     
				slow_clock <= not slow_clock;    
			else      
				count <= count + 1;     
			end if;   
		end if;     
	end process;  

	slow_clk<= slow_clock;   
 
end Behavioral; --save the file as shift_module.vhd 