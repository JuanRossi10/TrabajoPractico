library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EjercicioLED is
port(sw1,sw2 : in STD_LOGIC; LED : out STD_LOGIC);
end EjercicioLED;
architecture behavioral of EjercicioLED is

begin
LED <= not(sw1 and sw2);
end behavioral;