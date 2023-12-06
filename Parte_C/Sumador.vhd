library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee. std_logic_1164.all;
use ieee. std_logic_unsigned.all;

entity Sumador is 
	port (a_in: in std_logic;
			b_in: in std_logic;
			carry_in: in std_logic;
			suma: out std_logic;
			carry_out: out std_logic);
end Sumador;

architecture behavioral of Sumador is

begin
	suma<= a_in xor b_in xor carry_in; --hace una xor entre a, b y cin
 	carry_out <= (a_in and b_in) or (carry_in and(a_in xor b_in));
end behavioral;	