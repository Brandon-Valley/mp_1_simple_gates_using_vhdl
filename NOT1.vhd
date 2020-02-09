
library ieee;
use ieee.std_logic_1164.all;


entity NOT1 is
  port ( i_a : in  std_logic;
         o_f : out std_logic);
end NOT1;

architecture eqn of NOT1 is
  begin
    o_f <= not i_a;
end eqn;




