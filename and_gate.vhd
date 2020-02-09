
library ieee;
use ieee.std_logic_1164.all;


entity and_gate is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         o_f : out std_logic);
end and_gate;

architecture behavior of and_gate is
  begin
    o_f <= i_a and i_b;
end behavior;




