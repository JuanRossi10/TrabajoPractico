library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee. std_logic_1164.all;
use ieee. std_logic_unsigned.all;

entity SumadorCompleto is 
	port (a_in: in std_logic;
			b_in: in std_logic;
			clock: in std_logic;
			carry_in: in std_logic;
			suma: out std_logic;
			carry_out: out std_logic);
end SumadorCompleto;

architecture behavioral of SumadorCompleto is

component FF_D
	port (D,clock: in std_logic;
			Q: out std_logic);
	end component;
	
	signal a,b,cin,cout,cuenta: std_logic;

begin
	cuenta <= a xor b xor cin; --hace una xor entre a, b y cin
 	cout <= (a and b) or (cin and(a xor b));
	
	D1: FF_D port map (D => a_in, clock => clock,Q => a);
	D2: FF_D port map (D => b_in, clock => clock,Q => b);
	D3: FF_D port map (D => carry_in, clock => clock,Q => cin);
	D4: FF_D port map (D => cout, clock => clock,Q => carry_out);
	D5: FF_D port map (D => cuenta, clock => clock,Q => suma);
	
end behavioral;	