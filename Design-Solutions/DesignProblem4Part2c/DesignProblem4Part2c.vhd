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



entity DesignProblem4Part2c is     
Port (clock, reset : in    STD_LOGIC;     
		display: out std_logic_vector(3 DOWNTO 0);     
		Seven_Seg : out std_logic_vector(6 DOWNTO 0));  
end DesignProblem4Part2c; 

architecture Behavioral of DesignProblem4Part2c is 
  
signal a_g : std_logic_vector(6 downto 0); -- declare the (state-machine) enumerated type  
signal count : std_logic_vector(3 downto 0); -- counter
signal slow_clk : std_logic;

type ARam is array (0 to 63) of std_logic_vector(7 downto 0);
signal TheRam          : ARam := ( 
									"00000011",  -- location 0
									"00000000",  -- location 1
									"00000000",  -- location 2
									"00000101",  -- location 3
									"00000000",  -- location 4
									"00000111",  -- location 5
									"00000000",  -- location 6
									"00001001",  -- location 7

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
            count(3) <= TheRam(to_integer(unsigned(count(3 downto 0))))	(3);	
            count(2) <= TheRam(to_integer(unsigned(count(3 downto 0))))	(2);	
            count(1) <= TheRam(to_integer(unsigned(count(3 downto 0))))	(1);	
            count(0) <= TheRam(to_integer(unsigned(count(3 downto 0))))	(0);	
			-- count(3) <= count(2) and count(1);
			-- count(2) <= ((not count(3) and count(0)) and not count(2))  or 
		    --          ((not count(3) and count(0)) and not count(1));
			-- count(1) <= not count(3) and not count(1);
			-- count(0) <= not count(3);
		end if;  
	end process;   
	
	display <= "0001";
	
	
	
	Seven_Seg <= a_g(0) & a_g(1) & a_g(2) & 
	            a_g(3) & a_g(4) & a_g(5) & a_g(6); 

end Behavioral; 
  
 
