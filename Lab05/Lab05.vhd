library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Lab05 is
 Port ( 
          CLK         : in  std_logic;
          reset       : in  std_logic;
		  instruction : in  std_logic_vector(2 downto 0);
		  destination : in  std_logic_vector(1 downto 0);
		  start       : in  std_logic;
          BUS_IN      : in  std_logic_vector(2 downto 0);
          --CIN         : in  std_logic;
		  COUT        : out std_logic;
          BUS_OUT     : out std_logic_vector(3 downto 0);
			 started   : out std_logic;
		  done        : out std_logic
		);
end Lab05;
 
architecture structural of Lab05 is

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
			 started   : out std_logic;
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

signal Clk1Hz            : std_logic;
signal count             : std_logic_vector(27 downto 0);  -- max value is 2^27-1 or 134,217,727, min value is 0
signal dataout           : std_logic_vector(3 downto 0);
signal dataoutALU        : std_logic_vector(3 downto 0);
signal doneint           : std_logic;
signal busInzero         : std_logic_vector(3 downto 0);
  
begin

    CIN <= '0';
	 
	     SlowClock1Hz : process(CLK, reset)
    begin
        if(reset = '1') then
	        Clk1Hz <= '0';
		    count <= X"0000000";
	    elsif (CLK'event and CLK = '1') then   
		    if (count = X"1e847f") then  -- exactly 1,999,999 so counter goes 0, 1, 2, ..., 1,999,999 and repeats every half second
		        count <= X"0000000";
			    Clk1Hz <= not Clk1Hz; -- inverts every half to output 2 hz
		    else
   			    count <= count + 1;
		    end if;
        end if;
    end process;

	 DataPrint : process(Clk1Hz, reset)
    begin
        if(reset = '1') then
	   	  dataout <= (others=>'0');
        elsif (Clk1Hz'event and Clk1Hz = '1') then   
		     if (doneint = '1') and ((instruction = "011") or (instruction = "100") or (instruction = "101") or (instruction = "110")) then
   		     dataout <= dataoutALU;
			  end if;
        end if;
    end process;
	 
    done <= doneint;
	 BUS_OUT <= dataout;


	 busInzero <= '0' & BUS_IN;
	 
    TheRegDatapath : REG_DATAPATH 
    port map ( 
          CLK       => Clk1Hz     , -- : in  std_logic;
          reset     => reset   , -- : in  std_logic;
          BUS_IN    => busInzero  , -- : in  std_logic_vector(3 downto 0);
          CIN       => CIN     , -- : in  std_logic;
		  SEL1      => SEL1    , -- : in  std_logic_vector(1 downto 0);
		  SEL2      => SEL2    , -- : in  std_logic_vector(1 downto 0);
          LDA	    => LDA	   , -- : in  std_logic;
          LDB	    => LDB	   , -- : in  std_logic;
          OP        => OP      , -- : in  std_logic_vector(1 downto 0);
		  COUT      => COUT    , -- : out std_logic;
          BUS_OUT   => dataoutALU   -- : out std_logic_vector(3 downto 0)
		);
	
	
 Control: gcpu_controller 
 port map ( 
          CLK         => Clk1Hz         , --  : in  std_logic;
          reset       => reset       , --  : in  std_logic;
		  instruction => instruction , --  : in  std_logic_vector(2 downto 0);
		  destination => destination , --  : in  std_logic_vector(1 downto 0);
		  start       => start       , --  : in  std_logic;
		  SEL1        => SEL1        , --  : out std_logic_vector(1 downto 0);
		  SEL2        => SEL2        , --  : out std_logic_vector(1 downto 0);
          LDA	      => LDA	     , --  : out std_logic;
          LDB	      => LDB	     , --  : out std_logic;
			 started => started,
          OP          => OP          , --  : out std_logic_vector(1 downto 0);
		  done        => doneint         --  : out std_logic
		  );
	
 end structural;
    