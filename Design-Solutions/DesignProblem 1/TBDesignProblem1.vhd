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

entity TBDesignProblem1 is
end TBDesignProblem1;


architecture AttachAll of TBDesignProblem1 is 

  component DesignProblem1
  port (
		Switch1      : in  std_logic;  -- A 
		Switch2      : in  std_logic;  -- B
		Switch3      : in  std_logic;  -- C
		Switch4      : in  std_logic;  -- D
		Switch5      : in  std_logic;  -- E
		LEDOut       : out std_logic_vector(3 DOWNTO 0) -- WXYZ
  );
  end component;
  
  signal LEDOut    : std_logic_vector(3 downto 0);

  signal count      : std_logic_vector(4 downto 0);
  
begin 
  DP2: DesignProblem1 
  port map (
		Switch1      => Count(4), -- : in  std_logic;
		Switch2      => Count(3), -- : in  std_logic;
		Switch3      => Count(2), -- : in  std_logic;
		Switch4      => Count(1), -- : in  std_logic;
		Switch4      => Count(0), -- : in  std_logic;
		LEDOut       => LEDOut   -- : out std_logic_vector(3 downto 0)
  );

  Count <= "00000", "00001" after 100 ns,
                    "00010" after 200 ns,
                    "00011" after 300 ns,
                    "00100" after 400 ns,
                    "00101" after 500 ns,
                    "00110" after 600 ns,
                    "00111" after 700 ns,
                    "01000" after 800 ns,
                    "01001" after 900 ns,
                    "01010" after 1000 ns,
                    "01011" after 1100 ns,
                    "01100" after 1200 ns,
                    "01101" after 1300 ns,
                    "01110" after 1400 ns,
                    "01111" after 1500 ns;
                    "10000" after 1600 ns,
                    "10001" after 1700 ns,
                    "10010" after 1800 ns,
                    "10011" after 1900 ns,
                    "10100" after 2000 ns,
                    "10101" after 2100 ns,
                    "10110" after 2200 ns,
                    "10111" after 2300 ns,
                    "11000" after 2400 ns,
                    "11001" after 2500 ns,
                    "11010" after 2600 ns,
                    "11011" after 2700 ns,
                    "11100" after 2800 ns,
                    "11101" after 2900 ns,
                    "11110" after 3000 ns,
                    "11111" after 3100 ns;
end AttachAll;
