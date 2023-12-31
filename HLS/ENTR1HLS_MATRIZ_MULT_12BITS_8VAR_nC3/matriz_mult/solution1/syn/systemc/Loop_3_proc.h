// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_3_proc_HH_
#define _Loop_3_proc_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct Loop_3_proc : public sc_module {
    // Port declarations 19
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<2> > X_OUT_0_address0;
    sc_out< sc_logic > X_OUT_0_ce0;
    sc_in< sc_lv<32> > X_OUT_0_q0;
    sc_out< sc_lv<32> > out_stream_TDATA;
    sc_out< sc_logic > out_stream_TVALID;
    sc_in< sc_logic > out_stream_TREADY;
    sc_out< sc_lv<4> > out_stream_TKEEP;
    sc_out< sc_lv<4> > out_stream_TSTRB;
    sc_out< sc_lv<4> > out_stream_TUSER;
    sc_out< sc_lv<1> > out_stream_TLAST;
    sc_out< sc_lv<5> > out_stream_TID;
    sc_out< sc_lv<5> > out_stream_TDEST;


    // Module declarations
    Loop_3_proc(sc_module_name name);
    SC_HAS_PROCESS(Loop_3_proc);

    ~Loop_3_proc();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > out_stream_data_V_1_data_out;
    sc_signal< sc_logic > out_stream_data_V_1_vld_in;
    sc_signal< sc_logic > out_stream_data_V_1_vld_out;
    sc_signal< sc_logic > out_stream_data_V_1_ack_in;
    sc_signal< sc_logic > out_stream_data_V_1_ack_out;
    sc_signal< sc_lv<32> > out_stream_data_V_1_payload_A;
    sc_signal< sc_lv<32> > out_stream_data_V_1_payload_B;
    sc_signal< sc_logic > out_stream_data_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_data_V_1_sel_wr;
    sc_signal< sc_logic > out_stream_data_V_1_sel;
    sc_signal< sc_logic > out_stream_data_V_1_load_A;
    sc_signal< sc_logic > out_stream_data_V_1_load_B;
    sc_signal< sc_lv<2> > out_stream_data_V_1_state;
    sc_signal< sc_logic > out_stream_data_V_1_state_cmp_full;
    sc_signal< sc_lv<4> > out_stream_keep_V_1_data_out;
    sc_signal< sc_logic > out_stream_keep_V_1_vld_in;
    sc_signal< sc_logic > out_stream_keep_V_1_vld_out;
    sc_signal< sc_logic > out_stream_keep_V_1_ack_in;
    sc_signal< sc_logic > out_stream_keep_V_1_ack_out;
    sc_signal< sc_logic > out_stream_keep_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_keep_V_1_sel;
    sc_signal< sc_lv<2> > out_stream_keep_V_1_state;
    sc_signal< sc_lv<4> > out_stream_strb_V_1_data_out;
    sc_signal< sc_logic > out_stream_strb_V_1_vld_in;
    sc_signal< sc_logic > out_stream_strb_V_1_vld_out;
    sc_signal< sc_logic > out_stream_strb_V_1_ack_in;
    sc_signal< sc_logic > out_stream_strb_V_1_ack_out;
    sc_signal< sc_logic > out_stream_strb_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_strb_V_1_sel;
    sc_signal< sc_lv<2> > out_stream_strb_V_1_state;
    sc_signal< sc_lv<4> > out_stream_user_V_1_data_out;
    sc_signal< sc_logic > out_stream_user_V_1_vld_in;
    sc_signal< sc_logic > out_stream_user_V_1_vld_out;
    sc_signal< sc_logic > out_stream_user_V_1_ack_in;
    sc_signal< sc_logic > out_stream_user_V_1_ack_out;
    sc_signal< sc_logic > out_stream_user_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_user_V_1_sel;
    sc_signal< sc_lv<2> > out_stream_user_V_1_state;
    sc_signal< sc_lv<1> > out_stream_last_V_1_data_out;
    sc_signal< sc_logic > out_stream_last_V_1_vld_in;
    sc_signal< sc_logic > out_stream_last_V_1_vld_out;
    sc_signal< sc_logic > out_stream_last_V_1_ack_in;
    sc_signal< sc_logic > out_stream_last_V_1_ack_out;
    sc_signal< sc_lv<1> > out_stream_last_V_1_payload_A;
    sc_signal< sc_lv<1> > out_stream_last_V_1_payload_B;
    sc_signal< sc_logic > out_stream_last_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_last_V_1_sel_wr;
    sc_signal< sc_logic > out_stream_last_V_1_sel;
    sc_signal< sc_logic > out_stream_last_V_1_load_A;
    sc_signal< sc_logic > out_stream_last_V_1_load_B;
    sc_signal< sc_lv<2> > out_stream_last_V_1_state;
    sc_signal< sc_logic > out_stream_last_V_1_state_cmp_full;
    sc_signal< sc_lv<5> > out_stream_id_V_1_data_out;
    sc_signal< sc_logic > out_stream_id_V_1_vld_in;
    sc_signal< sc_logic > out_stream_id_V_1_vld_out;
    sc_signal< sc_logic > out_stream_id_V_1_ack_in;
    sc_signal< sc_logic > out_stream_id_V_1_ack_out;
    sc_signal< sc_logic > out_stream_id_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_id_V_1_sel;
    sc_signal< sc_lv<2> > out_stream_id_V_1_state;
    sc_signal< sc_lv<5> > out_stream_dest_V_1_data_out;
    sc_signal< sc_logic > out_stream_dest_V_1_vld_in;
    sc_signal< sc_logic > out_stream_dest_V_1_vld_out;
    sc_signal< sc_logic > out_stream_dest_V_1_ack_in;
    sc_signal< sc_logic > out_stream_dest_V_1_ack_out;
    sc_signal< sc_logic > out_stream_dest_V_1_sel_rd;
    sc_signal< sc_logic > out_stream_dest_V_1_sel;
    sc_signal< sc_lv<2> > out_stream_dest_V_1_state;
    sc_signal< sc_logic > out_stream_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<1> > exitcond4_fu_114_p2;
    sc_signal< sc_lv<1> > last_assign_fu_125_p2;
    sc_signal< sc_lv<1> > last_assign_reg_150;
    sc_signal< sc_lv<3> > indvars_iv_next_fu_131_p2;
    sc_signal< sc_lv<3> > indvars_iv_next_reg_155;
    sc_signal< sc_lv<32> > val_assign_fu_137_p1;
    sc_signal< sc_lv<3> > indvars_iv_reg_90;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<3> > k_1_reg_102;
    sc_signal< sc_lv<32> > k_1_cast3_fu_120_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<3> ap_const_lv3_2;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_X_OUT_0_address0();
    void thread_X_OUT_0_ce0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond4_fu_114_p2();
    void thread_indvars_iv_next_fu_131_p2();
    void thread_k_1_cast3_fu_120_p1();
    void thread_last_assign_fu_125_p2();
    void thread_out_stream_TDATA();
    void thread_out_stream_TDATA_blk_n();
    void thread_out_stream_TDEST();
    void thread_out_stream_TID();
    void thread_out_stream_TKEEP();
    void thread_out_stream_TLAST();
    void thread_out_stream_TSTRB();
    void thread_out_stream_TUSER();
    void thread_out_stream_TVALID();
    void thread_out_stream_data_V_1_ack_in();
    void thread_out_stream_data_V_1_ack_out();
    void thread_out_stream_data_V_1_data_out();
    void thread_out_stream_data_V_1_load_A();
    void thread_out_stream_data_V_1_load_B();
    void thread_out_stream_data_V_1_sel();
    void thread_out_stream_data_V_1_state_cmp_full();
    void thread_out_stream_data_V_1_vld_in();
    void thread_out_stream_data_V_1_vld_out();
    void thread_out_stream_dest_V_1_ack_in();
    void thread_out_stream_dest_V_1_ack_out();
    void thread_out_stream_dest_V_1_data_out();
    void thread_out_stream_dest_V_1_sel();
    void thread_out_stream_dest_V_1_vld_in();
    void thread_out_stream_dest_V_1_vld_out();
    void thread_out_stream_id_V_1_ack_in();
    void thread_out_stream_id_V_1_ack_out();
    void thread_out_stream_id_V_1_data_out();
    void thread_out_stream_id_V_1_sel();
    void thread_out_stream_id_V_1_vld_in();
    void thread_out_stream_id_V_1_vld_out();
    void thread_out_stream_keep_V_1_ack_in();
    void thread_out_stream_keep_V_1_ack_out();
    void thread_out_stream_keep_V_1_data_out();
    void thread_out_stream_keep_V_1_sel();
    void thread_out_stream_keep_V_1_vld_in();
    void thread_out_stream_keep_V_1_vld_out();
    void thread_out_stream_last_V_1_ack_in();
    void thread_out_stream_last_V_1_ack_out();
    void thread_out_stream_last_V_1_data_out();
    void thread_out_stream_last_V_1_load_A();
    void thread_out_stream_last_V_1_load_B();
    void thread_out_stream_last_V_1_sel();
    void thread_out_stream_last_V_1_state_cmp_full();
    void thread_out_stream_last_V_1_vld_in();
    void thread_out_stream_last_V_1_vld_out();
    void thread_out_stream_strb_V_1_ack_in();
    void thread_out_stream_strb_V_1_ack_out();
    void thread_out_stream_strb_V_1_data_out();
    void thread_out_stream_strb_V_1_sel();
    void thread_out_stream_strb_V_1_vld_in();
    void thread_out_stream_strb_V_1_vld_out();
    void thread_out_stream_user_V_1_ack_in();
    void thread_out_stream_user_V_1_ack_out();
    void thread_out_stream_user_V_1_data_out();
    void thread_out_stream_user_V_1_sel();
    void thread_out_stream_user_V_1_vld_in();
    void thread_out_stream_user_V_1_vld_out();
    void thread_val_assign_fu_137_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
