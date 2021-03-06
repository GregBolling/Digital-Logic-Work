LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY tb_reg_controller IS
END tb_reg_controller;
  
ARCHITECTURE behavior OF tb_reg_controller IS
  
 -- Component Declaration for the Unit Under Test (UUT)
  component Lab06 
  Port ( 
          CLK: in  std_logic;
          reset: in  std_logic;
		  PCSrc: in std_logic;
		  PAddr: in std_logic_vector(4 downto 0);
          BUS_IN: in  std_logic_vector(3 downto 0);
          BUS_OUT: out std_logic_vector(3 downto 0);
          Done: out std_logic);
 end component;

--Inputs
		   Signal    CLK         :  std_logic;
       	   Signal    reset       :  std_logic;
		   Signal	 PCSrc       :  std_logic;
		   Signal	 PAddr       :  std_logic_vector(4 downto 0);
		   Signal    BUS_IN      :  std_logic_vector(3 downto 0);
       	   Signal    BUS_OUT     :  std_logic_vector(3 downto 0);
		   Signal    done        :  std_logic;

  
BEGIN



 TheRegController : Lab06  
    port map ( 
         CLK             =>  CLK ,    
         reset           =>  reset ,    
		 PCSrc           =>  PCSrc, --  std_logic;
		 PAddr           =>  PAddr, --  std_logic_vector(4 downto 0)
		 BUS_IN   	     =>  BUS_IN ,  
         BUS_OUT	 	 =>  BUS_OUT  ,   
	     done   		 =>  done   
		);


 TheClock: process
    begin
       CLK <= '0';
       wait for 50 ns;
       CLK <= '1';
       wait for 50 ns;
    end process;

    reset  <= '1', '0' after 30 ns; 

    -- Stimulus Generation process
    Stimuli_Gen: process
    begin
 

     wait for 20 ns;
     BUS_IN <= "0010";
     PAddr <= "01010";
     PCSrc <= '1';
	  
     wait for 80 ns;
     PCSrc <= '0';
     wait for 600 ns;
     BUS_IN <= "0011";
     wait for 1000 ns;
 
     BUS_IN <= "1110";
     wait for 300 ns;
      BUS_IN <= "0010";
     PAddr <= "10101";
     PCSrc <= '1';
	  
     wait for 200 ns;
     PCSrc <= '0';
     wait for 600 ns;
     BUS_IN <= "0111";
     wait for 1000 ns;
 
     BUS_IN <= "1110";
     wait for 300 ns;
	 
	 wait for 2 us;
	  
 	
 end process;
     
END;
     




