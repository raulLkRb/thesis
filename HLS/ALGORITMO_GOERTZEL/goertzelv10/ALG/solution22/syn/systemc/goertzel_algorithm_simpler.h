// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _goertzel_algorithm_simpler_HH_
#define _goertzel_algorithm_simpler_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "read_data.h"
#include "devuelveAuxArray.h"
#include "Loop_g1_proc.h"
#include "Loop_2_proc.h"
#include "fifo_w32_d4_A.h"
#include "start_for_devuelvfYi.h"
#include "start_for_Loop_g1g8j.h"
#include "start_for_Loop_2_hbi.h"

namespace ap_rtl {

struct goertzel_algorithm_simpler : public sc_module {
    // Port declarations 20
    sc_in< sc_lv<32> > input_AX_ALG_TDATA;
    sc_in< sc_lv<4> > input_AX_ALG_TKEEP;
    sc_in< sc_lv<4> > input_AX_ALG_TSTRB;
    sc_in< sc_lv<4> > input_AX_ALG_TUSER;
    sc_in< sc_lv<1> > input_AX_ALG_TLAST;
    sc_in< sc_lv<5> > input_AX_ALG_TID;
    sc_in< sc_lv<5> > input_AX_ALG_TDEST;
    sc_out< sc_lv<32> > output_AX_ALG_TDATA;
    sc_out< sc_lv<4> > output_AX_ALG_TKEEP;
    sc_out< sc_lv<4> > output_AX_ALG_TSTRB;
    sc_out< sc_lv<4> > output_AX_ALG_TUSER;
    sc_out< sc_lv<1> > output_AX_ALG_TLAST;
    sc_out< sc_lv<5> > output_AX_ALG_TID;
    sc_out< sc_lv<5> > output_AX_ALG_TDEST;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > input_AX_ALG_TVALID;
    sc_out< sc_logic > input_AX_ALG_TREADY;
    sc_out< sc_logic > output_AX_ALG_TVALID;
    sc_in< sc_logic > output_AX_ALG_TREADY;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    goertzel_algorithm_simpler(sc_module_name name);
    SC_HAS_PROCESS(goertzel_algorithm_simpler);

    ~goertzel_algorithm_simpler();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    read_data* read_data_U0;
    devuelveAuxArray* devuelveAuxArray_U0;
    Loop_g1_proc* Loop_g1_proc_U0;
    Loop_2_proc* Loop_2_proc_U0;
    fifo_w32_d4_A* bufIn_0_V_U;
    fifo_w32_d4_A* aux_array_V_U;
    fifo_w32_d4_A* y_V_U;
    start_for_devuelvfYi* start_for_devuelvfYi_U;
    start_for_Loop_g1g8j* start_for_Loop_g1g8j_U;
    start_for_Loop_2_hbi* start_for_Loop_2_hbi_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > read_data_U0_ap_start;
    sc_signal< sc_logic > read_data_U0_start_full_n;
    sc_signal< sc_logic > read_data_U0_ap_done;
    sc_signal< sc_logic > read_data_U0_ap_continue;
    sc_signal< sc_logic > read_data_U0_ap_idle;
    sc_signal< sc_logic > read_data_U0_ap_ready;
    sc_signal< sc_lv<32> > read_data_U0_buf_0_V_din;
    sc_signal< sc_logic > read_data_U0_buf_0_V_write;
    sc_signal< sc_logic > read_data_U0_start_out;
    sc_signal< sc_logic > read_data_U0_start_write;
    sc_signal< sc_logic > read_data_U0_input_AX_ALG_TREADY;
    sc_signal< sc_logic > devuelveAuxArray_U0_ap_start;
    sc_signal< sc_logic > devuelveAuxArray_U0_start_full_n;
    sc_signal< sc_logic > devuelveAuxArray_U0_ap_ready;
    sc_signal< sc_logic > devuelveAuxArray_U0_ap_done;
    sc_signal< sc_logic > devuelveAuxArray_U0_ap_continue;
    sc_signal< sc_logic > devuelveAuxArray_U0_ap_idle;
    sc_signal< sc_logic > devuelveAuxArray_U0_start_out;
    sc_signal< sc_logic > devuelveAuxArray_U0_start_write;
    sc_signal< sc_lv<32> > devuelveAuxArray_U0_aux_array_V_din;
    sc_signal< sc_logic > devuelveAuxArray_U0_aux_array_V_write;
    sc_signal< sc_logic > devuelveAuxArray_U0_bufIn_0_V_read;
    sc_signal< sc_logic > Loop_g1_proc_U0_ap_start;
    sc_signal< sc_logic > Loop_g1_proc_U0_start_full_n;
    sc_signal< sc_logic > Loop_g1_proc_U0_ap_ready;
    sc_signal< sc_logic > Loop_g1_proc_U0_ap_done;
    sc_signal< sc_logic > Loop_g1_proc_U0_ap_continue;
    sc_signal< sc_logic > Loop_g1_proc_U0_ap_idle;
    sc_signal< sc_logic > Loop_g1_proc_U0_start_out;
    sc_signal< sc_logic > Loop_g1_proc_U0_start_write;
    sc_signal< sc_logic > Loop_g1_proc_U0_aux_array_V_read;
    sc_signal< sc_lv<32> > Loop_g1_proc_U0_y_V_din;
    sc_signal< sc_logic > Loop_g1_proc_U0_y_V_write;
    sc_signal< sc_logic > Loop_2_proc_U0_ap_start;
    sc_signal< sc_logic > Loop_2_proc_U0_ap_done;
    sc_signal< sc_logic > Loop_2_proc_U0_ap_continue;
    sc_signal< sc_logic > Loop_2_proc_U0_ap_idle;
    sc_signal< sc_logic > Loop_2_proc_U0_ap_ready;
    sc_signal< sc_logic > Loop_2_proc_U0_y_V_read;
    sc_signal< sc_lv<32> > Loop_2_proc_U0_output_AX_ALG_TDATA;
    sc_signal< sc_logic > Loop_2_proc_U0_output_AX_ALG_TVALID;
    sc_signal< sc_lv<4> > Loop_2_proc_U0_output_AX_ALG_TKEEP;
    sc_signal< sc_lv<4> > Loop_2_proc_U0_output_AX_ALG_TSTRB;
    sc_signal< sc_lv<4> > Loop_2_proc_U0_output_AX_ALG_TUSER;
    sc_signal< sc_lv<1> > Loop_2_proc_U0_output_AX_ALG_TLAST;
    sc_signal< sc_lv<5> > Loop_2_proc_U0_output_AX_ALG_TID;
    sc_signal< sc_lv<5> > Loop_2_proc_U0_output_AX_ALG_TDEST;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > bufIn_0_V_full_n;
    sc_signal< sc_lv<32> > bufIn_0_V_dout;
    sc_signal< sc_logic > bufIn_0_V_empty_n;
    sc_signal< sc_logic > aux_array_V_full_n;
    sc_signal< sc_lv<32> > aux_array_V_dout;
    sc_signal< sc_logic > aux_array_V_empty_n;
    sc_signal< sc_logic > y_V_full_n;
    sc_signal< sc_lv<32> > y_V_dout;
    sc_signal< sc_logic > y_V_empty_n;
    sc_signal< sc_lv<1> > start_for_devuelveAuxArray_U0_din;
    sc_signal< sc_logic > start_for_devuelveAuxArray_U0_full_n;
    sc_signal< sc_lv<1> > start_for_devuelveAuxArray_U0_dout;
    sc_signal< sc_logic > start_for_devuelveAuxArray_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Loop_g1_proc_U0_din;
    sc_signal< sc_logic > start_for_Loop_g1_proc_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Loop_g1_proc_U0_dout;
    sc_signal< sc_logic > start_for_Loop_g1_proc_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Loop_2_proc_U0_din;
    sc_signal< sc_logic > start_for_Loop_2_proc_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Loop_2_proc_U0_dout;
    sc_signal< sc_logic > start_for_Loop_2_proc_U0_empty_n;
    sc_signal< sc_logic > Loop_2_proc_U0_start_full_n;
    sc_signal< sc_logic > Loop_2_proc_U0_start_write;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_Loop_2_proc_U0_ap_continue();
    void thread_Loop_2_proc_U0_ap_start();
    void thread_Loop_2_proc_U0_start_full_n();
    void thread_Loop_2_proc_U0_start_write();
    void thread_Loop_g1_proc_U0_ap_continue();
    void thread_Loop_g1_proc_U0_ap_start();
    void thread_Loop_g1_proc_U0_start_full_n();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_devuelveAuxArray_U0_ap_continue();
    void thread_devuelveAuxArray_U0_ap_start();
    void thread_devuelveAuxArray_U0_start_full_n();
    void thread_input_AX_ALG_TREADY();
    void thread_output_AX_ALG_TDATA();
    void thread_output_AX_ALG_TDEST();
    void thread_output_AX_ALG_TID();
    void thread_output_AX_ALG_TKEEP();
    void thread_output_AX_ALG_TLAST();
    void thread_output_AX_ALG_TSTRB();
    void thread_output_AX_ALG_TUSER();
    void thread_output_AX_ALG_TVALID();
    void thread_read_data_U0_ap_continue();
    void thread_read_data_U0_ap_start();
    void thread_read_data_U0_start_full_n();
    void thread_start_for_Loop_2_proc_U0_din();
    void thread_start_for_Loop_g1_proc_U0_din();
    void thread_start_for_devuelveAuxArray_U0_din();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
