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
      SoundAlarm         : out std_logic;
      SetLED0Off         : out std_logic;
      SetLED0On          : out std_logic;
      SetLed04Sec75Duty  : out std_logic;
      SsetLED2Sec50Duty  : out std_logic;
      Led1Out            : out std_logic
		 );                
end FSM;                 

architecture Behavioral of FSM is 
  
signal a_g_1 : std_logic_vector(6 downto 0); -- declare the (state-machine) enumerated type  
signal a_g_2 : std_logic_vector(6 downto 0);
signal a_g_3 : std_logic_vector(6 downto 0);
signal a_g_4 : std_logic_vector(6 downto 0);




type my_fms_states is (Time_, Set_time, Set_alarm, Alarm);  
signal present_state, next_state : my_fms_states;  



 
begin 
  
	RegisterProc: process(clock, reset)  
	begin   
		if(reset = '1') then    
			present_state <= Time_;   
		elsif (clock='1' and clock'event) then    
			present_state <= next_state;   
		end if;  
	end process;   
	
	
 
	NextStatesProc: process(present_state, a_g)  
	begin   
		case present_state is    
				when  Time_ =>          
								if(Switch1 = "1") then       
									next_state <= Set_time;     
								else 
								if(Switch2 = "1")then      
									next_state <= Set_alarm;
								else 
								if(Switch5 = "1" and AlarmEqualsTimeFSM)then      
									next_state <= Alarm;
								else 
								next_state <= Time_;
								end if;     
								    
				when Set_time =>  
								if(Switch1 = "0") then       
									next_state <= Time_;
								else 
								next_state <= Set_time;
								end if;     
								    
				when Set_alarm => 
								if(Switch2 = "0") then       
									next_state <= Time_;
								else 
								next_state <= Set_alarm;
								end if;     
								    
				when Alarm => 
								if(PushButton1 = '1') then       
									next_state <= Time_; --May switch to present state
								else 
								   next_state <= Alarm;
								end if;    
								 
 		end case;  
	end process; 
	

	OutputsProc: process(present_state, Switch1, Switch2, Switch3,
	     Switch4, Switch5, Switch7, PushButton1, AlarmEqualsTimeFSM,
		  )  
	begin   
		case present_state is    
				when  Time_ =>    
								    
				when Set_time =>    
								    
				when Set_alarm =>     
								    
				when Alarm =>  
								 
 		end case;  
	end process; 
	
	--display, 
	
	
	
	
--Switch 7 mutes the alarm clock
--Switch 6 turns the entire clock on/off
-- Switches 3 and 4 

-- Switches 3,4,6,7





	

end Behavioral; 
  