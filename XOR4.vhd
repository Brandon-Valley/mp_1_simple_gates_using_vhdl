
library ieee;
use ieee.std_logic_1164.all;


entity XOR4 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         i_c : in  std_logic;
         i_d : in  std_logic;
         o_f : out std_logic);
end XOR4;


--------------------------------
-- Equation Model
--------------------------------

architecture equation of XOR4 is
  begin
    o_f <= (i_a xor i_b) xor ( i_c xor i_d);
end architecture equation;


--------------------------------
-- Behavior Model
--------------------------------
architecture behavior of XOR4 is
  begin
    o_f <= '1' when (i_a = '0' and i_b = '0' and i_c = '0' and i_d = '1') else
           '1' when (i_a = '0' and i_b = '0' and i_c = '1' and i_d = '0') else
           '1' when (i_a = '0' and i_b = '1' and i_c = '0' and i_d = '0') else
           '1' when (i_a = '1' and i_b = '0' and i_c = '0' and i_d = '0') else
           '1' when (i_a = '0' and i_b = '1' and i_c = '1' and i_d = '1') else
           '1' when (i_a = '1' and i_b = '0' and i_c = '1' and i_d = '1') else
           '1' when (i_a = '1' and i_b = '1' and i_c = '0' and i_d = '1') else
           '1' when (i_a = '1' and i_b = '1' and i_c = '1' and i_d = '0') else
           '0';
end architecture behavior;


--------------------------------
-- Component Model
--------------------------------
architecture cmpnt of XOR4 is
  component XOR2 is
    port ( i_a : in  std_logic;
           i_b : in  std_logic;
           o_f : out std_logic);
  end component XOR2;
    
  -- temp outs for AND2s
  signal f_1_o : std_logic; 
  signal f_2_o : std_logic; 
    
  begin
    XOR2_1 : XOR2 port map (i_a,   i_b,   f_1_o);
    XOR2_2 : XOR2 port map (i_c,   i_d,   f_2_o);
    XOR2_3 : XOR2 port map (f_1_o, f_2_o, o_f);
end architecture cmpnt;
    
    








