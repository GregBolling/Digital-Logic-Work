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
          LDA	   : in  std_logic;
          OP       : in  STD_LOGIC_VECTOR(1 downto 0);
          BUS_OUT  : out std_logic_vector(3 downto 0)
		);
end REG_DATAPATH;
 
architecture structural of REG_DATAPATH is

component REG_ALU
--- Register ALU declaration. Implemented in a separated projet. Problem 1
     port ( 
       A     : in  std_logic_vector(3 downto 0);
       B     : in  std_logic_vector(3 downto 0);
       CIN   : in  std_logic;
       F     : out std_logic_vector(3 downto 0)
	 );
end component;

  signal MUX1_TO_REGA   :  std_logic_vector(3 downto 0); --mux1 to register a
  signal REGA_TO_ALU    :  std_logic_vector(3 downto 0); --reg a to alu a

-- --ALU_OUT to mux1
--- ALU_OUT also goes to bus and back to multiplexers

begin

--- MUX1
   MUX1: process(REGA_TO_ALU,BUS_IN, ..... SEL1)
   begin
    	case SEL1 is
	    	when "00" => 
		              	MUX1_TO_REGA <= REGA_TO_ALU;
	
	    end case;
    end process;

    --- MUX2: 
    MUX2: process(REGA_TO_ALU,....)
    begin
    ---
    end process;

    -- registerA
    REGA: process(CLK, reset, MUX1_TO_REGA, LDA)
    begin
    	if (reset = '1') then
		    REGA_TO_ALU <= (others => '0');
	    elsif (CLK'event and CLK='1' .....) then
    		---- <= MUX1_TO_REGA;
    	end if;
    end process;
    
    -- registerB
    REGB: 
    
    --- Instantiate Your R_ALU here
    REG_ALU_INST: REG_ALU Port map (
    	A => REGA_TO_ALU,
    
 end structural;
    