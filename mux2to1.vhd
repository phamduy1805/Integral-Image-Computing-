library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
	port (
	Sel: in std_logic;
	I0: in std_logic_vector (23 downto 0);
	I1: in std_logic_vector (23 downto 0);
	O: out std_logic_vector (23 downto 0)
	);
end mux2to1;

architecture behav of mux2to1 is 
begin					 
	process (Sel, I0, I1)
	begin
		case Sel is
			when '0' =>
			O <= I0;
			when '1' =>
			O <= I1;
			when others => null;
		end case;
	end process;
end behav;

