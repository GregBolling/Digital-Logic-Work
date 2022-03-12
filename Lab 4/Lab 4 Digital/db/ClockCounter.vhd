-------------------------------------------------------------------------------
-- Author:     Greg Bolling
-- Date:       March 6, 2020
-- Class;      EEL 3701 
-- Assignment: Lab 04  ClockCounter 
-- Class:      12368
-- Section     7441
-- PI Name:    Savvas Ferekides
-------------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

--------------fastclock for sevensegment display------------- 

entity ClockCounter is     
Port (  Clk1Hz    : in  std_logic;  -- 1 Hz clock
        reset     : in  std_logic;  -- active high reset
        FastMin   : in  std_logic;  -- Causes minutes to count at 1 per second
        FastHour  : in  std_logic;
        CountEn   : in  std_logic;     
		HHMMout   : out std_logic_vector(15 DOWNTO 0);  -- mapped as Hours tens (15:12) Hours digits (11:8) Min Tens (8:5) Min digits (3:0)  
end ClockCounter; 

architecture Impl1 of ClockCounter is 
  
signal SecondsCntBin : std_logic_vector(6 downto 0); -- holds a value 0..59 and back to 0, 6 bits needed unsigned
signal MinsDigitBCD  : std_logic_vector(3 downto 0);
signal MinsTensBCD   : std_logic_vector(3 downto 0);
signal HoursDigitBCD : std_logic_vector(3 downto 0);
signal HoursTensBCD  : std_logic_vector(3 downto 0);
  
begin 
  
    -- mapped as Hours tens (15:12) Hours digits (11:8) Min Tens (8:5) Min digits (3:0)  
  
    HHMMout <= HoursTensBCD & HoursDigitBCD & MinsTensBCD & MinsDigitBCD;
 
	SecondsCounterProc: process(Clk1Hz, reset)  
	begin   
	
		if(reset = '1') then    
			SecondsCntBin <= (others=>'0');
		elsif (Clk1Hz ='1' and Clk1Hz'event) then    
			if (CountEn = '1') then
			    if ((SecondsCntBin = "111011") then  -- if it equals 59, go to zero
				   SecondsCntBin <= SecondsCntBin + 1;
				else
				   SecondsCntBin <= (others=>'0');
				end if;
			else
			    SecondsCntBin <= (others=>'0');  -- whener count is disabled, reset seconds counter in case it gets stuck at 59...
			end if;
		end if;  
	end if;
	end process;   


	MinsDigitBCDProc: process(Clk1Hz, reset)  
	begin   
		if(reset = '1') then    
            MinsDigitBCD <= (others=>'0');
		elsif (Clk1Hz ='1' and Clk1Hz'event) then    
			if (CountEn = '1') then
			    if ((SecondsCntBin = "111011") then  -- if it equals 59, roll on the seconds boundary of 59->0
				   if (MinsDigitBCD = "1001") then  -- rollover back to 0 if a 9, else add one
                      MinsDigitBCD <= (others=>'0');
				   else 
				      MinsDigitBCD <= MinsDigitBCD + 1;
				   end if;
				end if;
			else
			if(FastMin='1')then
				if (MinsDigitBCD = "1001") then  -- rollover back to 0 if a 9, else add one
                      MinsDigitBCD <= (others=>'0');
				else 
				      MinsDigitBCD <= MinsDigitBCD + 1;
				end if;
			end if;
		end if;  
	end process;   

	MinsTensBCDProc: process(Clk1Hz, reset)  
	begin   
		if(reset = '1') then    
            MinsTensBCD <= (others=>'0');
		elsif (Clk1Hz ='1' and Clk1Hz'event) then    
			if (CountEn = '1') then
			    if (((SecondsCntBin = "111011") and (MinsDigitBCD = "1001") ) then  -- roll on the seconds boundary of 59->0 and Min Digits rolling
				   if ((MinsTensBCD = "0101") ) then  -- roll back to 0 if a 5, else add one
                      MinsTensBCD <= (others=>'0');
				   else 
				      MinsTensBCD <= MinsTensBCD + 1;
				   end if;
				end if;
				else
			if(FastMin='1')then
			 if(MinsDigitBCD = "1001")then
				if ((MinsTensBCD = "0101") ) then  -- roll back to 0 if a 5, else add one
                      MinsTensBCD <= (others=>'0');
				   else 
				      MinsTensBCD <= MinsTensBCD + 1;
				   end if;
				end if;
			 end if;	
			end if;
		end if;  
	end process;   



    HoursDigitsBCDProc: process(Clk1Hz, reset)  
	begin   
		if(reset = '1') then    
            HoursDigitBCD <= (others=>'0');
		elsif (Clk1Hz ='1' and Clk1Hz'event) then    
			if (CountEn = '1') then
			    if ((((SecondsCntBin = "111011") and (MinsDigitBCD = "1001")) and (MinsTensBCD = "0101")) then  -- roll on the seconds boundary of 59->0 and Min Digits rolling and Min Tens rolling
				   if ((HoursDigitBCD = "1001") or (HoursDigitBCD = "0011" and HoursTensBCD = "0010") ) then  -- roll back to 0 if a 9, else add one
                      HoursDigitBCD <= (others=>'0');
				   else 
				      HoursDigitBCD <= HoursDigitBCD + 1;
				   end if;
				end if;
				
			else 
				if(FastHour = '1')then
					if ((HoursDigitBCD = "1001") or (HoursDigitBCD = "0011" and HoursTensBCD = "0010") ) then  -- roll back to 0 if a 9, else add one
						HoursDigitBCD <= (others=>'0');
					else 
						HoursDigitBCD <= HoursDigitBCD + 1;
					end if;
				end if;	
			end if;
		end if;  
	end process;   


    HoursTensBCDProc: process(Clk1Hz, reset)  
	begin   
		if(reset = '1') then    
            HoursTensBCD <= (others=>'0');
		elsif (Clk1Hz ='1' and Clk1Hz'event) then    
			if (CountEn = '1') then
			    if (((((SecondsCntBin = "111011") and (MinsDigitBCD = "1001")) and (MinsTensBCD = "0101")) and (HoursDigitBCD = "1001")) then  -- roll on the seconds boundary of 59->0 and Min Digits rolling and Min Tens rolling and hours rolling
				   if (HoursDigitBCD = "0011" and HoursTensBCD = "0010") then  -- roll back to 0 if a 2, else add one
                      HoursTensBCD <= (others=>'0');
				   else 
				      HoursTensBCD <= HoursTensBCD + 1;
				   end if;
				end if;
				
			else 
				if(FastHour = '1')then
					if  (HoursDigitBCD = "1001") then  -- roll on the seconds boundary of 59->0 and Min Digits rolling and Min Tens rolling and hours rolling
						if (HoursDigitBCD = "0011" and HoursTensBCD = "0010") then  -- roll back to 0 if a 2, else add one
							HoursTensBCD <= (others=>'0');
						else 
							HoursTensBCD <= HoursTensBCD + 1;
						end if;
					end if;
				end if;
			end if;
		end if;  
	end process;   

end Impl1; 
  