library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity gcpu_reg_control is
 Port ( 
          CLK         : in  std_logic;
          reset       : in  std_logic;
		  instruction : in  std_logic_vector(2 downto 0);
		  destination : in  std_logic_vector(1 downto 0);
		  start       : in  std_logic;
          BUS_IN      : in  std_logic_vector(3 downto 0);
          CIN         : in  std_logic;
		  COUT        : out std_logic;
          BUS_OUT     : out std_logic_vector(3 downto 0);
		  done        : out std_logic
		);
end gcpu_reg_control;
 
architecture structural of gcpu_reg_control is

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
  
COMPONENT gcpu_controller 
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
end COMPONENT;

 --Inputs
  signal  SEL1     :  std_logic_vector(1 downto 0);
  signal  SEL2     :  std_logic_vector(1 downto 0);
  signal  LDA	   :  std_logic;
  signal  LDB      :  std_logic;
  signal  OP       :  std_logic_vector(1 downto 0);

  
begin

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
	
	
 Control: gcpu_controller 
 port map ( 
          CLK         => CLK         , --  : in  std_logic;
          reset       => reset       , --  : in  std_logic;
		  instruction => instruction , --  : in  std_logic_vector(2 downto 0);
		  destination => destination , --  : in  std_logic_vector(1 downto 0);
		  start       => start       , --  : in  std_logic;
		  SEL1        => SEL1        , --  : out std_logic_vector(1 downto 0);
		  SEL2        => SEL2        , --  : out std_logic_vector(1 downto 0);
          LDA	      => LDA	     , --  : out std_logic;
          LDB	      => LDB	     , --  : out std_logic;
          OP          => OP          , --  : out std_logic_vector(1 downto 0);
		  done        => done         --  : out std_logic
		  );
	
 end structural;
    