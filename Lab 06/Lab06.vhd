library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
 
entity Lab06 is
 Port ( 
          CLK: in  std_logic;
          reset: in  std_logic;
			 PCSrc: in std_logic;
			 PAddr: in std_logic_vector(4 downto 0);
          BUS_IN: in  std_logic_vector(3 downto 0);
          BUS_OUT: out std_logic_vector(3 downto 0);
		    Done: out std_logic);
end Lab06;
 
architecture structural of Lab06 is

	
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
  


COMPONENT ROM_32_6

port(
	addr : std_logic_vector(4 downto 0);
	clk    : in std_logic;
	q      : out std_logic_vector(5 downto 0)
	);
	
end COMPONENT;


COMPONENT PCOUNTER

port(
	reset: in std_logic;
	addr : out std_logic_vector(4 downto 0);
	PAddr: in  std_logic_vector(4 downto 0);
	PCSrc: in  std_logic;
	PCload:in  std_logic;
	clk    : in std_logic
	);
	
end COMPONENT;

COMPONENT gcpu_controller 
 port ( 
          CLK         : in  std_logic;
          reset       : in  std_logic;
		  instruction : in  std_logic_vector(3 downto 0);
		  destination : in  std_logic_vector(1 downto 0);
		  C_in        : in  std_logic;
		  captureALU  : out std_logic;
		  PCload      : out std_logic;
		  C_set       : out std_logic;
		  C_reset     : out std_logic;
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
  signal  CIN      :  std_logic;

signal dataout           : std_logic_vector(3 downto 0);
signal dataoutALU        : std_logic_vector(3 downto 0);
signal doneint           : std_logic;
signal captureALU        : std_logic;
signal busInzero         : std_logic_vector(3 downto 0);
  
  signal PCload: std_logic;
  signal q : std_logic_vector(5 downto 0);
  signal addr : std_logic_vector(4 downto 0); 

  signal instruction : std_logic_vector(3 downto 0);
  signal destination : std_logic_vector(1 downto 0);
  
  signal C_set       :  std_logic;
  signal C_reset     :  std_logic;
  signal Creg        : std_logic;
begin

    CIN <= '0';
	 

	 DataPrint : process(clk, reset)
    begin
        if(reset = '1') then
	   	  dataout <= (others=>'0');
		  Creg <= '0';
        elsif (clk'event and clk = '1') then   
			 if (captureALU = '1') then 
   		     dataout <= dataoutALU;
			  end if;
			  if (C_set = '1') then 
			    Creg <= '1';
			  elsif (C_reset = '1') then 
			    Creg <= '0';
			  end if;
        end if;
    end process;
	 
    done <= doneint;
	 BUS_OUT <= dataout;


	 busInzero <= BUS_IN;
	 
    TheRegDatapath : REG_DATAPATH 
    port map ( 
          CLK       => clk     , -- : in  std_logic;
          reset     => reset   , -- : in  std_logic;
          BUS_IN    => busInzero  , -- : in  std_logic_vector(3 downto 0);
          CIN       => CIN     , -- : in  std_logic;
		  SEL1      => SEL1    , -- : in  std_logic_vector(1 downto 0);
		  SEL2      => SEL2    , -- : in  std_logic_vector(1 downto 0);
          LDA	    => LDA	   , -- : in  std_logic;
          LDB	    => LDB	   , -- : in  std_logic;
          OP        => OP      , -- : in  std_logic_vector(1 downto 0);
          BUS_OUT   => dataoutALU   -- : out std_logic_vector(3 downto 0)
		);
	
	
 Control: gcpu_controller 
 port map ( 
          CLK         => clk         , --  : in  std_logic;
          reset       => reset       , --  : in  std_logic;
		  instruction => instruction , --  : in  std_logic_vector(3 downto 0);
		  destination => destination , --  : in  std_logic_vector(1 downto 0);
		  C_in        => Creg        , -- : in  std_logic;
		  captureALU  => captureALU  , -- : out std_logic;
		  C_set       => C_set       , -- : out std_logic;
		  C_reset     => C_reset     , -- : out std_logic;
		  SEL1        => SEL1        , --  : out std_logic_vector(1 downto 0);
		  SEL2        => SEL2        , --  : out std_logic_vector(1 downto 0);
          LDA	      => LDA	     , --  : out std_logic;
          LDB	      => LDB	     , --  : out std_logic;
		  PCload      => PCload,
          OP          => OP          , --  : out std_logic_vector(1 downto 0);
		  done        => doneint         --  : out std_logic
		  );

		  
Rom : ROM_32_6
port map (
	
			addr => addr,
			clk  => clk,
			q    => q );
	
instruction <= q(5 downto 2);
destination <= q(1 downto 0);
	
ProgramCounter : PCOUNTER
port map (
            reset => reset,
			addr => addr,
			PAddr => PAddr,
			PCSrc => PCSrc,
			PCload => PCload,
			clk   => clk );

 end structural;
    