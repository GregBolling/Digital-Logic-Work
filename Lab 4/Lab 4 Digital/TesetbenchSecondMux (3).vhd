library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

--------------fastclock for sevensegment display------------- 

entity TesetbenchSecondMux is     		   
end TesetbenchSecondMux; 

architecture Behavioral of TesetbenchSecondMux is 
 

	   signal clock              :  std_logic;
	   signal Clk1Hz             :  std_logic;
	   signal reset              :  std_logic;
       signal SoundAlarm         :  std_logic;
       signal SetLED0Off         :  std_logic;
       signal SetLED0On          :  std_logic;
       signal SetLed04Sec75Duty  :  std_logic;
       signal SsetLED2Sec50Duty  :  std_logic;
       signal Led1Out            :  std_logic;
	   signal InputSevenSegOne   :  std_logic_vector(6 DOWNTO 0);
	   signal InputSevenSegTwo   :  std_logic_vector(6 DOWNTO 0);
	   signal InputSevenSegThree :  std_logic_vector(6 DOWNTO 0);
       signal InputSevenSegFour  :  std_logic_vector(6 DOWNTO 0); 
	   signal OutputLED0         :  std_logic;
	   signal OutputLED1         :  std_logic;
	   signal OutputBuzzer       :  std_logic;
       signal OutputDisplay      :  std_logic_vector(3 downto 0);
  	   signal OutputSegments     :  std_logic_vector(6 DOWNTO 0);
	   
Component SecondMux 
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
    end component;
begin 
	Part1 : SecondMux 
	port map ( 
	   clock              => clock             , -- : in std_logic;
	   Clk1Hz             => Clk1Hz            , -- : in std_logic;
	   reset              => reset             , -- : in std_logic;
       SoundAlarm         => SoundAlarm        , -- : in std_logic;
       SetLED0Off         => SetLED0Off        , -- : in std_logic;
       SetLED0On          => SetLED0On         , -- : in std_logic;
       SetLed04Sec75Duty  => SetLed04Sec75Duty , -- : in std_logic;
       SsetLED2Sec50Duty  => SsetLED2Sec50Duty , -- : in std_logic;
       Led1Out            => Led1Out           , -- : in std_logic;
	   InputSevenSegOne   => InputSevenSegOne  , -- : in std_logic_vector(6 DOWNTO 0);
	   InputSevenSegTwo   => InputSevenSegTwo  , -- : in std_logic_vector(6 DOWNTO 0);
	   InputSevenSegThree => InputSevenSegThree, -- : in std_logic_vector(6 DOWNTO 0);
       InputSevenSegFour  => InputSevenSegFour , -- : in std_logic_vector(6 DOWNTO 0); 
	   OutputLED0         => OutputLED0        , -- : out std_logic;
	   OutputLED1         => OutputLED1        , -- : out std_logic;
	   OutputBuzzer       => OutputBuzzer      , -- : out std_logic;
       OutputDisplay      => OutputDisplay     , -- : out std_logic_vector(3 downto 0);
  	   OutputSegments     => OutputSegments      -- : out std_logic_vector(6 DOWNTO 0)
		 );

    P0: process
	begin   
		clock <= '1';
		wait for 125 ns;
		clock <= '0';
		wait for 125 ns;
	end process;   

    P1: process
	begin   
		Clk1Hz <= '1';
		wait for 500 ms;
		Clk1Hz <= '0';
		wait for 500 ms;
	end process;   

    reset       <= '1', '0' after 2000 ns; 
    SoundAlarm  <= '0', '1' after 3000 ms; 
    SetLED0Off	<= '1', '0' after 2000 ms;
    SetLED0On 	<= '0', '1' after 3000 ms, '0' after 4000 ms;
    SetLed04Sec75Duty 	<= '0', '1' after 5000 ms, '0' after 15000 ms;
    SsetLED2Sec50Duty 	<= '0', '1' after 16000 ms, '0' after 20000 ms;
	Led1Out  	<= '0', '1' after 3000 ms, '0' after 5000 ms;
	InputSevenSegOne <= "0010001";
	InputSevenSegTwo <= "0100010";
	InputSevenSegThree <= "0110011";
	InputSevenSegFour <= "1000100";
	
end Behavioral; 
  