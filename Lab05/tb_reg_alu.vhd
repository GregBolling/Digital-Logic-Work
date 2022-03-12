LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
  
ENTITY TB_REG_ALU IS
END TB_REG_ALU;
  
ARCHITECTURE behavior OF TB_REG_ALU IS
  
 -- Component Declaration for the Unit Under Test (UUT)
  
 COMPONENT REG_ALU
 Port ( 
 A, B : in  std_logic_vector(3 downto 0);
 CIN  : in  std_logic;
 OP   : in  STD_LOGIC_VECTOR(1 downto 0);
 COUT : out  std_logic;
 F    : out std_logic_vector(3 downto 0));
 END COMPONENT;
  
 
 --Inputs
 signal A : std_logic_vector(3 downto 0) := (others => '0');
 signal B : std_logic_vector(3 downto 0) := (others => '0');
 signal F : std_logic_vector(3 downto 0) := (others => '0');
 signal OP : std_logic_vector(1 downto 0) := (others => '0');
 signal CIN : std_logic := '0';
 signal COUT : std_logic := '0';

  
BEGIN
  
 
 TEST_R_ALU: REG_ALU PORT MAP(A => A, 
									 B => B, 
									 CIN => CIN, 
									 OP => OP, 
									 COUT => COUT, 
									 F => F); 
  
 -- Stimulus Generation process
 Stimuli_Gen: process
 begin
 
 wait for 50 ns;
 
 A <= "1001";
 B <= "1111";
 
 CIN <= '0';
 OP <= "00";
 wait for 50 ns;
 OP <= "01";
 wait for 50 ns;
 OP <= "10";
 wait for 50 ns;
 OP <= "11";
 wait for 50 ns;
 
 CIN <= '1';
 OP <= "00";
 wait for 50 ns;
 OP <= "01";
 wait for 50 ns;
 OP <= "10";
 wait for 50 ns;
 OP <= "11";
 wait for 50 ns;
 
 A <= "0001";
 B <= "0111";
 
 
 CIN <= '0';
 OP <= "00";
 wait for 50 ns;
 OP <= "01";
 wait for 50 ns;
 OP <= "10";
 wait for 50 ns;
 OP <= "11";
 wait for 50 ns;
 
 CIN <= '1';
 OP <= "00";
 wait for 50 ns;
 OP <= "01";
 wait for 50 ns;
 OP <= "10";
 wait for 50 ns;
 OP <= "11";
 wait for 50 ns;

 
 A <= "0001";
 B <= "0011";
 
 
 CIN <= '0';
 OP <= "00";
 wait for 50 ns;
 OP <= "01";
 wait for 50 ns;
 OP <= "10";
 wait for 50 ns;
 OP <= "11";
 wait for 50 ns;
 
 CIN <= '1';
 OP <= "00";
 wait for 50 ns;
 OP <= "01";
 wait for 50 ns;
 OP <= "10";
 wait for 50 ns;
 OP <= "11";
 wait for 50 ns;

 A <= "1000";
 B <= "0111";
 
 
 CIN <= '0';
 OP <= "00";
 wait for 50 ns;
 OP <= "01";
 wait for 50 ns;
 OP <= "10";
 wait for 50 ns;
 OP <= "11";
 wait for 50 ns;
 
 CIN <= '1';
 OP <= "00";
 wait for 50 ns;
 OP <= "01";
 wait for 50 ns;
 OP <= "10";
 wait for 50 ns;
 OP <= "11";
 wait for 50 ns;

 end process;
 
END;