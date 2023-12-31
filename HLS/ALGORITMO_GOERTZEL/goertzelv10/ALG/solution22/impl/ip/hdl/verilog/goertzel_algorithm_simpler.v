// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="goertzel_algorithm_simpler,hls_ip_2017_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=8.623500,HLS_SYN_LAT=114745,HLS_SYN_TPT=114746,HLS_SYN_MEM=4,HLS_SYN_DSP=16,HLS_SYN_FF=1405,HLS_SYN_LUT=1771}" *)

module goertzel_algorithm_simpler (
        input_AX_ALG_TDATA,
        input_AX_ALG_TKEEP,
        input_AX_ALG_TSTRB,
        input_AX_ALG_TUSER,
        input_AX_ALG_TLAST,
        input_AX_ALG_TID,
        input_AX_ALG_TDEST,
        output_AX_ALG_TDATA,
        output_AX_ALG_TKEEP,
        output_AX_ALG_TSTRB,
        output_AX_ALG_TUSER,
        output_AX_ALG_TLAST,
        output_AX_ALG_TID,
        output_AX_ALG_TDEST,
        ap_clk,
        ap_rst_n,
        input_AX_ALG_TVALID,
        input_AX_ALG_TREADY,
        output_AX_ALG_TVALID,
        output_AX_ALG_TREADY
);


input  [31:0] input_AX_ALG_TDATA;
input  [3:0] input_AX_ALG_TKEEP;
input  [3:0] input_AX_ALG_TSTRB;
input  [3:0] input_AX_ALG_TUSER;
input  [0:0] input_AX_ALG_TLAST;
input  [4:0] input_AX_ALG_TID;
input  [4:0] input_AX_ALG_TDEST;
output  [31:0] output_AX_ALG_TDATA;
output  [3:0] output_AX_ALG_TKEEP;
output  [3:0] output_AX_ALG_TSTRB;
output  [3:0] output_AX_ALG_TUSER;
output  [0:0] output_AX_ALG_TLAST;
output  [4:0] output_AX_ALG_TID;
output  [4:0] output_AX_ALG_TDEST;
input   ap_clk;
input   ap_rst_n;
input   input_AX_ALG_TVALID;
output   input_AX_ALG_TREADY;
output   output_AX_ALG_TVALID;
input   output_AX_ALG_TREADY;

reg    ap_rst_n_inv;
wire    read_data_U0_ap_start;
wire    read_data_U0_start_full_n;
wire    read_data_U0_ap_done;
wire    read_data_U0_ap_continue;
wire    read_data_U0_ap_idle;
wire    read_data_U0_ap_ready;
wire   [31:0] read_data_U0_buf_0_V_din;
wire    read_data_U0_buf_0_V_write;
wire    read_data_U0_start_out;
wire    read_data_U0_start_write;
wire    read_data_U0_input_AX_ALG_TREADY;
wire    devuelveAuxArray_U0_ap_start;
wire    devuelveAuxArray_U0_start_full_n;
wire    devuelveAuxArray_U0_ap_ready;
wire    devuelveAuxArray_U0_ap_done;
wire    devuelveAuxArray_U0_ap_continue;
wire    devuelveAuxArray_U0_ap_idle;
wire    devuelveAuxArray_U0_start_out;
wire    devuelveAuxArray_U0_start_write;
wire   [31:0] devuelveAuxArray_U0_aux_array_V_din;
wire    devuelveAuxArray_U0_aux_array_V_write;
wire    devuelveAuxArray_U0_bufIn_0_V_read;
wire    Loop_g1_proc_U0_ap_start;
wire    Loop_g1_proc_U0_start_full_n;
wire    Loop_g1_proc_U0_ap_ready;
wire    Loop_g1_proc_U0_ap_done;
wire    Loop_g1_proc_U0_ap_continue;
wire    Loop_g1_proc_U0_ap_idle;
wire    Loop_g1_proc_U0_start_out;
wire    Loop_g1_proc_U0_start_write;
wire    Loop_g1_proc_U0_aux_array_V_read;
wire   [31:0] Loop_g1_proc_U0_y_V_din;
wire    Loop_g1_proc_U0_y_V_write;
wire    Loop_2_proc_U0_ap_start;
wire    Loop_2_proc_U0_ap_done;
wire    Loop_2_proc_U0_ap_continue;
wire    Loop_2_proc_U0_ap_idle;
wire    Loop_2_proc_U0_ap_ready;
wire    Loop_2_proc_U0_y_V_read;
wire   [31:0] Loop_2_proc_U0_output_AX_ALG_TDATA;
wire    Loop_2_proc_U0_output_AX_ALG_TVALID;
wire   [3:0] Loop_2_proc_U0_output_AX_ALG_TKEEP;
wire   [3:0] Loop_2_proc_U0_output_AX_ALG_TSTRB;
wire   [3:0] Loop_2_proc_U0_output_AX_ALG_TUSER;
wire   [0:0] Loop_2_proc_U0_output_AX_ALG_TLAST;
wire   [4:0] Loop_2_proc_U0_output_AX_ALG_TID;
wire   [4:0] Loop_2_proc_U0_output_AX_ALG_TDEST;
wire    ap_sync_continue;
wire    bufIn_0_V_full_n;
wire   [31:0] bufIn_0_V_dout;
wire    bufIn_0_V_empty_n;
wire    aux_array_V_full_n;
wire   [31:0] aux_array_V_dout;
wire    aux_array_V_empty_n;
wire    y_V_full_n;
wire   [31:0] y_V_dout;
wire    y_V_empty_n;
wire   [0:0] start_for_devuelveAuxArray_U0_din;
wire    start_for_devuelveAuxArray_U0_full_n;
wire   [0:0] start_for_devuelveAuxArray_U0_dout;
wire    start_for_devuelveAuxArray_U0_empty_n;
wire   [0:0] start_for_Loop_g1_proc_U0_din;
wire    start_for_Loop_g1_proc_U0_full_n;
wire   [0:0] start_for_Loop_g1_proc_U0_dout;
wire    start_for_Loop_g1_proc_U0_empty_n;
wire   [0:0] start_for_Loop_2_proc_U0_din;
wire    start_for_Loop_2_proc_U0_full_n;
wire   [0:0] start_for_Loop_2_proc_U0_dout;
wire    start_for_Loop_2_proc_U0_empty_n;
wire    Loop_2_proc_U0_start_full_n;
wire    Loop_2_proc_U0_start_write;

read_data read_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(read_data_U0_ap_start),
    .start_full_n(read_data_U0_start_full_n),
    .ap_done(read_data_U0_ap_done),
    .ap_continue(read_data_U0_ap_continue),
    .ap_idle(read_data_U0_ap_idle),
    .ap_ready(read_data_U0_ap_ready),
    .buf_0_V_din(read_data_U0_buf_0_V_din),
    .buf_0_V_full_n(bufIn_0_V_full_n),
    .buf_0_V_write(read_data_U0_buf_0_V_write),
    .start_out(read_data_U0_start_out),
    .start_write(read_data_U0_start_write),
    .input_AX_ALG_TDATA(input_AX_ALG_TDATA),
    .input_AX_ALG_TVALID(input_AX_ALG_TVALID),
    .input_AX_ALG_TREADY(read_data_U0_input_AX_ALG_TREADY),
    .input_AX_ALG_TKEEP(input_AX_ALG_TKEEP),
    .input_AX_ALG_TSTRB(input_AX_ALG_TSTRB),
    .input_AX_ALG_TUSER(input_AX_ALG_TUSER),
    .input_AX_ALG_TLAST(input_AX_ALG_TLAST),
    .input_AX_ALG_TID(input_AX_ALG_TID),
    .input_AX_ALG_TDEST(input_AX_ALG_TDEST)
);

devuelveAuxArray devuelveAuxArray_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(devuelveAuxArray_U0_ap_start),
    .start_full_n(devuelveAuxArray_U0_start_full_n),
    .ap_ready(devuelveAuxArray_U0_ap_ready),
    .ap_done(devuelveAuxArray_U0_ap_done),
    .ap_continue(devuelveAuxArray_U0_ap_continue),
    .ap_idle(devuelveAuxArray_U0_ap_idle),
    .start_out(devuelveAuxArray_U0_start_out),
    .start_write(devuelveAuxArray_U0_start_write),
    .aux_array_V_din(devuelveAuxArray_U0_aux_array_V_din),
    .aux_array_V_full_n(aux_array_V_full_n),
    .aux_array_V_write(devuelveAuxArray_U0_aux_array_V_write),
    .bufIn_0_V_dout(bufIn_0_V_dout),
    .bufIn_0_V_empty_n(bufIn_0_V_empty_n),
    .bufIn_0_V_read(devuelveAuxArray_U0_bufIn_0_V_read)
);

Loop_g1_proc Loop_g1_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_g1_proc_U0_ap_start),
    .start_full_n(Loop_g1_proc_U0_start_full_n),
    .ap_ready(Loop_g1_proc_U0_ap_ready),
    .ap_done(Loop_g1_proc_U0_ap_done),
    .ap_continue(Loop_g1_proc_U0_ap_continue),
    .ap_idle(Loop_g1_proc_U0_ap_idle),
    .start_out(Loop_g1_proc_U0_start_out),
    .start_write(Loop_g1_proc_U0_start_write),
    .aux_array_V_dout(aux_array_V_dout),
    .aux_array_V_empty_n(aux_array_V_empty_n),
    .aux_array_V_read(Loop_g1_proc_U0_aux_array_V_read),
    .y_V_din(Loop_g1_proc_U0_y_V_din),
    .y_V_full_n(y_V_full_n),
    .y_V_write(Loop_g1_proc_U0_y_V_write)
);

Loop_2_proc Loop_2_proc_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_2_proc_U0_ap_start),
    .ap_done(Loop_2_proc_U0_ap_done),
    .ap_continue(Loop_2_proc_U0_ap_continue),
    .ap_idle(Loop_2_proc_U0_ap_idle),
    .ap_ready(Loop_2_proc_U0_ap_ready),
    .y_V_dout(y_V_dout),
    .y_V_empty_n(y_V_empty_n),
    .y_V_read(Loop_2_proc_U0_y_V_read),
    .output_AX_ALG_TDATA(Loop_2_proc_U0_output_AX_ALG_TDATA),
    .output_AX_ALG_TVALID(Loop_2_proc_U0_output_AX_ALG_TVALID),
    .output_AX_ALG_TREADY(output_AX_ALG_TREADY),
    .output_AX_ALG_TKEEP(Loop_2_proc_U0_output_AX_ALG_TKEEP),
    .output_AX_ALG_TSTRB(Loop_2_proc_U0_output_AX_ALG_TSTRB),
    .output_AX_ALG_TUSER(Loop_2_proc_U0_output_AX_ALG_TUSER),
    .output_AX_ALG_TLAST(Loop_2_proc_U0_output_AX_ALG_TLAST),
    .output_AX_ALG_TID(Loop_2_proc_U0_output_AX_ALG_TID),
    .output_AX_ALG_TDEST(Loop_2_proc_U0_output_AX_ALG_TDEST)
);

fifo_w32_d4_A bufIn_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(read_data_U0_buf_0_V_din),
    .if_full_n(bufIn_0_V_full_n),
    .if_write(read_data_U0_buf_0_V_write),
    .if_dout(bufIn_0_V_dout),
    .if_empty_n(bufIn_0_V_empty_n),
    .if_read(devuelveAuxArray_U0_bufIn_0_V_read)
);

fifo_w32_d4_A aux_array_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(devuelveAuxArray_U0_aux_array_V_din),
    .if_full_n(aux_array_V_full_n),
    .if_write(devuelveAuxArray_U0_aux_array_V_write),
    .if_dout(aux_array_V_dout),
    .if_empty_n(aux_array_V_empty_n),
    .if_read(Loop_g1_proc_U0_aux_array_V_read)
);

fifo_w32_d4_A y_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_g1_proc_U0_y_V_din),
    .if_full_n(y_V_full_n),
    .if_write(Loop_g1_proc_U0_y_V_write),
    .if_dout(y_V_dout),
    .if_empty_n(y_V_empty_n),
    .if_read(Loop_2_proc_U0_y_V_read)
);

start_for_devuelvfYi start_for_devuelvfYi_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_devuelveAuxArray_U0_din),
    .if_full_n(start_for_devuelveAuxArray_U0_full_n),
    .if_write(read_data_U0_start_write),
    .if_dout(start_for_devuelveAuxArray_U0_dout),
    .if_empty_n(start_for_devuelveAuxArray_U0_empty_n),
    .if_read(devuelveAuxArray_U0_ap_ready)
);

start_for_Loop_g1g8j start_for_Loop_g1g8j_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Loop_g1_proc_U0_din),
    .if_full_n(start_for_Loop_g1_proc_U0_full_n),
    .if_write(devuelveAuxArray_U0_start_write),
    .if_dout(start_for_Loop_g1_proc_U0_dout),
    .if_empty_n(start_for_Loop_g1_proc_U0_empty_n),
    .if_read(Loop_g1_proc_U0_ap_ready)
);

start_for_Loop_2_hbi start_for_Loop_2_hbi_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_Loop_2_proc_U0_din),
    .if_full_n(start_for_Loop_2_proc_U0_full_n),
    .if_write(Loop_g1_proc_U0_start_write),
    .if_dout(start_for_Loop_2_proc_U0_dout),
    .if_empty_n(start_for_Loop_2_proc_U0_empty_n),
    .if_read(Loop_2_proc_U0_ap_ready)
);

assign Loop_2_proc_U0_ap_continue = 1'b1;

assign Loop_2_proc_U0_ap_start = start_for_Loop_2_proc_U0_empty_n;

assign Loop_2_proc_U0_start_full_n = 1'b0;

assign Loop_2_proc_U0_start_write = 1'b0;

assign Loop_g1_proc_U0_ap_continue = 1'b1;

assign Loop_g1_proc_U0_ap_start = start_for_Loop_g1_proc_U0_empty_n;

assign Loop_g1_proc_U0_start_full_n = (1'b0 | start_for_Loop_2_proc_U0_full_n);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign devuelveAuxArray_U0_ap_continue = 1'b1;

assign devuelveAuxArray_U0_ap_start = start_for_devuelveAuxArray_U0_empty_n;

assign devuelveAuxArray_U0_start_full_n = (1'b0 | start_for_Loop_g1_proc_U0_full_n);

assign input_AX_ALG_TREADY = read_data_U0_input_AX_ALG_TREADY;

assign output_AX_ALG_TDATA = Loop_2_proc_U0_output_AX_ALG_TDATA;

assign output_AX_ALG_TDEST = Loop_2_proc_U0_output_AX_ALG_TDEST;

assign output_AX_ALG_TID = Loop_2_proc_U0_output_AX_ALG_TID;

assign output_AX_ALG_TKEEP = Loop_2_proc_U0_output_AX_ALG_TKEEP;

assign output_AX_ALG_TLAST = Loop_2_proc_U0_output_AX_ALG_TLAST;

assign output_AX_ALG_TSTRB = Loop_2_proc_U0_output_AX_ALG_TSTRB;

assign output_AX_ALG_TUSER = Loop_2_proc_U0_output_AX_ALG_TUSER;

assign output_AX_ALG_TVALID = Loop_2_proc_U0_output_AX_ALG_TVALID;

assign read_data_U0_ap_continue = 1'b1;

assign read_data_U0_ap_start = 1'b1;

assign read_data_U0_start_full_n = (start_for_devuelveAuxArray_U0_full_n | 1'b0);

assign start_for_Loop_2_proc_U0_din = 1'b1;

assign start_for_Loop_g1_proc_U0_din = 1'b1;

assign start_for_devuelveAuxArray_U0_din = 1'b1;

endmodule //goertzel_algorithm_simpler
