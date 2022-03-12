library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ROM_32_6 is
	
	
	port
	
	(
	addr : in std_logic_vector(4 downto 0);
	clk    : in std_logic;
	q      : out std_logic_vector(5 downto 0)
	);
	
	
end entity;

	architecture rtl of ROM_32_6 is
		
		-- Build a 2-D array type for the RoM
		
		
		subtype word_t is std_logic_vector(5 downto 0);
		type memory_t is array(31 downto 0) of word_t;
		
	function init_rom
	return memory_t is
	variable tmp : memory_t := (others => (others => '0'));
	
	
	begin


		 tmp(0) := "100000";   -- begin
		 tmp(1) := "100100";   -- end
		 tmp(2) := "100000";   -- begin
		 tmp(3) := "100100";   -- end
		 tmp(4) := "100000";   -- begin
		 tmp(5) := "100100";   -- end
		 tmp(6) := "100000";   -- begin
		 tmp(7) := "100100";   -- end
		 tmp(8) := "100000";   -- begin
		 tmp(9) := "100100";   -- end


	     -- Op Code	   Dest 	Operand		Instruction
         -- 1000		00		0000		(Program Begin)
		 tmp(10) := "100000";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 0000		00		1100		(Load Register A with 0010)
		 tmp(11) := "000000";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 0000		01		1010		(Load Register B with 0011)
		 tmp(12) := "000001";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 0101		00		0000		(Add A + B and store in A, A has A + B)
		 tmp(13) := "010100";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 0101		00		0000		(Add A + B and store in A, A has A + 2*B)
		 tmp(14) := "010100";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 0101		01		0000		(OR A/B and store in B, B has A OR B)
		 tmp(15) := "010001";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 1001		00		0000		(Program End)
		 tmp(16) := "100100";
  
		 tmp(17) := "100000";   -- begin
		 tmp(18) := "100100";   -- end
		 tmp(19) := "100000";   -- begin
		 tmp(20) := "100100";   -- end

	     -- Op Code	   Dest 	Operand		Instruction
         -- 1000		00		0000		(Program Begin)
		 tmp(21) := "100000";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 0000		00		1100		(Load Register A with 0010)
		 tmp(22) := "000000";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 0000		01		1010		(Load Register B with 0111)
		 tmp(23) := "000001";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 0101		01		0000		(Add B - A and store in B)
		 tmp(24) := "011001";
	     -- Op Code	   Dest 	Operand		Instruction
         -- 1001		00		0000		(Program End)
		 tmp(25) := "100100";
		
		 tmp(26) := "100100";   -- end
		 tmp(27) := "100000";   -- begin
		 tmp(28) := "100100";   -- end
		 tmp(29) := "100000";   -- begin
		 tmp(30) := "100100";   -- end
		 tmp(31) := "100100";   -- end
-- Declare the ROM signal and specify a default value

		return tmp;
		
	end init_rom;
	
signal rom : memory_t := init_rom;

	begin
	
	
		process(clk)
		
		
		begin
	
			if(rising_edge(clk)) then
			q <= rom(to_integer(unsigned(addr)));
			end if;
		
		end process;
	
	
	
end rtl;













