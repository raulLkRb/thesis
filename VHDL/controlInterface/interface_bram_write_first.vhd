
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;


library UNISIM;
use UNISIM.VComponents.all;

entity interface_bram_write_first is
  Generic( 
           W: NATURAL := 32
         );
  Port (
           clk: in std_logic;
           enable: in std_logic;
           wr_en: in std_logic;
           w_data: in std_logic_vector(W-1 downto 0);
--           w_addr: in std_logic_vector(11 downto 0);
           w_addr: in std_logic_vector(6 downto 0);
           r_data: out std_logic_vector(W-1 downto 0)
         );
end interface_bram_write_first;

architecture Behavioral of interface_bram_write_first is

    type ram_type is array(127 downto 0) of std_logic_vector(W-1 downto 0); -- Es de 127 a 0 porque el bus de direcciones tiene 7 bits, por tanto necesitas sí o sí 128 posiciones (aunque no se usen todas)
    signal ram_name: ram_type;
    
begin

    -- Se sintetiza en un BRAM porque el puerto de lectura es síncrono
    process     -- BRAM single port
    begin
        wait until rising_edge(clk);
        if enable = '1' then
            if wr_en='1' then   -- write port sincrono y habilitado
                ram_name(to_integer(unsigned(w_addr))) <= w_data;
                r_data <= w_data;    -- WRITE_FRIST MODE
            else
                -- read port sincrono
                r_data <= ram_name(to_integer(unsigned(w_addr)));
            end if;
        end if;
    end process;
    
    
end Behavioral;
