-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity Loop_L1_proc_coeff_rom is 
    generic(
             dwidth     : integer := 32; 
             awidth     : integer := 5; 
             mem_size    : integer := 24
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of Loop_L1_proc_coeff_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111011101101110111101100000000", 
    1 => "00111011110111010001001100000101", 
    2 => "00111100100110101011000111110110", 
    3 => "00111100101000010111100101010010", 
    4 => "00111101111111111111100010010100", 
    5 => "00111110100001000000111101000100", 
    6 => "00111110110111111101111111101000", 
    7 => "00111111010110100001101000011010", 
    8 => "00111110011110110111010011111111", 
    9 => "00111110011000100101110111001010", 
    10 => "00111111001100001000110000010110", 
    11 => "00111111000111011001000010111100", 
    12 => "10111101011001010111110100000101", 
    13 => "00111011110101101101001110001110", 
    14 => "10111110001011111011100110100111", 
    15 => "00111101011110111001001000000110", 
    16 => "00111101000001001110100010100010", 
    17 => "00111100001100100010001101010111", 
    18 => "00111110001010100111101001011011", 
    19 => "00111101101011110111110110111010", 
    20 => "00111110001010001111001001011111", 
    21 => "10111110100111110011110111011001", 
    22 => "00111111010101101111100000010101", 
    23 => "10111110101110111110011000101000" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity Loop_L1_proc_coeff is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 24;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of Loop_L1_proc_coeff is
    component Loop_L1_proc_coeff_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    Loop_L1_proc_coeff_rom_U :  component Loop_L1_proc_coeff_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

