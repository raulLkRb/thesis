// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="axi_algorithm,hls_ip_2017_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=9.634000,HLS_SYN_LAT=17967,HLS_SYN_TPT=17960,HLS_SYN_MEM=10,HLS_SYN_DSP=4,HLS_SYN_FF=2281,HLS_SYN_LUT=2549}" *)

module axi_algorithm (
        ap_clk,
        ap_rst_n,
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
        input_AX_ALG_TVALID,
        input_AX_ALG_TREADY,
        output_AX_ALG_TVALID,
        output_AX_ALG_TREADY
);


input   ap_clk;
input   ap_rst_n;
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
input   input_AX_ALG_TVALID;
output   input_AX_ALG_TREADY;
output   output_AX_ALG_TVALID;
input   output_AX_ALG_TREADY;

reg    ap_rst_n_inv;
wire   [31:0] buf_DISTANCEX_out_V_i_q0;
wire   [31:0] buf_DISTANCEX_out_V_t_q0;
wire    read_data_U0_ap_start;
wire    read_data_U0_ap_done;
wire    read_data_U0_ap_continue;
wire    read_data_U0_ap_idle;
wire    read_data_U0_ap_ready;
wire    read_data_U0_input_AX_ALG_TREADY;
wire   [31:0] read_data_U0_ap_return;
wire    ap_channel_done_buf_Tj_in_0_V;
wire    buf_Tj_in_0_V_full_n;
wire    Block_arrayctor_loop_U0_ap_start;
wire    Block_arrayctor_loop_U0_ap_done;
wire    Block_arrayctor_loop_U0_ap_continue;
wire    Block_arrayctor_loop_U0_ap_idle;
wire    Block_arrayctor_loop_U0_ap_ready;
wire   [23:0] Block_arrayctor_loop_U0_ap_return;
wire    ap_channel_done_p_Val2_cast_loc_ch;
wire    p_Val2_cast_loc_ch_full_n;
wire    sweep_algorithm_DECM_U0_ap_start;
wire    sweep_algorithm_DECM_U0_ap_done;
wire    sweep_algorithm_DECM_U0_ap_continue;
wire    sweep_algorithm_DECM_U0_ap_idle;
wire    sweep_algorithm_DECM_U0_ap_ready;
wire   [1:0] sweep_algorithm_DECM_U0_currentGroupX_OUT_V_address0;
wire    sweep_algorithm_DECM_U0_currentGroupX_OUT_V_ce0;
wire    sweep_algorithm_DECM_U0_currentGroupX_OUT_V_we0;
wire   [31:0] sweep_algorithm_DECM_U0_currentGroupX_OUT_V_d0;
wire    ap_channel_done_buf_DISTANCEX_out_V;
wire    sweep_algorithm_DECM_U0_currentGroupX_OUT_V_full_n;
wire    write_data_U0_ap_start;
wire    write_data_U0_ap_done;
wire    write_data_U0_ap_continue;
wire    write_data_U0_ap_idle;
wire    write_data_U0_ap_ready;
wire   [1:0] write_data_U0_buf_V_address0;
wire    write_data_U0_buf_V_ce0;
wire   [31:0] write_data_U0_output_AX_ALG_TDATA;
wire    write_data_U0_output_AX_ALG_TVALID;
wire   [3:0] write_data_U0_output_AX_ALG_TKEEP;
wire   [3:0] write_data_U0_output_AX_ALG_TSTRB;
wire   [3:0] write_data_U0_output_AX_ALG_TUSER;
wire   [0:0] write_data_U0_output_AX_ALG_TLAST;
wire   [4:0] write_data_U0_output_AX_ALG_TID;
wire   [4:0] write_data_U0_output_AX_ALG_TDEST;
wire    ap_sync_continue;
wire    buf_DISTANCEX_out_V_i_full_n;
wire    buf_DISTANCEX_out_V_t_empty_n;
wire   [31:0] buf_Tj_in_0_V_dout;
wire    buf_Tj_in_0_V_empty_n;
wire   [23:0] p_Val2_cast_loc_ch_dout;
wire    p_Val2_cast_loc_ch_empty_n;
wire    read_data_U0_start_full_n;
wire    read_data_U0_start_write;
wire    Block_arrayctor_loop_U0_start_full_n;
wire    Block_arrayctor_loop_U0_start_write;
wire    sweep_algorithm_DECM_U0_start_full_n;
wire    sweep_algorithm_DECM_U0_start_write;
wire    write_data_U0_start_full_n;
wire    write_data_U0_start_write;

axi_algorithm_bufg8j #(
    .DataWidth( 32 ),
    .AddressRange( 4 ),
    .AddressWidth( 2 ))
buf_DISTANCEX_out_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .i_address0(sweep_algorithm_DECM_U0_currentGroupX_OUT_V_address0),
    .i_ce0(sweep_algorithm_DECM_U0_currentGroupX_OUT_V_ce0),
    .i_we0(sweep_algorithm_DECM_U0_currentGroupX_OUT_V_we0),
    .i_d0(sweep_algorithm_DECM_U0_currentGroupX_OUT_V_d0),
    .i_q0(buf_DISTANCEX_out_V_i_q0),
    .t_address0(write_data_U0_buf_V_address0),
    .t_ce0(write_data_U0_buf_V_ce0),
    .t_we0(1'b0),
    .t_d0(32'd0),
    .t_q0(buf_DISTANCEX_out_V_t_q0),
    .i_ce(1'b1),
    .t_ce(1'b1),
    .i_full_n(buf_DISTANCEX_out_V_i_full_n),
    .i_write(sweep_algorithm_DECM_U0_ap_done),
    .t_empty_n(buf_DISTANCEX_out_V_t_empty_n),
    .t_read(write_data_U0_ap_ready)
);

read_data read_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(read_data_U0_ap_start),
    .ap_done(read_data_U0_ap_done),
    .ap_continue(read_data_U0_ap_continue),
    .ap_idle(read_data_U0_ap_idle),
    .ap_ready(read_data_U0_ap_ready),
    .input_AX_ALG_TDATA(input_AX_ALG_TDATA),
    .input_AX_ALG_TVALID(input_AX_ALG_TVALID),
    .input_AX_ALG_TREADY(read_data_U0_input_AX_ALG_TREADY),
    .input_AX_ALG_TKEEP(input_AX_ALG_TKEEP),
    .input_AX_ALG_TSTRB(input_AX_ALG_TSTRB),
    .input_AX_ALG_TUSER(input_AX_ALG_TUSER),
    .input_AX_ALG_TLAST(input_AX_ALG_TLAST),
    .input_AX_ALG_TID(input_AX_ALG_TID),
    .input_AX_ALG_TDEST(input_AX_ALG_TDEST),
    .ap_return(read_data_U0_ap_return)
);

Block_arrayctor_loop Block_arrayctor_loop_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Block_arrayctor_loop_U0_ap_start),
    .ap_done(Block_arrayctor_loop_U0_ap_done),
    .ap_continue(Block_arrayctor_loop_U0_ap_continue),
    .ap_idle(Block_arrayctor_loop_U0_ap_idle),
    .ap_ready(Block_arrayctor_loop_U0_ap_ready),
    .p_read(buf_Tj_in_0_V_dout),
    .ap_return(Block_arrayctor_loop_U0_ap_return)
);

sweep_algorithm_DECM sweep_algorithm_DECM_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(sweep_algorithm_DECM_U0_ap_start),
    .ap_done(sweep_algorithm_DECM_U0_ap_done),
    .ap_continue(sweep_algorithm_DECM_U0_ap_continue),
    .ap_idle(sweep_algorithm_DECM_U0_ap_idle),
    .ap_ready(sweep_algorithm_DECM_U0_ap_ready),
    .p_read(p_Val2_cast_loc_ch_dout),
    .currentGroupX_OUT_V_address0(sweep_algorithm_DECM_U0_currentGroupX_OUT_V_address0),
    .currentGroupX_OUT_V_ce0(sweep_algorithm_DECM_U0_currentGroupX_OUT_V_ce0),
    .currentGroupX_OUT_V_we0(sweep_algorithm_DECM_U0_currentGroupX_OUT_V_we0),
    .currentGroupX_OUT_V_d0(sweep_algorithm_DECM_U0_currentGroupX_OUT_V_d0),
    .currentGroupX_OUT_V_q0(buf_DISTANCEX_out_V_i_q0)
);

write_data write_data_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(write_data_U0_ap_start),
    .ap_done(write_data_U0_ap_done),
    .ap_continue(write_data_U0_ap_continue),
    .ap_idle(write_data_U0_ap_idle),
    .ap_ready(write_data_U0_ap_ready),
    .buf_V_address0(write_data_U0_buf_V_address0),
    .buf_V_ce0(write_data_U0_buf_V_ce0),
    .buf_V_q0(buf_DISTANCEX_out_V_t_q0),
    .output_AX_ALG_TDATA(write_data_U0_output_AX_ALG_TDATA),
    .output_AX_ALG_TVALID(write_data_U0_output_AX_ALG_TVALID),
    .output_AX_ALG_TREADY(output_AX_ALG_TREADY),
    .output_AX_ALG_TKEEP(write_data_U0_output_AX_ALG_TKEEP),
    .output_AX_ALG_TSTRB(write_data_U0_output_AX_ALG_TSTRB),
    .output_AX_ALG_TUSER(write_data_U0_output_AX_ALG_TUSER),
    .output_AX_ALG_TLAST(write_data_U0_output_AX_ALG_TLAST),
    .output_AX_ALG_TID(write_data_U0_output_AX_ALG_TID),
    .output_AX_ALG_TDEST(write_data_U0_output_AX_ALG_TDEST)
);

fifo_w32_d2_A buf_Tj_in_0_V_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(read_data_U0_ap_return),
    .if_full_n(buf_Tj_in_0_V_full_n),
    .if_write(read_data_U0_ap_done),
    .if_dout(buf_Tj_in_0_V_dout),
    .if_empty_n(buf_Tj_in_0_V_empty_n),
    .if_read(Block_arrayctor_loop_U0_ap_ready)
);

fifo_w24_d2_A p_Val2_cast_loc_ch_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Block_arrayctor_loop_U0_ap_return),
    .if_full_n(p_Val2_cast_loc_ch_full_n),
    .if_write(Block_arrayctor_loop_U0_ap_done),
    .if_dout(p_Val2_cast_loc_ch_dout),
    .if_empty_n(p_Val2_cast_loc_ch_empty_n),
    .if_read(sweep_algorithm_DECM_U0_ap_ready)
);

assign Block_arrayctor_loop_U0_ap_continue = p_Val2_cast_loc_ch_full_n;

assign Block_arrayctor_loop_U0_ap_start = buf_Tj_in_0_V_empty_n;

assign Block_arrayctor_loop_U0_start_full_n = 1'b0;

assign Block_arrayctor_loop_U0_start_write = 1'b0;

assign ap_channel_done_buf_DISTANCEX_out_V = sweep_algorithm_DECM_U0_ap_done;

assign ap_channel_done_buf_Tj_in_0_V = read_data_U0_ap_done;

assign ap_channel_done_p_Val2_cast_loc_ch = Block_arrayctor_loop_U0_ap_done;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b0;

assign input_AX_ALG_TREADY = read_data_U0_input_AX_ALG_TREADY;

assign output_AX_ALG_TDATA = write_data_U0_output_AX_ALG_TDATA;

assign output_AX_ALG_TDEST = write_data_U0_output_AX_ALG_TDEST;

assign output_AX_ALG_TID = write_data_U0_output_AX_ALG_TID;

assign output_AX_ALG_TKEEP = write_data_U0_output_AX_ALG_TKEEP;

assign output_AX_ALG_TLAST = write_data_U0_output_AX_ALG_TLAST;

assign output_AX_ALG_TSTRB = write_data_U0_output_AX_ALG_TSTRB;

assign output_AX_ALG_TUSER = write_data_U0_output_AX_ALG_TUSER;

assign output_AX_ALG_TVALID = write_data_U0_output_AX_ALG_TVALID;

assign read_data_U0_ap_continue = buf_Tj_in_0_V_full_n;

assign read_data_U0_ap_start = 1'b1;

assign read_data_U0_start_full_n = 1'b0;

assign read_data_U0_start_write = 1'b0;

assign sweep_algorithm_DECM_U0_ap_continue = buf_DISTANCEX_out_V_i_full_n;

assign sweep_algorithm_DECM_U0_ap_start = p_Val2_cast_loc_ch_empty_n;

assign sweep_algorithm_DECM_U0_currentGroupX_OUT_V_full_n = buf_DISTANCEX_out_V_i_full_n;

assign sweep_algorithm_DECM_U0_start_full_n = 1'b0;

assign sweep_algorithm_DECM_U0_start_write = 1'b0;

assign write_data_U0_ap_continue = 1'b1;

assign write_data_U0_ap_start = buf_DISTANCEX_out_V_t_empty_n;

assign write_data_U0_start_full_n = 1'b0;

assign write_data_U0_start_write = 1'b0;

endmodule //axi_algorithm