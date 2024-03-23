library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity restador is
port (a : in std_logic_vector (3 downto 0);
		b : in std_logic_vector (3 downto 0);
		c : in std_logic;
		f : out std_logic_vector(3 downto 0);
		g :out std_logic );
end restador;
architecture arquitectura of restador is
signal cable: std_logic;
begin
resta: process (a,b)
	begin
	if a=b then
		f <= "0000";
		g <= '1';
	elsif a<b then
		f<= b-a;
		g<= '0';
	elsif a>b then
		f<= a-b;
		g<= '1';
	end if;
end process;
end arquitectura;

		