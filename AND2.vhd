
library ieee;
use ieee.std_logic_1164.all;


entity AND2 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         o_f : out std_logic);
end AND2;

architecture behavior of AND2 is
  begin
    o_f <= i_a and i_b;
end behavior;




