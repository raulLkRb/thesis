-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Loop_L1_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    X_OUT_0_address0 : OUT STD_LOGIC_VECTOR (1 downto 0);
    X_OUT_0_ce0 : OUT STD_LOGIC;
    X_OUT_0_we0 : OUT STD_LOGIC;
    X_OUT_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_MAT_0_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    X_MAT_0_ce0 : OUT STD_LOGIC;
    X_MAT_0_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of Loop_L1_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (12 downto 0) := "0000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (12 downto 0) := "0000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (12 downto 0) := "0000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (12 downto 0) := "0000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (12 downto 0) := "0000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (12 downto 0) := "0000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (12 downto 0) := "0001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (12 downto 0) := "0010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (12 downto 0) := "0100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (12 downto 0) := "1000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (12 downto 0) := "0000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal coeff_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal coeff_ce0 : STD_LOGIC;
    signal coeff_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ia_0_i_cast_fu_125_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ia_0_i_cast_reg_183 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_2_cast_fu_137_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_2_cast_reg_188 : STD_LOGIC_VECTOR (5 downto 0);
    signal ia_fu_147_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ia_reg_196 : STD_LOGIC_VECTOR (1 downto 0);
    signal ib_0_i_cast_fu_153_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ib_0_i_cast_reg_201 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ib_fu_177_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ib_reg_214 : STD_LOGIC_VECTOR (3 downto 0);
    signal coeff_load_reg_219 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal grp_fu_120_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_reg_234 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal grp_fu_115_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ia_0_i_reg_80 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond_i_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal sum_0_i_reg_91 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond2_i_fu_141_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ib_0_i_reg_104 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_3_cast_fu_166_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_fu_129_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal ib_0_i_cast_cast_fu_157_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_3_fu_161_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (12 downto 0);

    component wrapped_mmult_hw_eOg IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component wrapped_mmult_hw_fYi IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component Loop_L1_proc_coeff IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    coeff_U : component Loop_L1_proc_coeff
    generic map (
        DataWidth => 32,
        AddressRange => 24,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => coeff_address0,
        ce0 => coeff_ce0,
        q0 => coeff_q0);

    wrapped_mmult_hw_eOg_U14 : component wrapped_mmult_hw_eOg
    generic map (
        ID => 1,
        NUM_STAGE => 5,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => sum_0_i_reg_91,
        din1 => tmp_8_reg_234,
        ce => ap_const_logic_1,
        dout => grp_fu_115_p2);

    wrapped_mmult_hw_fYi_U15 : component wrapped_mmult_hw_fYi
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => coeff_load_reg_219,
        din1 => X_MAT_0_q0,
        ce => ap_const_logic_1,
        dout => grp_fu_120_p2);





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
                elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond2_i_fu_141_p2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ia_0_i_reg_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then 
                ia_0_i_reg_80 <= ap_const_lv2_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_i_fu_171_p2 = ap_const_lv1_1))) then 
                ia_0_i_reg_80 <= ia_reg_196;
            end if; 
        end if;
    end process;

    ib_0_i_reg_104_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                ib_0_i_reg_104 <= ib_reg_214;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_i_fu_141_p2 = ap_const_lv1_0))) then 
                ib_0_i_reg_104 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    sum_0_i_reg_91_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                sum_0_i_reg_91 <= grp_fu_115_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond2_i_fu_141_p2 = ap_const_lv1_0))) then 
                sum_0_i_reg_91 <= ap_const_lv32_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                coeff_load_reg_219 <= coeff_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                    ia_0_i_cast_reg_183(1 downto 0) <= ia_0_i_cast_fu_125_p1(1 downto 0);
                ia_reg_196 <= ia_fu_147_p2;
                    tmp_2_cast_reg_188(4 downto 3) <= tmp_2_cast_fu_137_p1(4 downto 3);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                    ib_0_i_cast_reg_201(3 downto 0) <= ib_0_i_cast_fu_153_p1(3 downto 0);
                ib_reg_214 <= ib_fu_177_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                tmp_8_reg_234 <= grp_fu_120_p2;
            end if;
        end if;
    end process;
    ia_0_i_cast_reg_183(31 downto 2) <= "000000000000000000000000000000";
    tmp_2_cast_reg_188(2 downto 0) <= "000";
    tmp_2_cast_reg_188(5) <= '0';
    ib_0_i_cast_reg_201(31 downto 4) <= "0000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, exitcond_i_fu_171_p2, exitcond2_i_fu_141_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and not(((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1))))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond2_i_fu_141_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_i_fu_171_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXX";
        end case;
    end process;
    X_MAT_0_address0 <= ib_0_i_cast_reg_201(3 - 1 downto 0);

    X_MAT_0_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            X_MAT_0_ce0 <= ap_const_logic_1;
        else 
            X_MAT_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    X_OUT_0_address0 <= ia_0_i_cast_reg_183(2 - 1 downto 0);

    X_OUT_0_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            X_OUT_0_ce0 <= ap_const_logic_1;
        else 
            X_OUT_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    X_OUT_0_d0 <= sum_0_i_reg_91;

    X_OUT_0_we0_assign_proc : process(ap_CS_fsm_state3, exitcond_i_fu_171_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_i_fu_171_p2 = ap_const_lv1_1))) then 
            X_OUT_0_we0 <= ap_const_logic_1;
        else 
            X_OUT_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_const_logic_0 = ap_start) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, exitcond2_i_fu_141_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond2_i_fu_141_p2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, exitcond2_i_fu_141_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond2_i_fu_141_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    coeff_address0 <= tmp_3_cast_fu_166_p1(5 - 1 downto 0);

    coeff_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            coeff_ce0 <= ap_const_logic_1;
        else 
            coeff_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond2_i_fu_141_p2 <= "1" when (ia_0_i_reg_80 = ap_const_lv2_3) else "0";
    exitcond_i_fu_171_p2 <= "1" when (ib_0_i_reg_104 = ap_const_lv4_8) else "0";
    ia_0_i_cast_fu_125_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ia_0_i_reg_80),32));
    ia_fu_147_p2 <= std_logic_vector(unsigned(ia_0_i_reg_80) + unsigned(ap_const_lv2_1));
    ib_0_i_cast_cast_fu_157_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ib_0_i_reg_104),6));
    ib_0_i_cast_fu_153_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ib_0_i_reg_104),32));
    ib_fu_177_p2 <= std_logic_vector(unsigned(ib_0_i_reg_104) + unsigned(ap_const_lv4_1));
    tmp_2_cast_fu_137_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_fu_129_p3),6));
    tmp_3_cast_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_3_fu_161_p2),32));
    tmp_3_fu_161_p2 <= std_logic_vector(unsigned(tmp_2_cast_reg_188) + unsigned(ib_0_i_cast_cast_fu_157_p1));
    tmp_fu_129_p3 <= (ia_0_i_reg_80 & ap_const_lv3_0);
end behav;