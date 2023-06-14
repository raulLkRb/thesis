----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2022 17:46:29
-- Design Name: 
-- Module Name: alg_rigidez - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity alg_rigidez_dedo is
    Port (
        -- Señal de reloj
        clk                                    : in std_logic;
        -- Reset externo asíncrono             
        reset_externo                          : in std_logic;
        -- Señales AXI_STREAM
        -- tlast                               : out std_logic;
        t_valid_out                            : out std_logic;
        t_ready_out                            : out std_logic;
        t_ready_slave                          : in std_logic;
        t_valid_in                             : in std_logic;
        -- Entradas
        --momento                                : in std_logic_vector(17 downto 0);
        momento                                : in std_logic_vector(31 downto 0);
        -- Salidas
        descriptor_out                         : out std_logic_vector(31 downto 0)
--        variable_test_mom                      : out std_logic_vector(1 downto 0)
 );
end alg_rigidez_dedo;

architecture Behavioral of alg_rigidez_dedo is

        -- Señales max_signal y end_signal (2 bits más significativos de "momento", que son 18 bits)
        signal max_signal                       : std_logic := '0';
        signal end_signal                       : std_logic := '0';
        signal histeresis1                      : std_logic := '0';
        signal histeresis2                      : std_logic := '0';

        -- Descriptores 
        signal int_area                         : std_logic_vector(36 downto 0) := "0000000000000000000000000000000000000"; -- Poner el valor de bits bueno (mirar Matlab) !!!
--        signal histeresis                       : std_logic_vector(31 downto 0) := "0000000000000000000000000000";
--        signal longitud                         : std_logic_vector(31 downto 0) := "0000000000000000000000000000";
        signal maximo                           : std_logic_vector(27 downto 0) := "0000000000000000000000000000";    
        
        -- Variables de estado 
        type state_type_RIG is (st1_rig, st2_rig, st3_rig);
        
        -- State variables
        signal state_RIG                : state_type_RIG := st1_rig;
        signal next_state_RIG           : state_type_RIG;
                
        -- Debug signal descriptor out
        signal int_descriptor_out             : std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
        
        -- Biestable de un ciclo para t_valid_in
        signal t_valid_ret                    : std_logic := '0';
        
        -- Señalse para que sala selñal síncrona de un pulso de duración para END_SIGNAL
        -- End_signal:
--        signal out_biestable1_end             : std_logic := '0';
--        signal out_biestable2_end             : std_logic := '0';
--        signal out_biestable2_neg_end         : std_logic := '0';
--        signal out_biestable3_end             : std_logic := '0';
--        signal out_puerta_and_end             : std_logic := '0';

begin

        -- Asignaciones de max_signal y end_signal
        histeresis2 <= momento(31);
        histeresis1 <= momento(30);
        max_signal <= momento(29);
        end_signal <= momento(28);        
        
--        -- PROCESO BIESTABLE 1
--        biestable1_process: process(clk)
--        begin
--            if(clk'event and clk='1') then
--                out_biestable1_end <= end_signal;
--            end if;
--        end process;
        
--         -- PROCESO BIESTABLE 2
--         biestable2_process: process(clk)
--         begin
--             if(clk'event and clk='1') then
--                 -- Sin negar
--                 out_biestable2_end <= out_biestable1_end;
--                 -- Negado
--                 out_biestable2_neg_end <= not(out_biestable1_end);
--             end if;
--         end process;
        
--        -- PUERTA AND
--         out_puerta_and_end <= out_biestable1_end and out_biestable2_neg_end;
         
--       -- PROCESO BIESTABLE 3
--       biestable3_process: process(clk)
--       begin
--           if(clk'event and clk='1') then
--               out_biestable3_end <= out_puerta_and_end;
--           end if;
--       end process;
         
         
        
        
        -- proceso para retrasar un ciclo de reloj t_valid_in
        t_val_ret_proc: process(clk)
        begin
            if(clk'event and clk = '1') then
                t_valid_ret <= t_valid_in;
            end if;        
        end process;

        -- PROCESOS ASOCIADOS A LA MAQUINA DE ESTADOS
        -- Proceso para maximo
        max_process: process(clk)
        begin 
            if(clk'event and clk = '1') then
                if(t_valid_ret = '1' and max_signal = '1' and state_RIG = st1_rig) then
                    maximo <= momento(27 downto 0);  
                end if;
            end if;
        end process;       
        
        -- Proceso para HISTERESIS 1 (DESPLAZAMIENTO)
--         Proceso para histeresis 1
--        histeresis_process: process(clk)
--        begin 
--            if(clk'event and clk = '1') then
--                if(t_valid_ret = '1' and histeresis1 = '1' and state_RIG = st1_rig) then
--                    histeresis <= momento(27 downto 0);   
--                end if;
--            end if;
--        end process;
        
        -- Proceso para HISTERESIS 2 (DESPLAZAMIENTO)
        -- Proceso para histeresis 2
--        longitud_process: process(clk)
--        begin 
--            if(clk'event and clk = '1') then
--                if(t_valid_ret = '1' and histeresis2 = '1' and state_RIG = st1_rig) then
--                    longitud <= momento(27 downto 0);   
--                end if;
--            end if;
--        end process; 
        
        -- Proceso para area
        area_process: process(clk)
        begin
            if(clk'event and clk = '1') then
                if(state_RIG = st3_rig) then
                    int_area <= (others => '0');
                elsif(t_valid_ret = '1' and state_RIG = st1_rig) then
--                    int_area <= int_area + momento(27 downto 16); 
                    int_area <= int_area + momento(27 downto 0);
                end if;
            end if;
        end process;
        
        -- MAQUINA DE ESTADOS RIGIDEZ - Salida tipo Moore
        -- A. Registro de estado de de la máquina de estados RIGIDEZ
        SYNC_PROC_DATA_RIG: process(clk,reset_externo)
        begin
            if(reset_externo = '0') then
                state_RIG <= st1_rig;
            elsif(clk'event and clk = '1') then
                state_RIG <= next_state_RIG;
            end if;
        end process;
        
        -- B. Próximos estados de la máquina de estados RIGIDEZ
        NEXT_STATE_DECODE_DATA_RIG: process(state_RIG,t_ready_slave,t_valid_ret,end_signal)
        begin
            next_state_RIG <= state_RIG;
            case(state_RIG) is             
                when st1_rig =>
                    if(t_valid_ret = '1' and end_signal = '1') then
                        next_state_RIG <= st2_rig;
                    end if;                              
                when st2_rig =>
                    if(t_ready_slave = '1') then
                        next_state_RIG <= st3_rig;   
                    end if;             
                when st3_rig =>
                    next_state_RIG <= st1_rig;     
                when others =>
                    next_state_RIG <= st1_rig;
            end case;
        end process;
        
--        area <= hist1 + hist2;
            
        -- C. Salidas de la máquina de estados RIGIDEZ          
        OUTPUT_DECODE_DATA_RIG: process(state_RIG)
        begin
          case (state_RIG) is
                when st1_rig =>
                    t_valid_out <= '0';
                    t_ready_out <= '1';
                when st2_rig =>
                    t_valid_out <= '0';
                    t_ready_out <= '0';
                when st3_rig =>
                    t_valid_out <= '1'; 
                    t_ready_out <= '0'; 
                when others =>
                    t_valid_out <= '0';
                    t_ready_out <= '0';
          end case;
        end process;            
 
        -- Proceso para descriptor
        descriptor_process: process(clk)
        begin
            if(clk'event and clk = '1') then
                if(state_RIG = st2_rig) then
--                    int_descriptor_out <= longitud & histeresis & maximo & int_area(7 downto 0);
--                    int_descriptor_out <= "00000000" & maximo(27 downto 16) & int_area(27 downto 16);
                    int_descriptor_out <= "00000000" & maximo(26 downto 15) & int_area(36 downto 25);
                end if;
            end if;
        end process;
        
        
        descriptor_out <= int_descriptor_out;
--        variable_test_mom <= momento(21 downto 20);        
        
end Behavioral;
