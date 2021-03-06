library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity reg_alu is
 port ( 
        A    : in  std_logic_vector(3 downto 0);
		B    : in  std_logic_vector(3 downto 0);
        CIN  : in  std_logic;
        OP   : in  std_logic_vector(1 downto 0);
        COUT : out std_logic;
        F    : out std_logic_vector(3 downto 0));
end reg_alu;
 
architecture Behavioral of reg_alu is

   signal ALUOut : std_logic_vector(4 downto 0);

begin
   process(A, B, OP)
   begin
        case OP is
            when "00" =>  
                        ALUOut <= '0' & NOT(A) + 1; -- 2s Complement of A
            when "01" =>
                        ALUOut <= '0' & (A AND B); -- A AND B, this differs from template because instructions are different
            when "10" =>
                        ALUOut <= '0' & (A OR B); -- A OR B, this differs from template because instructions are different
            when "11" =>
                        ALUOut <= ('0' & A) + ('0'& B)	 + CIN; -- Bitwise A+B when "011"
            when others =>
                        ALUOut <= (others =>'0');
        end case;
   end process;

   F <= ALUOut(3 downto 0);
   COUT <= ALUOut(4);

end Behavioral;
