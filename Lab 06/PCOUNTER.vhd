library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity PCOUNTER is
	
	
	port
	
	(
	reset: in std_logic;
	addr : out std_logic_vector(4 downto 0);
	PAddr: in   std_logic_vector(4 downto 0);
	PCSrc: in  std_logic;
	PCload:in  std_logic;
	clk    : in std_logic
	);
	
end entity;




architecture structural of PCOUNTER is


Signal address:  std_logic_vector(4 downto 0);
signal address_mux:  std_logic_vector(4 downto 0);



begin


Mux: process( PCSrc, address, PAddr)
	 begin
		 if ((PCSrc = '0')) then
		     address_mux <= address + 1;
         else
		     address_mux <= PAddr;
		 end if;
		
	 end process;
		

Counter: process( reset, clk)
	 begin
	    if (reset = '1') then 
		    address <= (others=>'0');
	    elsif(rising_edge(clk)) then 
		    if ((PCload = '1')) then
		       address <= address_mux;
		    end if;
	    end if;
		
	 end process;
		
	addr <= address;
		
		
end structural;

