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

entity DesignProblem4Part2b is
end DesignProblem4Part2b;


architecture AttachAll of DesignProblem4Part2b is 
 component DesignProblem4_Part2a
  port (
		clock        : in  std_logic;
		w            : in  std_logic;
		x            : in  std_logic;
		y            : in  std_logic;
		z            : in  std_logic;
		a            : out std_logic;
		b            : out std_logic;
		c            : out std_logic;
		d            : out std_logic;
		e            : out std_logic;
		f            : out std_logic;
		g            : out std_logic
  );
  end component;
 
 signal a : std_logic;
 signal b : std_logic;
 signal c : std_logic;
 signal d : std_logic;
 signal e : std_logic;
 signal f : std_logic;
 signal g : std_logic;
 signal clock : std_logic;
 
 signal w : std_logic;
 signal x : std_logic;
 signal y : std_logic;
 signal z : std_logic;
 signal Count : std_logic_vector(3 downto 0);
 
begin 

  TheClock: process 
  begin 
      clock <= '0';
	  wait for 10 ns;
	  clock <= '1';
	  wait for 10 ns;
  end process;

  w <= Count(3);
  x <= Count(2);
  y <= Count(1);
  z <= Count(0);
  
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
				   
  Part2a: DesignProblem4_Part2a
  port map (
		clock        => clock, -- : in  std_logic;
		w            => w, -- : in  std_logic;
		x            => x, -- : in  std_logic;
		y            => y, -- : in  std_logic;
		z            => z, -- : in  std_logic;
		a            => a, -- : out std_logic;
		b            => b, -- : out std_logic;
		c            => c, -- : out std_logic;
		d            => d, -- : out std_logic;
		e            => e, -- : out std_logic;
		f            => f, -- : out std_logic;
		g            => g  -- : out std_logic
  );
 
end AttachAll;
