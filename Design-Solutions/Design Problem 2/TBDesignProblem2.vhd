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

entity TBDesignProblem2 is
end TBDesignProblem2;


architecture AttachAll of TBDesignProblem2 is 

  component DesignProblem2 
  port (
		Switch1      : in  std_logic;
		Switch2      : in  std_logic;
		Switch3      : in  std_logic;
		Switch4      : in  std_logic;
		SevenSeg     : out std_logic_vector(6 DOWNTO 0); 
		display      : out std_logic_vector(3 downto 0)
  );
  end component;
  
  signal SevenSeg   : std_logic_vector(6 DOWNTO 0); 
  signal display    : std_logic_vector(3 downto 0);

  signal count      : std_logic_vector(3 downto 0);
  
begin 
  DP2: DesignProblem2 
  port map (
		Switch1      => Count(3), -- : in  std_logic;
		Switch2      => Count(2), -- : in  std_logic;
		Switch3      => Count(1), -- : in  std_logic;
		Switch4      => Count(0), -- : in  std_logic;
		SevenSeg     => SevenSeg, -- : out std_logic_vector(6 DOWNTO 0); 
		display      => display  -- : out std_logic_vector(3 downto 0)
  );

  Count <= "0000", "0001" after 100 ns,
                   "0010" after 200 ns,
                   "0011" after 300 ns,
                   "0100" after 400 ns,
                   "0101" after 500 ns,
                   "0110" after 600 ns,
                   "0111" after 700 ns,
                   "1000" after 800 ns,
                   "1001" after 900 ns,
                   "1010" after 1000 ns,
                   "1011" after 1100 ns,
                   "1100" after 1200 ns,
                   "1101" after 1300 ns,
                   "1110" after 1400 ns,
                   "1111" after 1500 ns;
end AttachAll;
