library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
library LIB_AES;
use lib_aes.state_definition_package.all;


entity MUX is 
port (
  I0 : in bit128; 
  I1 : in bit128; 
  S  : in std_logic; 
  O : out bit128); 
end entity MUX; 

architecture MUX_arch of MUX is 

   begin 
    seq0: process(S,I0,I1)
    begin 
      if S ='1' then 
        O <= I1; 
      else 
        O <= I0; 
      end if; 
    end process seq0;
end architecture  MUX_arch; 

  