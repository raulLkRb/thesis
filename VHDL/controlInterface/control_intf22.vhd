library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity control_interface is
	generic (
		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 32;
		C_M00_AXIS_START_COUNT	: integer	:= 32
	);
	port (
	-- SIGNALS - DATA_RECEIVER
        -- Signals from FIR
        in_t_valid_FIR          : in std_logic;      
        in_data_FIR             : in std_logic_vector(31 downto 0);    
        -- Signals from CONTROL_TWO_SIDES    
        in_addr_fil_col         : in std_logic_vector(6 downto 0);
        -- Signals from ZYNQ
        M_AXIS_ACLK             : in std_logic;
        reset	                : in std_logic;
                
    -- SIGNALS - PRODUCER
        -- Signal from ZYNQ
        dma_configurada         : in std_logic;             
        -- AXIS STREAM PORTS
        -- Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted. 
        M_AXIS_TVALID           : out std_logic;
        -- TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
        M_AXIS_TDATA            : out std_logic_vector(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
        -- TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
        M_AXIS_TSTRB            : out std_logic_vector((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
        -- TLAST indicates the boundary of a packet.
        M_AXIS_TLAST            : out std_logic;
        -- TREADY indicates that the slave can accept a transfer in the current cycle.
        M_AXIS_TREADY           : in std_logic;
        -- SIGNALs FOR DEBUGGING
        TVALID_DEBUG_OUT        : out std_logic;
        TVALID_RECEIVER         : out std_logic;
        START_PRODUCER          : out std_logic;
        TREADY_FROM_SREG        : out std_logic
	);
end control_interface;

-- ARCHITECTURE SECTION
architecture arch_imp of control_interface is
    
    -- SIGNALS DECLARATION
    signal int_reading_signal      : std_logic := '0';                              -- puesto std_logic := '0', a 09/12/2021 a las 13:22h
    signal BRAM_WRITE_ADDRESS      : std_logic_vector(6 downto 0);
    signal BRAM_READ_ADDRESS       : std_logic_vector(6 downto 0);
    signal WRITE_ENABLE            : std_logic := '0';
    signal reading_signal_en       : std_logic := '0';
    signal start_read_bram_signal  : std_logic := '0';
    signal enable_memoria          : std_logic := '0';
    signal data_to_alg             : std_logic_vector(31 downto 0);
    signal data_to_bram            : std_logic_vector(31 downto 0);
    signal direccion               : std_logic_vector(6 downto 0);
    

	-- COMPONENTS DECLARATION
	-- Data_receiver declaration
	component DATA_RECEIVER is
	generic (
        -- Parameters of Axi Master Bus Interface M00_AXIS
        TDATA_WIDTH         : integer    := 32;
        ADDRESS_WIDTH       : integer    := 32
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
	end component DATA_RECEIVER;	
	
	-- Producer declaration
    COMPONENT PRODUCER IS
	generic (
        -- Parameters of Axi Master Bus Interface M00_AXIS
        C_M_AXIS_TDATA_WIDTH    : integer    := 32;
        C_M_START_COUNT         : integer    := 32
    );
    port(
        -- SIGNAL TO START PRODUCER
        start_PRODUCER          : in std_logic;
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
    END COMPONENT PRODUCER;
    
    COMPONENT INTERFACE_BRAM_WRITE_FIRST IS
        GENERIC(
            W: NATURAL := 32
        );
        PORT(
            clk: in std_logic;
            enable: in std_logic;
            wr_en: in std_logic;
            w_data: in std_logic_vector(W-1 downto 0);
            w_addr: in std_logic_vector(6 downto 0);
            r_data: out std_logic_vector(W-1 downto 0)
        );
    END COMPONENT INTERFACE_BRAM_WRITE_FIRST;
	

begin


-- ASSIGNMENTS
   enable_memoria <= WRITE_ENABLE or int_reading_signal;
   direccion <= BRAM_WRITE_ADDRESS when WRITE_ENABLE = '1' else BRAM_READ_ADDRESS;
   
   TVALID_RECEIVER <= WRITE_ENABLE;
   START_PRODUCER <=  start_read_bram_signal;
   TREADY_FROM_SREG <= M_AXIS_TREADY;
   
   
-- Instantiation of data_receiver module
    receiver_data_inst : DATA_RECEIVER
	generic map (
        TDATA_WIDTH         => C_M00_AXIS_TDATA_WIDTH,
        ADDRESS_WIDTH       => C_M00_AXIS_START_COUNT
    )
    port map (
        in_t_valid_FIR      => in_t_valid_FIR,
        in_data_FIR         => in_data_FIR,  
        in_addr_fil_col     => in_addr_fil_col,
        out_address_BRAM    => BRAM_WRITE_ADDRESS,  
        start_read_bram_stm => start_read_bram_signal,   
        reading_signal      => int_reading_signal,  
        ACLK                => M_AXIS_ACLK,  
        RESET_N             => reset,  
        TVALID              => WRITE_ENABLE,  
        BRAM_DATA_OUT       => data_to_bram  
    );
    
    
-- Instantiation of producer module
    producer_inst : PRODUCER
	generic map (
        C_M_AXIS_TDATA_WIDTH    => C_M00_AXIS_TDATA_WIDTH,
        C_M_START_COUNT         => C_M00_AXIS_START_COUNT
    )
    port map (
        start_PRODUCER          => start_read_bram_signal,
        READ_ADDRESS_OUT_BRAM   => BRAM_READ_ADDRESS,
        READING_SIGNAL_OUT      => int_reading_signal,
        dma_configurada         => dma_configurada,
        DATA_TO_ALG             => data_to_alg,  
        M_AXIS_ACLK             => M_AXIS_ACLK,
        M_AXIS_ARESETN          => reset,
        M_AXIS_TVALID           => M_AXIS_TVALID,
        M_AXIS_TDATA            => M_AXIS_TDATA,
        M_AXIS_TSTRB            => M_AXIS_TSTRB, 
        M_AXIS_TLAST            => M_AXIS_TLAST, 
        M_AXIS_TREADY           => M_AXIS_TREADY,
        M_DEBUG_OUT             => TVALID_DEBUG_OUT
    );
      
    
-- Instantation of Interface BRAM WRITE FIRST VHDL Block
    interface_bram_write_first_inst : INTERFACE_BRAM_WRITE_FIRST
        generic map (
            W => 32
        )
        port map (
            clk     => M_AXIS_ACLK,
            enable  => enable_memoria,
            wr_en   => WRITE_ENABLE,
            w_data  => data_to_bram,
            w_addr  => direccion,
            r_data  => data_to_alg
        );
          
           

end arch_imp;
