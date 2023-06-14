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

entity tvalid_rigidez is
    Port (
        -- Señal de reloj
        clk                                    : in std_logic;
        -- Reset externo asíncrono             
        reset_externo                          : in std_logic;
        -- Señales AXI_STREAM
        -- Entradas
        t_valid_dedo                           : in std_logic;
        t_valid_palma                          : in std_logic;
        -- Salidas
        t_valid_out                            : out std_logic
 );
end tvalid_rigidez;

architecture Behavioral of tvalid_rigidez is

        -- Variables de estado 
        type state_type_RIG is (st1_rig, st2_rig, st3_rig);
        
        -- State variables
        signal state_RIG                : state_type_RIG := st1_rig;
        signal next_state_RIG           : state_type_RIG;
         
begin
        
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
        NEXT_STATE_DECODE_DATA_RIG: process(state_RIG,t_valid_dedo,t_valid_palma)
        begin
            next_state_RIG <= state_RIG;
            case(state_RIG) is
                when st1_RIG =>
                    if(t_valid_dedo = '0' and t_valid_palma = '1') then
                        next_state_RIG <= st2_RIG;
                    elsif(t_valid_dedo = '1' and t_valid_palma = '0') then
                        next_state_RIG <= st3_RIG;
                    end if;                
                when st2_RIG =>
                    if(t_valid_dedo = '1') then
                        next_state_RIG <= st1_RIG;
                    end if;                
                when st3_RIG =>
                    if(t_valid_palma = '1') then
                        next_state_RIG <= st1_RIG;
                end if;              
                when others =>
                    next_state_RIG <= st1_RIG;
            end case;
        end process;
            
        -- C. Salidas de la máquina de estados RIGIDEZ          
        OUTPUT_DECODE_DATA_RIG: process(state_RIG,t_valid_dedo,t_valid_palma)
        begin
          case (state_RIG) is
                when st1_RIG =>
                    if(t_valid_dedo = '1' and t_valid_palma = '1') then
                        t_valid_out <= '1';
                    elsif(t_valid_dedo = '0' and t_valid_palma = '0') then
                        t_valid_out <= '0';
                    else
                        t_valid_out <= '0';
                    end if;
                when st2_RIG =>
                    if(t_valid_dedo = '0') then
                        t_valid_out <= '0';
                    else
                        t_valid_out <= '1';
                    end if;
                when st3_RIG =>
                    if(t_valid_palma = '0') then
                        t_valid_out <= '0';
                    else
                        t_valid_out <= '1';
                    end if;
                when others =>
                    -- tlast <= '0';
                    t_valid_out <= '0';
          end case;
        end process;    


end Behavioral;
