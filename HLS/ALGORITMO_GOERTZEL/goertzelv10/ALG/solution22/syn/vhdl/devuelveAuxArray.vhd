-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity devuelveAuxArray is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    aux_array_V_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    aux_array_V_full_n : IN STD_LOGIC;
    aux_array_V_write : OUT STD_LOGIC;
    bufIn_0_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    bufIn_0_V_empty_n : IN STD_LOGIC;
    bufIn_0_V_read : OUT STD_LOGIC );
end;


architecture behav of devuelveAuxArray is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv11_7FF : STD_LOGIC_VECTOR (10 downto 0) := "11111111111";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

    signal real_start : STD_LOGIC;
    signal real_start_status_reg : STD_LOGIC := '0';
    signal internal_ap_ready : STD_LOGIC;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal start_once_reg : STD_LOGIC := '0';
    signal start_control_reg : STD_LOGIC := '0';
    signal arrayAuxiliar_V_address0 : STD_LOGIC_VECTOR (10 downto 0);
    signal arrayAuxiliar_V_ce0 : STD_LOGIC;
    signal arrayAuxiliar_V_we0 : STD_LOGIC;
    signal arrayAuxiliar_V_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal arrayAuxiliar_V_address1 : STD_LOGIC_VECTOR (10 downto 0);
    signal arrayAuxiliar_V_ce1 : STD_LOGIC;
    signal arrayAuxiliar_V_we1 : STD_LOGIC;
    signal aux_array_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal exitcond_reg_147 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal bufIn_0_V_blk_n : STD_LOGIC;
    signal i_reg_113 : STD_LOGIC_VECTOR (10 downto 0);
    signal exitcond_fu_125_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal i_2_fu_131_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_2_reg_151 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal i_phi_fu_117_p4 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_2_cast_fu_137_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_cast2_fu_142_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state4 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00001001 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component devuelveAuxArray_bkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0);
        address1 : IN STD_LOGIC_VECTOR (10 downto 0);
        ce1 : IN STD_LOGIC;
        we1 : IN STD_LOGIC;
        d1 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    arrayAuxiliar_V_U : component devuelveAuxArray_bkb
    generic map (
        DataWidth => 32,
        AddressRange => 2048,
        AddressWidth => 11)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => arrayAuxiliar_V_address0,
        ce0 => arrayAuxiliar_V_ce0,
        we0 => arrayAuxiliar_V_we0,
        d0 => bufIn_0_V_dout,
        q0 => arrayAuxiliar_V_q0,
        address1 => arrayAuxiliar_V_address1,
        ce1 => arrayAuxiliar_V_ce1,
        we1 => arrayAuxiliar_V_we1,
        d1 => arrayAuxiliar_V_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_continue)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n))))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 xor ap_const_logic_1);
                elsif ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    real_start_status_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                real_start_status_reg <= ap_const_logic_0;
            else
                if ((start_full_n = ap_const_logic_1)) then 
                    real_start_status_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_0 = start_full_n) and (ap_const_logic_1 = internal_ap_ready))) then 
                    real_start_status_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_control_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_control_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = real_start) and ((ap_const_logic_1 = internal_ap_ready) or (ap_const_logic_0 = start_once_reg)))) then 
                    start_control_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_1 = start_control_reg)) then 
                    start_control_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = real_start)) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((ap_const_logic_0 = ap_start)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_113_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_reg_147 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
                i_reg_113 <= i_2_reg_151;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then 
                i_reg_113 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                exitcond_reg_147 <= exitcond_fu_125_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then
                i_2_reg_151 <= i_2_fu_131_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, aux_array_V_full_n, bufIn_0_V_empty_n, ap_CS_fsm_state4, exitcond_fu_125_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_flag00011011)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_fu_125_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_fu_125_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n))))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_flag00001001_assign_proc : process(aux_array_V_full_n, ap_enable_reg_pp0_iter1, exitcond_reg_147)
    begin
                ap_block_pp0_stage0_flag00001001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_reg_147 = ap_const_lv1_0) and (ap_const_logic_0 = aux_array_V_full_n));
    end process;


    ap_block_pp0_stage0_flag00011001_assign_proc : process(aux_array_V_full_n, ap_enable_reg_pp0_iter1, exitcond_reg_147)
    begin
                ap_block_pp0_stage0_flag00011001 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_reg_147 = ap_const_lv1_0) and (ap_const_logic_0 = aux_array_V_full_n));
    end process;


    ap_block_pp0_stage0_flag00011011_assign_proc : process(aux_array_V_full_n, ap_enable_reg_pp0_iter1, exitcond_reg_147)
    begin
                ap_block_pp0_stage0_flag00011011 <= ((ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_reg_147 = ap_const_lv1_0) and (ap_const_logic_0 = aux_array_V_full_n));
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = real_start) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter1_assign_proc : process(aux_array_V_full_n, exitcond_reg_147)
    begin
                ap_block_state3_pp0_stage0_iter1 <= ((exitcond_reg_147 = ap_const_lv1_0) and (ap_const_logic_0 = aux_array_V_full_n));
    end process;


    ap_block_state4_assign_proc : process(aux_array_V_full_n, bufIn_0_V_empty_n)
    begin
                ap_block_state4 <= ((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_fu_125_p2)
    begin
        if ((exitcond_fu_125_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, aux_array_V_full_n, bufIn_0_V_empty_n, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = real_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;

    arrayAuxiliar_V_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00000000, ap_CS_fsm_state4, ap_enable_reg_pp0_iter0, i_2_cast_fu_137_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            arrayAuxiliar_V_address0 <= ap_const_lv11_7FF;
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0))) then 
            arrayAuxiliar_V_address0 <= i_2_cast_fu_137_p1(11 - 1 downto 0);
        else 
            arrayAuxiliar_V_address0 <= "XXXXXXXXXXX";
        end if; 
    end process;

    arrayAuxiliar_V_address1 <= i_cast2_fu_142_p1(11 - 1 downto 0);

    arrayAuxiliar_V_ce0_assign_proc : process(aux_array_V_full_n, bufIn_0_V_empty_n, ap_CS_fsm_pp0_stage0, ap_CS_fsm_state4, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter0)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n)))))) then 
            arrayAuxiliar_V_ce0 <= ap_const_logic_1;
        else 
            arrayAuxiliar_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    arrayAuxiliar_V_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            arrayAuxiliar_V_ce1 <= ap_const_logic_1;
        else 
            arrayAuxiliar_V_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    arrayAuxiliar_V_we0_assign_proc : process(aux_array_V_full_n, bufIn_0_V_empty_n, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n))))) then 
            arrayAuxiliar_V_we0 <= ap_const_logic_1;
        else 
            arrayAuxiliar_V_we0 <= ap_const_logic_0;
        end if; 
    end process;


    arrayAuxiliar_V_we1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_147, ap_block_pp0_stage0_flag00011001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_reg_147 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then 
            arrayAuxiliar_V_we1 <= ap_const_logic_1;
        else 
            arrayAuxiliar_V_we1 <= ap_const_logic_0;
        end if; 
    end process;


    aux_array_V_blk_n_assign_proc : process(aux_array_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, exitcond_reg_147, ap_CS_fsm_state4)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (exitcond_reg_147 = ap_const_lv1_0)) or (ap_const_logic_1 = ap_CS_fsm_state4))) then 
            aux_array_V_blk_n <= aux_array_V_full_n;
        else 
            aux_array_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    aux_array_V_din_assign_proc : process(aux_array_V_full_n, bufIn_0_V_dout, bufIn_0_V_empty_n, arrayAuxiliar_V_q0, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_147, ap_CS_fsm_state4, ap_block_pp0_stage0_flag00001001)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n))))) then 
            aux_array_V_din <= bufIn_0_V_dout;
        elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_reg_147 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00001001 = ap_const_boolean_0))) then 
            aux_array_V_din <= arrayAuxiliar_V_q0;
        else 
            aux_array_V_din <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    aux_array_V_write_assign_proc : process(aux_array_V_full_n, bufIn_0_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, exitcond_reg_147, ap_CS_fsm_state4, ap_block_pp0_stage0_flag00011001)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (exitcond_reg_147 = ap_const_lv1_0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0)) or ((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n)))))) then 
            aux_array_V_write <= ap_const_logic_1;
        else 
            aux_array_V_write <= ap_const_logic_0;
        end if; 
    end process;


    bufIn_0_V_blk_n_assign_proc : process(bufIn_0_V_empty_n, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            bufIn_0_V_blk_n <= bufIn_0_V_empty_n;
        else 
            bufIn_0_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    bufIn_0_V_read_assign_proc : process(aux_array_V_full_n, bufIn_0_V_empty_n, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n))))) then 
            bufIn_0_V_read <= ap_const_logic_1;
        else 
            bufIn_0_V_read <= ap_const_logic_0;
        end if; 
    end process;

    exitcond_fu_125_p2 <= "1" when (i_phi_fu_117_p4 = ap_const_lv11_7FF) else "0";
    i_2_cast_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_2_fu_131_p2),32));
    i_2_fu_131_p2 <= std_logic_vector(unsigned(i_phi_fu_117_p4) + unsigned(ap_const_lv11_1));
    i_cast2_fu_142_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_113),32));

    i_phi_fu_117_p4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000, exitcond_reg_147, i_reg_113, i_2_reg_151)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0) and (exitcond_reg_147 = ap_const_lv1_0))) then 
            i_phi_fu_117_p4 <= i_2_reg_151;
        else 
            i_phi_fu_117_p4 <= i_reg_113;
        end if; 
    end process;


    internal_ap_ready_assign_proc : process(aux_array_V_full_n, bufIn_0_V_empty_n, ap_CS_fsm_state4)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) and not(((ap_const_logic_0 = aux_array_V_full_n) or (ap_const_logic_0 = bufIn_0_V_empty_n))))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, real_start_status_reg)
    begin
        if ((ap_const_logic_1 = real_start_status_reg)) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;
    start_write <= (ap_start and start_control_reg);
end behav;