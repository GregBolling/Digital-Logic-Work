library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DATAPATH is
Port(
CLK : in std_logic;
reset : in std_logic;
BUS_IN : in std_logic_vector(3 downto 0);
CIN : in std_logic;
LDA : in std_logic;
LDB : in std_logic;
SEL1 : in std_logic_vector( 1 downto 0);
SEL2 : in std_logic_vector( 1 downto 0);
OP: in std_logic_vector(1 downto 0);
COUT : out std_logic;
BUS_OUT : out std_logic_vector(3 downto 0));
end DATAPATH;

architecture structural of DATAPATH is 

component ALU

Port (
A : in std_logic_vector( 3 downto 0);
B : in std_logic_vector( 3 downto 0);
CIN : in std_logic;
OP : in std_logic_vector( 1 downto 0);
COUT : out std_logic;
F : out std_logic_vector(3 downto 0));
end component;



Signal MUX1_TO_REGA:std_logic_vector( 3 downto 0);
Signal MUX2_TO_REGB:std_logic_vector( 3 downto 0);
Signal REGA_TO_ALU:std_logic_vector( 3 downto 0);
Signal REGB_TO_ALU:std_logic_vector( 3 downto 0);
Signal ALU_TO_REGC:std_logic_vector( 3 downto 0);
Signal REGC_TO_BUSOUT:std_logic_vector( 3 downto 0);

begin

MUX1: process(MUX1_TO_REGA,REGA_TO_ALU,BUS_IN,SEL1,REGB_TO_ALU,REGC_TO_BUSOUT)
begin
	case SEL1 is 
		when "00" =>
			MUX1_TO_REGA <= REGA_TO_ALU;
		when "01" =>
			MUX1_TO_REGA <= BUS_IN;
		when "10" =>
			MUX1_TO_REGA <= ALU_TO_REGC;
		when "11" =>
			MUX1_TO_REGA <= REGB_TO_ALU;
	end case;
end process;

MUX2: process(MUX2_TO_REGB,REGA_TO_ALU,BUS_IN,SEL2,REGB_TO_ALU,ALU_TO_REGC)
begin
	case SEL2 is
		when "00" =>
			MUX2_TO_REGB <= REGB_TO_ALU;
		when "01" =>
			MUX2_TO_REGB <= BUS_IN;
		when "10" =>
			MUX2_TO_REGB <= ALU_TO_REGC;
		when "11" =>
			MUX2_TO_REGB <= REGA_TO_ALU;
		end case;
end process;

REGA: process(CLK, reset, MUX1_TO_REGA,REGA_TO_ALU, LDA)
begin
	if(reset = '1')then
			REGA_TO_ALU <= (others => '0');
	elsif (CLK'event and CLK = '1' and LDA = '1') then
			REGA_TO_ALU <= MUX1_TO_REGA;
	end if;
end process;

REGB: process(CLK, reset, MUX2_TO_REGB, REGB_TO_ALU, LDB)
begin
	if(reset = '1')then
			REGB_TO_ALU <= (others => '0');
	elsif (CLK'event and CLK = '1' and LDB = '1') then
			REGB_TO_ALU <= MUX2_TO_REGB;
	end if;
end process;
			
REGC: process(CLK, reset, ALU_TO_REGC, REGC_TO_BUSOUT)
begin
	if(reset = '1') then
		REGC_TO_BUSOUT <= (others => '0');
	elsif (CLK'event and CLK = '1') then
			REGC_TO_BUSOUT <= ALU_TO_REGC;
		end if;
end process;

ALU_INST: ALU Port map (
	A => REGA_TO_ALU,
	B => REGB_TO_ALU,
	F => ALU_TO_REGC,
	CIN => CIN,
	COUT => COUT,
	OP => OP);
	
end structural;









