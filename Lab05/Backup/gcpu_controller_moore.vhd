library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity gcpu_controller is
 port ( 
          CLK         : in  std_logic;
          reset       : in  std_logic;
		  instruction : in  std_logic_vector(2 downto 0);
		  destination : in  std_logic_vector(1 downto 0);
		  start       : in  std_logic;
		  SEL1        : out std_logic_vector(1 downto 0);
		  SEL2        : out std_logic_vector(1 downto 0);
          LDA	      : out std_logic;
          LDB	      : out std_logic;
          OP          : out std_logic_vector(1 downto 0);
		  done        : out std_logic
		  );
end gcpu_controller;
 
architecture Behavioral of gcpu_controller is
 
 type gcpu_states is (Waiting, Load1, LoadA, LoadB, CopyA1, CopyA_A, CopyA_B, COPYB1, CopyB_A, COPYB_B, 
             AND1, AND_A, AND_B, OR1, OR_A, OR_B, ADD1, ADD_A, ADD_B, SUB1, SUB_A, SUB_B); 
 signal present_state, next_state : gcpu_states; 

begin	
    StateMachineNext : process (CLK, reset)  --clock of 2s period 50% duty cycle
	begin
	 if(reset= '1') then
			present_state <= Waiting;
		elsif (CLK='1' and CLK'event) then
		    present_state <= next_state;
	   end if;
	end process;

    StateMachineStates : process (instruction, destination, start, present_state, next_state)  --clock of 2s period 50% duty cycle
	begin
	   case present_state is
	      when Waiting =>
		                  if (start = '1') then 
						     case (instruction) is 
							      when "000"  => next_state <= Load1;
							      when "001"  => next_state <= CopyA1;
							      when "010"  => next_state <= CopyB1;
							      when "011"  => next_state <= AND1;
							      when "100"  => next_state <= OR1;
							      when "101"  => next_state <= ADD1;
							      when "110"  => next_state <= SUB1;
								  when others => next_state <= Waiting;
							 end case;
						  end if;
	      when Load1 =>
                    	  case (destination) is 
		                          when "00" => next_state <= LoadA;
								  when "01" => next_state <= LoadB;
								  when others => NULL;
					      end case;
	      when LoadA =>
						  next_state <= Waiting;
						  
	      when LoadB =>
						  next_state <= Waiting;

	      when CopyA1 =>
                    	  case (destination) is 
		                          when "00" => next_state <= CopyA_A;
								  when "01" => next_state <= CopyA_B;
								  when others => NULL;
					      end case;

	      when CopyA_A =>
						  next_state <= Waiting;

	      when CopyA_B =>
						  next_state <= Waiting;

	      when CopyB1 =>
                    	  case (destination) is 
		                          when "00" => next_state <= CopyA_A;
								  when "01" => next_state <= CopyA_B;
								  when others => NULL;
					      end case;

	      when CopyB_A =>
						  next_state <= Waiting;

	      when CopyB_B =>
						  next_state <= Waiting;
	      when AND1 =>
                    	  case (destination) is 
		                          when "00" => next_state <= AND_A;
								  when "01" => next_state <= AND_B;
								  when others => NULL;
					      end case;
	      when AND_A =>
						  next_state <= Waiting;
	      when AND_B =>
						  next_state <= Waiting;

	      when OR1 =>
                    	  case (destination) is 
		                          when "00" => next_state <= OR_A;
								  when "01" => next_state <= OR_B;
								  when others => NULL;
					      end case;
	      when OR_A =>
						  next_state <= Waiting;
	      when OR_B =>
						  next_state <= Waiting;


	      when ADD1 =>
                    	  case (destination) is 
		                          when "00" => next_state <= ADD_A;
								  when "01" => next_state <= ADD_B;
								  when others => NULL;
					      end case;
	      when ADD_A =>
						  next_state <= Waiting;
	      when ADD_B =>
						  next_state <= Waiting;

	      when SUB1 =>
                    	  case (destination) is 
		                          when "00" => next_state <= SUB_A;
								  when "01" => next_state <= SUB_B;
								  when others => NULL;
					      end case;
	      when SUB_A =>
						  next_state <= Waiting;
	      when SUB_B =>
						  next_state <= Waiting;

		  when others =>  next_state <= Waiting;
	   end case;
	end process;

    StateMachineOutputsMoore : process (instruction, destination, start, present_state, next_state)  --clock of 2s period 50% duty cycle
	begin
	   SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
	   SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
       LDA	     <= '0';  -- out std_logic;
       LDB	     <= '0';  -- out std_logic;
       OP        <= "00"; -- out std_logic_vector(1 downto 0);
	   done      <= '0';  -- out std_logic;
	   case present_state is
	      when LoadA =>
                    	  done <= '1';
						  LDA  <= '1';
						  
	      when LoadB =>
                    	  done <= '1';
						  LDB  <= '1';

	      when CopyA1 =>
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);

	      when CopyA_A =>
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
                    	  done <= '1';
						  LDA  <= '1';

	      when CopyA_B =>
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
                    	  done <= '1';
						  LDB  <= '1';

	      when CopyB1 =>
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);

	      when CopyB_A =>
                          SEL1      <= "11"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "11"; -- out std_logic_vector(1 downto 0);
                    	  done <= '1';
						  LDA  <= '1';

	      when CopyB_B =>
                          SEL1      <= "11"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "11"; -- out std_logic_vector(1 downto 0);
                    	  done <= '1';
						  LDB  <= '1';
	      when AND1 =>
						  OP        <= "01"; -- AND operator
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
	      when AND_A =>
						  OP        <= "01"; -- AND operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';
                    	  done <= '1';
	      when AND_B =>
						  OP        <= "01"; -- AND operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDB       <= '1';
                    	  done <= '1';

	      when OR1 =>
						  OP        <= "10"; -- OR operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
	      when OR_A =>
						  OP        <= "10"; -- OR operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';
                    	  done <= '1';
	      when OR_B =>
						  OP        <= "10"; -- OR operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDB       <= '1';
                    	  done <= '1';

	      when ADD1 =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
	      when ADD_A =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';
                    	  done <= '1';
	      when ADD_B =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDB       <= '1';
                    	  done <= '1';

	      when SUB1 =>
						  OP        <= "00"; -- Generate the 2's complement of A
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';  -- Load A with 2's Complement of A
	      when SUB_A =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';
                    	  done <= '1';
	      when SUB_B =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDB       <= '1';
                    	  done <= '1';

		  when others =>  NULL;
	   end case;
	end process;


end Behavioral;
