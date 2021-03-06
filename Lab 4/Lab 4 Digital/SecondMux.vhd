library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

--------------fastclock for sevensegment display------------- 

entity SecondMux is     
	port( 
	    clock              : in std_logic;
		 Clk1Hz             : in std_logic;
		 reset              : in std_logic;
       SoundAlarm         : in std_logic;
       SetLED0Off         : in std_logic;
       SetLED0On          : in std_logic;
       SetLed04Sec75Duty  : in std_logic;
       SsetLED2Sec50Duty  : in std_logic;
       Led1Out            : in std_logic;
	   InputSevenSegOne   : in std_logic_vector(6 DOWNTO 0);
	   InputSevenSegTwo   : in std_logic_vector(6 DOWNTO 0);
	   InputSevenSegThree : in std_logic_vector(6 DOWNTO 0);
       InputSevenSegFour  : in std_logic_vector(6 DOWNTO 0); 
	   OutputLED0         : out std_logic;
	   OutputLED1         : out std_logic;
	   OutputBuzzer       : out std_logic;
       OutputDisplay      : out std_logic_vector(3 downto 0);
  	   OutputSegments     : out std_logic_vector(6 DOWNTO 0)
		 );
		   
end SecondMux; 

architecture Behavioral of SecondMux is 
 
type     my_fms_display_states is (S0, S1, S2, S3);  
signal   present_state, next_state : my_fms_display_states;  
 
 -- below 2s and 4s counters are copied from template provided in canvas
signal clock_2seconds: std_logic:='0'; -- clock thick after every 2 seconds
signal clock_4seconds: std_logic:='0'; -- clock thick after every 4 seconds
signal counter2s : std_logic_vector(1 DOWNTO 0); --counter for 2s clock period with 50% duty cycle
signal counter4s : std_logic_vector(1 DOWNTO 0); --counter for 4s clock period with 75% duty cycle

begin 

    OutputLED0 <= clock_4seconds when (SetLed04Sec75Duty = '1') else
	              clock_2seconds when (SsetLED2Sec50Duty = '1') else
	              '1' when (SetLED0On = '1') 
	              else '0';
  
    OutputLED1 <= not reset;
	OutputBuzzer <= clock_2seconds when ((SoundAlarm = '1') and (reset = '0')) else '0';
	
	SevenSegRegister : process(clock, reset)  
	begin   
		if(reset = '1') then    
			present_state <= S0;   
		elsif (clock='1' and clock'event) then    
			present_state <= next_state;   
		end if;  
	end process;   
 
	SevenSegCount : process(present_state, InputSevenSegOne, InputSevenSegTwo, InputSevenSegThree, InputSevenSegFour)  
	begin   
		case present_state is    
				when S0 =>          
								next_state <= S1;     
								OutputSegments<= InputSevenSegOne;     
								OutputDisplay <= "000" & not reset;    
				when S1 =>  
								next_state <= S2;  
								OutputSegments<= InputSevenSegTwo;     
								OutputDisplay <= "0010";    
				when S2 => 
								next_state <= S3; 
								OutputSegments<= InputSevenSegThree;     
								OutputDisplay <= "0100";    
				when S3 => 
								next_state <= S0; 
								OutputSegments<= InputSevenSegFour;     
								OutputDisplay <= "1000";    
 		end case;  
	end process;      

-- below 2s and 4s counters are copied from template provided in canvas
	TwoSecProc : process (Clk1Hz, reset)  --clock of 2s period 50% duty cycle
	begin
	 if(reset= '1') then
			counter2s <= (others=>'0');
			clock_2seconds <= '0';
		elsif (Clk1Hz='1' and Clk1Hz'event) then
	              
				if(counter2s >= "01") then
	                counter2s <= (others=>'0');
					clock_2seconds <= not clock_2seconds;
				else
			      counter2s <= counter2s + 1; 	
				end if;	
					  
	   end if;
	end process;
	
	-- below 2s and 4s counters are copied from template provided in canvas
	FourSecProc : process (Clk1Hz, reset)  --clock of 4s period; 75% duty cycle
	begin
	 if(reset= '1') then
			counter4s <= (others=>'0');
			clock_4seconds <= '0';
		elsif (Clk1Hz='1' and Clk1Hz'event) then
	         if(counter4s >= "11") then
	              counter4s <= (others=>'0');
				else
			      counter4s <= counter4s + 1; 	
				end if;
            if(counter4s = "00" or counter4s = "01" or counter4s = "10") then
				    clock_4seconds <= '1';
			   else		 
				    clock_4seconds <= '0';
				end if;	 				
	  end if;
	end process;

end Behavioral; 
  