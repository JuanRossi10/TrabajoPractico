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

-- Generated by Quartus II Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition
-- Created on Mon Dec 04 21:18:22 2023

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Sec_LED IS
    PORT (
        reset : IN STD_LOGIC := '0';
        clock : IN STD_LOGIC;
        x : IN STD_LOGIC := '0';
        z1 : OUT STD_LOGIC;
        z2 : OUT STD_LOGIC;
        z3 : OUT STD_LOGIC;
        z4 : OUT STD_LOGIC
    );
END Sec_LED;

ARCHITECTURE BEHAVIOR OF Sec_LED IS
    TYPE type_fstate IS (state1,state2,state3,state4,state7,state5,state6);
    SIGNAL fstate : type_fstate;
    SIGNAL reg_fstate : type_fstate;
BEGIN
    PROCESS (clock,reg_fstate)
    BEGIN
        IF (clock='1' AND clock'event) THEN
            fstate <= reg_fstate;
        END IF;
    END PROCESS;

    PROCESS (fstate,reset,x)
    BEGIN
        IF (reset='1') THEN
            reg_fstate <= state1;
            z1 <= '0';
            z2 <= '0';
            z3 <= '0';
            z4 <= '0';
        ELSE
            z1 <= '0';
            z2 <= '0';
            z3 <= '0';
            z4 <= '0';
            CASE fstate IS
                WHEN state1 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state2;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state5;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state1;
                    END IF;

                    z4 <= '0';

                    z3 <= '0';

                    z2 <= '0';

                    z1 <= '0';
                WHEN state2 =>
                    reg_fstate <= state3;

                    z4 <= '0';

                    z3 <= '1';

                    z2 <= '1';

                    z1 <= '0';
                WHEN state3 =>
                    IF ((x = '0')) THEN
                        reg_fstate <= state4;
                    ELSIF ((x = '1')) THEN
                        reg_fstate <= state7;
                    -- Inserting 'else' block to prevent latch inference
                    ELSE
                        reg_fstate <= state3;
                    END IF;

                    z4 <= '1';

                    z3 <= '1';

                    z2 <= '1';

                    z1 <= '1';
                WHEN state4 =>
                    reg_fstate <= state1;

                    z4 <= '1';

                    z3 <= '0';

                    z2 <= '0';

                    z1 <= '1';
                WHEN state7 =>
                    reg_fstate <= state1;

                    z4 <= '0';

                    z3 <= '1';

                    z2 <= '1';

                    z1 <= '1';
                WHEN state5 =>
                    reg_fstate <= state6;

                    z4 <= '0';

                    z3 <= '0';

                    z2 <= '0';

                    z1 <= '1';
                WHEN state6 =>
                    reg_fstate <= state3;

                    z4 <= '0';

                    z3 <= '0';

                    z2 <= '1';

                    z1 <= '1';
                WHEN OTHERS => 
                    z1 <= 'X';
                    z2 <= 'X';
                    z3 <= 'X';
                    z4 <= 'X';
                    report "Reach undefined state";
            END CASE;
        END IF;
    END PROCESS;
END BEHAVIOR;
