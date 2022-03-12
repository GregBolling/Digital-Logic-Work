library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

--------------fastclock for sevensegment display------------- 

entity FSM is     
Port (clock 		       :  in STD_LOGIC; 
		reset 		       :  in STD_LOGIC; 
		Clk1Hz 				 :  in std_logic;
      Switch5            :  in std_logic; -- Activates Alarm / Enable
      PushButton1        :  in std_logic;
      PushButton2        :  in std_logic;
	  AlarmEqualsTimeFSM :  in std_logic;
      SetAlarmNow	     : out std_logic;
      AlarmIsEnabled     : out std_logic;
	  FastMinTime        : out std_logic;
      FastHourTime       : out std_logic;
      CntEn              : out std_logic;
      SelectTime_ALn     : out std_logic;
      SoundAlarm         : out std_logic;
      SetLED0Off         : out std_logic;
      SetLED0On          : out std_logic;
      SetLed04Sec75Duty  : out std_logic;
      SsetLED2Sec50Duty  : out std_logic;
		GetTime            : out std_logic;
		FreezeTime         : out std_logic;
      Led1Out            : out std_logic
		 );                
end FSM;                 

architecture Behavioral of FSM is 
  

type my_fms_states is (Time_Now, Set_Hour, Set_Minute, Set_Alarm, Alarm1, 
       Alarm2, Alarm3, Alarm4, Alarm5, Alarm6, Alarm7, Alarm8, Alarm9, Alarm10, Alarm11, AlarmClearSwitch);  
signal present_state, next_state : my_fms_states;  

signal AlarmEnabled      : std_logic;
signal AlarmEnabledSet   : std_logic;
signal AlarmEnabledClear : std_logic;

begin 

    AlarmIsEnabled <= AlarmEnabled;

  
	RegisterProc: process(Clk1Hz, reset)  
	begin   
		if(reset = '1') then    
			present_state <= Time_Now; 
			AlarmEnabled <= '0';			
		elsif (Clk1Hz='1' and Clk1Hz'event) then    
			present_state <= next_state;   
			if (AlarmEnabledSet = '1') then 
			    AlarmEnabled <= '1';
			elsif (AlarmEnabledClear = '1') then
			    AlarmEnabled <= '0';
			end if;
		end if;  
	end process;   
	
	
 
	NextStatesProc: process(present_state, AlarmEqualsTimeFSM, Switch5, PushButton1, PushButton2, AlarmEnabled)  
	begin   

		next_state          <= present_state;
		case present_state is    
				when  Time_Now =>
								if(PushButton1 = '1') then         
									next_state <= Set_Hour;
								elsif(PushButton2 = '1') then         
									   next_state <= Set_Minute;
								elsif (AlarmEnabled = '1' and AlarmEqualsTimeFSM = '1') then      
									   next_state <= Alarm1;
							    elsif (Switch5 = '1' ) then  
									   next_state <= Set_Alarm;
							    else 
								       next_state <= Time_Now;
							    end if; 
            					    
				when Set_Hour =>  
								if(PushButton1 = '0') then       
									next_state <= Time_Now;
								else 
								   next_state <= Set_Hour;
								end if;     
								    
				when Set_Minute => 
								if(PushButton2 = '0') then       
									next_state <= Time_Now;
								else 
								   next_state <= Set_Minute;
								end if;     
				when Set_Alarm => 
								if(Switch5 = '0') then       
									next_state <= Time_Now;
								else 
								   next_state <= Set_Alarm;
								end if;     
								    
				when Alarm1 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm2;
								end if;    
				when Alarm2 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm3;
								end if;    
				when Alarm3 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm4;
								end if;    
				when Alarm4 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm5;
								end if;    
				when Alarm5 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm6;
								end if;    
				when Alarm6 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm7;
								end if;    
				when Alarm7 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm8;
								end if;    
				when Alarm8 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm9;
								end if;    
				when Alarm9 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm10;
								end if;    
				when Alarm10 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm11;
								end if;    
				when Alarm11 => 
								if(Switch5 = '1') then       
									next_state <= AlarmClearSwitch; --May switch to present state
								else 
								   next_state <= Alarm11;
								end if;    
				when AlarmClearSwitch =>
								if(Switch5 = '0') then       
									next_state <= Time_Now; --May switch to present state
								else 
								   next_state <= AlarmClearSwitch;
								end if; 
				when others => next_state <= Time_Now;
 		end case;  
	end process; 
	

	OutputsProc: process(present_state, Switch5, PushButton1, PushButton2, AlarmEqualsTimeFSM
		  )  
	begin   
        Led1Out        <= '0';
        SoundAlarm     <= '0';
		FastMinTime    <= '0';
        FastHourTime   <= '0';
        CntEn          <= '1';
		SelectTime_ALn <= '1';
        SetLED0Off         <= '0';
        SetLED0On          <= '0';
        SetLed04Sec75Duty  <= '0';
        SsetLED2Sec50Duty  <= '0';
		AlarmEnabledSet    	<= '0';
		AlarmEnabledClear  	<= '0';
		SetAlarmNow	    	<= '0';		
		FreezeTime        <= '0';
		GetTime <= '0';
		case present_state is    
				when  Time_Now =>    
				               GetTime <= '1';
                                  SsetLED2Sec50Duty <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= AlarmEnabled;
									   AlarmEnabledSet   <= not AlarmEnabled;
									   SetAlarmNow	     <= not AlarmEnabled;
								  end if;  
				when Set_Hour =>    
                                  CntEn          <= '0';
                                  SetLED0Off        <= '1';
		                          FastHourTime <= Pushbutton2;  
                                  Led1Out        <= '1';
								    
				when Set_Minute =>     
				                  SetLED0On <= '1';
                                  FastMinTime <= Pushbutton1;
								  CntEn          <= '0';
								    
				when Set_Alarm =>     
				                  SetLED0On <= '1';
                                  SelectTime_ALn <= '0';
				when Alarm1 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm2 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm3 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm4 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm5 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm6 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm7 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm8 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm9 =>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm10=>  
		                      FreezeTime        <= '1';
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when Alarm11=>  
				                  SetLed04Sec75Duty <= '1';
                                  SoundAlarm <= '1';
							      if (Switch5 = '1' ) then        
									   AlarmEnabledClear <= '1';
							      end if;
				when others => NULL;
 		end case;  
	end process; 
	
	--display, 
	
	
	
	
--Switch 7 mutes the alarm clock
--Switch 6 turns the entire clock on/off
-- Switches 3 and 4 

-- Switches 3,4,6,7





	

end Behavioral; 
  