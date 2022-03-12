LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
  
ENTITY tb_reg_datapath IS
END tb_reg_datapath;
  
ARCHITECTURE behavior OF tb_reg_datapath IS
  
 -- Component Declaration for the Unit Under Test (UUT)
  
 COMPONENT REG_DATAPATH 
 port ( 
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
END COMPONENT;
  
 
 --Inputs
  signal  CLK      :  std_logic;
  signal  reset    :  std_logic;
  signal  BUS_IN   :  std_logic_vector(3 downto 0);
  signal  CIN      :  std_logic;
  signal  SEL1     :  std_logic_vector(1 downto 0);
  signal  SEL2     :  std_logic_vector(1 downto 0);
  signal  LDA	   :  std_logic;
  signal  LDB      :  std_logic;
  signal  OP       :  std_logic_vector(1 downto 0);
  signal  COUT     :  std_logic;
  signal  BUS_OUT  :  std_logic_vector(3 downto 0);

  
BEGIN
  
 
    TheRegDatapath : REG_DATAPATH 
    port map ( 
          CLK       => CLK     , -- : in  std_logic;
          reset     => reset   , -- : in  std_logic;
          BUS_IN    => BUS_IN  , -- : in  std_logic_vector(3 downto 0);
          CIN       => CIN     , -- : in  std_logic;
		  SEL1      => SEL1    , -- : in  std_logic_vector(1 downto 0);
		  SEL2      => SEL2    , -- : in  std_logic_vector(1 downto 0);
          LDA	    => LDA	   , -- : in  std_logic;
          LDB	    => LDB	   , -- : in  std_logic;
          OP        => OP      , -- : in  std_logic_vector(1 downto 0);
		  COUT      => COUT    , -- : out std_logic;
          BUS_OUT   => BUS_OUT   -- : out std_logic_vector(3 downto 0)
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
 
     wait for 120 ns;

     -- Load Register A with 0011
     wait for 100 ns;
     BUS_IN  <= "0011";
     CIN     <= '0';
     SEL1    <= "01";
	 SEL2    <= "01";
     LDA	 <= '1';
     LDB	 <= '0';
     OP      <= "00";

     -- Load Register B with 0100
     wait for 100 ns;
     BUS_IN  <= "0100";
     CIN     <= '0';
     SEL1    <= "01";
	 SEL2    <= "01";
     LDA	 <= '0';
     LDB	 <= '1';
     OP      <= "00";

     -- Compute A OR B
     wait for 100 ns;
     BUS_IN  <= "0000";
     CIN     <= '0';
     SEL1    <= "00";
	 SEL2    <= "00";
     LDA	 <= '0';
     LDB	 <= '0';
     OP      <= "10";

     -- Compute A AND B
     wait for 100 ns;
     BUS_IN  <= "0000";
     CIN     <= '0';
     SEL1    <= "00";
	 SEL2    <= "00";
     LDA	 <= '0';
     LDB	 <= '0';
     OP      <= "01";

     -- Compute 2'c of A
     wait for 100 ns;
     BUS_IN  <= "0000";
     CIN     <= '0';
     SEL1    <= "00";
	 SEL2    <= "00";
     LDA	 <= '0';
     LDB	 <= '0';
     OP      <= "00";

     -- Compute A+B
     wait for 100 ns;
     BUS_IN  <= "0000";
     CIN     <= '0';
     SEL1    <= "00";
	 SEL2    <= "00";
     LDA	 <= '0';
     LDB	 <= '0';
     OP      <= "11";
 	
 end process;
     
END;
     
     
     
     
     
 
     
 
     
     
     