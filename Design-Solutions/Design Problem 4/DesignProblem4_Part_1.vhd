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

entity DesignProblem4_Part1 is
  port (
		clock        : in  std_logic;
		address      : in  std_logic_vector(5 DOWNTO 0); -- six bits is 2^6 or 64 locations
		outval       : out std_logic_vector(7 downto 0)
  );
end DesignProblem4_Part1;


architecture AttachAll of DesignProblem4_Part1 is 

type ARam is array (0 to 63) of std_logic_vector(7 downto 0);
signal TheRam          : ARam := ( 
									"00000000",  -- location 0
									"00000000",  -- location 1
									"00000000",  -- location 2
									"00000000",  -- location 3
									"00000000",  -- location 4
									"00000000",  -- location 5
									"00000000",  -- location 6
									"00000000",  -- location 7

									"00000000",  -- location 8
									"00000000",  -- location 9
									"00000000",  -- location 10
									"00000000",  -- location 11
									"00000000",  -- location 12
									"00000000",  -- location 13
									"00000000",  -- location 14
									"00000000",  -- location 15

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


	
    ARAMProc: process(clock)
    begin
        if (clock'event and clock = '1') then   
            outval <= TheRam(to_integer(unsigned(address)));
        end if;
    end process;
end AttachAll;
