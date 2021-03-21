--Esto es un multiplexor 10 a 1 para bits de 32  

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Multiplexor IS
  PORT (
    e0, e1, e2, e3, e4, e5, e6, e7, e8, e9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END Multiplexor;

ARCHITECTURE behavioral OF Multiplexor IS

BEGIN
  WITH sel SELECT
    s <= e0 WHEN "0000",
    e1 WHEN "0001",
    e2 WHEN "0010",
    e3 WHEN "0011",
    e4 WHEN "0100",
    e5 WHEN "0101",
    e6 WHEN "0110",
    e7 WHEN "0111",
    e8 WHEN "1000",
    e9 WHEN "1001",
    STD_LOGIC_VECTOR(to_unsigned(0, 32)) WHEN OTHERS;

END behavioral; -- behavioral