library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
PORT (

A : in std_logic_vector(3 downto 0);
B : in std_logic_vector(3 downto 0);
CIN : in std_logic;
OP: in std_logic_vector(1 downto 0);
COUT: out std_logic;
F : out std_logic_vector(3 downto 0));
end ALU;

architecture Behavioral of ALU is
Signal TEMP: std_logic_vector(4 downto 0);

begin
process(A, B, OP)
begin
case OP is

when "00" =>
	TEMP(3 downto 0) <= 1+ NOT(A);
when "01" =>
	TEMP(3 downto 0) <= A OR B;
when "11" =>
	TEMP <= ('0' & A) + ('0' & B) + CIN;
when "10" =>
	TEMP(3 downto 0) <= A AND B;
when others =>
NULL;
end case;

end process;

F <= TEMP(3 downto 0);
COUT <= TEMP(4);
end Behavioral;	
	
	
	
	