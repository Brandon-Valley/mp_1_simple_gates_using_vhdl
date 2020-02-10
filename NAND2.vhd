
library ieee;
use ieee.std_logic_1164.all;


entity NAND2 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         o_f : out std_logic);
end NAND2;

architecture equation of NAND2 is
  begin
    o_f <= i_a nand i_b;
end equation;




