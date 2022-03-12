-------------------------------------------------------------------------------
-- Author:     Greg Bolling
-- Date:       March 12, 2020
-- Class;      EEL 3701 
-- Assignment: DesignProblem 2 Top Level Entity
-- Class:      12368
-- Section     7441
-- PI Name:    Savvas Ferekides
-------------------------------------------------------------------------------

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 

entity DesignProblem2 is
  port (
		Switch1      : in  std_logic;
		Switch2      : in  std_logic;
		Switch3      : in  std_logic;
		Switch4      : in  std_logic;
		SevenSeg     : out std_logic_vector(6 DOWNTO 0); 
		display      : out std_logic_vector(3 downto 0)
  );
end DesignProblem2;


architecture AttachAll of DesignProblem2 is 

  signal w : std_logic;
  signal x : std_logic;
  signal y : std_logic;
  signal z : std_logic;
  
  signal Prod1 : std_logic;
  signal Prod2 : std_logic;
  signal Prod3 : std_logic;
  signal Prod4 : std_logic;
  signal Prod5 : std_logic;
  signal Prod6 : std_logic;
  signal Prod7 : std_logic;
  signal Prod8 : std_logic;
  signal Prod9 : std_logic;
  signal Prod10: std_logic;
  signal Prod11: std_logic;
  signal Prod12: std_logic;
  signal Prod13: std_logic;
  
  signal SegA : std_logic;
  signal SegB : std_logic;
  signal SegC : std_logic;
  signal SegD : std_logic;
  signal SegE : std_logic;
  signal SegF : std_logic;
  signal SegG : std_logic;
  
begin 
    w <= Switch1;
    x <= Switch2;
    y <= Switch3;
    z <= Switch4;
	display <= "0001";

	Prod1 <= W nor (not z);
	Prod2 <= (not x) nor (not y);
	Prod3 <= not y nor not z;
	Prod4 <= not( (not x or not y) or not z);
	Prod5 <= not w nor not y;
	Prod6 <= y nor z;
	Prod7 <= not( (w or x) or Y);
	Prod8 <= not( (w or x) or z);
	Prod9 <= x nor not y;
	Prod10 <= not x nor y;
	Prod11 <= not( (w or not y) or z );
	Prod12 <= not( (not w or x) or y );
	Prod13 <= not( (x or not y) or z );
	--SegA <= Switch1;
	--SegB <= Switch2;
	--SegC <= Switch3;
	--SegD <= Switch4;
	--SegE <= '1';
	--SegF <= '1';
	--SegG <= '1';
	SegA <= Prod1 nor Prod2;
	SegB <= not( (Prod6 or Prod4) or (Prod5 or Prod7) );
	SegC <= not( (Prod6 or Prod7) or (Prod4 or Prod13)   );
	SegD <= not( (Prod10 or Prod4) or Prod9   );
	SegE <= not( (not Y or Prod9) or Prod11   );
	SegF <= not( ( z or Prod11) or Prod12   );
	SegG <= not( ( x or Prod6) or (Prod7 or Prod11) );
  
	SevenSeg <= SegG & SegF & SegE & SegD & SegC & SegB & SegA;
end AttachAll;
