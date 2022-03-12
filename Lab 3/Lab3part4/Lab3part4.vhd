library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

--------------fastclock for sevensegment display------------- 

entity lab3part4 is     
Port (clock, reset : in    STD_LOGIC;     
		display: out std_logic_vector(3 DOWNTO 0);     
		Seven_Seg : out std_logic_vector(6 DOWNTO 0));  
end lab3part4; 

architecture Behavioral of lab3part4 is 
  
signal a_g : std_logic_vector(6 downto 0); -- declare the (state-machine) enumerated type  
signal count : std_logic_vector(3 downto 0); -- counter
signal slow_clk : std_logic;

component slow_clock is
	port( 
			clock, reset : in  STD_LOGIC;           
			slow_clk     : out  STD_LOGIC); end component; 
			
			
component SevenSeg is
	port( 
			binary : in   std_logic_vector(3 downto 0);
        a_to_g  :  out  std_logic_vector(6 downto 0)); end component;
 
 
begin 
  
	U0: slow_clock 
	port map(
			slow_clk=>slow_clk, 
			reset=>reset, 
			clock=>clock); 
			
			
	U1: SevenSeg 
	port map(
			
			 binary => count,
        a_to_g => a_g); 		
 
 
	P0: process(slow_clk, reset)  
	begin   
		if(reset = '1') then    
			count <= "0000";
		elsif (slow_clk ='1' and slow_clk'event) then    
			count(3) <= count(2) and count(1);
			count(2) <= ((not count(3) and count(0)) and not count(2))  or 
		             ((not count(3) and count(0)) and not count(1));
			count(1) <= not count(3) and not count(1);
			count(0) <= not count(3);
		end if;  
	end process;   
	
	display <= "0001";
	
	
	
	Seven_Seg <= a_g; 

end Behavioral; 
  