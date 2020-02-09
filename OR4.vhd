
library ieee;
use ieee.std_logic_1164.all;


entity OR4 is
  port ( i_a : in  std_logic;
         i_b : in  std_logic;
         i_c : in  std_logic;
         i_d : in  std_logic;
         o_f : out std_logic);
end OR4;

--------------------------------
-- Equation Model
--------------------------------

architecture equation of OR4 is
  begin
    o_f <= (i_a or i_b or i_c or i_d);
end architecture equation;


--------------------------------
-- Behavior Model
--------------------------------
architecture behavior of OR4 is
  begin
    -- o_f <= '0' when (i_a = '0' and 
                     -- i_b = '0' and 
                     -- i_c = '0' and 
                     -- i_d = '0')
               -- else
           -- '1';
           
    o_f <= '1' when i_a = '1' else 
           '1' when i_b = '1' else 
           '1' when i_c = '1' else 
           '1' when i_d = '1' else 
           '0';
end architecture behavior;
sa//sd/d/


-- --------------------------------
-- -- Component Model
-- --------------------------------
-- architecture cmpnt of OR4 is
  -- component AND2 is
    -- port ( i_a : in  std_logic;
           -- i_b : in  std_logic;
           -- o_f : out std_logic);
  -- end component AND2;
    
  -- component NOT1 is
    -- port ( i_a : in  std_logic;
           -- o_f : out std_logic);
  -- end component NOT1;
    
  -- -- temp outs for AND2s
  -- signal f_1_o : std_logic; 
  -- signal f_2_o : std_logic; 
  -- signal f_3_o : std_logic; 
    
  -- begin
    -- AND2_1 : AND2 port map (i_a,   i_b,   f_1_o);
    -- AND2_2 : AND2 port map (i_c,   i_d,   f_2_o);
    -- AND2_3 : AND2 port map (f_1_o, f_2_o, f_3_o);
    -- NOT1_1 : NOT1 port map (f_3_o, o_f);
-- end architecture cmpnt;
    
    








