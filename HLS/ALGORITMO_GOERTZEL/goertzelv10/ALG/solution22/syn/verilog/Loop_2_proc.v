// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Loop_2_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        y_V_dout,
        y_V_empty_n,
        y_V_read,
        output_AX_ALG_TDATA,
        output_AX_ALG_TVALID,
        output_AX_ALG_TREADY,
        output_AX_ALG_TKEEP,
        output_AX_ALG_TSTRB,
        output_AX_ALG_TUSER,
        output_AX_ALG_TLAST,
        output_AX_ALG_TID,
        output_AX_ALG_TDEST
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [31:0] y_V_dout;
input   y_V_empty_n;
output   y_V_read;
output  [31:0] output_AX_ALG_TDATA;
output   output_AX_ALG_TVALID;
input   output_AX_ALG_TREADY;
output  [3:0] output_AX_ALG_TKEEP;
output  [3:0] output_AX_ALG_TSTRB;
output  [3:0] output_AX_ALG_TUSER;
output  [0:0] output_AX_ALG_TLAST;
output  [4:0] output_AX_ALG_TID;
output  [4:0] output_AX_ALG_TDEST;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg y_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] output_AX_ALG_data_V_1_data_out;
reg    output_AX_ALG_data_V_1_vld_in;
wire    output_AX_ALG_data_V_1_vld_out;
wire    output_AX_ALG_data_V_1_ack_in;
wire    output_AX_ALG_data_V_1_ack_out;
reg   [31:0] output_AX_ALG_data_V_1_payload_A;
reg   [31:0] output_AX_ALG_data_V_1_payload_B;
reg    output_AX_ALG_data_V_1_sel_rd;
reg    output_AX_ALG_data_V_1_sel_wr;
wire    output_AX_ALG_data_V_1_sel;
wire    output_AX_ALG_data_V_1_load_A;
wire    output_AX_ALG_data_V_1_load_B;
reg   [1:0] output_AX_ALG_data_V_1_state;
wire    output_AX_ALG_data_V_1_state_cmp_full;
wire   [3:0] output_AX_ALG_keep_V_1_data_out;
reg    output_AX_ALG_keep_V_1_vld_in;
wire    output_AX_ALG_keep_V_1_vld_out;
wire    output_AX_ALG_keep_V_1_ack_in;
wire    output_AX_ALG_keep_V_1_ack_out;
reg    output_AX_ALG_keep_V_1_sel_rd;
wire    output_AX_ALG_keep_V_1_sel;
reg   [1:0] output_AX_ALG_keep_V_1_state;
wire   [3:0] output_AX_ALG_strb_V_1_data_out;
reg    output_AX_ALG_strb_V_1_vld_in;
wire    output_AX_ALG_strb_V_1_vld_out;
wire    output_AX_ALG_strb_V_1_ack_in;
wire    output_AX_ALG_strb_V_1_ack_out;
reg    output_AX_ALG_strb_V_1_sel_rd;
wire    output_AX_ALG_strb_V_1_sel;
reg   [1:0] output_AX_ALG_strb_V_1_state;
wire   [3:0] output_AX_ALG_user_V_1_data_out;
reg    output_AX_ALG_user_V_1_vld_in;
wire    output_AX_ALG_user_V_1_vld_out;
wire    output_AX_ALG_user_V_1_ack_in;
wire    output_AX_ALG_user_V_1_ack_out;
reg    output_AX_ALG_user_V_1_sel_rd;
wire    output_AX_ALG_user_V_1_sel;
reg   [1:0] output_AX_ALG_user_V_1_state;
reg   [0:0] output_AX_ALG_last_V_1_data_out;
reg    output_AX_ALG_last_V_1_vld_in;
wire    output_AX_ALG_last_V_1_vld_out;
wire    output_AX_ALG_last_V_1_ack_in;
wire    output_AX_ALG_last_V_1_ack_out;
reg   [0:0] output_AX_ALG_last_V_1_payload_A;
reg   [0:0] output_AX_ALG_last_V_1_payload_B;
reg    output_AX_ALG_last_V_1_sel_rd;
reg    output_AX_ALG_last_V_1_sel_wr;
wire    output_AX_ALG_last_V_1_sel;
wire    output_AX_ALG_last_V_1_load_A;
wire    output_AX_ALG_last_V_1_load_B;
reg   [1:0] output_AX_ALG_last_V_1_state;
wire    output_AX_ALG_last_V_1_state_cmp_full;
wire   [4:0] output_AX_ALG_id_V_1_data_out;
reg    output_AX_ALG_id_V_1_vld_in;
wire    output_AX_ALG_id_V_1_vld_out;
wire    output_AX_ALG_id_V_1_ack_in;
wire    output_AX_ALG_id_V_1_ack_out;
reg    output_AX_ALG_id_V_1_sel_rd;
wire    output_AX_ALG_id_V_1_sel;
reg   [1:0] output_AX_ALG_id_V_1_state;
wire   [4:0] output_AX_ALG_dest_V_1_data_out;
reg    output_AX_ALG_dest_V_1_vld_in;
wire    output_AX_ALG_dest_V_1_vld_out;
wire    output_AX_ALG_dest_V_1_ack_in;
wire    output_AX_ALG_dest_V_1_ack_out;
reg    output_AX_ALG_dest_V_1_sel_rd;
wire    output_AX_ALG_dest_V_1_sel;
reg   [1:0] output_AX_ALG_dest_V_1_state;
reg    y_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0_flag00000000;
reg   [0:0] exitcond_reg_142;
reg    output_AX_ALG_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] ap_reg_pp0_iter1_exitcond_reg_142;
reg   [4:0] k_reg_113;
wire   [0:0] exitcond_fu_124_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_flag00011001;
wire   [4:0] k_1_fu_130_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [0:0] last_assign_fu_136_p2;
reg   [0:0] last_assign_reg_151;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_flag00001001;
wire    ap_CS_fsm_state5;
reg    ap_block_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 output_AX_ALG_data_V_1_sel_rd = 1'b0;
#0 output_AX_ALG_data_V_1_sel_wr = 1'b0;
#0 output_AX_ALG_data_V_1_state = 2'd0;
#0 output_AX_ALG_keep_V_1_sel_rd = 1'b0;
#0 output_AX_ALG_keep_V_1_state = 2'd0;
#0 output_AX_ALG_strb_V_1_sel_rd = 1'b0;
#0 output_AX_ALG_strb_V_1_state = 2'd0;
#0 output_AX_ALG_user_V_1_sel_rd = 1'b0;
#0 output_AX_ALG_user_V_1_state = 2'd0;
#0 output_AX_ALG_last_V_1_sel_rd = 1'b0;
#0 output_AX_ALG_last_V_1_sel_wr = 1'b0;
#0 output_AX_ALG_last_V_1_state = 2'd0;
#0 output_AX_ALG_id_V_1_sel_rd = 1'b0;
#0 output_AX_ALG_id_V_1_state = 2'd0;
#0 output_AX_ALG_dest_V_1_sel_rd = 1'b0;
#0 output_AX_ALG_dest_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state5) & ~((1'b0 == output_AX_ALG_dest_V_1_ack_in) | (1'b0 == output_AX_ALG_data_V_1_ack_in) | (1'b0 == output_AX_ALG_keep_V_1_ack_in) | (1'b0 == output_AX_ALG_strb_V_1_ack_in) | (1'b0 == output_AX_ALG_user_V_1_ack_in) | (1'b0 == output_AX_ALG_last_V_1_ack_in) | (1'b0 == output_AX_ALG_id_V_1_ack_in)))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_data_V_1_ack_out) & (1'b1 == output_AX_ALG_data_V_1_vld_out))) begin
            output_AX_ALG_data_V_1_sel_rd <= ~output_AX_ALG_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_data_V_1_vld_in) & (1'b1 == output_AX_ALG_data_V_1_ack_in))) begin
            output_AX_ALG_data_V_1_sel_wr <= ~output_AX_ALG_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_data_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == output_AX_ALG_data_V_1_vld_in) & (1'b1 == output_AX_ALG_data_V_1_ack_out) & (output_AX_ALG_data_V_1_state == 2'd3)) | ((1'b0 == output_AX_ALG_data_V_1_vld_in) & (output_AX_ALG_data_V_1_state == 2'd2)))) begin
            output_AX_ALG_data_V_1_state <= 2'd2;
        end else if ((((1'b1 == output_AX_ALG_data_V_1_vld_in) & (1'b0 == output_AX_ALG_data_V_1_ack_out) & (output_AX_ALG_data_V_1_state == 2'd3)) | ((1'b0 == output_AX_ALG_data_V_1_ack_out) & (output_AX_ALG_data_V_1_state == 2'd1)))) begin
            output_AX_ALG_data_V_1_state <= 2'd1;
        end else if ((((1'b1 == output_AX_ALG_data_V_1_vld_in) & (output_AX_ALG_data_V_1_state == 2'd2)) | ((1'b1 == output_AX_ALG_data_V_1_ack_out) & (output_AX_ALG_data_V_1_state == 2'd1)) | ((output_AX_ALG_data_V_1_state == 2'd3) & ~((1'b1 == output_AX_ALG_data_V_1_vld_in) & (1'b0 == output_AX_ALG_data_V_1_ack_out)) & ~((1'b0 == output_AX_ALG_data_V_1_vld_in) & (1'b1 == output_AX_ALG_data_V_1_ack_out))))) begin
            output_AX_ALG_data_V_1_state <= 2'd3;
        end else begin
            output_AX_ALG_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_dest_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_dest_V_1_ack_out) & (1'b1 == output_AX_ALG_dest_V_1_vld_out))) begin
            output_AX_ALG_dest_V_1_sel_rd <= ~output_AX_ALG_dest_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_dest_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == output_AX_ALG_dest_V_1_vld_in) & (1'b1 == output_AX_ALG_dest_V_1_ack_out) & (2'd3 == output_AX_ALG_dest_V_1_state)) | ((1'b0 == output_AX_ALG_dest_V_1_vld_in) & (2'd2 == output_AX_ALG_dest_V_1_state)))) begin
            output_AX_ALG_dest_V_1_state <= 2'd2;
        end else if ((((1'b1 == output_AX_ALG_dest_V_1_vld_in) & (1'b0 == output_AX_ALG_dest_V_1_ack_out) & (2'd3 == output_AX_ALG_dest_V_1_state)) | ((1'b0 == output_AX_ALG_dest_V_1_ack_out) & (2'd1 == output_AX_ALG_dest_V_1_state)))) begin
            output_AX_ALG_dest_V_1_state <= 2'd1;
        end else if ((((1'b1 == output_AX_ALG_dest_V_1_vld_in) & (2'd2 == output_AX_ALG_dest_V_1_state)) | ((1'b1 == output_AX_ALG_dest_V_1_ack_out) & (2'd1 == output_AX_ALG_dest_V_1_state)) | ((2'd3 == output_AX_ALG_dest_V_1_state) & ~((1'b1 == output_AX_ALG_dest_V_1_vld_in) & (1'b0 == output_AX_ALG_dest_V_1_ack_out)) & ~((1'b0 == output_AX_ALG_dest_V_1_vld_in) & (1'b1 == output_AX_ALG_dest_V_1_ack_out))))) begin
            output_AX_ALG_dest_V_1_state <= 2'd3;
        end else begin
            output_AX_ALG_dest_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_id_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_id_V_1_ack_out) & (1'b1 == output_AX_ALG_id_V_1_vld_out))) begin
            output_AX_ALG_id_V_1_sel_rd <= ~output_AX_ALG_id_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_id_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == output_AX_ALG_id_V_1_vld_in) & (1'b1 == output_AX_ALG_id_V_1_ack_out) & (2'd3 == output_AX_ALG_id_V_1_state)) | ((1'b0 == output_AX_ALG_id_V_1_vld_in) & (2'd2 == output_AX_ALG_id_V_1_state)))) begin
            output_AX_ALG_id_V_1_state <= 2'd2;
        end else if ((((1'b1 == output_AX_ALG_id_V_1_vld_in) & (1'b0 == output_AX_ALG_id_V_1_ack_out) & (2'd3 == output_AX_ALG_id_V_1_state)) | ((1'b0 == output_AX_ALG_id_V_1_ack_out) & (2'd1 == output_AX_ALG_id_V_1_state)))) begin
            output_AX_ALG_id_V_1_state <= 2'd1;
        end else if ((((1'b1 == output_AX_ALG_id_V_1_vld_in) & (2'd2 == output_AX_ALG_id_V_1_state)) | ((1'b1 == output_AX_ALG_id_V_1_ack_out) & (2'd1 == output_AX_ALG_id_V_1_state)) | ((2'd3 == output_AX_ALG_id_V_1_state) & ~((1'b1 == output_AX_ALG_id_V_1_vld_in) & (1'b0 == output_AX_ALG_id_V_1_ack_out)) & ~((1'b0 == output_AX_ALG_id_V_1_vld_in) & (1'b1 == output_AX_ALG_id_V_1_ack_out))))) begin
            output_AX_ALG_id_V_1_state <= 2'd3;
        end else begin
            output_AX_ALG_id_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_keep_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_keep_V_1_ack_out) & (1'b1 == output_AX_ALG_keep_V_1_vld_out))) begin
            output_AX_ALG_keep_V_1_sel_rd <= ~output_AX_ALG_keep_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_keep_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == output_AX_ALG_keep_V_1_vld_in) & (1'b1 == output_AX_ALG_keep_V_1_ack_out) & (2'd3 == output_AX_ALG_keep_V_1_state)) | ((1'b0 == output_AX_ALG_keep_V_1_vld_in) & (2'd2 == output_AX_ALG_keep_V_1_state)))) begin
            output_AX_ALG_keep_V_1_state <= 2'd2;
        end else if ((((1'b1 == output_AX_ALG_keep_V_1_vld_in) & (1'b0 == output_AX_ALG_keep_V_1_ack_out) & (2'd3 == output_AX_ALG_keep_V_1_state)) | ((1'b0 == output_AX_ALG_keep_V_1_ack_out) & (2'd1 == output_AX_ALG_keep_V_1_state)))) begin
            output_AX_ALG_keep_V_1_state <= 2'd1;
        end else if ((((1'b1 == output_AX_ALG_keep_V_1_vld_in) & (2'd2 == output_AX_ALG_keep_V_1_state)) | ((1'b1 == output_AX_ALG_keep_V_1_ack_out) & (2'd1 == output_AX_ALG_keep_V_1_state)) | ((2'd3 == output_AX_ALG_keep_V_1_state) & ~((1'b1 == output_AX_ALG_keep_V_1_vld_in) & (1'b0 == output_AX_ALG_keep_V_1_ack_out)) & ~((1'b0 == output_AX_ALG_keep_V_1_vld_in) & (1'b1 == output_AX_ALG_keep_V_1_ack_out))))) begin
            output_AX_ALG_keep_V_1_state <= 2'd3;
        end else begin
            output_AX_ALG_keep_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_last_V_1_ack_out) & (1'b1 == output_AX_ALG_last_V_1_vld_out))) begin
            output_AX_ALG_last_V_1_sel_rd <= ~output_AX_ALG_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_last_V_1_vld_in) & (1'b1 == output_AX_ALG_last_V_1_ack_in))) begin
            output_AX_ALG_last_V_1_sel_wr <= ~output_AX_ALG_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_last_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == output_AX_ALG_last_V_1_vld_in) & (1'b1 == output_AX_ALG_last_V_1_ack_out) & (2'd3 == output_AX_ALG_last_V_1_state)) | ((1'b0 == output_AX_ALG_last_V_1_vld_in) & (2'd2 == output_AX_ALG_last_V_1_state)))) begin
            output_AX_ALG_last_V_1_state <= 2'd2;
        end else if ((((1'b1 == output_AX_ALG_last_V_1_vld_in) & (1'b0 == output_AX_ALG_last_V_1_ack_out) & (2'd3 == output_AX_ALG_last_V_1_state)) | ((1'b0 == output_AX_ALG_last_V_1_ack_out) & (2'd1 == output_AX_ALG_last_V_1_state)))) begin
            output_AX_ALG_last_V_1_state <= 2'd1;
        end else if ((((1'b1 == output_AX_ALG_last_V_1_vld_in) & (2'd2 == output_AX_ALG_last_V_1_state)) | ((1'b1 == output_AX_ALG_last_V_1_ack_out) & (2'd1 == output_AX_ALG_last_V_1_state)) | ((2'd3 == output_AX_ALG_last_V_1_state) & ~((1'b1 == output_AX_ALG_last_V_1_vld_in) & (1'b0 == output_AX_ALG_last_V_1_ack_out)) & ~((1'b0 == output_AX_ALG_last_V_1_vld_in) & (1'b1 == output_AX_ALG_last_V_1_ack_out))))) begin
            output_AX_ALG_last_V_1_state <= 2'd3;
        end else begin
            output_AX_ALG_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_strb_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_strb_V_1_ack_out) & (1'b1 == output_AX_ALG_strb_V_1_vld_out))) begin
            output_AX_ALG_strb_V_1_sel_rd <= ~output_AX_ALG_strb_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_strb_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == output_AX_ALG_strb_V_1_vld_in) & (1'b1 == output_AX_ALG_strb_V_1_ack_out) & (2'd3 == output_AX_ALG_strb_V_1_state)) | ((1'b0 == output_AX_ALG_strb_V_1_vld_in) & (2'd2 == output_AX_ALG_strb_V_1_state)))) begin
            output_AX_ALG_strb_V_1_state <= 2'd2;
        end else if ((((1'b1 == output_AX_ALG_strb_V_1_vld_in) & (1'b0 == output_AX_ALG_strb_V_1_ack_out) & (2'd3 == output_AX_ALG_strb_V_1_state)) | ((1'b0 == output_AX_ALG_strb_V_1_ack_out) & (2'd1 == output_AX_ALG_strb_V_1_state)))) begin
            output_AX_ALG_strb_V_1_state <= 2'd1;
        end else if ((((1'b1 == output_AX_ALG_strb_V_1_vld_in) & (2'd2 == output_AX_ALG_strb_V_1_state)) | ((1'b1 == output_AX_ALG_strb_V_1_ack_out) & (2'd1 == output_AX_ALG_strb_V_1_state)) | ((2'd3 == output_AX_ALG_strb_V_1_state) & ~((1'b1 == output_AX_ALG_strb_V_1_vld_in) & (1'b0 == output_AX_ALG_strb_V_1_ack_out)) & ~((1'b0 == output_AX_ALG_strb_V_1_vld_in) & (1'b1 == output_AX_ALG_strb_V_1_ack_out))))) begin
            output_AX_ALG_strb_V_1_state <= 2'd3;
        end else begin
            output_AX_ALG_strb_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_user_V_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == output_AX_ALG_user_V_1_ack_out) & (1'b1 == output_AX_ALG_user_V_1_vld_out))) begin
            output_AX_ALG_user_V_1_sel_rd <= ~output_AX_ALG_user_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        output_AX_ALG_user_V_1_state <= 2'd0;
    end else begin
        if ((((1'b0 == output_AX_ALG_user_V_1_vld_in) & (1'b1 == output_AX_ALG_user_V_1_ack_out) & (2'd3 == output_AX_ALG_user_V_1_state)) | ((1'b0 == output_AX_ALG_user_V_1_vld_in) & (2'd2 == output_AX_ALG_user_V_1_state)))) begin
            output_AX_ALG_user_V_1_state <= 2'd2;
        end else if ((((1'b1 == output_AX_ALG_user_V_1_vld_in) & (1'b0 == output_AX_ALG_user_V_1_ack_out) & (2'd3 == output_AX_ALG_user_V_1_state)) | ((1'b0 == output_AX_ALG_user_V_1_ack_out) & (2'd1 == output_AX_ALG_user_V_1_state)))) begin
            output_AX_ALG_user_V_1_state <= 2'd1;
        end else if ((((1'b1 == output_AX_ALG_user_V_1_vld_in) & (2'd2 == output_AX_ALG_user_V_1_state)) | ((1'b1 == output_AX_ALG_user_V_1_ack_out) & (2'd1 == output_AX_ALG_user_V_1_state)) | ((2'd3 == output_AX_ALG_user_V_1_state) & ~((1'b1 == output_AX_ALG_user_V_1_vld_in) & (1'b0 == output_AX_ALG_user_V_1_ack_out)) & ~((1'b0 == output_AX_ALG_user_V_1_vld_in) & (1'b1 == output_AX_ALG_user_V_1_ack_out))))) begin
            output_AX_ALG_user_V_1_state <= 2'd3;
        end else begin
            output_AX_ALG_user_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
        k_reg_113 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == exitcond_fu_124_p2))) begin
        k_reg_113 <= k_1_fu_130_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_exitcond_reg_142 <= exitcond_reg_142;
        exitcond_reg_142 <= exitcond_fu_124_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == exitcond_fu_124_p2))) begin
        last_assign_reg_151 <= last_assign_fu_136_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == output_AX_ALG_data_V_1_load_A)) begin
        output_AX_ALG_data_V_1_payload_A <= y_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == output_AX_ALG_data_V_1_load_B)) begin
        output_AX_ALG_data_V_1_payload_B <= y_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == output_AX_ALG_last_V_1_load_A)) begin
        output_AX_ALG_last_V_1_payload_A <= last_assign_reg_151;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == output_AX_ALG_last_V_1_load_B)) begin
        output_AX_ALG_last_V_1_payload_B <= last_assign_reg_151;
    end
end

always @ (*) begin
    if ((1'd1 == exitcond_fu_124_p2)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~((1'b0 == output_AX_ALG_dest_V_1_ack_in) | (1'b0 == output_AX_ALG_data_V_1_ack_in) | (1'b0 == output_AX_ALG_keep_V_1_ack_in) | (1'b0 == output_AX_ALG_strb_V_1_ack_in) | (1'b0 == output_AX_ALG_user_V_1_ack_in) | (1'b0 == output_AX_ALG_last_V_1_ack_in) | (1'b0 == output_AX_ALG_id_V_1_ack_in)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~((1'b0 == output_AX_ALG_dest_V_1_ack_in) | (1'b0 == output_AX_ALG_data_V_1_ack_in) | (1'b0 == output_AX_ALG_keep_V_1_ack_in) | (1'b0 == output_AX_ALG_strb_V_1_ack_in) | (1'b0 == output_AX_ALG_user_V_1_ack_in) | (1'b0 == output_AX_ALG_last_V_1_ack_in) | (1'b0 == output_AX_ALG_id_V_1_ack_in)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'd0 == exitcond_reg_142)) | ((ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (1'd0 == ap_reg_pp0_iter1_exitcond_reg_142)))) begin
        output_AX_ALG_TDATA_blk_n = output_AX_ALG_data_V_1_state[1'd1];
    end else begin
        output_AX_ALG_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == output_AX_ALG_data_V_1_sel)) begin
        output_AX_ALG_data_V_1_data_out = output_AX_ALG_data_V_1_payload_B;
    end else begin
        output_AX_ALG_data_V_1_data_out = output_AX_ALG_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        output_AX_ALG_data_V_1_vld_in = 1'b1;
    end else begin
        output_AX_ALG_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        output_AX_ALG_dest_V_1_vld_in = 1'b1;
    end else begin
        output_AX_ALG_dest_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        output_AX_ALG_id_V_1_vld_in = 1'b1;
    end else begin
        output_AX_ALG_id_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        output_AX_ALG_keep_V_1_vld_in = 1'b1;
    end else begin
        output_AX_ALG_keep_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == output_AX_ALG_last_V_1_sel)) begin
        output_AX_ALG_last_V_1_data_out = output_AX_ALG_last_V_1_payload_B;
    end else begin
        output_AX_ALG_last_V_1_data_out = output_AX_ALG_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        output_AX_ALG_last_V_1_vld_in = 1'b1;
    end else begin
        output_AX_ALG_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        output_AX_ALG_strb_V_1_vld_in = 1'b1;
    end else begin
        output_AX_ALG_strb_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        output_AX_ALG_user_V_1_vld_in = 1'b1;
    end else begin
        output_AX_ALG_user_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0) & (1'd0 == exitcond_reg_142))) begin
        y_V_blk_n = y_V_empty_n;
    end else begin
        y_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        y_V_read = 1'b1;
    end else begin
        y_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == ap_start) | (ap_done_reg == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'd1 == exitcond_fu_124_p2) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'd1 == exitcond_fu_124_p2) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & ~((1'b0 == output_AX_ALG_dest_V_1_ack_in) | (1'b0 == output_AX_ALG_data_V_1_ack_in) | (1'b0 == output_AX_ALG_keep_V_1_ack_in) | (1'b0 == output_AX_ALG_strb_V_1_ack_in) | (1'b0 == output_AX_ALG_user_V_1_ack_in) | (1'b0 == output_AX_ALG_last_V_1_ack_in) | (1'b0 == output_AX_ALG_id_V_1_ack_in)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_flag00001001 = ((1'b1 == ap_enable_reg_pp0_iter1) & (1'd0 == exitcond_reg_142) & (1'b0 == y_V_empty_n));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011001 = (((1'b1 == ap_enable_reg_pp0_iter1) & (((1'd0 == exitcond_reg_142) & (1'b0 == y_V_empty_n)) | (1'b1 == ap_block_state3_io))) | ((1'b1 == ap_enable_reg_pp0_iter2) & (1'b1 == ap_block_state4_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_flag00011011 = (((1'b1 == ap_enable_reg_pp0_iter1) & (((1'd0 == exitcond_reg_142) & (1'b0 == y_V_empty_n)) | (1'b1 == ap_block_state3_io))) | ((1'b1 == ap_enable_reg_pp0_iter2) & (1'b1 == ap_block_state4_io)));
end

always @ (*) begin
    ap_block_state1 = ((1'b0 == ap_start) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((1'd0 == exitcond_reg_142) & (1'b0 == output_AX_ALG_dest_V_1_ack_in));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = ((1'd0 == exitcond_reg_142) & (1'b0 == y_V_empty_n));
end

always @ (*) begin
    ap_block_state4_io = ((1'd0 == ap_reg_pp0_iter1_exitcond_reg_142) & (1'b0 == output_AX_ALG_dest_V_1_ack_in));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((1'b0 == output_AX_ALG_dest_V_1_ack_in) | (1'b0 == output_AX_ALG_data_V_1_ack_in) | (1'b0 == output_AX_ALG_keep_V_1_ack_in) | (1'b0 == output_AX_ALG_strb_V_1_ack_in) | (1'b0 == output_AX_ALG_user_V_1_ack_in) | (1'b0 == output_AX_ALG_last_V_1_ack_in) | (1'b0 == output_AX_ALG_id_V_1_ack_in));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond_fu_124_p2 = ((k_reg_113 == 5'd16) ? 1'b1 : 1'b0);

assign k_1_fu_130_p2 = (k_reg_113 + 5'd1);

assign last_assign_fu_136_p2 = ((k_reg_113 == 5'd15) ? 1'b1 : 1'b0);

assign output_AX_ALG_TDATA = output_AX_ALG_data_V_1_data_out;

assign output_AX_ALG_TDEST = output_AX_ALG_dest_V_1_data_out;

assign output_AX_ALG_TID = output_AX_ALG_id_V_1_data_out;

assign output_AX_ALG_TKEEP = output_AX_ALG_keep_V_1_data_out;

assign output_AX_ALG_TLAST = output_AX_ALG_last_V_1_data_out;

assign output_AX_ALG_TSTRB = output_AX_ALG_strb_V_1_data_out;

assign output_AX_ALG_TUSER = output_AX_ALG_user_V_1_data_out;

assign output_AX_ALG_TVALID = output_AX_ALG_dest_V_1_state[1'd0];

assign output_AX_ALG_data_V_1_ack_in = output_AX_ALG_data_V_1_state[1'd1];

assign output_AX_ALG_data_V_1_ack_out = output_AX_ALG_TREADY;

assign output_AX_ALG_data_V_1_load_A = (output_AX_ALG_data_V_1_state_cmp_full & ~output_AX_ALG_data_V_1_sel_wr);

assign output_AX_ALG_data_V_1_load_B = (output_AX_ALG_data_V_1_sel_wr & output_AX_ALG_data_V_1_state_cmp_full);

assign output_AX_ALG_data_V_1_sel = output_AX_ALG_data_V_1_sel_rd;

assign output_AX_ALG_data_V_1_state_cmp_full = ((output_AX_ALG_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign output_AX_ALG_data_V_1_vld_out = output_AX_ALG_data_V_1_state[1'd0];

assign output_AX_ALG_dest_V_1_ack_in = output_AX_ALG_dest_V_1_state[1'd1];

assign output_AX_ALG_dest_V_1_ack_out = output_AX_ALG_TREADY;

assign output_AX_ALG_dest_V_1_data_out = 5'd0;

assign output_AX_ALG_dest_V_1_sel = output_AX_ALG_dest_V_1_sel_rd;

assign output_AX_ALG_dest_V_1_vld_out = output_AX_ALG_dest_V_1_state[1'd0];

assign output_AX_ALG_id_V_1_ack_in = output_AX_ALG_id_V_1_state[1'd1];

assign output_AX_ALG_id_V_1_ack_out = output_AX_ALG_TREADY;

assign output_AX_ALG_id_V_1_data_out = 5'd0;

assign output_AX_ALG_id_V_1_sel = output_AX_ALG_id_V_1_sel_rd;

assign output_AX_ALG_id_V_1_vld_out = output_AX_ALG_id_V_1_state[1'd0];

assign output_AX_ALG_keep_V_1_ack_in = output_AX_ALG_keep_V_1_state[1'd1];

assign output_AX_ALG_keep_V_1_ack_out = output_AX_ALG_TREADY;

assign output_AX_ALG_keep_V_1_data_out = 4'd15;

assign output_AX_ALG_keep_V_1_sel = output_AX_ALG_keep_V_1_sel_rd;

assign output_AX_ALG_keep_V_1_vld_out = output_AX_ALG_keep_V_1_state[1'd0];

assign output_AX_ALG_last_V_1_ack_in = output_AX_ALG_last_V_1_state[1'd1];

assign output_AX_ALG_last_V_1_ack_out = output_AX_ALG_TREADY;

assign output_AX_ALG_last_V_1_load_A = (output_AX_ALG_last_V_1_state_cmp_full & ~output_AX_ALG_last_V_1_sel_wr);

assign output_AX_ALG_last_V_1_load_B = (output_AX_ALG_last_V_1_sel_wr & output_AX_ALG_last_V_1_state_cmp_full);

assign output_AX_ALG_last_V_1_sel = output_AX_ALG_last_V_1_sel_rd;

assign output_AX_ALG_last_V_1_state_cmp_full = ((output_AX_ALG_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign output_AX_ALG_last_V_1_vld_out = output_AX_ALG_last_V_1_state[1'd0];

assign output_AX_ALG_strb_V_1_ack_in = output_AX_ALG_strb_V_1_state[1'd1];

assign output_AX_ALG_strb_V_1_ack_out = output_AX_ALG_TREADY;

assign output_AX_ALG_strb_V_1_data_out = 4'd15;

assign output_AX_ALG_strb_V_1_sel = output_AX_ALG_strb_V_1_sel_rd;

assign output_AX_ALG_strb_V_1_vld_out = output_AX_ALG_strb_V_1_state[1'd0];

assign output_AX_ALG_user_V_1_ack_in = output_AX_ALG_user_V_1_state[1'd1];

assign output_AX_ALG_user_V_1_ack_out = output_AX_ALG_TREADY;

assign output_AX_ALG_user_V_1_data_out = 4'd0;

assign output_AX_ALG_user_V_1_sel = output_AX_ALG_user_V_1_sel_rd;

assign output_AX_ALG_user_V_1_vld_out = output_AX_ALG_user_V_1_state[1'd0];

endmodule //Loop_2_proc
