library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CONTROL is 
Port (

CLK : in std_logic;
reset : in std_logic;
q		 : in std_logic_vector (5 downto 0);
Done  : out std_logic;
PCload  : out std_logic;
LDA   : out std_logic;
SEL2  : out std_logic_vector(1 downto 0);
LDB   : out std_logic;
SEL1  : out std_logic_vector(1 downto 0);
CIN   : out std_logic;
OP    : out std_logic_vector(1 downto 0);
COUT  : in std_logic);

end CONTROL;


Architecture Behavioral of CONTROL is

type GCPU_STATES is (INITIAL, LOAD1, LOADA, LOADB, AND1, AND1_A, AND1_B, OR1, OR1_A, OR1_b, ADD1, ADD1_A, ADD1_B, 
      SUB1, SUB1_STOREA, SUB1_A, SUB1_B, COPYA, COPYA_A, COPYA_B, COPYB, COPYB_A, COPYB_B, TWOCOMP1, TWOCOMP1_A, TWOCOMP1_B, 
		BEGIN1, END1 );


Signal Presentstate, Nextstate : GCPU_STATES;

Signal INSTRUCTION:std_logic_vector( 3 downto 0);
Signal DESTINATION:std_logic_vector( 1 downto 0);
Signal C:std_logic;


begin 

	PresenttoNextState : process (CLK, reset)
	begin
		if(reset = '1') then
			Presentstate <= INITIAL;
		elsif(CLK'event and CLK = '1') then
		 Presentstate <= Nextstate;
		 end if;
	end process;
	
	StateMachine : process (q, INSTRUCTION, DESTINATION, Presentstate, Nextstate)
	begin
		LDA <= '0';
		LDB <= '0';
		SEL1 <= "00";
		SEL2 <= "00";
		OP <= "00";
		INSTRUCTION <= q(5 downto 2);
		DESTINATION <= q(1 downto 0);
		
		case (Presentstate) is
			when INITIAL =>
					
					
					case (INSTRUCTION) is 
						when "0000" => Nextstate <= LOAD1;
						when "0001" => Nextstate <= COPYA;
						when "0010" => Nextstate <= COPYB;
						when "0011" => Nextstate <= AND1;
						when "0100" => Nextstate <= OR1;
						when "0101" => Nextstate <= ADD1;
						when "0110" => Nextstate <= SUB1;
						when "0111" => Nextstate <= TWOCOMP1;
						when "1000" => Nextstate <= BEGIN1;
						when "1001" => Nextstate <= END1;
						when others => Nextstate <= Presentstate;
					end case;
					
					
				PCload <= not (C);
					
			
			when LOAD1 =>
			
			PCload  <= '0';
			
			
			case (DESTINATION) is
					when "00"=> Nextstate <= LOADA;
					when "01"=> Nextstate <= LOADB;
					when others => NULL;
			end case;
			
			
			when LOADA =>
			
			LDA <= '1';
			SEL1 <= "01";
			PCload <= '1';
			Nextstate <= INITIAL;
			
			when LOADB =>
			
			LDB <= '1';
			SEL2 <= "01";
			PCload <= '1';
			Nextstate <= INITIAL;
			
			
			when ADD1 =>
			
			PCload  <= '0';
			
			
			case (DESTINATION) is
				when "00"=> 
				Nextstate <= ADD1_A;
				
				when "01"=> 
				Nextstate <= ADD1_B;
				
				when others => NULL;
			end case;
			
			when ADD1_A =>
			
				LDA <= '1';
				OP <= "11";
				SEL1 <= "10";
				PCload <= '1';
				Nextstate <= INITIAL;
				
			
			when ADD1_B =>
			
				LDB <= '1';
				OP <= "11";
				SEL2 <= "10";
				PCload <= '1';
				Nextstate <= INITIAL;
			
			
			when OR1 =>
			
			PCload  <= '0';
			
			
			case (DESTINATION) is
				when "00"=> 
				Nextstate <= OR1_A;
				
				when "01"=> 
				Nextstate <= OR1_B;
				
				when others => NULL;
			end case;
			
			
			
			when OR1_A =>
			
				LDA <= '1';
				OP <= "10";
				SEL1 <= "10";
				PCload <= '1';
				Nextstate <= INITIAL;
			
			
			when OR1_B =>
			
				LDB <= '1';
				OP <= "10";
				SEL2 <= "10";
				PCload <= '1';
				Nextstate <= INITIAL;
			
			
			when AND1 =>
			
			PCload  <= '0';
			
			
			
			case (DESTINATION) is
				when "00"=> 
				
				LDA <= '1';
				OP <= "01";
				SEL1 <= "10";
				Nextstate <= AND1_A;
				
				when "01"=> 
				Nextstate <= AND1_B;
				
				when others => NULL;
			end case;
			
			
			
			
			when AND1_A =>
			
				LDA <= '1';
				OP <= "01";
				SEL1 <= "10";
				PCload <= '1';
				Nextstate <= INITIAL;
			
			
			when AND1_B =>
			
				LDB <= '1';
				OP <= "01";
				SEL2 <= "10";
				PCload <= '1';
				Nextstate <= INITIAL;
		
			
			when SUB1 =>
			
			LDA <= '1';  -- Load register A with operand
			SEL1 <= "01";
			SEL2 <= "01";
			OP <= "00";
			PCload  <= '0';
			Nextstate <= SUB1_STOREA;
			

			when SUB1_STOREA =>
			
			LDA <= '1';  -- Load register A and do 2's complement
			SEL1 <= "10";
			SEL2 <= "10";
			OP <= "00";
			

			case (DESTINATION) is
				when "00"=> 
			      Nextstate <= SUB1_A;
				
				when "01"=> 
				   Nextstate <= SUB1_B;
				
				when others => NULL;
			end case;
			
			when SUB1_A =>
			
				LDA <= '1';
				OP <= "11";
				SEL1 <= "10";
				PCload <= '1';
				Nextstate <= INITIAL;
			
			when SUB1_B =>
				
				LDB <= '1';
				OP <= "11";
				SEL2 <= "10";
				PCload <= '1';
				Nextstate <= INITIAL;
			

			when COPYA =>
		
		
			PCload  <= '0';
		
		
			case (DESTINATION) is
				when "00"=> 
				
				Nextstate <= COPYA_A;
				
				when "01"=> 
				
				Nextstate <= COPYA_B;
			
				when others => NULL;
			end case;

			when COPYA_A =>
			
				LDA <= '1';
				OP <= "11";
				SEL1 <= "00";
				PCload <= '1';
				Nextstate <= INITIAL;

			when COPYA_B =>
		
				LDB <= '1';
				OP <= "11";
				SEL2 <= "00";
				PCload <= '1';
				Nextstate <= INITIAL;
			
			when COPYB =>
			
			PCload  <= '0';
			
			
			
			case (DESTINATION) is
				when "00"=> 
				Nextstate <= COPYB_A;
				
				when "01"=> 
				Nextstate <= COPYB_B;
			
			
				when others => NULL;
			end case;
			
			when COPYB_A =>
			
				LDA <= '1';
				OP <= "11";
				SEL1 <= "11";
				PCload <= '1';
				Nextstate <= INITIAL;
				
			
			when COPYB_B =>
			
				LDB <= '1';
				OP <= "11";
				SEL2 <= "11";
				PCload <= '1';
				Nextstate <= INITIAL;
				
				
				
				
				when TWOCOMP1 =>
			
			LDA <= '1';  -- Load register A with operand
			SEL1 <= "01";
			SEL2 <= "01";
			OP <= "00";
			PCload  <= '0';
			Nextstate <= SUB1_STOREA;
			
			
			case (DESTINATION) is
				when "00"=> 
				Nextstate <= TWOCOMP1_A;
				
				when "01"=> 
				Nextstate <= TWOCOMP1_B;
			
			
				when others => NULL;
			end case;
				
				
			when TWOCOMP1_A =>
			
			LDA <= '1';  -- Load register A and do 2's complement
			SEL1 <= "10";
			SEL2 <= "10";
			OP <= "00";
			PCload <= '1';
			Nextstate <= INITIAL;
				
			when TWOCOMP1_B =>
			
			LDB <= '1';  -- Load register A and do 2's complement
			SEL1 <= "10";
			SEL2 <= "10";
			OP <= "00";
			PCload <= '1';
			Nextstate <= INITIAL;
				
				
				
			when BEGIN1 =>
			
			Done <= '0';  
			C <= '1';
			PCload <= '1';
			Nextstate <= INITIAL;
			
			
			
			when END1 =>
			
			Done <= '1'; 
			C <= '0';
			PCload <= '1';
			Nextstate <= INITIAL;
				
				
				
			
			when others => Nextstate <= INITIAL;
		end case;
	end process;
	
end Behavioral;
			
		






