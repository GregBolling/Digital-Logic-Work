library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

--------------fastclock for sevensegment display------------- 

entity FSM is     
Port (clock 		       :  in STD_LOGIC; 
		reset 		       :  in STD_LOGIC; 
		Clk1Hz 				 :  in std_logic;
		Switch1            :  in std_logic; -- "Set Time" mode
      Switch2            :  in std_logic; -- "Set Alarm" mode
      Switch3            :  in std_logic; -- Minute Increment
      Switch4            :  in std_logic; -- Hours Increment
      Switch5            :  in std_logic; -- Activates Alarm / Enable
      Switch7            :  in std_logic; -- Mutes the Alarm, it never rings
      PushButton1        :  in std_logic;
	  AlarmEqualsTimeFSM :  in std_logic;	
	  FastMinTime        : out std_logic;
      FastMinAlarm       : out std_logic;
      FastHourTime       : out std_logic;
      FastHourAlarm      : out std_logic;
      CntEn              : out std_logic;
      SelectTime_ALn     : out std_logic;
      SoundAlarm         : out std_logic;
      SetLED0Off         : out std_logic;
      SetLED0On          : out std_logic;
      SetLed04Sec75Duty  : out std_logic;
      SsetLED2Sec50Duty  : out std_logic;
      Led1Out            : out std_logic
		 );                
end FSM;                 

architecture Behavioral of FSM is 
  

type my_fms_states is (Time_Now, Set_time, Set_alarm, Alarm);  
signal present_state, next_state : my_fms_states;  
signal PushbuttonValue : std_logic:='0';

begin 
  
	RegisterProc: process(Clk1Hz, reset)  
	begin   
		if(reset = '1') then    
			present_state <= Time_Now;   
		elsif (Clk1Hz='1' and Clk1Hz'event) then    
			present_state <= next_state;   
		end if;  
	end process;   
	
	
 
	NextStatesProc: process(present_state, AlarmEqualsTimeFSM, Switch1, Switch2, Switch5, PushButton1)  
	begin   
		case present_state is    
				when  Time_Now =>          
								if(Switch1 = '1') then       
									next_state <= Set_time;     
								elsif(Switch2 = '1')then      
									next_state <= Set_alarm;
								elsif (Switch5 = '1' and AlarmEqualsTimeFSM = '1' and PushbuttonValue = '0') then      
									next_state <= Alarm;
								else 
									if(Switch5 = '0')then
									PushbuttonValue <= '0';
									end if;
								   next_state <= Time_Now;
								end if;     
								    
				when Set_time =>  
								if(Switch1 = '0') then       
									next_state <= Time_Now;
								else 
								   next_state <= Set_time;
								end if;     
								    
				when Set_alarm => 
								if(Switch2 = '0') then       
									next_state <= Time_Now;
								else 
								   next_state <= Set_alarm;
								end if;     
								    
				when Alarm => 
								if(PushButton1 = '1') then       
									next_state <= Time_Now; --May switch to present state
									PushbuttonValue <= '1';
								else 
								   next_state <= Alarm;
								end if;    
								 
				when others => next_state <= Time_Now;
 		end case;  
	end process; 
	

	OutputsProc: process(present_state, Switch1, Switch2, Switch3,
	     Switch4, Switch5, Switch7, PushButton1, AlarmEqualsTimeFSM
		  )  
	begin   
        Led1Out        <= Switch5;
        SoundAlarm     <= '0';
		FastMinTime    <= '0';
        FastMinAlarm   <= '0';
        FastHourTime   <= '0';
        FastHourAlarm  <= '0';
        CntEn          <= '1';
		SelectTime_ALn <= '1';
        SetLED0Off         <= '0';
        SetLED0On          <= '0';
        SetLed04Sec75Duty  <= '0';
        SsetLED2Sec50Duty  <= '0';
		case present_state is    
				when  Time_Now =>    
                                  SsetLED2Sec50Duty <= '1';
								    
				when Set_time =>    
                                  CntEn          <= '0';
                                  SetLED0Off        <= '1';
		                          FastMinTime <= Switch3;
                                  FastHourTime <= Switch4;
								    
				when Set_alarm =>     
				                  SetLED0On <= '1';
                                  FastMinAlarm <= Switch3;
                                  FastHourAlarm <= Switch4;
                                  SelectTime_ALn <= '0';
				when Alarm =>  
				                  SetLed04Sec75Duty <= '1';
				                  SoundAlarm <= Switch5 and not Switch7;
								 
 		end case;  
	end process; 
	
	--display, 
	
	
	
	
--Switch 7 mutes the alarm clock
--Switch 6 turns the entire clock on/off
-- Switches 3 and 4 

-- Switches 3,4,6,7





	

end Behavioral; 
  