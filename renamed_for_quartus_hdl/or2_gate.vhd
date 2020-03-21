
library ieee;
use ieee.std_logic_1164.all;


entity or2_gate_gate is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         o_f : out std_logic);
end or2_gate_gate;

architecture equation of or2_gate_gate is
  begin
    o_f <= i_a or i_b;
end equation;




