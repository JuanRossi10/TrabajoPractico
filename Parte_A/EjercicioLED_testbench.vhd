library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EjercicioLED_testbench is 
-- las entidades son vacias
end EjercicioLED_testbench; 

architecture EjercicioLED_testbench1 of EjercicioLED_testbench is

	component EjercicioLED 
		port (sw1 : in std_logic;
		      sw2 : in std_logic;   -- in1, in2 y out1 son las señales de entradas y salida de nuestro componente a testear 
				LED : out std_logic);
	end component EjercicioLED;
	
	--inputs 
	signal sw1: std_logic :='0';
	signal sw2: std_logic :='0';  -- inicializamos las entradas en cero
	--outputs
	signal LED: std_logic;
	
	BEGIN
	uut: EjercicioLED port map ( sw1 => sw1,
											sw2 => sw2,
											LED => LED);	
	
	Estimulo_del_proceso: process	              --En los casos de tesbench no hay que poner señales de sensibilidad
				
				begin
				
				sw1 <= '0'; sw2 <= '0'; wait for 1ns;
				sw1 <= '0'; sw2 <= '1'; wait for 1ns;	
				sw1 <= '1'; sw2 <= '0'; wait for 1ns;
				sw1 <= '1'; sw2 <= '1'; wait for 1ns;
				
				wait;               --da por finalizada la simulacion si detecta que no hay ningun proceso ejecutandose
			end process estimulo_del_proceso;
	end architecture EjercicioLED_testbench1;
	
	
	
	
	
	
	

 

