library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity producer is
	generic (
        -- Parameters of Axi Master Bus Interface M00_AXIS
        C_M_AXIS_TDATA_WIDTH    : integer    := 32;
        C_M_START_COUNT         : integer    := 32
    );
    port(
        -- SIGNAL TO START PRODUCER
        start_PRODUCER          : in std_logic;
--        READ_ADDRESS_OUT_BRAM   : out std_logic_vector(11 downto 0);
        READ_ADDRESS_OUT_BRAM   : out std_logic_vector(6 downto 0);
        READING_SIGNAL_OUT      : out std_logic;
        dma_configurada         : in std_logic;   
        -- SIGNALS FROM BRAM
        DATA_TO_ALG             : in std_logic_vector(31 downto 0);          
        -- AXIS STREAM PORTS
        M_AXIS_ACLK             : in std_logic;
        -- Reset
        M_AXIS_ARESETN          : in std_logic;
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        M_AXIS_TVALID           : out std_logic;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA            : out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
        -- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
        M_AXIS_TSTRB            : out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
        -- TLAST indicates the boundary of a packet.
        M_AXIS_TLAST            : out std_logic;
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY           : in std_logic;
        -- DEBUG_OUT
        M_DEBUG_OUT             : out std_logic
    );
end producer;

architecture Behavioral of producer is

	-- Variables de fila, columna y contadores                       
    signal counter_32_PRODUCER        : std_logic_vector(0 downto 0) := (others => '0');
    signal row_PRODUCER               : std_logic_vector(2 downto 0) := (others => '0');
    signal column_PRODUCER            : std_logic_vector(3 downto 0) := (others => '0');
    
    type state_type_PRODUCER is (st_0_idlePRODUCER, st0_b_PRODUCER, st1_PRODUCER);
    
    -- State variable                 
    signal state_PRODUCER : state_type_PRODUCER := st_0_idlePRODUCER;             
    signal next_state_PRODUCER : state_type_PRODUCER;      
    
    -- Read address
    signal read_address_out  : std_logic_vector(6 downto 0) := (others => '0'); 
    signal current_reading   : std_logic := '0';
    
    -- Contador hasta 55
    signal cont55 :         std_logic_vector(5 downto 0) := (others => '0');
    
    -- Contador de ciclos de latencia 
    signal contadorALG :    std_logic_vector(15 downto 0) := (others => '0');
    
    -- Signal tlast
    signal tlast    :   std_logic := '0';
       

begin

    -- Assignments
	M_AXIS_TSTRB <= (others => '1');        -- Como está a HIGH significa que es un data byte, no un position byte
	M_AXIS_TDATA <=	DATA_TO_ALG;


    -- Maquina de estados PRODUCER - Salida tipo Moore
    -- A. Registro de estado de la máquina de estados PRODUCER
    SYNC_PROC_DATA_PRODUCER: process (M_AXIS_ACLK,M_AXIS_ARESETN)
    begin
        if(M_AXIS_ARESETN = '0') then
            state_PRODUCER <= st_0_idlePRODUCER;
        elsif (M_AXIS_ACLK'event and M_AXIS_ACLK = '1') then
            state_PRODUCER <= next_state_PRODUCER;
        end if;
    end process;
    
    -- B. Próximos estados de la máquina de estados PRODUCER        
    NEXT_STATE_DECODE_DATA_PRODUCER: process (state_PRODUCER,start_PRODUCER,dma_configurada,M_AXIS_TREADY,row_PRODUCER,column_PRODUCER,counter_32_PRODUCER,cont55,contadorALG)
    begin
      next_state_PRODUCER <= state_PRODUCER;
      case (state_PRODUCER) is
            when st_0_idlePRODUCER =>
                if(start_PRODUCER = '1' and dma_configurada = '1' and M_AXIS_TREADY = '1') then
                    next_state_PRODUCER <= st1_PRODUCER;
                end if;
            when st0_b_PRODUCER =>
                if(dma_configurada = '1' and M_AXIS_TREADY = '1') then
                    next_state_PRODUCER <= st1_PRODUCER;
                end if;
            when st1_PRODUCER =>
                if(cont55 = 0 and counter_32_PRODUCER = "0") then         -- Si queremos solo un tactel 
                    next_state_PRODUCER <= st_0_idlePRODUCER;
                elsif(counter_32_PRODUCER = "0") then
                    next_state_PRODUCER <= st0_b_PRODUCER;
                end if;                  
            when others =>
                next_state_PRODUCER <= st_0_idlePRODUCER;
      end case;      
    end process;
    
    -- C. Salidas de la máquina de estados PRODUCER          
    OUTPUT_DECODE_DATA_PRODUCER: process (state_PRODUCER)
    begin
      case (state_PRODUCER) is
            when st_0_idlePRODUCER =>
                current_reading <= '0';
            when st0_b_PRODUCER =>
                current_reading <= '1';
            when st1_PRODUCER =>
                current_reading <= '1';              
            when others =>
                current_reading <= '0';
      end case;
    end process;    
    
    -- Proceso para señal M_AXIS_TVALID
    process(M_AXIS_ACLK)
    begin
        if(M_AXIS_ACLK'event and M_AXIS_ACLK = '1') then
            if(state_PRODUCER = st_0_idlePRODUCER or state_PRODUCER = st0_b_PRODUCER) then
                M_AXIS_TVALID <= '0';
                M_DEBUG_OUT <= '0';
            elsif(state_PRODUCER = st1_PRODUCER) then
                M_AXIS_TVALID <= '1';
                M_DEBUG_OUT <= '1';
            end if;
        end if;    
    end process;
    
    
    
    -- Contador de 32 - PRODUCER - PROCESS
    process(M_AXIS_ACLK)
    begin
        if(M_AXIS_ACLK'event and M_AXIS_ACLK = '1') then
            if(state_PRODUCER = st_0_idlePRODUCER or state_PRODUCER = st0_b_PRODUCER) then
                counter_32_PRODUCER <= (others => '0');
            elsif(state_PRODUCER = st1_PRODUCER) then
                counter_32_PRODUCER <= counter_32_PRODUCER + 1;
            end if;
        end if;    
    end process;
    
    -- TLAST signal
    process(M_AXIS_ACLK)
    begin
        if(M_AXIS_ACLK'event and M_AXIS_ACLK = '1') then
            if(state_PRODUCER = st1_PRODUCER and cont55 = 0) then                       -- línea puesta a 09/12/2021 a las 12:21h
                tlast <= '1';
            else
                tlast <= '0';
            end if;
        end if;    
    end process;
    
    M_AXIS_TLAST <= tlast;
    
    
    -- ROW UPDATE
    process(M_AXIS_ACLK)
    begin
        if(M_AXIS_ACLK'event and M_AXIS_ACLK = '1') then
            if(row_PRODUCER = "100" and column_PRODUCER = "1010" and counter_32_PRODUCER = "0") then
                row_PRODUCER <= (others => '0');
            elsif(state_PRODUCER = st1_PRODUCER and counter_32_PRODUCER = "0" and column_PRODUCER = "1010") then
                row_PRODUCER <= row_PRODUCER + 1;
            end if;
        end if;
    end process;
    
    
    -- COLUMN UPDATE
    process(M_AXIS_ACLK)
    begin
        if(M_AXIS_ACLK'event and M_AXIS_ACLK = '1') then
            if(column_PRODUCER = "1010" and counter_32_PRODUCER = "0") then
                column_PRODUCER <= (others => '0');
            elsif(state_PRODUCER = st1_PRODUCER and counter_32_PRODUCER = "0") then
                column_PRODUCER <= column_PRODUCER + 1;
            end if;
        end if;
    end process;  
    
    -- PROCESO PARA CONTADOR HASTA 55        
    process (M_AXIS_ACLK)
    begin
        if(M_AXIS_ACLK'event and M_AXIS_ACLK='1') then
            if(state_PRODUCER = st_0_idlePRODUCER) then
                cont55 <= (others => '0');
            elsif(state_PRODUCER = st1_PRODUCER and counter_32_PRODUCER = "0") then
                cont55 <= cont55 + 1;
            end if;
        end if;
    end process;  
    
    -- PROCESO CONTADOR DE CICLOS PARA EL ALGORITMO
    process(M_AXIS_ACLK)
    begin
        if(rising_edge(M_AXIS_ACLK)) then
            if(tlast = '1') then
                contadorALG <= (others => '0'); 
            else
                contadorALG <= contadorALG + 1;
            end if;
        end if;
    end process;     
    
    
    -- Address to read memory BRAM
--    read_address_out <= "001" & "0100";       -- Tactel 16; fila 2, columna 5
--    read_address_out <= "010" & "0101";     -- Tactel elegido fila 3 columna 6
    read_address_out <= row_PRODUCER & column_PRODUCER;
    
    -- Asignacion direccion de lectura
    READ_ADDRESS_OUT_BRAM <= read_address_out;
    
    -- Asignacion de reading signal que me dice si aún estoy leyendo o no
    READING_SIGNAL_OUT <= current_reading;

end Behavioral;
