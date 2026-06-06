library ieee;
use ieee.std_logic_1164.all;

library work;
use work.types_pkg.all;
use work.adaptations_pkg.all;
use work.string_methods_pkg.all;

entity tb_uvvm_hello is
end entity;

architecture sim of tb_uvvm_hello is
signal done : boolean := false;
begin

    process
    begin
        report "Hello UVVM!";
        wait for 100 ns;
        done <= true;       -- to see the waveform in the gtkwave
    end process;

end architecture;