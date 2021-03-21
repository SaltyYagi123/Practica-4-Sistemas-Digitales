library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Comparador is
  port (
    a,b: in std_logic_vector(31 downto 0);
    s:out std_logic(31 downto 0)
  ) ;
end Comparador;

architecture behavioral of Comparador is

begin

    s <= (others => '0') when unsigned(a)> unsigned(b) else (others => '1');

end behavioral ; -- behavioral