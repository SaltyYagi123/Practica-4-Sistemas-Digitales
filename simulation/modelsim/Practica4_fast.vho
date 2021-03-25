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

-- DATE "03/25/2021 22:08:15"

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
-- alu_out[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[1]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[2]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_out[3]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- z	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- it	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g_e	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- alu_op[2]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[0]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- alu_op[3]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \SumadorRestador_i|salida_s[3]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SumadorRestador_i|Add0~9_combout\ : std_logic;
SIGNAL \Desplazador_i|ShiftRight1~0_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~0_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~0_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~0_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~1_combout\ : std_logic;
SIGNAL \SumadorRestador_i|process_0~0_combout\ : std_logic;
SIGNAL \SumadorRestador_i|salida_s[3]~0_combout\ : std_logic;
SIGNAL \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~2_cout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~3_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~0_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux3~2_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~1_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~2_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~5_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~4\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~6_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux2~3_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~1_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux1~2_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~0_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~11_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~8_combout\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~7\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~10\ : std_logic;
SIGNAL \SumadorRestador_i|Add0~12_combout\ : std_logic;
SIGNAL \Multiplexor_i|Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \SumadorRestador_i|sig~3_combout\ : std_logic;
SIGNAL \SumadorRestador_i|sig~4_combout\ : std_logic;
SIGNAL \SumadorRestador_i|sig~1_combout\ : std_logic;
SIGNAL \SumadorRestador_i|sig~2_combout\ : std_logic;
SIGNAL \SumadorRestador_i|sig~5_combout\ : std_logic;
SIGNAL \SumadorRestador_i|sig~0_combout\ : std_logic;
SIGNAL \SumadorRestador_i|sig~combout\ : std_logic;
SIGNAL \SumadorRestador_i|salida_s\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SumadorRestador_i|resultado\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \shamt~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SumadorRestador_i|ALT_INV_sig~combout\ : std_logic;

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

\SumadorRestador_i|salida_s[3]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SumadorRestador_i|salida_s[3]~0_combout\);
\SumadorRestador_i|ALT_INV_sig~combout\ <= NOT \SumadorRestador_i|sig~combout\;

-- Location: LCCOMB_X31_Y1_N6
\SumadorRestador_i|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~9_combout\ = (\a~combout\(2) & ((\SumadorRestador_i|Add0~8_combout\ & (\SumadorRestador_i|Add0~7\ & VCC)) # (!\SumadorRestador_i|Add0~8_combout\ & (!\SumadorRestador_i|Add0~7\)))) # (!\a~combout\(2) & 
-- ((\SumadorRestador_i|Add0~8_combout\ & (!\SumadorRestador_i|Add0~7\)) # (!\SumadorRestador_i|Add0~8_combout\ & ((\SumadorRestador_i|Add0~7\) # (GND)))))
-- \SumadorRestador_i|Add0~10\ = CARRY((\a~combout\(2) & (!\SumadorRestador_i|Add0~8_combout\ & !\SumadorRestador_i|Add0~7\)) # (!\a~combout\(2) & ((!\SumadorRestador_i|Add0~7\) # (!\SumadorRestador_i|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \SumadorRestador_i|Add0~8_combout\,
	datad => VCC,
	cin => \SumadorRestador_i|Add0~7\,
	combout => \SumadorRestador_i|Add0~9_combout\,
	cout => \SumadorRestador_i|Add0~10\);

-- Location: LCCOMB_X33_Y1_N16
\Desplazador_i|ShiftRight1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Desplazador_i|ShiftRight1~0_combout\ = (\shamt~combout\(0) & (\a~combout\(3))) # (!\shamt~combout\(0) & ((\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datac => \a~combout\(2),
	datad => \shamt~combout\(0),
	combout => \Desplazador_i|ShiftRight1~0_combout\);

-- Location: LCCOMB_X30_Y1_N20
\SumadorRestador_i|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~0_combout\ = \SumadorRestador_i|process_0~0_combout\ $ (\b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SumadorRestador_i|process_0~0_combout\,
	datad => \b~combout\(0),
	combout => \SumadorRestador_i|Add0~0_combout\);

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X32_Y1_N28
\Multiplexor_i|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~0_combout\ = (!\shamt~combout\(1) & ((\shamt~combout\(0) & ((\a~combout\(1)))) # (!\shamt~combout\(0) & (\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \a~combout\(1),
	datac => \shamt~combout\(0),
	datad => \shamt~combout\(1),
	combout => \Multiplexor_i|Mux3~0_combout\);

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y1_N12
\Multiplexor_i|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~0_combout\ = (\alu_op~combout\(0) & (!\alu_op~combout\(3) & (\alu_op~combout\(2) & !\alu_op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(0),
	datab => \alu_op~combout\(3),
	datac => \alu_op~combout\(2),
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y1_N10
\Multiplexor_i|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~1_combout\ = (\Multiplexor_i|Mux2~0_combout\ & ((\Multiplexor_i|Mux3~0_combout\) # ((\Desplazador_i|ShiftRight1~0_combout\ & \shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Desplazador_i|ShiftRight1~0_combout\,
	datab => \Multiplexor_i|Mux3~0_combout\,
	datac => \Multiplexor_i|Mux2~0_combout\,
	datad => \shamt~combout\(1),
	combout => \Multiplexor_i|Mux3~1_combout\);

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y1_N26
\SumadorRestador_i|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|process_0~0_combout\ = (!\alu_op~combout\(2) & ((\alu_op~combout\(3) & (!\alu_op~combout\(0) & !\alu_op~combout\(1))) # (!\alu_op~combout\(3) & (\alu_op~combout\(0) & \alu_op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(1),
	combout => \SumadorRestador_i|process_0~0_combout\);

-- Location: LCCOMB_X30_Y1_N14
\SumadorRestador_i|salida_s[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|salida_s[3]~0_combout\ = (\SumadorRestador_i|process_0~0_combout\) # ((\Multiplexor_i|Mux1~0_combout\ & (!\alu_op~combout\(2) & !\alu_op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux1~0_combout\,
	datab => \alu_op~combout\(2),
	datac => \alu_op~combout\(0),
	datad => \SumadorRestador_i|process_0~0_combout\,
	combout => \SumadorRestador_i|salida_s[3]~0_combout\);

-- Location: CLKCTRL_G12
\SumadorRestador_i|salida_s[3]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SumadorRestador_i|salida_s[3]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\);

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X31_Y1_N0
\SumadorRestador_i|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~2_cout\ = CARRY(\SumadorRestador_i|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SumadorRestador_i|process_0~0_combout\,
	datad => VCC,
	cout => \SumadorRestador_i|Add0~2_cout\);

-- Location: LCCOMB_X31_Y1_N2
\SumadorRestador_i|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~3_combout\ = (\SumadorRestador_i|Add0~0_combout\ & ((\a~combout\(0) & (\SumadorRestador_i|Add0~2_cout\ & VCC)) # (!\a~combout\(0) & (!\SumadorRestador_i|Add0~2_cout\)))) # (!\SumadorRestador_i|Add0~0_combout\ & ((\a~combout\(0) & 
-- (!\SumadorRestador_i|Add0~2_cout\)) # (!\a~combout\(0) & ((\SumadorRestador_i|Add0~2_cout\) # (GND)))))
-- \SumadorRestador_i|Add0~4\ = CARRY((\SumadorRestador_i|Add0~0_combout\ & (!\a~combout\(0) & !\SumadorRestador_i|Add0~2_cout\)) # (!\SumadorRestador_i|Add0~0_combout\ & ((!\SumadorRestador_i|Add0~2_cout\) # (!\a~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|Add0~0_combout\,
	datab => \a~combout\(0),
	datad => VCC,
	cin => \SumadorRestador_i|Add0~2_cout\,
	combout => \SumadorRestador_i|Add0~3_combout\,
	cout => \SumadorRestador_i|Add0~4\);

-- Location: LCCOMB_X31_Y1_N10
\SumadorRestador_i|resultado[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|resultado\(0) = (GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & ((\SumadorRestador_i|Add0~3_combout\))) # (!GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & (\SumadorRestador_i|resultado\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|resultado\(0),
	datac => \SumadorRestador_i|Add0~3_combout\,
	datad => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\,
	combout => \SumadorRestador_i|resultado\(0));

-- Location: LCCOMB_X31_Y1_N12
\SumadorRestador_i|salida_s[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|salida_s\(0) = (GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & ((\SumadorRestador_i|resultado\(0)))) # (!GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & (\SumadorRestador_i|salida_s\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|salida_s\(0),
	datac => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\,
	datad => \SumadorRestador_i|resultado\(0),
	combout => \SumadorRestador_i|salida_s\(0));

-- Location: LCCOMB_X30_Y1_N16
\Multiplexor_i|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~0_combout\ = (!\alu_op~combout\(3) & !\alu_op~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_op~combout\(3),
	datad => \alu_op~combout\(1),
	combout => \Multiplexor_i|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y1_N16
\Multiplexor_i|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux3~2_combout\ = (\Multiplexor_i|Mux3~1_combout\) # ((\SumadorRestador_i|salida_s\(0) & (\Multiplexor_i|Mux1~0_combout\ & !\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux3~1_combout\,
	datab => \SumadorRestador_i|salida_s\(0),
	datac => \Multiplexor_i|Mux1~0_combout\,
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux3~2_combout\);

-- Location: LCCOMB_X32_Y1_N22
\Multiplexor_i|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~1_combout\ = (\shamt~combout\(0) & ((\a~combout\(2)) # ((\shamt~combout\(1))))) # (!\shamt~combout\(0) & (((\a~combout\(1) & !\shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \a~combout\(1),
	datac => \shamt~combout\(0),
	datad => \shamt~combout\(1),
	combout => \Multiplexor_i|Mux2~1_combout\);

-- Location: LCCOMB_X32_Y1_N0
\Multiplexor_i|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~2_combout\ = (\Multiplexor_i|Mux2~0_combout\ & ((\Multiplexor_i|Mux2~1_combout\ & ((!\shamt~combout\(1)))) # (!\Multiplexor_i|Mux2~1_combout\ & (\a~combout\(3) & \shamt~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \Multiplexor_i|Mux2~1_combout\,
	datac => \Multiplexor_i|Mux2~0_combout\,
	datad => \shamt~combout\(1),
	combout => \Multiplexor_i|Mux2~2_combout\);

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y1_N0
\SumadorRestador_i|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~5_combout\ = \b~combout\(1) $ (\SumadorRestador_i|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(1),
	datac => \SumadorRestador_i|process_0~0_combout\,
	combout => \SumadorRestador_i|Add0~5_combout\);

-- Location: LCCOMB_X31_Y1_N4
\SumadorRestador_i|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~6_combout\ = ((\a~combout\(1) $ (\SumadorRestador_i|Add0~5_combout\ $ (!\SumadorRestador_i|Add0~4\)))) # (GND)
-- \SumadorRestador_i|Add0~7\ = CARRY((\a~combout\(1) & ((\SumadorRestador_i|Add0~5_combout\) # (!\SumadorRestador_i|Add0~4\))) # (!\a~combout\(1) & (\SumadorRestador_i|Add0~5_combout\ & !\SumadorRestador_i|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \SumadorRestador_i|Add0~5_combout\,
	datad => VCC,
	cin => \SumadorRestador_i|Add0~4\,
	combout => \SumadorRestador_i|Add0~6_combout\,
	cout => \SumadorRestador_i|Add0~7\);

-- Location: LCCOMB_X31_Y1_N28
\SumadorRestador_i|resultado[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|resultado\(1) = (GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & ((\SumadorRestador_i|Add0~6_combout\))) # (!GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & (\SumadorRestador_i|resultado\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SumadorRestador_i|resultado\(1),
	datac => \SumadorRestador_i|Add0~6_combout\,
	datad => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\,
	combout => \SumadorRestador_i|resultado\(1));

-- Location: LCCOMB_X31_Y1_N22
\SumadorRestador_i|salida_s[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|salida_s\(1) = (GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & ((\SumadorRestador_i|resultado\(1)))) # (!GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & (\SumadorRestador_i|salida_s\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SumadorRestador_i|salida_s\(1),
	datac => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\,
	datad => \SumadorRestador_i|resultado\(1),
	combout => \SumadorRestador_i|salida_s\(1));

-- Location: LCCOMB_X32_Y1_N18
\Multiplexor_i|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux2~3_combout\ = (\Multiplexor_i|Mux2~2_combout\) # ((!\alu_op~combout\(2) & (\Multiplexor_i|Mux1~0_combout\ & \SumadorRestador_i|salida_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(2),
	datab => \Multiplexor_i|Mux2~2_combout\,
	datac => \Multiplexor_i|Mux1~0_combout\,
	datad => \SumadorRestador_i|salida_s\(1),
	combout => \Multiplexor_i|Mux2~3_combout\);

-- Location: LCCOMB_X31_Y1_N18
\SumadorRestador_i|resultado[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|resultado\(2) = (GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & (\SumadorRestador_i|Add0~9_combout\)) # (!GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & ((\SumadorRestador_i|resultado\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|Add0~9_combout\,
	datab => \SumadorRestador_i|resultado\(2),
	datad => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\,
	combout => \SumadorRestador_i|resultado\(2));

-- Location: LCCOMB_X31_Y1_N20
\SumadorRestador_i|salida_s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|salida_s\(2) = (GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & ((\SumadorRestador_i|resultado\(2)))) # (!GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & (\SumadorRestador_i|salida_s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|salida_s\(2),
	datac => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\,
	datad => \SumadorRestador_i|resultado\(2),
	combout => \SumadorRestador_i|salida_s\(2));

-- Location: LCCOMB_X32_Y1_N4
\Multiplexor_i|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~1_combout\ = (\Desplazador_i|ShiftRight1~0_combout\ & (!\shamt~combout\(1) & (\alu_op~combout\(0) & \alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Desplazador_i|ShiftRight1~0_combout\,
	datab => \shamt~combout\(1),
	datac => \alu_op~combout\(0),
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux1~1_combout\);

-- Location: LCCOMB_X32_Y1_N6
\Multiplexor_i|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux1~2_combout\ = (\Multiplexor_i|Mux1~0_combout\ & ((\Multiplexor_i|Mux1~1_combout\) # ((\SumadorRestador_i|salida_s\(2) & !\alu_op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|salida_s\(2),
	datab => \Multiplexor_i|Mux1~1_combout\,
	datac => \Multiplexor_i|Mux1~0_combout\,
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux1~2_combout\);

-- Location: LCCOMB_X32_Y1_N12
\Multiplexor_i|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~0_combout\ = (\a~combout\(3) & (!\shamt~combout\(0) & (\Multiplexor_i|Mux2~0_combout\ & !\shamt~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \shamt~combout\(0),
	datac => \Multiplexor_i|Mux2~0_combout\,
	datad => \shamt~combout\(1),
	combout => \Multiplexor_i|Mux0~0_combout\);

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y1_N18
\SumadorRestador_i|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~11_combout\ = \SumadorRestador_i|process_0~0_combout\ $ (\b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|process_0~0_combout\,
	datad => \b~combout\(3),
	combout => \SumadorRestador_i|Add0~11_combout\);

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y1_N24
\SumadorRestador_i|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~8_combout\ = \SumadorRestador_i|process_0~0_combout\ $ (\b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SumadorRestador_i|process_0~0_combout\,
	datac => \b~combout\(2),
	combout => \SumadorRestador_i|Add0~8_combout\);

-- Location: LCCOMB_X31_Y1_N8
\SumadorRestador_i|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|Add0~12_combout\ = \a~combout\(3) $ (\SumadorRestador_i|Add0~11_combout\ $ (!\SumadorRestador_i|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \SumadorRestador_i|Add0~11_combout\,
	cin => \SumadorRestador_i|Add0~10\,
	combout => \SumadorRestador_i|Add0~12_combout\);

-- Location: LCCOMB_X31_Y1_N16
\SumadorRestador_i|resultado[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|resultado\(3) = (GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & (\SumadorRestador_i|Add0~12_combout\)) # (!GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & ((\SumadorRestador_i|resultado\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SumadorRestador_i|Add0~12_combout\,
	datac => \SumadorRestador_i|resultado\(3),
	datad => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\,
	combout => \SumadorRestador_i|resultado\(3));

-- Location: LCCOMB_X31_Y1_N30
\SumadorRestador_i|salida_s[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|salida_s\(3) = (GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & ((\SumadorRestador_i|resultado\(3)))) # (!GLOBAL(\SumadorRestador_i|salida_s[3]~0clkctrl_outclk\) & (\SumadorRestador_i|salida_s\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SumadorRestador_i|salida_s\(3),
	datac => \SumadorRestador_i|resultado\(3),
	datad => \SumadorRestador_i|salida_s[3]~0clkctrl_outclk\,
	combout => \SumadorRestador_i|salida_s\(3));

-- Location: LCCOMB_X32_Y1_N2
\Multiplexor_i|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Multiplexor_i|Mux0~1_combout\ = (\Multiplexor_i|Mux0~0_combout\) # ((\SumadorRestador_i|salida_s\(3) & (\Multiplexor_i|Mux1~0_combout\ & !\alu_op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplexor_i|Mux0~0_combout\,
	datab => \SumadorRestador_i|salida_s\(3),
	datac => \Multiplexor_i|Mux1~0_combout\,
	datad => \alu_op~combout\(2),
	combout => \Multiplexor_i|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y1_N10
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\b~combout\(0) & (\a~combout\(0) & (\b~combout\(1) $ (!\a~combout\(1))))) # (!\b~combout\(0) & (!\a~combout\(0) & (\b~combout\(1) $ (!\a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \Equal0~1_combout\);

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X30_Y1_N6
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\a~combout\(2) & (\b~combout\(2) & (\b~combout\(3) $ (!\a~combout\(3))))) # (!\a~combout\(2) & (!\b~combout\(2) & (\b~combout\(3) $ (!\a~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(3),
	datac => \b~combout\(2),
	datad => \a~combout\(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y1_N16
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~1_combout\ & \Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X30_Y1_N28
\SumadorRestador_i|sig~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|sig~3_combout\ = (\b~combout\(3) & (((!\a~combout\(2) & \b~combout\(2))) # (!\a~combout\(3)))) # (!\b~combout\(3) & (!\a~combout\(2) & (\b~combout\(2) & !\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \b~combout\(3),
	datac => \b~combout\(2),
	datad => \a~combout\(3),
	combout => \SumadorRestador_i|sig~3_combout\);

-- Location: LCCOMB_X30_Y1_N8
\SumadorRestador_i|sig~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|sig~4_combout\ = (\alu_op~combout\(1) & ((\alu_op~combout\(0)) # (\SumadorRestador_i|sig~3_combout\))) # (!\alu_op~combout\(1) & (!\alu_op~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_op~combout\(1),
	datac => \alu_op~combout\(0),
	datad => \SumadorRestador_i|sig~3_combout\,
	combout => \SumadorRestador_i|sig~4_combout\);

-- Location: LCCOMB_X30_Y1_N22
\SumadorRestador_i|sig~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|sig~1_combout\ = (\b~combout\(1) & (((\b~combout\(0) & !\a~combout\(0))) # (!\a~combout\(1)))) # (!\b~combout\(1) & (\b~combout\(0) & (!\a~combout\(0) & !\a~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \b~combout\(1),
	datad => \a~combout\(1),
	combout => \SumadorRestador_i|sig~1_combout\);

-- Location: LCCOMB_X30_Y1_N2
\SumadorRestador_i|sig~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|sig~2_combout\ = (\SumadorRestador_i|sig~1_combout\ & (!\alu_op~combout\(0) & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SumadorRestador_i|sig~1_combout\,
	datac => \alu_op~combout\(0),
	datad => \Equal0~0_combout\,
	combout => \SumadorRestador_i|sig~2_combout\);

-- Location: LCCOMB_X30_Y1_N30
\SumadorRestador_i|sig~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|sig~5_combout\ = (!\alu_op~combout\(3) & (!\alu_op~combout\(2) & ((\SumadorRestador_i|sig~4_combout\) # (\SumadorRestador_i|sig~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_op~combout\(3),
	datab => \alu_op~combout\(2),
	datac => \SumadorRestador_i|sig~4_combout\,
	datad => \SumadorRestador_i|sig~2_combout\,
	combout => \SumadorRestador_i|sig~5_combout\);

-- Location: LCCOMB_X31_Y1_N26
\SumadorRestador_i|sig~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|sig~0_combout\ = (\SumadorRestador_i|resultado\(3)) # (!\SumadorRestador_i|salida_s[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SumadorRestador_i|resultado\(3),
	datad => \SumadorRestador_i|salida_s[3]~0_combout\,
	combout => \SumadorRestador_i|sig~0_combout\);

-- Location: LCCOMB_X31_Y1_N24
\SumadorRestador_i|sig\ : cycloneii_lcell_comb
-- Equation(s):
-- \SumadorRestador_i|sig~combout\ = (\SumadorRestador_i|sig~5_combout\ & ((\SumadorRestador_i|sig~0_combout\))) # (!\SumadorRestador_i|sig~5_combout\ & (\SumadorRestador_i|sig~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SumadorRestador_i|sig~combout\,
	datac => \SumadorRestador_i|sig~5_combout\,
	datad => \SumadorRestador_i|sig~0_combout\,
	combout => \SumadorRestador_i|sig~combout\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Multiplexor_i|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(0));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Multiplexor_i|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(1));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Multiplexor_i|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(2));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Multiplexor_i|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_alu_out(3));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z);

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SumadorRestador_i|sig~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_it);

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SumadorRestador_i|ALT_INV_sig~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g_e);
END structure;


