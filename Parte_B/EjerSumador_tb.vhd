library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EjerSumador_tb is end EjerSumador_tb; -- las entidades son vacias

architecture behavior of EjerSumador_tb is
component SumadorCompleto
	port (a_in: in std_logic;
			b_in: in std_logic;
			clock: in std_logic;
			carry_in: in std_logic;
			suma: out std_logic;
			carry_out: out std_logic);
	end component;
		
		--imputs:
		signal a_in: std_logic:='0';
		signal b_in: std_logic:='0';
		signal clock: std_logic:='0';
		signal carry_in: std_logic:='0';
		--outputs:
		signal suma: std_logic;
		signal carry_out: std_logic;
		
		constant clock_periodo: time:= 20ns; 
		
	BEGIN
		uut: SumadorCompleto port map (a_in => a_in,
												b_in => b_in,			
												clock => clock,
												carry_in => carry_in,	
												suma => suma,
												carry_out => carry_out);
												
	 clock_process:process
							begin
								clock<='0';
								wait for clock_periodo/2;
								clock<='1';
								wait for clock_periodo/2;
								
						end process;
												
				stimulo_process: process 
						begin
							a_in <='0'; b_in <='0';carry_in <='0'; wait for 30ns;
							a_in <='0'; b_in <='0';carry_in <='1'; wait for 30ns;
							a_in <='0'; b_in <='1';carry_in <='0'; wait for 30ns;
							a_in <='0'; b_in <='1';carry_in <='1'; wait for 30ns;
							a_in <='1'; b_in <='0';carry_in <='0'; wait for 30ns;
							a_in <='1'; b_in <='0';carry_in <='1'; wait for 30ns;
							a_in <='1'; b_in <='1';carry_in <='0'; wait for 30ns;
							a_in <='1'; b_in <='1';carry_in <='1'; wait for 30ns;
							wait;
				end process;			
			
	
end architecture;
