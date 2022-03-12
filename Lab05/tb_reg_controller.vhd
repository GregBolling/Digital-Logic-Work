LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY tb_reg_controller IS
END tb_reg_controller;
  
ARCHITECTURE behavior OF tb_reg_controller IS
  
 -- Component Declaration for the Unit Under Test (UUT)
  
 COMPONENT GCPU_REG_CONTROL 
 port ( 
        CLK         : in  std_logic;
        reset       : in  std_logic;
		  instruction : in  std_logic_vector(2 downto 0);
		  destination : in  std_logic_vector(1 downto 0);
		  start       : in  std_logic;
        BUS_IN      : in  std_logic_vector(3 downto 0);
        CIN         : in  std_logic;  -- default to '0'
		  COUT        : out std_logic;
        BUS_OUT     : out std_logic_vector(3 downto 0);
		  done        : out std_logic
		);
END COMPONENT;

--Inputs
		   Signal    CLK         :  std_logic;
         	   Signal    reset       :  std_logic;
		   Signal    instruction :  std_logic_vector(2 downto 0);
		   Signal    destination :  std_logic_vector(1 downto 0);
		   Signal    start       :  std_logic;
		   Signal    BUS_IN      :  std_logic_vector(3 downto 0);
         	   Signal    CIN         :  std_logic;
		   Signal    COUT        :  std_logic;
         	   Signal    BUS_OUT     :  std_logic_vector(3 downto 0);
		   Signal    done        :  std_logic;

  
BEGIN



 TheRegController : GCPU_REG_CONTROL  
    port map ( 
         CLK             =>  CLK ,    
         reset           =>  reset ,    
		   instruction     =>  instruction,
		   destination     =>  destination,
		   start  			 =>  start ,  
		   BUS_IN   		 =>  BUS_IN ,  
		   CIN   			 =>  CIN ,  
         COUT	 			 =>  COUT  ,  
         BUS_OUT	 		 =>  BUS_OUT  ,   
	      done   			 =>  done   
		);


 TheClock: process
    begin
       CLK <= '0';
       wait for 50 ns;
       CLK <= '1';
       wait for 50 ns;
    end process;

    reset <= '1', '0' after 200 ns; 

    -- Stimulus Generation process
    Stimuli_Gen: process
    begin
 
     start        <= '0';
	 instruction  <= "000";
     destination  <= "00";
     BUS_IN       <= "0000";
	 CIN          <= '0';
	 
     wait for 120 ns;

-- Load Register A with 0011
     wait for 300 ns;
     start        <= '1';
     instruction  <= "000";
     destination  <= "00";
     BUS_IN       <= "0011";
	 CIN          <= '0';
     wait for 100 ns;
     start        <= '0';
	 

 -- Load Register B with 1010
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "000";
     destination  <= "01";
     BUS_IN       <= "1010";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';

     -- Compute A OR B and store in A
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "100";
     destination  <= "00";
     BUS_IN       <= "0000";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';

-- Restore A Load Register A with 0011
     wait for 300 ns;
     start        <= '1';
     instruction  <= "000";
     destination  <= "00";
     BUS_IN       <= "0011";
	 CIN          <= '0';
     wait for 100 ns;
     start        <= '0';

     -- Compute A AND B and store in B
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "011";
     destination  <= "01";
     BUS_IN       <= "0000";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';

 -- Restore B Load Register B with 1010
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "000";
     destination  <= "01";
     BUS_IN       <= "1010";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';


     -- Compute A + B and Store in A
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "101";
     destination  <= "00";
     BUS_IN       <= "0000";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';

-- Restore A Load Register A with 0011
     wait for 300 ns;
     start        <= '1';
     instruction  <= "000";
     destination  <= "00";
     BUS_IN       <= "0011";
	 CIN          <= '0';
     wait for 100 ns;
     start        <= '0';


     -- Compute A - B and Store in A
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "110";
     destination  <= "00";
     BUS_IN       <= "0000";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';

-- Restore A Load Register A with 0011
     wait for 300 ns;
     start        <= '1';
     instruction  <= "000";
     destination  <= "00";
     BUS_IN       <= "0011";
	 CIN          <= '0';
     wait for 100 ns;
     start        <= '0';

	  
	   -- Copy A to B
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "001";
     destination  <= "01";
     BUS_IN       <= "0000";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';

 -- Restore B Load Register B with 1010
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "000";
     destination  <= "01";
     BUS_IN       <= "1010";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';
	  
	  -- Load Register B with 0101
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "000";
     destination  <= "01";
     BUS_IN       <= "0101";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';
	  
	   -- Copy B to A
     wait for 300 ns;
     start        <= '1';
	  instruction  <= "010";
     destination  <= "00";
     BUS_IN       <= "0000";
	  CIN          <= '0';
     wait for 100 ns;
     start        <= '0';
	  
	 wait for 1 us;
	  
 	
 end process;
     
END;
     




