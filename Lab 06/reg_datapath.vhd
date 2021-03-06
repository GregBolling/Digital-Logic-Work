library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity REG_DATAPATH is
 Port ( 
          CLK      : in  std_logic;
          reset    : in  std_logic;
          BUS_IN   : in  std_logic_vector(3 downto 0);
          CIN      : in  std_logic;
		  SEL1     : in  std_logic_vector(1 downto 0);
		  SEL2     : in  std_logic_vector(1 downto 0);
          LDA	   : in  std_logic;
          LDB	   : in  std_logic;
          OP       : in  std_logic_vector(1 downto 0);
          COUT     : out std_logic;
          BUS_OUT  : out std_logic_vector(3 downto 0)
		);
end REG_DATAPATH;
 
architecture structural of REG_DATAPATH is

component REG_ALU
--- Register ALU declaration. Implemented in a separated projet. Problem 1
     port ( 
        A    : in  std_logic_vector(3 downto 0);
		B    : in  std_logic_vector(3 downto 0);
        CIN  : in  std_logic;
        OP   : in  std_logic_vector(1 downto 0);
        COUT : out std_logic;
        F    : out std_logic_vector(3 downto 0)
	 );
end component;

  signal Mux1_RegA   :  std_logic_vector(3 downto 0); -- Mux 1 to register A
  signal Mux2_RegB   :  std_logic_vector(3 downto 0); -- Mux 2 to register B
  signal RegisterA   :  std_logic_vector(3 downto 0); -- Register A
  signal RegisterB   :  std_logic_vector(3 downto 0); -- Register B
  signal RegisterC   :  std_logic_vector(3 downto 0); -- Register B
  signal ALUOutput   :  std_logic_vector(3 downto 0); -- ALU Output

-- --ALU_OUT to mux1
--- ALU_OUT also goes to bus and back to multiplexers

begin

   Mux1: process(SEL1, RegisterA, BUS_IN, ALUOutput, RegisterB)
   begin
    	case SEL1 is
	    	when "00" => 
		              	 Mux1_RegA <= RegisterA;
	    	when "01" => 
		              	 Mux1_RegA <= BUS_IN;
	    	when "10" => 
		              	 Mux1_RegA <= ALUOutput;
	    	when "11" => 
		              	 Mux1_RegA <= RegisterB;
	    	when others => 
		              	 Mux1_RegA <= (others => '0');
	    end case;
    end process;

    Mux2: process(SEL1, RegisterA, BUS_IN, ALUOutput, RegisterB)
    begin
    	case SEL1 is
	    	when "00" => 
		              	 Mux2_RegB <= RegisterA;
	    	when "01" => 
		              	 Mux2_RegB <= BUS_IN;
	    	when "10" => 
		              	 Mux2_RegB <= ALUOutput;
	    	when "11" => 
		              	 Mux2_RegB <= RegisterB;
	    	when others => 
		              	 Mux2_RegB <= (others => '0');
	    end case;
     end process;

    RegA: process(CLK, reset)
    begin
    	if (reset = '1') then
		    RegisterA <= (others => '0');
	    elsif (CLK'event and CLK='1') then
		    if (LDA = '1') then
		       RegisterA <= Mux1_RegA;
			end if;
    	end if;
    end process;
    
    RegB : process(CLK, reset)
    begin
    	if (reset = '1') then
		    RegisterB <= (others => '0');
	    elsif (CLK'event and CLK='1') then
		    if (LDB = '1') then
		       RegisterB <= Mux2_RegB;
			end if;
    	end if;
    end process;
	

    RegC: process(CLK, reset)
    begin
    	if (reset = '1') then
		    RegisterC <= (others => '0');
	    elsif (CLK'event and CLK='1') then
            RegisterC <= ALUOutput;
    	end if;
    end process;
   
    TheALU : REG_ALU 
	port map (
               A     => RegisterA, -- : in  std_logic_vector(3 downto 0);
               B     => RegisterB, -- : in  std_logic_vector(3 downto 0);
               CIN   => CIN,       -- : in  std_logic;
			   COUT  => COUT,
			   OP    => OP,
               F     => ALUOutput  -- : out std_logic_vector(3 downto 0)
    );
	
	-- BUS_OUT <= ALUOutput;
	
	BUS_OUT <= RegisterC;
	
 end structural;
    