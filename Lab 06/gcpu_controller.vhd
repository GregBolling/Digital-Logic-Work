library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity gcpu_controller is
 port ( 
          CLK         : in  std_logic;
          reset       : in  std_logic;
		  instruction : in  std_logic_vector(3 downto 0);
		  destination : in  std_logic_vector(1 downto 0);
		  C_in        : in  std_logic;
		  captureALU  : out std_logic;
		  C_set       : out std_logic;
		  C_reset     : out std_logic;
		  PCload      : out std_logic;
		  SEL1        : out std_logic_vector(1 downto 0);
		  SEL2        : out std_logic_vector(1 downto 0);
          LDA	      : out std_logic;
          LDB	      : out std_logic;
          OP          : out std_logic_vector(1 downto 0);
		  done        : out std_logic
		  );
end gcpu_controller;
 
architecture Behavioral of gcpu_controller is
 
 type gcpu_states is (I_Fetch, LoadAddress, Load1, LoadA, LoadB, CopyA1, CopyA_A, CopyA_B, COPYB1, CopyB_A, COPYB_B, BEGIN1, END1,
             AND1, AND_A, AND_B, OR1, OR_A, OR_B, ADD1, ADD_A, ADD_B, SUB1, SUB_A, SUB_B, TWOCOMP1_A, TWOCOMP1_B); 
 signal present_state, next_state : gcpu_states; 
 signal doneint : std_logic;
 signal captureALUdelay : std_logic;

begin	
    done <= doneint;
	
    StateMachineNext : process (CLK, reset)  --clock of 2s period 50% duty cycle
	begin
	 if(reset= '1') then
			present_state <= I_Fetch;
			captureALU <= '0';
		elsif (CLK='1' and CLK'event) then
		    present_state <= next_state;
			captureALU <= captureALUdelay;
	   end if;
	end process;

    StateMachineStates : process (instruction, destination, present_state, next_state, reset)  --clock of 2s period 50% duty cycle
	begin
	   SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
	   SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
       LDA	     <= '0';  -- out std_logic;
       LDB	     <= '0';  -- out std_logic;
       OP        <= "00"; -- out std_logic_vector(1 downto 0);
	   doneint   <= '0';  -- out std_logic;
	   C_set     <= '0';
	   C_reset   <= '0';
	   PCload    <= '0';
	   captureALUdelay<= '0';
	   next_state <= present_state;
	   case present_state is
		 	  when I_Fetch =>
                             PCload    <= not C_in;
							 if (C_in = '0') then 
							   next_state <= LoadAddress;
						       C_set <= '1';
							else 
						       case (instruction) is 
							      when "0000"  => next_state <= Load1;
							      when "0001"  => next_state <= CopyA1;
							      when "0010"  => next_state <= CopyB1;
							      when "0011"  => next_state <= AND1;
							      when "0100"  => next_state <= OR1;
							      when "0101"  => next_state <= ADD1;
							      when "0110"  => next_state <= SUB1;
							      when "0111"  => 
                    	                          case (destination) is 
		                                           when "00" => next_state <= SUB_A;
							                       when "01" => next_state <= SUB_B;
								                   when others => NULL;
					                              end case;
								  when "1000" =>  next_state <= BEGIN1;
								  
                                                  PCload     <= '1';
								  when "1001" =>  next_state <= END1;
								  when others =>  next_state <= I_Fetch;
							   end case;
							 end if;
		  when LoadAddress =>
						  --PCload <= '1';
						  next_state <= I_Fetch;
	      when Load1 =>
						  PCload <= '1';
                    	  case (destination) is 
		                          when "00" => next_state <= LoadA;
								  when "01" => next_state <= LoadB;
								  when others => NULL;
					      end case;
	      when LoadA =>
	                      SEL1      <= "01"; -- select the Bus In
	                      SEL2      <= "01"; -- select the Bus In
						  LDA  <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';
						  
	      when LoadB =>
	                      SEL1      <= "01"; -- select the Bus In
	                      SEL2      <= "01"; -- select the Bus In
						  LDB  <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';

	      when CopyA1 =>
						  PCload <= '1';
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
                    	  case (destination) is 
		                          when "00" => next_state <= CopyA_A;
								  when "01" => next_state <= CopyA_B;
								  when others => NULL;
					      end case;

	      when CopyA_A =>
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
						  LDA  <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';

	      when CopyA_B =>
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
						  LDB  <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';

	      when CopyB1 =>
						  PCload <= '1';
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
                    	  case (destination) is 
		                          when "00" => next_state <= CopyB_A;
								  when "01" => next_state <= CopyB_B;
								  when others => NULL;
					      end case;

	      when CopyB_A =>
                          SEL1      <= "11"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "11"; -- out std_logic_vector(1 downto 0);
						  LDA  <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';

	      when CopyB_B =>
                          SEL1      <= "11"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "11"; -- out std_logic_vector(1 downto 0);
						  LDB  <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';
	      when AND1 =>
						  PCload <= '1';
						  OP        <= "01"; -- AND operator
                          SEL1      <= "00"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "00"; -- out std_logic_vector(1 downto 0);
                    	  case (destination) is 
		                          when "00" => next_state <= AND_A;
								  when "01" => next_state <= AND_B;
								  when others => NULL;
					      end case;
	      when AND_A =>
						  OP        <= "01"; -- AND operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';
	      when AND_B =>
						  OP        <= "01"; -- AND operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDB       <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';

	      when OR1 =>
						  PCload <= '1';
						  OP        <= "10"; -- OR operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
                    	  case (destination) is 
		                          when "00" => next_state <= OR_A;
								  when "01" => next_state <= OR_B;
								  when others => NULL;
					      end case;
	      when OR_A =>
						  OP        <= "10"; -- OR operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';
	      when OR_B =>
						  OP        <= "10"; -- OR operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDB       <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';


	      when ADD1 =>
						  PCload <= '1';
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
                    	  case (destination) is 
		                          when "00" => next_state <= ADD_A;
								  when "01" => next_state <= ADD_B;
								  when others => NULL;
					      end case;
	      when ADD_A =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';
	      when ADD_B =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDB       <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';

	      when SUB1 =>
						  PCload <= '1';
						  OP        <= "00"; -- Generate the 2's complement of A
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';  -- Load A with 2's Complement of A
                    	  case (destination) is 
		                          when "00" => next_state <= SUB_A;
								  when "01" => next_state <= SUB_B;
								  when others => NULL;
					      end case;
	      when SUB_A =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDA       <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';
	      when SUB_B =>
						  OP        <= "11"; -- ADD operator
                          SEL1      <= "10"; -- out std_logic_vector(1 downto 0);
                          SEL2      <= "10"; -- out std_logic_vector(1 downto 0);
						  LDB       <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';

				
			when TWOCOMP1_A =>
			
			LDA <= '1';  -- Load register A and do 2's complement
			SEL1 <= "10";
			SEL2 <= "10";
			OP <= "00";
			next_state <= I_Fetch;
	                      captureALUdelay <= '1';
				
			when TWOCOMP1_B =>
			
			LDB <= '1';  -- Load register A and do 2's complement
			SEL1 <= "10";
			SEL2 <= "10";
			OP <= "00";
			next_state <= I_Fetch;
	                      captureALUdelay <= '1';
				
								
			when BEGIN1 =>
				
						  C_set <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';
						  --PCload <= '1';
			
			
			when END1 =>
						  doneint <= '1'; 
						  C_reset <= '1';
						  next_state <= I_Fetch;
	                      captureALUdelay <= '1';
						  PCload <= '1';
				

		  when others =>  next_state <= I_Fetch;
	   end case;
	end process;


end Behavioral;
