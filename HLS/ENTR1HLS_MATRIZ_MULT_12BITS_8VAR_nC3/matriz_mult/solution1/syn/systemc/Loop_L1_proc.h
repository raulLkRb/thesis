// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_L1_proc_HH_
#define _Loop_L1_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "wrapped_mmult_hw_eOg.h"
#include "wrapped_mmult_hw_fYi.h"
#include "Loop_L1_proc_coeff.h"

namespace ap_rtl {

struct Loop_L1_proc : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<2> > X_OUT_0_address0;
    sc_out< sc_logic > X_OUT_0_ce0;
    sc_out< sc_logic > X_OUT_0_we0;
    sc_out< sc_lv<32> > X_OUT_0_d0;
    sc_out< sc_lv<3> > X_MAT_0_address0;
    sc_out< sc_logic > X_MAT_0_ce0;
    sc_in< sc_lv<32> > X_MAT_0_q0;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Loop_L1_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_L1_proc);

    ~Loop_L1_proc();

    sc_trace_file* mVcdFile;

    Loop_L1_proc_coeff* coeff_U;
    wrapped_mmult_hw_eOg<1,5,32,32,32>* wrapped_mmult_hw_eOg_U14;
    wrapped_mmult_hw_fYi<1,4,32,32,32>* wrapped_mmult_hw_fYi_U15;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<13> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > coeff_address0;
    sc_signal< sc_logic > coeff_ce0;
    sc_signal< sc_lv<32> > coeff_q0;
    sc_signal< sc_lv<32> > ia_0_i_cast_fu_125_p1;
    sc_signal< sc_lv<32> > ia_0_i_cast_reg_183;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > tmp_2_cast_fu_137_p1;
    sc_signal< sc_lv<6> > tmp_2_cast_reg_188;
    sc_signal< sc_lv<2> > ia_fu_147_p2;
    sc_signal< sc_lv<2> > ia_reg_196;
    sc_signal< sc_lv<32> > ib_0_i_cast_fu_153_p1;
    sc_signal< sc_lv<32> > ib_0_i_cast_reg_201;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > ib_fu_177_p2;
    sc_signal< sc_lv<4> > ib_reg_214;
    sc_signal< sc_lv<32> > coeff_load_reg_219;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > grp_fu_120_p2;
    sc_signal< sc_lv<32> > tmp_8_reg_234;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<32> > grp_fu_115_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<2> > ia_0_i_reg_80;
    sc_signal< sc_lv<1> > exitcond_i_fu_171_p2;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > sum_0_i_reg_91;
    sc_signal< sc_lv<1> > exitcond2_i_fu_141_p2;
    sc_signal< sc_lv<4> > ib_0_i_reg_104;
    sc_signal< sc_lv<32> > tmp_3_cast_fu_166_p1;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5> > tmp_fu_129_p3;
    sc_signal< sc_lv<6> > ib_0_i_cast_cast_fu_157_p1;
    sc_signal< sc_lv<6> > tmp_3_fu_161_p2;
    sc_signal< sc_lv<13> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<13> ap_ST_fsm_state1;
    static const sc_lv<13> ap_ST_fsm_state2;
    static const sc_lv<13> ap_ST_fsm_state3;
    static const sc_lv<13> ap_ST_fsm_state4;
    static const sc_lv<13> ap_ST_fsm_state5;
    static const sc_lv<13> ap_ST_fsm_state6;
    static const sc_lv<13> ap_ST_fsm_state7;
    static const sc_lv<13> ap_ST_fsm_state8;
    static const sc_lv<13> ap_ST_fsm_state9;
    static const sc_lv<13> ap_ST_fsm_state10;
    static const sc_lv<13> ap_ST_fsm_state11;
    static const sc_lv<13> ap_ST_fsm_state12;
    static const sc_lv<13> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_X_MAT_0_address0();
    void thread_X_MAT_0_ce0();
    void thread_X_OUT_0_address0();
    void thread_X_OUT_0_ce0();
    void thread_X_OUT_0_d0();
    void thread_X_OUT_0_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_coeff_address0();
    void thread_coeff_ce0();
    void thread_exitcond2_i_fu_141_p2();
    void thread_exitcond_i_fu_171_p2();
    void thread_ia_0_i_cast_fu_125_p1();
    void thread_ia_fu_147_p2();
    void thread_ib_0_i_cast_cast_fu_157_p1();
    void thread_ib_0_i_cast_fu_153_p1();
    void thread_ib_fu_177_p2();
    void thread_tmp_2_cast_fu_137_p1();
    void thread_tmp_3_cast_fu_166_p1();
    void thread_tmp_3_fu_161_p2();
    void thread_tmp_fu_129_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif