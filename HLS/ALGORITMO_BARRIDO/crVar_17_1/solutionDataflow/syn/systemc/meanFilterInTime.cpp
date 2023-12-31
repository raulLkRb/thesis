// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "meanFilterInTime.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic meanFilterInTime::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic meanFilterInTime::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state1 = "1";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state2 = "10";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state3 = "100";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state4 = "1000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state5 = "10000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state6 = "100000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state7 = "1000000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state8 = "10000000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state9 = "100000000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state10 = "1000000000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state11 = "10000000000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state12 = "100000000000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state13 = "1000000000000";
const sc_lv<14> meanFilterInTime::ap_ST_fsm_state14 = "10000000000000";
const sc_lv<32> meanFilterInTime::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> meanFilterInTime::ap_const_lv32_1 = "1";
const sc_lv<32> meanFilterInTime::ap_const_lv32_2 = "10";
const sc_lv<32> meanFilterInTime::ap_const_lv32_3 = "11";
const sc_lv<32> meanFilterInTime::ap_const_lv32_4 = "100";
const sc_lv<32> meanFilterInTime::ap_const_lv32_5 = "101";
const sc_lv<32> meanFilterInTime::ap_const_lv32_6 = "110";
const sc_lv<32> meanFilterInTime::ap_const_lv32_7 = "111";
const sc_lv<32> meanFilterInTime::ap_const_lv32_8 = "1000";
const sc_lv<1> meanFilterInTime::ap_const_lv1_1 = "1";
const sc_lv<3> meanFilterInTime::ap_const_lv3_1 = "1";
const sc_lv<3> meanFilterInTime::ap_const_lv3_7 = "111";
const sc_lv<3> meanFilterInTime::ap_const_lv3_2 = "10";
const sc_lv<3> meanFilterInTime::ap_const_lv3_3 = "11";
const sc_lv<3> meanFilterInTime::ap_const_lv3_4 = "100";
const sc_lv<3> meanFilterInTime::ap_const_lv3_5 = "101";
const sc_lv<3> meanFilterInTime::ap_const_lv3_6 = "110";
const sc_lv<3> meanFilterInTime::ap_const_lv3_0 = "000";
const sc_lv<32> meanFilterInTime::ap_const_lv32_9 = "1001";
const sc_lv<32> meanFilterInTime::ap_const_lv32_A = "1010";
const sc_lv<32> meanFilterInTime::ap_const_lv32_B = "1011";
const sc_lv<32> meanFilterInTime::ap_const_lv32_C = "1100";
const sc_lv<32> meanFilterInTime::ap_const_lv32_D = "1101";
const sc_lv<32> meanFilterInTime::ap_const_lv32_20 = "100000";
const bool meanFilterInTime::ap_const_boolean_1 = true;

meanFilterInTime::meanFilterInTime(sc_module_name name) : sc_module(name), mVcdFile(0) {
    aux_array_V_U = new meanFilterInTime_bkb("aux_array_V_U");
    aux_array_V_U->clk(ap_clk);
    aux_array_V_U->reset(ap_rst);
    aux_array_V_U->address0(aux_array_V_address0);
    aux_array_V_U->ce0(aux_array_V_ce0);
    aux_array_V_U->q0(aux_array_V_q0);
    aux_array_V_U->address1(aux_array_V_address1);
    aux_array_V_U->ce1(aux_array_V_ce1);
    aux_array_V_U->we1(aux_array_V_we1);
    aux_array_V_U->d1(aux_array_V_d1);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state12);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state13);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state14);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_ce );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_ce );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_ap_return);
    sensitive << ( ap_ce );
    sensitive << ( y_0_V_write_assign_reg_205 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_aux_array_V_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_aux_array_V_address1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( ap_CS_fsm_state13 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_aux_array_V_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_ce );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_aux_array_V_ce1);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_ce );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( ap_CS_fsm_state13 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_aux_array_V_d1);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( x_V_read_reg_157 );
    sensitive << ( aux_array_V_load_6_reg_163 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( aux_array_V_load_reg_169 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( aux_array_V_load_1_reg_175 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( aux_array_V_load_2_reg_181 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( aux_array_V_load_3_reg_187 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( aux_array_V_load_4_reg_193 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( aux_array_V_load_5_reg_199 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( ap_CS_fsm_state13 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_aux_array_V_we1);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset_read_read_fu_42_p2 );
    sensitive << ( reset_read_reg_153 );
    sensitive << ( ap_ce );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( ap_CS_fsm_state13 );
    sensitive << ( ap_CS_fsm_state14 );

    SC_METHOD(thread_p_Val2_i_fu_137_p2);
    sensitive << ( tmp3_fu_131_p2 );
    sensitive << ( tmp_fu_113_p2 );

    SC_METHOD(thread_reset_read_read_fu_42_p2);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( reset );
    sensitive << ( ap_ce );

    SC_METHOD(thread_tmp1_fu_101_p2);
    sensitive << ( tmp_31_cast_i_fu_77_p1 );
    sensitive << ( tmp_31_1_cast_i_fu_80_p1 );

    SC_METHOD(thread_tmp2_fu_107_p2);
    sensitive << ( tmp_31_2_cast_i_fu_83_p1 );
    sensitive << ( tmp_31_3_cast_i_fu_86_p1 );

    SC_METHOD(thread_tmp3_fu_131_p2);
    sensitive << ( tmp5_fu_125_p2 );
    sensitive << ( tmp4_fu_119_p2 );

    SC_METHOD(thread_tmp4_fu_119_p2);
    sensitive << ( tmp_31_4_cast_i_fu_89_p1 );
    sensitive << ( tmp_31_5_cast_i_fu_92_p1 );

    SC_METHOD(thread_tmp5_fu_125_p2);
    sensitive << ( tmp_31_6_cast_i_fu_95_p1 );
    sensitive << ( tmp_cast_i_fu_98_p1 );

    SC_METHOD(thread_tmp_31_1_cast_i_fu_80_p1);
    sensitive << ( aux_array_V_load_1_reg_175 );

    SC_METHOD(thread_tmp_31_2_cast_i_fu_83_p1);
    sensitive << ( aux_array_V_load_2_reg_181 );

    SC_METHOD(thread_tmp_31_3_cast_i_fu_86_p1);
    sensitive << ( aux_array_V_load_3_reg_187 );

    SC_METHOD(thread_tmp_31_4_cast_i_fu_89_p1);
    sensitive << ( aux_array_V_load_4_reg_193 );

    SC_METHOD(thread_tmp_31_5_cast_i_fu_92_p1);
    sensitive << ( aux_array_V_load_5_reg_199 );

    SC_METHOD(thread_tmp_31_6_cast_i_fu_95_p1);
    sensitive << ( aux_array_V_load_6_reg_163 );

    SC_METHOD(thread_tmp_31_cast_i_fu_77_p1);
    sensitive << ( aux_array_V_load_reg_169 );

    SC_METHOD(thread_tmp_cast_i_fu_98_p1);
    sensitive << ( x_V_read_reg_157 );

    SC_METHOD(thread_tmp_fu_113_p2);
    sensitive << ( tmp2_fu_107_p2 );
    sensitive << ( tmp1_fu_101_p2 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_ce );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( ap_CS_fsm_state11 );
    sensitive << ( ap_CS_fsm_state12 );
    sensitive << ( ap_CS_fsm_state13 );
    sensitive << ( ap_CS_fsm_state14 );

    ap_CS_fsm = "00000000000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "meanFilterInTime_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, x_V, "(port)x_V");
    sc_trace(mVcdFile, reset, "(port)reset");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
    sc_trace(mVcdFile, ap_ce, "(port)ap_ce");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, aux_array_V_address0, "aux_array_V_address0");
    sc_trace(mVcdFile, aux_array_V_ce0, "aux_array_V_ce0");
    sc_trace(mVcdFile, aux_array_V_q0, "aux_array_V_q0");
    sc_trace(mVcdFile, aux_array_V_address1, "aux_array_V_address1");
    sc_trace(mVcdFile, aux_array_V_ce1, "aux_array_V_ce1");
    sc_trace(mVcdFile, aux_array_V_we1, "aux_array_V_we1");
    sc_trace(mVcdFile, aux_array_V_d1, "aux_array_V_d1");
    sc_trace(mVcdFile, reset_read_read_fu_42_p2, "reset_read_read_fu_42_p2");
    sc_trace(mVcdFile, reset_read_reg_153, "reset_read_reg_153");
    sc_trace(mVcdFile, x_V_read_reg_157, "x_V_read_reg_157");
    sc_trace(mVcdFile, aux_array_V_load_6_reg_163, "aux_array_V_load_6_reg_163");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, aux_array_V_load_reg_169, "aux_array_V_load_reg_169");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, aux_array_V_load_1_reg_175, "aux_array_V_load_1_reg_175");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, aux_array_V_load_2_reg_181, "aux_array_V_load_2_reg_181");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, aux_array_V_load_3_reg_187, "aux_array_V_load_3_reg_187");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, aux_array_V_load_4_reg_193, "aux_array_V_load_4_reg_193");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, aux_array_V_load_5_reg_199, "aux_array_V_load_5_reg_199");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, y_0_V_write_assign_reg_205, "y_0_V_write_assign_reg_205");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, ap_CS_fsm_state12, "ap_CS_fsm_state12");
    sc_trace(mVcdFile, ap_CS_fsm_state13, "ap_CS_fsm_state13");
    sc_trace(mVcdFile, ap_CS_fsm_state14, "ap_CS_fsm_state14");
    sc_trace(mVcdFile, tmp_31_cast_i_fu_77_p1, "tmp_31_cast_i_fu_77_p1");
    sc_trace(mVcdFile, tmp_31_1_cast_i_fu_80_p1, "tmp_31_1_cast_i_fu_80_p1");
    sc_trace(mVcdFile, tmp_31_2_cast_i_fu_83_p1, "tmp_31_2_cast_i_fu_83_p1");
    sc_trace(mVcdFile, tmp_31_3_cast_i_fu_86_p1, "tmp_31_3_cast_i_fu_86_p1");
    sc_trace(mVcdFile, tmp2_fu_107_p2, "tmp2_fu_107_p2");
    sc_trace(mVcdFile, tmp1_fu_101_p2, "tmp1_fu_101_p2");
    sc_trace(mVcdFile, tmp_31_4_cast_i_fu_89_p1, "tmp_31_4_cast_i_fu_89_p1");
    sc_trace(mVcdFile, tmp_31_5_cast_i_fu_92_p1, "tmp_31_5_cast_i_fu_92_p1");
    sc_trace(mVcdFile, tmp_31_6_cast_i_fu_95_p1, "tmp_31_6_cast_i_fu_95_p1");
    sc_trace(mVcdFile, tmp_cast_i_fu_98_p1, "tmp_cast_i_fu_98_p1");
    sc_trace(mVcdFile, tmp5_fu_125_p2, "tmp5_fu_125_p2");
    sc_trace(mVcdFile, tmp4_fu_119_p2, "tmp4_fu_119_p2");
    sc_trace(mVcdFile, tmp3_fu_131_p2, "tmp3_fu_131_p2");
    sc_trace(mVcdFile, tmp_fu_113_p2, "tmp_fu_113_p2");
    sc_trace(mVcdFile, p_Val2_i_fu_137_p2, "p_Val2_i_fu_137_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

meanFilterInTime::~meanFilterInTime() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete aux_array_V_U;
}

void meanFilterInTime::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
        aux_array_V_load_1_reg_175 = aux_array_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        aux_array_V_load_2_reg_181 = aux_array_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        aux_array_V_load_3_reg_187 = aux_array_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
        aux_array_V_load_4_reg_193 = aux_array_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        aux_array_V_load_5_reg_199 = aux_array_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        aux_array_V_load_6_reg_163 = aux_array_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        aux_array_V_load_reg_169 = aux_array_V_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1))) {
        reset_read_reg_153 = reset.read();
        x_V_read_reg_157 = x_V.read();
    }
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
        y_0_V_write_assign_reg_205 = p_Val2_i_fu_137_p2.read().range(32, 1);
    }
}

void meanFilterInTime::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void meanFilterInTime::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void meanFilterInTime::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void meanFilterInTime::thread_ap_CS_fsm_state12() {
    ap_CS_fsm_state12 = ap_CS_fsm.read()[11];
}

void meanFilterInTime::thread_ap_CS_fsm_state13() {
    ap_CS_fsm_state13 = ap_CS_fsm.read()[12];
}

void meanFilterInTime::thread_ap_CS_fsm_state14() {
    ap_CS_fsm_state14 = ap_CS_fsm.read()[13];
}

void meanFilterInTime::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void meanFilterInTime::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void meanFilterInTime::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void meanFilterInTime::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void meanFilterInTime::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void meanFilterInTime::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void meanFilterInTime::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void meanFilterInTime::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void meanFilterInTime::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void meanFilterInTime::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void meanFilterInTime::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void meanFilterInTime::thread_ap_return() {
    ap_return = y_0_V_write_assign_reg_205.read();
}

void meanFilterInTime::thread_aux_array_V_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        aux_array_V_address0 = ap_const_lv3_6;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        aux_array_V_address0 = ap_const_lv3_5;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        aux_array_V_address0 = ap_const_lv3_4;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        aux_array_V_address0 = ap_const_lv3_3;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        aux_array_V_address0 = ap_const_lv3_2;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        aux_array_V_address0 = ap_const_lv3_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        aux_array_V_address0 = ap_const_lv3_7;
    } else {
        aux_array_V_address0 = "XXX";
    }
}

void meanFilterInTime::thread_aux_array_V_address1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        aux_array_V_address1 = ap_const_lv3_0;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        aux_array_V_address1 = ap_const_lv3_7;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
        aux_array_V_address1 = ap_const_lv3_6;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read()))) {
        aux_array_V_address1 = ap_const_lv3_5;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()))) {
        aux_array_V_address1 = ap_const_lv3_4;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()))) {
        aux_array_V_address1 = ap_const_lv3_3;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
        aux_array_V_address1 = ap_const_lv3_2;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
        aux_array_V_address1 = ap_const_lv3_1;
    } else {
        aux_array_V_address1 = "XXX";
    }
}

void meanFilterInTime::thread_aux_array_V_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())))) {
        aux_array_V_ce0 = ap_const_logic_1;
    } else {
        aux_array_V_ce0 = ap_const_logic_0;
    }
}

void meanFilterInTime::thread_aux_array_V_ce1() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1)) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())))) {
        aux_array_V_ce1 = ap_const_logic_1;
    } else {
        aux_array_V_ce1 = ap_const_logic_0;
    }
}

void meanFilterInTime::thread_aux_array_V_d1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())) {
        aux_array_V_d1 = aux_array_V_load_6_reg_163.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read())) {
        aux_array_V_d1 = aux_array_V_load_5_reg_199.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) {
        aux_array_V_d1 = aux_array_V_load_4_reg_193.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        aux_array_V_d1 = aux_array_V_load_3_reg_187.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        aux_array_V_d1 = aux_array_V_load_2_reg_181.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        aux_array_V_d1 = aux_array_V_load_1_reg_175.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        aux_array_V_d1 = aux_array_V_load_reg_169.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        aux_array_V_d1 = x_V_read_reg_157.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) || 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        aux_array_V_d1 = ap_const_lv32_0;
    } else {
        aux_array_V_d1 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void meanFilterInTime::thread_aux_array_V_we1() {
    if (((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(reset_read_read_fu_42_p2.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(reset_read_reg_153.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
          esl_seteq<1,1,1>(reset_read_reg_153.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(reset_read_reg_153.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
          esl_seteq<1,1,1>(reset_read_reg_153.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
          esl_seteq<1,1,1>(reset_read_reg_153.read(), ap_const_lv1_1)) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read())) || 
         (esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read())))) {
        aux_array_V_we1 = ap_const_logic_1;
    } else {
        aux_array_V_we1 = ap_const_logic_0;
    }
}

void meanFilterInTime::thread_p_Val2_i_fu_137_p2() {
    p_Val2_i_fu_137_p2 = (!tmp3_fu_131_p2.read().is_01() || !tmp_fu_113_p2.read().is_01())? sc_lv<33>(): (sc_biguint<33>(tmp3_fu_131_p2.read()) + sc_biguint<33>(tmp_fu_113_p2.read()));
}

void meanFilterInTime::thread_reset_read_read_fu_42_p2() {
    reset_read_read_fu_42_p2 = reset.read();
}

void meanFilterInTime::thread_tmp1_fu_101_p2() {
    tmp1_fu_101_p2 = (!tmp_31_cast_i_fu_77_p1.read().is_01() || !tmp_31_1_cast_i_fu_80_p1.read().is_01())? sc_lv<33>(): (sc_bigint<33>(tmp_31_cast_i_fu_77_p1.read()) + sc_bigint<33>(tmp_31_1_cast_i_fu_80_p1.read()));
}

void meanFilterInTime::thread_tmp2_fu_107_p2() {
    tmp2_fu_107_p2 = (!tmp_31_2_cast_i_fu_83_p1.read().is_01() || !tmp_31_3_cast_i_fu_86_p1.read().is_01())? sc_lv<33>(): (sc_bigint<33>(tmp_31_2_cast_i_fu_83_p1.read()) + sc_bigint<33>(tmp_31_3_cast_i_fu_86_p1.read()));
}

void meanFilterInTime::thread_tmp3_fu_131_p2() {
    tmp3_fu_131_p2 = (!tmp5_fu_125_p2.read().is_01() || !tmp4_fu_119_p2.read().is_01())? sc_lv<33>(): (sc_biguint<33>(tmp5_fu_125_p2.read()) + sc_biguint<33>(tmp4_fu_119_p2.read()));
}

void meanFilterInTime::thread_tmp4_fu_119_p2() {
    tmp4_fu_119_p2 = (!tmp_31_4_cast_i_fu_89_p1.read().is_01() || !tmp_31_5_cast_i_fu_92_p1.read().is_01())? sc_lv<33>(): (sc_bigint<33>(tmp_31_4_cast_i_fu_89_p1.read()) + sc_bigint<33>(tmp_31_5_cast_i_fu_92_p1.read()));
}

void meanFilterInTime::thread_tmp5_fu_125_p2() {
    tmp5_fu_125_p2 = (!tmp_31_6_cast_i_fu_95_p1.read().is_01() || !tmp_cast_i_fu_98_p1.read().is_01())? sc_lv<33>(): (sc_bigint<33>(tmp_31_6_cast_i_fu_95_p1.read()) + sc_bigint<33>(tmp_cast_i_fu_98_p1.read()));
}

void meanFilterInTime::thread_tmp_31_1_cast_i_fu_80_p1() {
    tmp_31_1_cast_i_fu_80_p1 = esl_sext<33,32>(aux_array_V_load_1_reg_175.read());
}

void meanFilterInTime::thread_tmp_31_2_cast_i_fu_83_p1() {
    tmp_31_2_cast_i_fu_83_p1 = esl_sext<33,32>(aux_array_V_load_2_reg_181.read());
}

void meanFilterInTime::thread_tmp_31_3_cast_i_fu_86_p1() {
    tmp_31_3_cast_i_fu_86_p1 = esl_sext<33,32>(aux_array_V_load_3_reg_187.read());
}

void meanFilterInTime::thread_tmp_31_4_cast_i_fu_89_p1() {
    tmp_31_4_cast_i_fu_89_p1 = esl_sext<33,32>(aux_array_V_load_4_reg_193.read());
}

void meanFilterInTime::thread_tmp_31_5_cast_i_fu_92_p1() {
    tmp_31_5_cast_i_fu_92_p1 = esl_sext<33,32>(aux_array_V_load_5_reg_199.read());
}

void meanFilterInTime::thread_tmp_31_6_cast_i_fu_95_p1() {
    tmp_31_6_cast_i_fu_95_p1 = esl_sext<33,32>(aux_array_V_load_6_reg_163.read());
}

void meanFilterInTime::thread_tmp_31_cast_i_fu_77_p1() {
    tmp_31_cast_i_fu_77_p1 = esl_sext<33,32>(aux_array_V_load_reg_169.read());
}

void meanFilterInTime::thread_tmp_cast_i_fu_98_p1() {
    tmp_cast_i_fu_98_p1 = esl_sext<33,32>(x_V_read_reg_157.read());
}

void meanFilterInTime::thread_tmp_fu_113_p2() {
    tmp_fu_113_p2 = (!tmp2_fu_107_p2.read().is_01() || !tmp1_fu_101_p2.read().is_01())? sc_lv<33>(): (sc_biguint<33>(tmp2_fu_107_p2.read()) + sc_biguint<33>(tmp1_fu_101_p2.read()));
}

void meanFilterInTime::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state2;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
                ap_NS_fsm = ap_ST_fsm_state7;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()))) {
                ap_NS_fsm = ap_ST_fsm_state8;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        case 128 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 256 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()))) {
                ap_NS_fsm = ap_ST_fsm_state10;
            } else {
                ap_NS_fsm = ap_ST_fsm_state9;
            }
            break;
        case 512 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()))) {
                ap_NS_fsm = ap_ST_fsm_state11;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 1024 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read()))) {
                ap_NS_fsm = ap_ST_fsm_state12;
            } else {
                ap_NS_fsm = ap_ST_fsm_state11;
            }
            break;
        case 2048 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state12.read()))) {
                ap_NS_fsm = ap_ST_fsm_state13;
            } else {
                ap_NS_fsm = ap_ST_fsm_state12;
            }
            break;
        case 4096 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state13.read()))) {
                ap_NS_fsm = ap_ST_fsm_state14;
            } else {
                ap_NS_fsm = ap_ST_fsm_state13;
            }
            break;
        case 8192 : 
            if ((esl_seteq<1,1,1>(ap_ce.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state14.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state14;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<14>) ("XXXXXXXXXXXXXX");
            break;
    }
}

}

