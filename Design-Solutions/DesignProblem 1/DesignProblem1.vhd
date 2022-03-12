-------------------------------------------------------------------------------
-- Author:     Greg Bolling
-- Date:       March 12, 2020
-- Class;      EEL 3701 
-- Assignment: DesignProblem 1 Top Level Entity
-- Class:      12368
-- Section     7441
-- PI Name:    Savvas Ferekides
-------------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

entity DesignProblem1 is
  port (
		Switch1      : in  std_logic;  -- A 
		Switch2      : in  std_logic;  -- B
		Switch3      : in  std_logic;  -- C
		Switch4      : in  std_logic;  -- D
		Switch5      : in  std_logic;  -- E
		LEDOut       : out std_logic_vector(3 DOWNTO 0) -- WXYZ
  );
end DesignProblem1;


architecture AttachAll of DesignProblem1 is 

  signal w  : std_logic;
  signal w1 : std_logic;
  signal w2 : std_logic;
  signal x  : std_logic;
  signal x1 : std_logic;
  signal x2 : std_logic;
  signal x3 : std_logic;
  signal y  : std_logic;
  signal y1 : std_logic;
  signal y2 : std_logic;
  signal y3 : std_logic;
  signal y4 : std_logic;
  signal z  : std_logic;
  signal z1 : std_logic;
  
  
  signal A : std_logic;
  signal B : std_logic;
  signal C : std_logic;
  signal D : std_logic;
  signal E : std_logic;
  
begin 
    A <= Switch1;
    B <= Switch2;
    C <= Switch3;
    D <= Switch4;
    E <= Switch5;
    
	-- W
	LEDOut(3) <= (not A) nor w1; -- one nor gate
	w1        <= C nor w2; -- one nor gate
	w2        <= not(((not B) or (not D)) or (not E)); -- one NOR gate
	-- X
   LEDOut(2) <= x2 nor x3;
	x1 <= not (z1 or (not A) or (not D));
	x2 <= B nor (not C);
	x3 <= c nor x1;

	-- Y
	LEDOUt(1) <= y1 nor y4;
	y1 <= not( (not A) or (not E) or (not D) or (not B) );
	y2 <= (not D) nor (not B);
	y3 <= (not A) nor (not E);
	y4 <= y2 nor y3;
	
	-- Z
	LEDOut(0) <= z1;
	z1 <= (not E) nor (not B); 

end AttachAll;
