library ieee;                                -- line 1
use ieee.std_logic_1164.all;                 -- line 2
                                             -- line 3
entity find_errors is port (                 -- line 4
    a: in bit_vector(3 downto 0);      -- line 5
    b: out std_logic_vector(3 downto 0);     -- line 6
    c: in bit_vector(5 downto 0));     -- line 7
end find_errors;                             -- line 8
                                             -- line 9
architecture not_good of find_errors is      -- line 10
  begin                                      -- line 11
  my_label: process(a,c)                         -- line 12
    begin                                    -- line 13
    if c = "111111" then  		     -- line 14 Hint: select 111111 for c value
      b <= To_StdLogicVector(a);             -- line 15
    else                                     -- line 16
     b <= "0101";                            -- line 17
    end if;                                  -- line 18
  end process;                               -- line 19
end not_good;                                -- line 20
