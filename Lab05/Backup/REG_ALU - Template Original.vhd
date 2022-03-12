library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity REG_ALU is
 Port ( 
 A, B : in  std_logic_vector(3 downto 0);
 CIN  : in  std_logic;
 OP   : in  STD_LOGIC_VECTOR(1 downto 0);
 COUT : out  std_logic;
 F    : out std_logic_vector(3 downto 0));
end REG_ALU;
 
architecture Behavioral of REG_ALU is
Signal TEMP: std_logic_vector(4 downto 0);
begin
process(A, B, OP)
begin
case OP is
 when "00" =>
    TEMP(3 downto 0) <= NOT(A) + 1; -- 2s Complement of A
 when "01" =>
    TEMP(3 downto 0) <= A OR B; -- Bitwise A OR B
 when "10" =>
    TEMP(3 downto 0) <= A AND B; -- Bitwise A AND B when "011" =>
 when "11" =>
    TEMP <= ('0'&A)+('0'& B)+CIN; -- Bitwise A+B when "011"
 when others =>
 NULL;
end case;
  
end process;
 F <= TEMP(3 downto 0);
 COUT <= TEMP(4);
end Behavioral;
