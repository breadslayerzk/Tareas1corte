library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity tabla is
    port (A ,B ,C ,D,E : in std_logic ;
	 ABCDEFG: out std_logic_vector (7 downto 0));
end entity;

Architecture arquitectura of tabla is
     signal ABCDE : std_logic_vector (4 downto 0);
begin
    ABCDE<= A & B & C & D & E;
	 with (ABCDE) select 
	
	 ABCDEFG<= "00000000" when "00000",          
	           "00000001" when "00001",
				  "00000010" when "00010",
				  "00000011" when "00011",
				  "00000100" when "00100",
				  "00000101" when "00101",
				  "00000110" when "00110",
				  "00000111" when "00111",
				  "00001000" when "01000",
				  "00001001" when "01001",
				  "00010000" when	"01010",
				  "00010001" when	"01011",
				  "00010010" when	"01100",
				  "00010011" when	"01101",
				  "00010100" when	"01110",
				  "00010101" when	"01111",
				  "00010110" when	"10000",
				  "00010111" when	"10001",
				  "00011000" when	"10010",
				  "00011001" when	"10011",
				  "00100000" when	"10100",
				  "00100001" when "10101",
				  "00100010" when "10110",
				  "00100011" when	"10111",
				  "00100100" when	"11000",
				  "00100101" when	"11001",
				  "00100110" when	"11010",
				  "00100111" when	"11011",
				  "00101000" when	"11100",
				  "00101001" when	"11101",
				  "00110000" when	"11110",
				  "00110001" when	"11111";
				  
end architecture;