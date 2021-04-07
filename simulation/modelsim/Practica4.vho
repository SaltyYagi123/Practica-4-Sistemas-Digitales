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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/07/2021 09:43:10"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practica4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	shamt : IN std_logic_vector(1 DOWNTO 0);
	alu_op : IN std_logic_vector(3 DOWNTO 0);
	alu_out : OUT std_logic_vector(3 DOWNTO 0);
	z : OUT std_logic;
	it : OUT std_logic;
	g_e : OUT std_logic
	);
END Practica4;

-- Design Ports Information
-- alu_out[0]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[1]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[2]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[3]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- it	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g_e	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_op[0]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[3]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_alu_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_alu_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_z : std_logic;
SIGNAL ww_it : std_logic;
SIGNAL ww_g_e : std_logic;
SIGNAL \SumadorRestador_i|Add0~0_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add1~4_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~4_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~5_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~6_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~7_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~9_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~4_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~6_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~3_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~4_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~5_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~6_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~15_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add1~0_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~4_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~2_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~3_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~8_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~10_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~11_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~12_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~13_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~14_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~1\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~2_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Equal0~0_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add1~1\ : std_logic;
SIGNAL \SumadorRestador_i|Add1~2_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~6_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~8_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~7_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~4_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~1_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~2_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~3_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~5_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~9_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~2_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~3_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~1_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~5_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~7_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~0_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~8_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~0_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~7_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~3\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~5\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~6_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add1~3\ : std_logic;
SIGNAL \SumadorRestador_i|Add1~5\ : std_logic;
SIGNAL \SumadorRestador_i|Add1~6_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~2_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~9_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~8_combout\ : std_logic;
SIGNAL \Comparador_i|LessThan0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \ExtSigB|Equal0~0_combout\ : std_logic;
SIGNAL \ExtSigA|salida[4]~0_combout\ : std_logic;
SIGNAL \ExtSigB|salida[4]~0_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add1~7\ : std_logic;
SIGNAL \SumadorRestador_i|sig~0_combout\ : std_logic;
SIGNAL \shamt~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SumadorRestador_i|ALT_INV_sig~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_shamt <= shamt;
ww_alu_op <= alu_op;
alu_out <= ww_alu_out;
z <= ww_z;
it <= ww_it;
g_e <= ww_g_e;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\SumadorRestador_i|ALT_INV_sig~0_combout\ <= NOT \SumadorRestador_i|sig~0_combout\;

-- Location: LCCOMB_X26_Y8_N10
\SumadorRestador_i|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~0_combout\ = (\a~combout\(0) & (\b~combout\(0) $ (VCC))) # (!\a~combout\(0) & (\b~combout\(0) & VCC))
-- \SumadorRestador_i|Add0~1\ = CARRY((\a~combout\(0) & \b~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datad => VCC,
	combout => \SumadorRestador_i|Add0~0_combout\,
	cout => \SumadorRestador_i|Add0~1\);

-- Location: LCCOMB_X26_Y8_N4
\SumadorRestador_i|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add1~4_combout\ = ((\a~combout\(2) $ (\b~combout\(2) $ (\SumadorRestador_i|Add1~3\)))) # (GND)
-- \SumadorRestador_i|Add1~5\ = CARRY((\a~combout\(2) & ((!\SumadorRestador_i|Add1~3\) # (!\b~combout\(2)))) # (!\a~combout\(2) & (!\b~combout\(2) & !\SumadorRestador_i|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => VCC,
	cin => \SumadorRestador_i|Add1~3\,
	combout => \SumadorRestador_i|Add1~4_combout\,
	cout => \SumadorRestador_i|Add1~5\);

-- Location: LCCOMB_X26_Y8_N14
\SumadorRestador_i|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~4_combout\ = ((\a~combout\(2) $ (\b~combout\(2) $ (!\SumadorRestador_i|Add0~3\)))) # (GND)
-- \SumadorRestador_i|Add0~5\ = CARRY((\a~combout\(2) & ((\b~combout\(2)) # (!\SumadorRestador_i|Add0~3\))) # (!\a~combout\(2) & (\b~combout\(2) & !\SumadorRestador_i|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(2),
	datad => VCC,
	cin => \SumadorRestador_i|Add0~3\,
	combout => \SumadorRestador_i|Add0~4_combout\,
	cout => \SumadorRestador_i|Add0~5\);

-- Location: LCCOMB_X27_Y9_N4
\Multiplexor_i|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~5_combout\ = (\alu_op~combout\(3)) # ((\alu_op~combout\(0) & ((\shamt~combout\(1)) # (\shamt~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \shamt~combout\(1),
	datac => \shamt~combout\(0),
	datad => \alu_op~combout\(0),
	combout => \Multiplexor_i|Mux3~5_combout\);

-- Location: LCCOMB_X26_Y9_N18
\Multiplexor_i|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~6_combout\ = (\alu_op~combout\(0)) # ((\SumadorRestador_i|Add0~0_combout\ & !\Multiplexor_i|Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|Add0~0_combout\,
	datac => \alu_op~combout\(0),
	datad => \Multiplexor_i|Mux3~5_combout\,
	combout => \Multiplexor_i|Mux3~6_combout\);

-- Location: LCCOMB_X26_Y9_N12
\Multiplexor_i|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~7_combout\ = (\alu_op~combout\(2) & (\Multiplexor_i|Mux3~6_combout\)) # (!\alu_op~combout\(2) & ((\Multiplexor_i|Mux3~6_combout\ & ((!\Multiplexor_i|Mux3~5_combout\))) # (!\Multiplexor_i|Mux3~6_combout\ & 
-- ((\Multiplexor_i|Mux3~5_combout\) # (!\SumadorRestador_i|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \Multiplexor_i|Mux3~6_combout\,
	datac => \SumadorRestador_i|Equal0~0_combout\,
	datad => \Multiplexor_i|Mux3~5_combout\,
	combout => \Multiplexor_i|Mux3~7_combout\);

-- Location: LCCOMB_X26_Y9_N24
\Multiplexor_i|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~9_combout\ = (\alu_op~combout\(2) & ((\b~combout\(0) & ((\a~combout\(0)) # (!\alu_op~combout\(0)))) # (!\b~combout\(0) & (!\alu_op~combout\(0) & \a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \b~combout\(0),
	datac => \alu_op~combout\(0),
	datad => \a~combout\(0),
	combout => \Multiplexor_i|Mux3~9_combout\);

-- Location: LCCOMB_X27_Y9_N6
\Multiplexor_i|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~4_combout\ = (\alu_op~combout\(3) & (((!\alu_op~combout\(2))))) # (!\alu_op~combout\(3) & (\shamt~combout\(1) & ((\shamt~combout\(0)) # (\alu_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \shamt~combout\(1),
	datac => \shamt~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux1~4_combout\);

-- Location: LCCOMB_X26_Y9_N16
\Multiplexor_i|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~6_combout\ = (\alu_op~combout\(3) & ((\SumadorRestador_i|Add1~4_combout\))) # (!\alu_op~combout\(3) & (\SumadorRestador_i|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \SumadorRestador_i|Add0~4_combout\,
	datac => \SumadorRestador_i|Add1~4_combout\,
	combout => \Multiplexor_i|Mux1~6_combout\);

-- Location: LCCOMB_X27_Y9_N10
\Multiplexor_i|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~3_combout\ = (\shamt~combout\(0) & ((\shamt~combout\(1) & (\a~combout\(0))) # (!\shamt~combout\(1) & ((\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \a~combout\(0),
	datac => \shamt~combout\(1),
	datad => \a~combout\(2),
	combout => \Multiplexor_i|Mux0~3_combout\);

-- Location: LCCOMB_X27_Y9_N12
\Multiplexor_i|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~4_combout\ = (\shamt~combout\(1) & (((\a~combout\(1) & !\alu_op~combout\(2))))) # (!\shamt~combout\(1) & (\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \a~combout\(1),
	datac => \shamt~combout\(1),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux0~4_combout\);

-- Location: LCCOMB_X27_Y9_N22
\Multiplexor_i|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~5_combout\ = (\Multiplexor_i|Mux0~4_combout\ & (((\Multiplexor_i|Mux0~3_combout\ & !\alu_op~combout\(2))) # (!\shamt~combout\(0)))) # (!\Multiplexor_i|Mux0~4_combout\ & (\Multiplexor_i|Mux0~3_combout\ & ((!\alu_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux0~4_combout\,
	datab => \Multiplexor_i|Mux0~3_combout\,
	datac => \shamt~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux0~5_combout\);

-- Location: LCCOMB_X25_Y8_N16
\Multiplexor_i|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~6_combout\ = (\b~combout\(3) & ((\a~combout\(3) & (\alu_op~combout\(1))) # (!\a~combout\(3) & ((!\alu_op~combout\(0)))))) # (!\b~combout\(3) & (((!\alu_op~combout\(0) & \a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(1),
	datab => \alu_op~combout\(0),
	datac => \b~combout\(3),
	datad => \a~combout\(3),
	combout => \Multiplexor_i|Mux0~6_combout\);

-- Location: LCCOMB_X26_Y9_N6
\Multiplexor_i|Mux3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~15_combout\ = (\alu_op~combout\(3) & (((\alu_op~combout\(0) & \alu_op~combout\(2))))) # (!\alu_op~combout\(3) & (((\alu_op~combout\(0)) # (\alu_op~combout\(2))) # (!\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux3~15_combout\);

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X26_Y8_N0
\SumadorRestador_i|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add1~0_combout\ = (\a~combout\(0) & ((GND) # (!\b~combout\(0)))) # (!\a~combout\(0) & (\b~combout\(0) $ (GND)))
-- \SumadorRestador_i|Add1~1\ = CARRY((\a~combout\(0)) # (!\b~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datad => VCC,
	combout => \SumadorRestador_i|Add1~0_combout\,
	cout => \SumadorRestador_i|Add1~1\);

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_op[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_alu_op(1),
	combout => \alu_op~combout\(1));

-- Location: LCCOMB_X26_Y9_N0
\Multiplexor_i|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~4_combout\ = (!\alu_op~combout\(1) & ((\Multiplexor_i|Mux3~15_combout\) # (\SumadorRestador_i|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux3~15_combout\,
	datab => \SumadorRestador_i|Add1~0_combout\,
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux3~4_combout\);

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_op[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_alu_op(0),
	combout => \alu_op~combout\(0));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_shamt(1),
	combout => \shamt~combout\(1));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X27_Y9_N8
\Multiplexor_i|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~2_combout\ = (\shamt~combout\(0) & ((\shamt~combout\(1) & (\a~combout\(3))) # (!\shamt~combout\(1) & ((\a~combout\(1)))))) # (!\shamt~combout\(0) & (((!\shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \a~combout\(3),
	datac => \shamt~combout\(1),
	datad => \a~combout\(1),
	combout => \Multiplexor_i|Mux3~2_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X27_Y9_N18
\Multiplexor_i|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~3_combout\ = (\shamt~combout\(0) & (((\Multiplexor_i|Mux3~2_combout\)))) # (!\shamt~combout\(0) & ((\Multiplexor_i|Mux3~2_combout\ & (\a~combout\(0))) # (!\Multiplexor_i|Mux3~2_combout\ & ((\a~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \a~combout\(0),
	datac => \Multiplexor_i|Mux3~2_combout\,
	datad => \a~combout\(2),
	combout => \Multiplexor_i|Mux3~3_combout\);

-- Location: LCCOMB_X26_Y9_N22
\Multiplexor_i|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~8_combout\ = (\Multiplexor_i|Mux3~7_combout\ & (\Multiplexor_i|Mux3~4_combout\ & ((\Multiplexor_i|Mux3~3_combout\) # (!\alu_op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux3~7_combout\,
	datab => \Multiplexor_i|Mux3~4_combout\,
	datac => \alu_op~combout\(0),
	datad => \Multiplexor_i|Mux3~3_combout\,
	combout => \Multiplexor_i|Mux3~8_combout\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X26_Y8_N18
\Multiplexor_i|Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~10_combout\ = (\b~combout\(1) & (((\b~combout\(0) & !\a~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(1) & (\b~combout\(0) & !\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \Multiplexor_i|Mux3~10_combout\);

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X26_Y8_N30
\Multiplexor_i|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~11_combout\ = (!\Comparador_i|LessThan0~0_combout\ & ((\Multiplexor_i|Mux3~10_combout\ & ((\b~combout\(2)) # (!\a~combout\(2)))) # (!\Multiplexor_i|Mux3~10_combout\ & (!\a~combout\(2) & \b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Comparador_i|LessThan0~0_combout\,
	datab => \Multiplexor_i|Mux3~10_combout\,
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \Multiplexor_i|Mux3~11_combout\);

-- Location: LCCOMB_X26_Y8_N24
\Multiplexor_i|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~12_combout\ = (\Multiplexor_i|Mux3~11_combout\) # ((\ExtSigB|Equal0~0_combout\ & (!\b~combout\(3) & \a~combout\(3))) # (!\ExtSigB|Equal0~0_combout\ & (\b~combout\(3) & !\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtSigB|Equal0~0_combout\,
	datab => \b~combout\(3),
	datac => \a~combout\(3),
	datad => \Multiplexor_i|Mux3~11_combout\,
	combout => \Multiplexor_i|Mux3~12_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_op[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_alu_op(2),
	combout => \alu_op~combout\(2));

-- Location: LCCOMB_X26_Y9_N26
\Multiplexor_i|Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~13_combout\ = (\Multiplexor_i|Mux3~9_combout\) # ((\Multiplexor_i|Mux3~12_combout\ & !\alu_op~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux3~9_combout\,
	datac => \Multiplexor_i|Mux3~12_combout\,
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux3~13_combout\);

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\alu_op[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_alu_op(3),
	combout => \alu_op~combout\(3));

-- Location: LCCOMB_X26_Y9_N28
\Multiplexor_i|Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~14_combout\ = (\Multiplexor_i|Mux3~8_combout\) # ((\Multiplexor_i|Mux3~13_combout\ & (!\alu_op~combout\(3) & \alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux3~8_combout\,
	datab => \Multiplexor_i|Mux3~13_combout\,
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux3~14_combout\);

-- Location: LCCOMB_X26_Y8_N12
\SumadorRestador_i|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~2_combout\ = (\b~combout\(1) & ((\a~combout\(1) & (\SumadorRestador_i|Add0~1\ & VCC)) # (!\a~combout\(1) & (!\SumadorRestador_i|Add0~1\)))) # (!\b~combout\(1) & ((\a~combout\(1) & (!\SumadorRestador_i|Add0~1\)) # (!\a~combout\(1) & 
-- ((\SumadorRestador_i|Add0~1\) # (GND)))))
-- \SumadorRestador_i|Add0~3\ = CARRY((\b~combout\(1) & (!\a~combout\(1) & !\SumadorRestador_i|Add0~1\)) # (!\b~combout\(1) & ((!\SumadorRestador_i|Add0~1\) # (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datad => VCC,
	cin => \SumadorRestador_i|Add0~1\,
	combout => \SumadorRestador_i|Add0~2_combout\,
	cout => \SumadorRestador_i|Add0~3\);

-- Location: LCCOMB_X25_Y8_N0
\SumadorRestador_i|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Equal0~0_combout\ = (!\alu_op~combout\(2) & (!\alu_op~combout\(0) & !\alu_op~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \alu_op~combout\(0),
	datad => \alu_op~combout\(1),
	combout => \SumadorRestador_i|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y8_N2
\SumadorRestador_i|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add1~2_combout\ = (\b~combout\(1) & ((\a~combout\(1) & (!\SumadorRestador_i|Add1~1\)) # (!\a~combout\(1) & ((\SumadorRestador_i|Add1~1\) # (GND))))) # (!\b~combout\(1) & ((\a~combout\(1) & (\SumadorRestador_i|Add1~1\ & VCC)) # 
-- (!\a~combout\(1) & (!\SumadorRestador_i|Add1~1\))))
-- \SumadorRestador_i|Add1~3\ = CARRY((\b~combout\(1) & ((!\SumadorRestador_i|Add1~1\) # (!\a~combout\(1)))) # (!\b~combout\(1) & (!\a~combout\(1) & !\SumadorRestador_i|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datad => VCC,
	cin => \SumadorRestador_i|Add1~1\,
	combout => \SumadorRestador_i|Add1~2_combout\,
	cout => \SumadorRestador_i|Add1~3\);

-- Location: LCCOMB_X26_Y9_N30
\Multiplexor_i|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~6_combout\ = (\SumadorRestador_i|Equal0~0_combout\ & ((\alu_op~combout\(3) & ((\SumadorRestador_i|Add1~2_combout\))) # (!\alu_op~combout\(3) & (\SumadorRestador_i|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \SumadorRestador_i|Add0~2_combout\,
	datac => \SumadorRestador_i|Equal0~0_combout\,
	datad => \SumadorRestador_i|Add1~2_combout\,
	combout => \Multiplexor_i|Mux2~6_combout\);

-- Location: LCCOMB_X26_Y9_N2
\Multiplexor_i|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~8_combout\ = (!\alu_op~combout\(3) & \alu_op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux2~8_combout\);

-- Location: LCCOMB_X26_Y9_N8
\Multiplexor_i|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~7_combout\ = (\b~combout\(1) & ((\a~combout\(1) & ((\alu_op~combout\(1)))) # (!\a~combout\(1) & (!\alu_op~combout\(0))))) # (!\b~combout\(1) & (!\alu_op~combout\(0) & (\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \alu_op~combout\(0),
	datac => \a~combout\(1),
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux2~7_combout\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\shamt[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_shamt(0),
	combout => \shamt~combout\(0));

-- Location: LCCOMB_X27_Y9_N28
\Multiplexor_i|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~4_combout\ = (\a~combout\(3) & (\alu_op~combout\(2) & ((\alu_op~combout\(3)) # (!\shamt~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \a~combout\(3),
	datac => \shamt~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux2~4_combout\);

-- Location: LCCOMB_X27_Y9_N14
\Multiplexor_i|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~1_combout\ = (\a~combout\(1) & (!\shamt~combout\(0) & ((\alu_op~combout\(2)) # (!\alu_op~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \a~combout\(1),
	datac => \shamt~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux2~1_combout\);

-- Location: LCCOMB_X27_Y9_N16
\Multiplexor_i|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~2_combout\ = (\alu_op~combout\(2) & (((\a~combout\(2))))) # (!\alu_op~combout\(2) & (\a~combout\(0) & (!\alu_op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \a~combout\(0),
	datac => \alu_op~combout\(3),
	datad => \a~combout\(2),
	combout => \Multiplexor_i|Mux2~2_combout\);

-- Location: LCCOMB_X27_Y9_N26
\Multiplexor_i|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~3_combout\ = (!\shamt~combout\(1) & ((\Multiplexor_i|Mux2~1_combout\) # ((\shamt~combout\(0) & \Multiplexor_i|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shamt~combout\(0),
	datab => \Multiplexor_i|Mux2~1_combout\,
	datac => \shamt~combout\(1),
	datad => \Multiplexor_i|Mux2~2_combout\,
	combout => \Multiplexor_i|Mux2~3_combout\);

-- Location: LCCOMB_X27_Y9_N30
\Multiplexor_i|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~5_combout\ = (\Multiplexor_i|Mux2~0_combout\ & ((\Multiplexor_i|Mux2~3_combout\) # ((\Multiplexor_i|Mux2~4_combout\ & \shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux2~0_combout\,
	datab => \Multiplexor_i|Mux2~4_combout\,
	datac => \shamt~combout\(1),
	datad => \Multiplexor_i|Mux2~3_combout\,
	combout => \Multiplexor_i|Mux2~5_combout\);

-- Location: LCCOMB_X26_Y9_N20
\Multiplexor_i|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~9_combout\ = (\Multiplexor_i|Mux2~6_combout\) # ((\Multiplexor_i|Mux2~5_combout\) # ((\Multiplexor_i|Mux2~8_combout\ & \Multiplexor_i|Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux2~6_combout\,
	datab => \Multiplexor_i|Mux2~8_combout\,
	datac => \Multiplexor_i|Mux2~7_combout\,
	datad => \Multiplexor_i|Mux2~5_combout\,
	combout => \Multiplexor_i|Mux2~9_combout\);

-- Location: LCCOMB_X27_Y9_N2
\Multiplexor_i|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~2_combout\ = (\shamt~combout\(0) & (\a~combout\(1))) # (!\shamt~combout\(0) & ((\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(1),
	datac => \shamt~combout\(0),
	datad => \a~combout\(2),
	combout => \Multiplexor_i|Mux1~2_combout\);

-- Location: LCCOMB_X27_Y9_N20
\Multiplexor_i|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~3_combout\ = (\shamt~combout\(1) & ((\alu_op~combout\(3) & ((\alu_op~combout\(2)))) # (!\alu_op~combout\(3) & (!\shamt~combout\(0) & !\alu_op~combout\(2))))) # (!\shamt~combout\(1) & (((\shamt~combout\(0) & \alu_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \shamt~combout\(1),
	datac => \shamt~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux1~3_combout\);

-- Location: LCCOMB_X27_Y9_N0
\Multiplexor_i|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~1_combout\ = (\alu_op~combout\(2) & (\a~combout\(3))) # (!\alu_op~combout\(2) & ((\a~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datac => \a~combout\(3),
	datad => \a~combout\(0),
	combout => \Multiplexor_i|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y9_N24
\Multiplexor_i|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~5_combout\ = (\Multiplexor_i|Mux1~4_combout\ & (\Multiplexor_i|Mux1~2_combout\ & (\Multiplexor_i|Mux1~3_combout\))) # (!\Multiplexor_i|Mux1~4_combout\ & ((\Multiplexor_i|Mux1~3_combout\ & ((\Multiplexor_i|Mux1~1_combout\))) # 
-- (!\Multiplexor_i|Mux1~3_combout\ & (\Multiplexor_i|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux1~4_combout\,
	datab => \Multiplexor_i|Mux1~2_combout\,
	datac => \Multiplexor_i|Mux1~3_combout\,
	datad => \Multiplexor_i|Mux1~1_combout\,
	combout => \Multiplexor_i|Mux1~5_combout\);

-- Location: LCCOMB_X26_Y9_N10
\Multiplexor_i|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~7_combout\ = (\alu_op~combout\(0) & (((\Multiplexor_i|Mux1~5_combout\)))) # (!\alu_op~combout\(0) & (\Multiplexor_i|Mux1~6_combout\ & ((!\alu_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux1~6_combout\,
	datab => \Multiplexor_i|Mux1~5_combout\,
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux1~7_combout\);

-- Location: LCCOMB_X26_Y9_N14
\Multiplexor_i|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~0_combout\ = (\b~combout\(2) & ((\a~combout\(2) & ((\alu_op~combout\(1)))) # (!\a~combout\(2) & (!\alu_op~combout\(0))))) # (!\b~combout\(2) & (!\alu_op~combout\(0) & (\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \alu_op~combout\(0),
	datac => \a~combout\(2),
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y9_N4
\Multiplexor_i|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~8_combout\ = (\Multiplexor_i|Mux1~7_combout\ & (((\Multiplexor_i|Mux2~8_combout\ & \Multiplexor_i|Mux1~0_combout\)) # (!\alu_op~combout\(1)))) # (!\Multiplexor_i|Mux1~7_combout\ & (\Multiplexor_i|Mux2~8_combout\ & 
-- (\Multiplexor_i|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux1~7_combout\,
	datab => \Multiplexor_i|Mux2~8_combout\,
	datac => \Multiplexor_i|Mux1~0_combout\,
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux1~8_combout\);

-- Location: LCCOMB_X25_Y8_N20
\Multiplexor_i|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~0_combout\ = (\alu_op~combout\(0) & !\alu_op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(0),
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y8_N10
\Multiplexor_i|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~7_combout\ = (\alu_op~combout\(3) & (((\a~combout\(3) & \Multiplexor_i|Mux2~0_combout\)))) # (!\alu_op~combout\(3) & (\Multiplexor_i|Mux0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux0~6_combout\,
	datab => \a~combout\(3),
	datac => \Multiplexor_i|Mux2~0_combout\,
	datad => \alu_op~combout\(3),
	combout => \Multiplexor_i|Mux0~7_combout\);

-- Location: LCCOMB_X26_Y8_N16
\SumadorRestador_i|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~6_combout\ = \a~combout\(3) $ (\SumadorRestador_i|Add0~5\ $ (\b~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datad => \b~combout\(3),
	cin => \SumadorRestador_i|Add0~5\,
	combout => \SumadorRestador_i|Add0~6_combout\);

-- Location: LCCOMB_X26_Y8_N6
\SumadorRestador_i|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add1~6_combout\ = (\a~combout\(3) & ((\b~combout\(3) & (!\SumadorRestador_i|Add1~5\)) # (!\b~combout\(3) & (\SumadorRestador_i|Add1~5\ & VCC)))) # (!\a~combout\(3) & ((\b~combout\(3) & ((\SumadorRestador_i|Add1~5\) # (GND))) # 
-- (!\b~combout\(3) & (!\SumadorRestador_i|Add1~5\))))
-- \SumadorRestador_i|Add1~7\ = CARRY((\a~combout\(3) & (\b~combout\(3) & !\SumadorRestador_i|Add1~5\)) # (!\a~combout\(3) & ((\b~combout\(3)) # (!\SumadorRestador_i|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => VCC,
	cin => \SumadorRestador_i|Add1~5\,
	combout => \SumadorRestador_i|Add1~6_combout\,
	cout => \SumadorRestador_i|Add1~7\);

-- Location: LCCOMB_X25_Y8_N22
\Multiplexor_i|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~2_combout\ = (\SumadorRestador_i|Equal0~0_combout\ & ((\alu_op~combout\(3) & ((\SumadorRestador_i|Add1~6_combout\))) # (!\alu_op~combout\(3) & (\SumadorRestador_i|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \SumadorRestador_i|Equal0~0_combout\,
	datac => \SumadorRestador_i|Add0~6_combout\,
	datad => \SumadorRestador_i|Add1~6_combout\,
	combout => \Multiplexor_i|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y8_N24
\Multiplexor_i|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~9_combout\ = (\Multiplexor_i|Mux0~5_combout\ & (\alu_op~combout\(0) & (!\alu_op~combout\(3) & !\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux0~5_combout\,
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux0~9_combout\);

-- Location: LCCOMB_X25_Y8_N12
\Multiplexor_i|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~8_combout\ = (\Multiplexor_i|Mux0~2_combout\) # ((\Multiplexor_i|Mux0~9_combout\) # ((\Multiplexor_i|Mux0~7_combout\ & \alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux0~7_combout\,
	datab => \Multiplexor_i|Mux0~2_combout\,
	datac => \Multiplexor_i|Mux0~9_combout\,
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux0~8_combout\);

-- Location: LCCOMB_X26_Y8_N28
\Comparador_i|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Comparador_i|LessThan0~0_combout\ = \a~combout\(3) $ (\b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(3),
	datad => \b~combout\(3),
	combout => \Comparador_i|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y8_N26
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\b~combout\(1) & (\a~combout\(1) & (\a~combout\(2) $ (!\b~combout\(2))))) # (!\b~combout\(1) & (!\a~combout\(1) & (\a~combout\(2) $ (!\b~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \a~combout\(2),
	datad => \b~combout\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X26_Y8_N20
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Comparador_i|LessThan0~0_combout\ & (\Equal0~0_combout\ & (\a~combout\(0) $ (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \Comparador_i|LessThan0~0_combout\,
	datac => \b~combout\(0),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X25_Y8_N2
\ExtSigB|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ExtSigB|Equal0~0_combout\ = (!\alu_op~combout\(2) & (!\alu_op~combout\(0) & (!\alu_op~combout\(3) & \alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \alu_op~combout\(0),
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(1),
	combout => \ExtSigB|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y8_N14
\ExtSigA|salida[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ExtSigA|salida[4]~0_combout\ = (\a~combout\(3) & \ExtSigB|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datad => \ExtSigB|Equal0~0_combout\,
	combout => \ExtSigA|salida[4]~0_combout\);

-- Location: LCCOMB_X26_Y8_N22
\ExtSigB|salida[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ExtSigB|salida[4]~0_combout\ = (\b~combout\(3) & \ExtSigB|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(3),
	datad => \ExtSigB|Equal0~0_combout\,
	combout => \ExtSigB|salida[4]~0_combout\);

-- Location: LCCOMB_X26_Y8_N8
\SumadorRestador_i|sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|sig~0_combout\ = \ExtSigA|salida[4]~0_combout\ $ (\SumadorRestador_i|Add1~7\ $ (\ExtSigB|salida[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ExtSigA|salida[4]~0_combout\,
	datad => \ExtSigB|salida[4]~0_combout\,
	cin => \SumadorRestador_i|Add1~7\,
	combout => \SumadorRestador_i|sig~0_combout\);

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Multiplexor_i|Mux3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(0));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Multiplexor_i|Mux2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(1));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Multiplexor_i|Mux1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(2));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\alu_out[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Multiplexor_i|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(3));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\it~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SumadorRestador_i|sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_it);

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g_e~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SumadorRestador_i|ALT_INV_sig~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g_e);
END structure;


