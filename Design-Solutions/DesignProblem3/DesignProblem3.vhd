-------------------------------------------------------------------------------
-- Author:     Greg Bolling
-- Date:       March 6, 2020
-- Class;      EEL 3701 
-- Assignment: Design Problem 3 Top Level Entity
-- Class:      12368
-- Section     7441
-- PI Name:    Savvas Ferekides
-------------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

entity DesignProblem3 is
  port (
		clock        : in  std_logic;
		resetin      : in  std_logic;
--      Switch1      : in  std_logic; -- "Set Time" mode
--      Switch2      : in  std_logic; -- "Set Alarm" mode
--      Switch3      : in  std_logic; -- Minute Increment
--      Switch4      : in  std_logic; -- Hours Increment
      Switch5      : in  std_logic; -- Activates Alarm / Enable
      PushButton1  : in  std_logic; -- Stops the Alarm after it started ringing
      PushButton2  : in  std_logic; -- Stops the Alarm after it started ringing
		LED0         : out std_logic; -- For Conditions:  2 sec period, 50% duty cycle OR Off OR On OR 4 sec period 75% duty cycle
		LED1         : out std_logic; -- One when Alarm is Enabled
		Buzzer       : out std_logic; -- Alarm 2 sec 50% duty
		display      : out std_logic_vector(3 DOWNTO 0);
      SevenSeg     : out std_logic_vector(6 DOWNTO 0)
  );
end DesignProblem3;


architecture AttachAll of DesignProblem3 is 

	component TwoDigitDisplay is
	port( 
		binary1   :   in  std_logic_vector(3 downto 0);
		binary2   :   in  std_logic_vector(3 downto 0);
		a_to_g_1  :  out  std_logic_vector(6 downto 0);
      a_to_g_2  :  out  std_logic_vector(6 downto 0)); 
	end component;
  
  
	component ClockCounter is
	port( 
		  Clk1Hz    : in  std_logic;  -- 1 Hz clock
        reset     : in  std_logic;  -- active high reset
        FastMin   : in  std_logic;  -- Causes minutes to count at 1 per second
        FastHour  : in  std_logic;
        CountEn   : in  std_logic;     
		  HHMMout   : out std_logic_vector(15 DOWNTO 0));  
	end component;
		
		
	component FSM
   Port (
	   clock 		       :  in STD_LOGIC; 
		reset 		       :  in STD_LOGIC; 
		Clk1Hz 				 :  in std_logic;
--		Switch1            :  in std_logic; -- "Set Time" mode
--      Switch2            :  in std_logic; -- "Set Alarm" mode
--      Switch3            :  in std_logic; -- Minute Increment
--      Switch4            :  in std_logic; -- Hours Increment
      Switch5            :  in std_logic; -- Activates Alarm / Enable
      PushButton1        :  in std_logic;
      PushButton2        :  in std_logic;
	  AlarmEqualsTimeFSM :  in std_logic;	
      SetAlarmNow	     : out std_logic;
      AlarmIsEnabled    : out std_logic;
      FastMinTime       : out std_logic;
      FastHourTime      : out std_logic;
      CntEn             : out std_logic;
	  SelectTime_ALn     : out std_logic;
      SoundAlarm         : out std_logic;
      SetLED0Off         : out std_logic;
      SetLED0On          : out std_logic;
      SetLed04Sec75Duty  : out std_logic;
      SsetLED2Sec50Duty  : out std_logic;
		FreezeTime         : out std_logic;
		GetTime            : out std_logic;
      Led1Out            : out std_logic
		);                
 	end component;
		
	
	component SecondMux is
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
		 FreezeTime         : in std_logic;
       GetTime            : in std_logic;
		 OutputLED0         : out std_logic;
		 OutputLED1         : out std_logic;
		 OutputBuzzer       : out std_logic;
       OutputDisplay      : out std_logic_vector(3 downto 0);
  		 OutputSegments     : out std_logic_vector(6 DOWNTO 0) ); 
   end component;
			
signal SetAlarmNow	     : std_logic;
signal AlarmEqualsTime   : std_logic;
signal SoundAlarm        : std_logic;
signal SetLED0Off        : std_logic;
signal SetLED0On         : std_logic;
signal SetLed04Sec75Duty : std_logic;
signal SsetLED2Sec50Duty : std_logic;
signal Led1Out           : std_logic;
signal Disable           : std_logic;
signal Clk1Hz            : std_logic;
signal FastMinTime       : std_logic;
signal FastHourTime      : std_logic;
signal CntEn             : std_logic;
signal SelectTime_ALn    : std_logic;
signal AlarmIsEnabled    : std_logic;
signal BCD_Time          : std_logic_vector(15 downto 0);
signal BCD_Alarm         : std_logic_vector(7 downto 0);
signal OutBCD            : std_logic_vector(15 downto 0);
signal SevenSegOneSig    : std_logic_vector(6 downto 0);
signal SevenSegTwoSig    : std_logic_vector(6 downto 0);
signal SevenSegThreeSig  : std_logic_vector(6 downto 0);
signal SevenSegFourSig   : std_logic_vector(6 downto 0);
signal reset				 : std_logic;
signal count             : std_logic_vector(27 downto 0);  -- max value is 2^27-1 or 134,217,727, min value is 0
signal AMDMPM            : std_logic_vector(3 downto 0);
signal FreezeTime        : std_logic;
signal GetTime           : std_logic;
  
begin 


	reset <=  resetin;
	
	AMDMPM <= "1010" when ((BCD_Time(7 downto 4) = "0001") or (BCD_Time(7 downto 4) = "0010")) else
	          "1011" when ((BCD_Time(7 downto 4) = "0011") or (BCD_Time(7 downto 4) = "0100")) else
	          "1100" when ((BCD_Time(7 downto 4) = "0101") or (BCD_Time(7 downto 4) = "0110"));
    SlowClock1Hz : process(clock, reset)
    begin
        if(reset = '1') then
	        Clk1Hz <= '0';
		    count <= X"0000000";
	    elsif (clock'event and clock = '1') then   
		    if (count = X"1e847f") then  -- exactly 1,999,999 so counter goes 0, 1, 2, ..., 1,999,999 and repeats every half second
		        count <= X"0000000";
			    Clk1Hz <= not Clk1Hz; -- inverts every half to output 2 hz
		    else
   			    count <= count + 1;
		    end if;
        end if;
    end process;


   AlarmCapture : process(Clk1Hz, reset)
    begin
        if(reset = '1') then
			BCD_Alarm <= (others=>'0');
	    elsif (Clk1Hz'event and Clk1Hz = '1') then  
		    if (SetAlarmNow = '1') then
		        BCD_Alarm <= BCD_Time(7 downto 0);
			end if;
        end if;		
	end process;
			
   TimeOfDay: ClockCounter 
	port map( 
		  Clk1Hz    => Clk1Hz,          -- : in  std_logic;  -- 1 Hz clock
        reset     => reset,           -- : in  std_logic;  -- active high reset
        FastMin   => FastMinTime,     -- : in  std_logic;  -- Causes minutes to count at 1 per second
        FastHour  => FastHourTime,    -- : in  std_logic;
        CountEn   => CntEn,           -- : in  std_logic;     
		  HHMMout   => BCD_Time         -- : out std_logic_vector(15 DOWNTO 0);  
		);

   Disable <= '0';
	

	AlarmEqualsTime <= '1' when (BCD_Time(7 downto 0) = BCD_Alarm(7 downto 0)) else '0';
	
   OutBCD <= "1101" & BCD_Time(7 downto 0) & AMDMPM when (SelectTime_ALn = '1') else "1101" & BCD_Alarm(7 downto 0) & AMDMPM;
	
   MinutesDisplay : TwoDigitDisplay 
	port map ( 
		binary1   => OutBCD(3 downto 0), --   in  std_logic_vector(3 downto 0);
		binary2   => OutBCD(7 downto 4), --   in  std_logic_vector(3 downto 0);
		a_to_g_1  => SevenSegOneSig, --  out  std_logic_vector(6 downto 0);
      a_to_g_2  => SevenSegTwoSig  --  out  std_logic_vector(6 downto 0)
		); 


	HoursDisplay : TwoDigitDisplay 
	port map ( 
		binary1   => OutBCD(11 downto 8) , --   in  std_logic_vector(3 downto 0);
		binary2   => OutBCD(15 downto 12), --   in  std_logic_vector(3 downto 0);
		a_to_g_1  => SevenSegThreeSig,     --  out  std_logic_vector(6 downto 0);
      a_to_g_2  => SevenSegFourSig       --  out  std_logic_vector(6 downto 0)
		); 
		
		
		
	FSMDisplay : FSM
   port map (
	  clock 		         => clock 		      , -- :  in STD_LOGIC; 
	  reset 		         => reset 		      , -- :  in STD_LOGIC; 
	  Clk1Hz 				   => Clk1Hz 				, -- :  in std_logic;      Switch5              => Switch5           , -- :  in std_logic; -- Activates Alarm / Enable
      PushButton1          => PushButton1       , -- :  in std_logic;
      PushButton2          => PushButton2       , -- :  in std_logic;
      Switch5              => Switch5 , -- :  in std_logic; -- Activates Alarm / Enable
	  AlarmEqualsTimeFSM   => AlarmEqualsTime   , -- :  in std_logic;	
	  SelectTime_ALn       => SelectTime_ALn    , -- : out std_logic;
      SetAlarmNow	       => SetAlarmNow, -- : out std_logic;
	  AlarmIsEnabled       => AlarmIsEnabled,
      SoundAlarm           => SoundAlarm        , -- : out std_logic;	  
	  FastMinTime          => FastMinTime,     --  : out std_logic;
      FastHourTime         => FastHourTime, -- : out std_logic;
      CntEn                => CntEn, --   : out std_logic;
      SetLED0Off           => SetLED0Off        , -- : out std_logic;
      SetLED0On            => SetLED0On         , -- : out std_logic;
      SetLed04Sec75Duty    => SetLed04Sec75Duty , -- : out std_logic;
      SsetLED2Sec50Duty    => SsetLED2Sec50Duty , -- : out std_logic;
		FreezeTime         => FreezeTime,
		GetTime            => GetTime,
      Led1Out              => Led1Out             -- : out std_logic
		);                		

   SecondMuxand7Seg: SecondMux 
	port map ( 
	    clock              => clock,  -- : in std_logic;
		 Clk1Hz             => Clk1Hz, -- : in std_logic;
		 reset              => reset,  -- : in std_logic;
       SoundAlarm         => SoundAlarm       , -- : in std_logic;
       SetLED0Off         => SetLED0Off       , -- : in std_logic;
       SetLED0On          => SetLED0On        , -- : in std_logic;
       SetLed04Sec75Duty  => SetLed04Sec75Duty, -- : in std_logic;
       SsetLED2Sec50Duty  => SsetLED2Sec50Duty, -- : in std_logic;
       Led1Out            => Led1Out          , -- : in std_logic;
		 InputSevenSegOne   => SevenSegOneSig, -- : in std_logic_vector(6 DOWNTO 0);
		 InputSevenSegTwo   => SevenSegTwoSig, -- : in std_logic_vector(6 DOWNTO 0);
		 InputSevenSegThree => SevenSegThreeSig, -- : in std_logic_vector(6 DOWNTO 0);
       InputSevenSegFour  => SevenSegFourSig, -- : in std_logic_vector(6 DOWNTO 0); 
	--	 OutputLED0         => LED0, -- : out std_logic;
	--	 OutputLED1         => LED1, -- : out std_logic;
		 FreezeTime         => FreezeTime,
       GetTime            => GetTime,
		 OutputBuzzer       => Buzzer, -- : out std_logic;
		 OutputDisplay      => display,  -- : out std_logic_vector(3 downto 0);
		 OutputSegments     => SevenSeg  -- : out std_logic_vector(6 DOWNTO 0) );
       );		
	   
	   LED0 <= AlarmIsEnabled;
	   LED1 <= SoundAlarm;
end AttachAll;













