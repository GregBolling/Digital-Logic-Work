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

entity DesignProblem4Part2a is
  port (
      display      : out std_logic_vector(3 downto 0);
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
end DesignProblem4Part2a;


architecture AttachAll of DesignProblem4Part2a is 
signal address      : std_logic_vector(5 DOWNTO 0); -- six bits is 2^6 or 64 locations
signal outval       : std_logic_vector(7 downto 0);

type ARam is array (0 to 63) of std_logic_vector(7 downto 0);
signal TheRam          : ARam := (-- X a b c d e f g and address is 00 w x y z
									"00000000",  -- location 0  minterm m0
									"00001000",  -- location 1  minterm m1
									"01100000",  -- location 2  minterm m2
									"00110001",  -- location 3  minterm m3
									"01000010",  -- location 4  minterm m4
									"00110000",  -- location 5  minterm m5
									"00111000",  -- location 6  minterm m6
									"00000100",  -- location 7  minterm m7

									"01001000",  -- location 8  minterm m8
									"01111001",  -- location 9  minterm m9
									"01000011",  -- location 10 minterm m10
									"00000000",  -- location 11 minterm m11
									"00000000",  -- location 12 minterm m12
									"00000000",  -- location 13 minterm m13
									"00000000",  -- location 14 minterm m14
									"00000000",  -- location 15 minterm m15

									"00000000",  -- location 16
									"00000000",  -- location 17
									"00000000",  -- location 18
									"00000000",  -- location 19
									"00000000",  -- location 20
									"00000000",  -- location 21
									"00000000",  -- location 22
									"00000000",  -- location 23

									"00000000",  -- location 24
									"00000000",  -- location 25
									"00000000",  -- location 26
									"00000000",  -- location 27
									"00000000",  -- location 28
									"00000000",  -- location 29
									"00000000",  -- location 30
									"00000000",  -- location 31

									"00000000",  -- location 32
									"00000000",  -- location 33
									"00000000",  -- location 34
									"00000000",  -- location 35
									"00000000",  -- location 36
									"00000000",  -- location 37
									"00000000",  -- location 38
									"00000000",  -- location 39

									"00000000",  -- location 40
									"00000000",  -- location 41
									"00000000",  -- location 42
									"00000000",  -- location 43 
									"00000000",  -- location 44
									"00000000",  -- location 45
									"00000000",  -- location 46
									"00000000",  -- location 47

									"00000000",  -- location 48
									"00000000",  -- location 49
									"00000000",  -- location 50
									"00000000",  -- location 51
									"00000000",  -- location 52
									"00000000",  -- location 53
									"00000000",  -- location 54
									"00000000",  -- location 55

									"00000000",  -- location 56
									"00000000",  -- location 57
									"00000000",  -- location 58
									"00000000",  -- location 59
									"00000000",  -- location 60
									"00000000",  -- location 61
									"00000000",  -- location 62
									"00000000"   -- location 63
);
 
  
begin 

   display <= "0001";

	address <= "00" & w & x & y & z; -- only need 16 locations for 2^4 input combinations
    ARAMProc: process(clock)
    begin
        if (clock'event and clock = '1') then   
            outval <= TheRam(to_integer(unsigned(address)));
        end if;
    end process;
	a <= outval(0);
	b <= outval(1);
	c <= outval(2);
	d <= outval(3);
	e <= outval(4);
	f <= outval(5);
	g <= outval(6);
end AttachAll;
