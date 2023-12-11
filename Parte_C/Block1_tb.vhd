Library ieee;
use ieee.std_logic_1164.all;

entity Block1_tb is 
end Block1_tb;

architecture comportamiento of Block1_tb is
 component Block1
	    port (
	   clock :  IN  STD_LOGIC;
		A3 :  IN  STD_LOGIC;
		B3 :  IN  STD_LOGIC;
		A2 :  IN  STD_LOGIC;
		B2 :  IN  STD_LOGIC;
		A1 :  IN  STD_LOGIC;
		B1 :  IN  STD_LOGIC;
		A0 :  IN  STD_LOGIC;
		B0 :  IN  STD_LOGIC;
		SOR :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3yN :  OUT  STD_LOGIC;
		Z :  OUT  STD_LOGIC;
		C :  OUT  STD_LOGIC;
		V :  OUT  STD_LOGIC
	      );
	end component;
	--imputs
	signal A0   : std_logic := '0';
	signal B0   : std_logic := '0';
	signal A1   : std_logic := '0';
	signal B1   : std_logic := '0';
   signal A2   : std_logic := '0';
	signal B2   : std_logic := '0';
   signal A3   : std_logic := '0';
	signal B3   : std_logic := '0';
	signal SOR  : std_logic := '0';
	signal clock  : std_logic := '0';
	--outputs
	signal S0    : std_logic;
	signal S1    : std_logic;
	signal S2    : std_logic;
	signal S3yN    : std_logic;
	signal C : std_logic;
	signal V    : std_logic;
	signal Z    : std_logic;
	

Constant clk_p : time := 1ns;
	
begin
	uut : Block1 port map (
	    A0 => A0,
		 A1 => A1,
		 A2 => A2,
		 A3 => A3,
		 B0 => B0,
		 B1 => B1,
		 B2 => B2,
		 B3 => B3,
		 SOR => SOR,
		 clock => clock,
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 S3yN => S3yN,
		 C => C,
		 V => V,
		 Z => Z
	    );
		 
	clk_pr: process
begin
clock <='0';
wait for clk_p/2;
clock <='1';
wait for clk_p/2;
end process;
	
	stim_pr: process 
	begin 
	A0 <= '0';A1 <= '0';A2 <= '0';A3 <= '0';B0 <= '0';B1 <= '0'; B2 <= '0'; B3 <= '0'; SOR <= '0'; wait for 60ns;
	A0 <= '1';A1 <= '0';A2 <= '1';A3 <= '0';B0 <= '0';B1 <= '1'; B2 <= '0'; B3 <= '0'; SOR <= '0';wait for 60ns;
	A0 <= '0';A1 <= '1';A2 <= '1';A3 <= '1';B0 <= '1';B1 <= '1'; B2 <= '0'; B3 <= '0'; SOR <= '0';wait for 60ns;
	A0 <= '1';A1 <= '1';A2 <= '0';A3 <= '0';B0 <= '0';B1 <= '1'; B2 <= '1'; B3 <= '1'; SOR <= '0';wait for 60ns;
	wait;
	end process;
	end;