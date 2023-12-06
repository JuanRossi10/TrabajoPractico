-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Wed Dec 06 11:04:46 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
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
END Block1;

ARCHITECTURE bdf_type OF Block1 IS 

COMPONENT sumador
	PORT(a_in : IN STD_LOGIC;
		 b_in : IN STD_LOGIC;
		 carry_in : IN STD_LOGIC;
		 suma : OUT STD_LOGIC;
		 carry_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT ff_d
	PORT(D : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 Q : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_44 AND SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2;


b2v_inst1 : sumador
PORT MAP(a_in => SYNTHESIZED_WIRE_45,
		 b_in => SYNTHESIZED_WIRE_4,
		 carry_in => SYNTHESIZED_WIRE_5,
		 suma => SYNTHESIZED_WIRE_44,
		 carry_out => SYNTHESIZED_WIRE_37);


SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_6 XOR SYNTHESIZED_WIRE_46;


SYNTHESIZED_WIRE_26 <= SYNTHESIZED_WIRE_8 XOR SYNTHESIZED_WIRE_46;


SYNTHESIZED_WIRE_34 <= SYNTHESIZED_WIRE_10 XOR SYNTHESIZED_WIRE_46;


b2v_inst13 : ff_d
PORT MAP(D => A3,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_45);


b2v_inst14 : ff_d
PORT MAP(D => B3,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_47);


SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_45 AND SYNTHESIZED_WIRE_47 AND SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_32 <= SYNTHESIZED_WIRE_15 OR SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_47);



SYNTHESIZED_WIRE_14 <= NOT(SYNTHESIZED_WIRE_44);



b2v_inst19 : ff_d
PORT MAP(D => A0,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_33);


b2v_inst2 : sumador
PORT MAP(a_in => SYNTHESIZED_WIRE_19,
		 b_in => SYNTHESIZED_WIRE_20,
		 carry_in => SYNTHESIZED_WIRE_21,
		 suma => SYNTHESIZED_WIRE_50,
		 carry_out => SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_45);



b2v_inst21 : ff_d
PORT MAP(D => B0,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_10);


b2v_inst22 : ff_d
PORT MAP(D => SOR,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_46);


b2v_inst28 : ff_d
PORT MAP(D => SYNTHESIZED_WIRE_48,
		 clock => clock,
		 Q => S0);


b2v_inst29 : ff_d
PORT MAP(D => SYNTHESIZED_WIRE_49,
		 clock => clock,
		 Q => S1);


b2v_inst3 : sumador
PORT MAP(a_in => SYNTHESIZED_WIRE_25,
		 b_in => SYNTHESIZED_WIRE_26,
		 carry_in => SYNTHESIZED_WIRE_27,
		 suma => SYNTHESIZED_WIRE_49,
		 carry_out => SYNTHESIZED_WIRE_21);


b2v_inst30 : ff_d
PORT MAP(D => SYNTHESIZED_WIRE_50,
		 clock => clock,
		 Q => S2);


b2v_inst31 : ff_d
PORT MAP(D => SYNTHESIZED_WIRE_44,
		 clock => clock,
		 Q => S3yN);


b2v_inst32 : ff_d
PORT MAP(D => SYNTHESIZED_WIRE_30,
		 clock => clock,
		 Q => Z);


b2v_inst33 : ff_d
PORT MAP(D => SYNTHESIZED_WIRE_31,
		 clock => clock,
		 Q => C);


b2v_inst34 : ff_d
PORT MAP(D => SYNTHESIZED_WIRE_32,
		 clock => clock,
		 Q => V);


b2v_inst4 : sumador
PORT MAP(a_in => SYNTHESIZED_WIRE_33,
		 b_in => SYNTHESIZED_WIRE_34,
		 carry_in => SYNTHESIZED_WIRE_46,
		 suma => SYNTHESIZED_WIRE_48,
		 carry_out => SYNTHESIZED_WIRE_27);


SYNTHESIZED_WIRE_31 <= SYNTHESIZED_WIRE_46 XOR SYNTHESIZED_WIRE_37;


b2v_inst5 : ff_d
PORT MAP(D => A2,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_19);


b2v_inst6 : ff_d
PORT MAP(D => B2,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_6);


SYNTHESIZED_WIRE_30 <= NOT(SYNTHESIZED_WIRE_44 AND SYNTHESIZED_WIRE_48 AND SYNTHESIZED_WIRE_50 AND SYNTHESIZED_WIRE_49);


b2v_inst7 : ff_d
PORT MAP(D => B1,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_8);


b2v_inst8 : ff_d
PORT MAP(D => A1,
		 clock => clock,
		 Q => SYNTHESIZED_WIRE_25);


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_47 XOR SYNTHESIZED_WIRE_46;


END bdf_type;