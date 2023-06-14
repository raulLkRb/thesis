library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity data_receiver is
	generic (
        -- Parameters of Axi Master Bus Interface M00_AXIS
        TDATA_WIDTH     : integer    := 32;
        ADDRESS_WIDTH   : integer    := 32
    );
    port(
        -- Signals from FIR
        in_t_valid_FIR      : in std_logic;      
        in_data_FIR         : in std_logic_vector(31 downto 0);
        -- Signal from CONTROLADOR_TWO_SIDES
        in_addr_fil_col     : in std_logic_vector(6 downto 0);
        -- Signals to
        out_address_BRAM    : out std_logic_vector(6 downto 0);
        start_read_bram_stm : out std_logic;
        -- Signals from PRODUCER
        reading_signal      : in std_logic;
		-- Global ports
        ACLK                : in std_logic;
        RESET_N             : in std_logic;
        TVALID              : out std_logic;
        BRAM_DATA_OUT       : out std_logic_vector(TDATA_WIDTH-1 downto 0)
    );
end data_receiver;

architecture Behavioral of data_receiver is

	type state_type_DATA_RECEIVER is (st1_DATA_RECEIVER, st1b_DATA_RECEIVER, st2_DATA_RECEIVER, st3_DATA_RECEIVER);
	signal state_DATA_RECEIVER, next_state_DATA_RECEIVER : state_type_DATA_RECEIVER;	
	signal counter_32_DATA_RECEIVER        : std_logic_vector(0 downto 0) := (others => '0');	
	signal fila_aux                        : std_logic_vector(2 downto 0) := in_addr_fil_col(6 downto 4);
	signal columna_aux                     : std_logic_vector(3 downto 0) := in_addr_fil_col(3 downto 0);
	signal t_valid_DATA_RECEIVER           : std_logic;	
	signal dato_afuera                     : std_logic_vector(31 downto 0);
	
begin

    -- Asignaciones
    TVALID <= t_valid_DATA_RECEIVER; 
    BRAM_DATA_OUT <= dato_afuera;
    out_address_BRAM <= fila_aux & columna_aux;
    
    -- Maquina de estados DATA_RECEIVER - Salida tipo Moore
    -- A. Registro de estado de la máquina de estados DATA_RECEIVER
    SYNC_PROC_DATA_RECEIVER: process (ACLK,RESET_N)
    begin
        if(RESET_N = '0') then
            state_DATA_RECEIVER <= st2_DATA_RECEIVER;
        elsif (ACLK'event and ACLK = '1') then        
            state_DATA_RECEIVER <= next_state_DATA_RECEIVER;
        end if;
    end process;
    
    -- B. Próximos estados de la máquina de estados DATA_RECEIVER        
    NEXT_STATE_DECODE_DATA_RECEIVER: process (state_DATA_RECEIVER,reading_signal,counter_32_DATA_RECEIVER,fila_aux,columna_aux)
    begin
      next_state_DATA_RECEIVER <= state_DATA_RECEIVER;
      case (state_DATA_RECEIVER) is
            when st1_DATA_RECEIVER =>
                if(reading_signal = '0') then   
                    next_state_DATA_RECEIVER <= st2_DATA_RECEIVER;
                end if;
            when st1b_DATA_RECEIVER =>
                if(fila_aux = "000" and columna_aux = "0000") then
                    next_state_DATA_RECEIVER <= st2_DATA_RECEIVER;
                end if;
            when st2_DATA_RECEIVER =>
                if(fila_aux = "100" and columna_aux = "1010") then
                    if(counter_32_DATA_RECEIVER = "0") then
                        next_state_DATA_RECEIVER <= st1_DATA_RECEIVER;
                    else
                        next_state_DATA_RECEIVER <= st3_DATA_RECEIVER;
                    end if;
                end if;
            when st3_DATA_RECEIVER =>
                next_state_DATA_RECEIVER <= st1b_DATA_RECEIVER;
            when others =>
                next_state_DATA_RECEIVER <= st1_DATA_RECEIVER;
      end case;      
    end process;
    
    -- C. Salidas de la máquina de estados DATA_RECEIVER          
    OUTPUT_DECODE_DATA_RECEIVER: process (state_DATA_RECEIVER)
    begin
      case (state_DATA_RECEIVER) is
            when st1_DATA_RECEIVER =>
                start_read_bram_stm <= '1'; 
            when st1b_DATA_RECEIVER =>
                start_read_bram_stm <= '0';
            when st2_DATA_RECEIVER =>
                start_read_bram_stm <= '0'; 
            when st3_DATA_RECEIVER => 
                start_read_bram_stm <= '0';               
            when others =>
                start_read_bram_stm <= '1'; 
      end case;
    end process;
    
    -- Registro de un ciclo de reloj para el enable y wren
    process(ACLK)
    begin
        if(ACLK'event and ACLK = '1') then
            t_valid_DATA_RECEIVER <= in_t_valid_FIR;            
        end if;
    end process;
    
    -----------------------------------------------------
    -- Registro para contador de 32                           
    -----------------------------------------------------    
    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then
            if(state_DATA_RECEIVER = st1_DATA_RECEIVER) then
                counter_32_DATA_RECEIVER <= (others => '0');
            elsif(state_DATA_RECEIVER = st3_DATA_RECEIVER) then
                counter_32_DATA_RECEIVER <= counter_32_DATA_RECEIVER + 1;
            end if;
        end if;
    end process;

    process (ACLK)
    begin
        if (ACLK'event and ACLK = '1') then                
            if(state_DATA_RECEIVER = st1_DATA_RECEIVER) then
                fila_aux <= (others => '0');
                columna_aux <= (others => '0');
            elsif(in_t_valid_FIR = '1' and (state_DATA_RECEIVER = st2_DATA_RECEIVER or state_DATA_RECEIVER = st1b_DATA_RECEIVER)) then
                fila_aux <= in_addr_fil_col(6 downto 4);
                columna_aux <= in_addr_fil_col(3 downto 0);
                dato_afuera <= in_data_FIR;
            end if;
        end if;
    end process;    
    
    


end Behavioral;
