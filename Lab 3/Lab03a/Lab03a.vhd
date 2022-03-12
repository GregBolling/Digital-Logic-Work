-------------------------------------------------------------------------------
-- Author:     Greg Bolling
-- Date:       February 19, 2020
-- Class;      EEL 3701 
-- Assignment: Lab 03a  SR-Latch
-- Class:      12368
-- Section     7441
-- PI Name:    Savvas Ferekides
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_signed.all;
 
entity Lab03a is   
	Port ( 
				S : in    STD_LOGIC;     
				R : in    STD_LOGIC;     
				Q : inout STD_LOGIC);  

end Lab03a;

architecture Behavioral of Lab03a is  
signal notQ : STD_LOGIC;  
begin  
	Q    <= R nor notQ;  
	notQ <= S nor Q; 

end Behavioral;
 
 