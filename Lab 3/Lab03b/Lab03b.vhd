-------------------------------------------------------------------------------
-- Author:     Greg Bolling
-- Date:       February 19, 2020
-- Class;      EEL 3701 
-- Assignment: Lab 03b  Shift Register
-- Class:      12368
-- Section     7441
-- PI Name:    Savvas Ferekides
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_signed.all;
 
entity Lab03b is     
	Port ( 	clock, reset : in  STD_LOGIC;            
				LED : out  STD_LOGIC_VECTOR (7 downto 0)); 
end Lab03b; 

architecture Behavioral of Lab03b is  
signal shift_reg : std_logic_vector(7 downto 0); 
signal slow_clk : std_logic; 
signal count : std_logic_vector(23 DOWNTO 0):= X"000000"; 

component slow_clock is
	port( 
			clock, reset : in  STD_LOGIC;           
			slow_clk     : out  STD_LOGIC); end component; 
 
component shift_module is  
	port (
		clock, reset : in  STD_LOGIC;           
		shift        : out  STD_LOGIC_VECTOR (7 downto 0)); 
end component; 
 
begin  
	U0: slow_clock 
	port map(
			slow_clk=>slow_clk, 
			reset=>reset, 
			clock=>clock); 
 
 
	U1: shift_module 
	port map (
			clock =>slow_clk, 
			reset=>reset, 
			shift => shift_reg); 
 
    -- display the result on the LEDs    
    LED <=  shift_reg; 
 
end Behavioral;