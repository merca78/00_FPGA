// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr  7 01:06:42 2024
// Host        : MercaPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               k:/Z01_ArchiveProj/00_Project/03_DESD/07_LAB2/01_proj/jstkLab2/jstkLab2.gen/sources_1/bd/jsk_top/ip/jsk_top_digilent_jstk2_0_0/jsk_top_digilent_jstk2_0_0_sim_netlist.v
// Design      : jsk_top_digilent_jstk2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "jsk_top_digilent_jstk2_0_0,digilent_jstk2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "digilent_jstk2,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module jsk_top_digilent_jstk2_0_0
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    led_r,
    led_g,
    led_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output btn_jstk;
  output btn_trigger;
  input [7:0]led_r;
  input [7:0]led_g;
  input [7:0]led_b;

  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [9:0]jstk_x;
  wire [9:0]jstk_y;
  wire [7:0]led_b;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;

  jsk_top_digilent_jstk2_0_0_digilent_jstk2 U0
       (.D({led_r,led_g,led_b}),
        .aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x),
        .jstk_y(jstk_y),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "digilent_jstk2" *) 
module jsk_top_digilent_jstk2_0_0_digilent_jstk2
   (m_axis_tdata,
    jstk_x,
    jstk_y,
    m_axis_tvalid,
    btn_trigger,
    btn_jstk,
    aclk,
    D,
    s_axis_tdata,
    m_axis_tready,
    aresetn,
    s_axis_tvalid);
  output [7:0]m_axis_tdata;
  output [9:0]jstk_x;
  output [9:0]jstk_y;
  output m_axis_tvalid;
  output btn_trigger;
  output btn_jstk;
  input aclk;
  input [23:0]D;
  input [7:0]s_axis_tdata;
  input m_axis_tready;
  input aresetn;
  input s_axis_tvalid;

  wire [23:0]D;
  wire \FSM_sequential_curr_state[0]_i_2_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_10_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_2_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_3_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_4_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_5_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_6_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_7_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_8_n_0 ;
  wire \FSM_sequential_curr_state[1]_i_9_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_jstk_reg_i_1_n_0;
  wire btn_jstk_reg_i_2_n_0;
  wire btn_jstk_reg_i_3_n_0;
  wire btn_trigger;
  wire btn_trigger_reg_i_1_n_0;
  wire [1:0]curr_state;
  wire [31:1]data0;
  wire delay_cnt;
  wire \delay_cnt[0]_i_1_n_0 ;
  wire \delay_cnt[10]_i_1_n_0 ;
  wire \delay_cnt[11]_i_1_n_0 ;
  wire \delay_cnt[12]_i_1_n_0 ;
  wire \delay_cnt[13]_i_1_n_0 ;
  wire \delay_cnt[14]_i_1_n_0 ;
  wire \delay_cnt[15]_i_1_n_0 ;
  wire \delay_cnt[16]_i_1_n_0 ;
  wire \delay_cnt[17]_i_1_n_0 ;
  wire \delay_cnt[18]_i_1_n_0 ;
  wire \delay_cnt[19]_i_1_n_0 ;
  wire \delay_cnt[1]_i_1_n_0 ;
  wire \delay_cnt[20]_i_1_n_0 ;
  wire \delay_cnt[21]_i_1_n_0 ;
  wire \delay_cnt[22]_i_1_n_0 ;
  wire \delay_cnt[23]_i_1_n_0 ;
  wire \delay_cnt[24]_i_1_n_0 ;
  wire \delay_cnt[25]_i_1_n_0 ;
  wire \delay_cnt[26]_i_1_n_0 ;
  wire \delay_cnt[27]_i_1_n_0 ;
  wire \delay_cnt[28]_i_1_n_0 ;
  wire \delay_cnt[29]_i_1_n_0 ;
  wire \delay_cnt[2]_i_1_n_0 ;
  wire \delay_cnt[30]_i_1_n_0 ;
  wire \delay_cnt[31]_i_2_n_0 ;
  wire \delay_cnt[3]_i_1_n_0 ;
  wire \delay_cnt[4]_i_1_n_0 ;
  wire \delay_cnt[5]_i_1_n_0 ;
  wire \delay_cnt[6]_i_1_n_0 ;
  wire \delay_cnt[7]_i_1_n_0 ;
  wire \delay_cnt[8]_i_1_n_0 ;
  wire \delay_cnt[9]_i_1_n_0 ;
  wire \delay_cnt_reg[12]_i_2_n_0 ;
  wire \delay_cnt_reg[12]_i_2_n_1 ;
  wire \delay_cnt_reg[12]_i_2_n_2 ;
  wire \delay_cnt_reg[12]_i_2_n_3 ;
  wire \delay_cnt_reg[16]_i_2_n_0 ;
  wire \delay_cnt_reg[16]_i_2_n_1 ;
  wire \delay_cnt_reg[16]_i_2_n_2 ;
  wire \delay_cnt_reg[16]_i_2_n_3 ;
  wire \delay_cnt_reg[20]_i_2_n_0 ;
  wire \delay_cnt_reg[20]_i_2_n_1 ;
  wire \delay_cnt_reg[20]_i_2_n_2 ;
  wire \delay_cnt_reg[20]_i_2_n_3 ;
  wire \delay_cnt_reg[24]_i_2_n_0 ;
  wire \delay_cnt_reg[24]_i_2_n_1 ;
  wire \delay_cnt_reg[24]_i_2_n_2 ;
  wire \delay_cnt_reg[24]_i_2_n_3 ;
  wire \delay_cnt_reg[28]_i_2_n_0 ;
  wire \delay_cnt_reg[28]_i_2_n_1 ;
  wire \delay_cnt_reg[28]_i_2_n_2 ;
  wire \delay_cnt_reg[28]_i_2_n_3 ;
  wire \delay_cnt_reg[31]_i_3_n_2 ;
  wire \delay_cnt_reg[31]_i_3_n_3 ;
  wire \delay_cnt_reg[4]_i_2_n_0 ;
  wire \delay_cnt_reg[4]_i_2_n_1 ;
  wire \delay_cnt_reg[4]_i_2_n_2 ;
  wire \delay_cnt_reg[4]_i_2_n_3 ;
  wire \delay_cnt_reg[8]_i_2_n_0 ;
  wire \delay_cnt_reg[8]_i_2_n_1 ;
  wire \delay_cnt_reg[8]_i_2_n_2 ;
  wire \delay_cnt_reg[8]_i_2_n_3 ;
  wire \delay_cnt_reg_n_0_[0] ;
  wire \delay_cnt_reg_n_0_[10] ;
  wire \delay_cnt_reg_n_0_[11] ;
  wire \delay_cnt_reg_n_0_[12] ;
  wire \delay_cnt_reg_n_0_[13] ;
  wire \delay_cnt_reg_n_0_[14] ;
  wire \delay_cnt_reg_n_0_[15] ;
  wire \delay_cnt_reg_n_0_[16] ;
  wire \delay_cnt_reg_n_0_[17] ;
  wire \delay_cnt_reg_n_0_[18] ;
  wire \delay_cnt_reg_n_0_[19] ;
  wire \delay_cnt_reg_n_0_[1] ;
  wire \delay_cnt_reg_n_0_[20] ;
  wire \delay_cnt_reg_n_0_[21] ;
  wire \delay_cnt_reg_n_0_[22] ;
  wire \delay_cnt_reg_n_0_[23] ;
  wire \delay_cnt_reg_n_0_[24] ;
  wire \delay_cnt_reg_n_0_[25] ;
  wire \delay_cnt_reg_n_0_[26] ;
  wire \delay_cnt_reg_n_0_[27] ;
  wire \delay_cnt_reg_n_0_[28] ;
  wire \delay_cnt_reg_n_0_[29] ;
  wire \delay_cnt_reg_n_0_[2] ;
  wire \delay_cnt_reg_n_0_[30] ;
  wire \delay_cnt_reg_n_0_[31] ;
  wire \delay_cnt_reg_n_0_[3] ;
  wire \delay_cnt_reg_n_0_[4] ;
  wire \delay_cnt_reg_n_0_[5] ;
  wire \delay_cnt_reg_n_0_[6] ;
  wire \delay_cnt_reg_n_0_[7] ;
  wire \delay_cnt_reg_n_0_[8] ;
  wire \delay_cnt_reg_n_0_[9] ;
  wire [9:0]jstk_x;
  wire \jstk_x_reg[7]_i_1_n_0 ;
  wire \jstk_x_reg[8]_i_1_n_0 ;
  wire \jstk_x_reg[9]_i_1_n_0 ;
  wire \jstk_x_reg[9]_i_2_n_0 ;
  wire [9:0]jstk_y;
  wire \jstk_y_reg[7]_i_1_n_0 ;
  wire \jstk_y_reg[8]_i_1_n_0 ;
  wire \jstk_y_reg[9]_i_1_n_0 ;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_2_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_2_n_0 ;
  wire \m_axis_tdata[5]_i_3_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_2_n_0 ;
  wire \m_axis_tdata[6]_i_3_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_3_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_i_2_n_0;
  wire m_axis_tvalid_i_3_n_0;
  wire [1:0]next_state;
  wire [3:0]p_1_in;
  wire [3:0]rcv_byte_cnt;
  wire \rcv_byte_cnt[3]_i_3_n_0 ;
  wire rcv_byte_cnt_0;
  wire rgb_set_clc;
  wire rgb_set_clc_i_1_n_0;
  wire [23:0]rgb_set_d1;
  wire rgb_set_req;
  wire rgb_set_req0_carry__0_i_1_n_0;
  wire rgb_set_req0_carry__0_i_2_n_0;
  wire rgb_set_req0_carry__0_i_3_n_0;
  wire rgb_set_req0_carry__0_i_4_n_0;
  wire rgb_set_req0_carry__0_n_0;
  wire rgb_set_req0_carry__0_n_1;
  wire rgb_set_req0_carry__0_n_2;
  wire rgb_set_req0_carry__0_n_3;
  wire rgb_set_req0_carry_i_1_n_0;
  wire rgb_set_req0_carry_i_2_n_0;
  wire rgb_set_req0_carry_i_3_n_0;
  wire rgb_set_req0_carry_i_4_n_0;
  wire rgb_set_req0_carry_n_0;
  wire rgb_set_req0_carry_n_1;
  wire rgb_set_req0_carry_n_2;
  wire rgb_set_req0_carry_n_3;
  wire rgb_set_req_i_1_n_0;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [3:0]snd_byte_cnt;
  wire \snd_byte_cnt_reg_n_0_[0] ;
  wire \snd_byte_cnt_reg_n_0_[1] ;
  wire \snd_byte_cnt_reg_n_0_[2] ;
  wire \snd_byte_cnt_reg_n_0_[3] ;
  wire [3:2]\NLW_delay_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_delay_cnt_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_rgb_set_req0_carry_O_UNCONNECTED;
  wire [3:0]NLW_rgb_set_req0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \FSM_sequential_curr_state[0]_i_1 
       (.I0(\FSM_sequential_curr_state[0]_i_2_n_0 ),
        .I1(curr_state[0]),
        .I2(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I5(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3374)) 
    \FSM_sequential_curr_state[0]_i_2 
       (.I0(m_axis_tvalid_i_3_n_0),
        .I1(curr_state[1]),
        .I2(rgb_set_req),
        .I3(curr_state[0]),
        .O(\FSM_sequential_curr_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEEA)) 
    \FSM_sequential_curr_state[1]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_2_n_0 ),
        .I1(curr_state[1]),
        .I2(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I4(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I5(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .O(next_state[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_curr_state[1]_i_10 
       (.I0(\delay_cnt_reg_n_0_[21] ),
        .I1(\delay_cnt_reg_n_0_[20] ),
        .I2(\delay_cnt_reg_n_0_[23] ),
        .I3(\delay_cnt_reg_n_0_[22] ),
        .O(\FSM_sequential_curr_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0F35)) 
    \FSM_sequential_curr_state[1]_i_2 
       (.I0(rgb_set_req),
        .I1(m_axis_tvalid_i_3_n_0),
        .I2(curr_state[0]),
        .I3(curr_state[1]),
        .O(\FSM_sequential_curr_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_sequential_curr_state[1]_i_3 
       (.I0(\delay_cnt_reg_n_0_[10] ),
        .I1(\delay_cnt_reg_n_0_[11] ),
        .I2(\delay_cnt_reg_n_0_[8] ),
        .I3(\delay_cnt_reg_n_0_[9] ),
        .I4(\FSM_sequential_curr_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_curr_state[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \FSM_sequential_curr_state[1]_i_4 
       (.I0(\delay_cnt_reg_n_0_[2] ),
        .I1(\delay_cnt_reg_n_0_[3] ),
        .I2(\delay_cnt_reg_n_0_[0] ),
        .I3(\delay_cnt_reg_n_0_[1] ),
        .I4(\FSM_sequential_curr_state[1]_i_8_n_0 ),
        .O(\FSM_sequential_curr_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_curr_state[1]_i_5 
       (.I0(\delay_cnt_reg_n_0_[26] ),
        .I1(\delay_cnt_reg_n_0_[27] ),
        .I2(\delay_cnt_reg_n_0_[24] ),
        .I3(\delay_cnt_reg_n_0_[25] ),
        .I4(\FSM_sequential_curr_state[1]_i_9_n_0 ),
        .O(\FSM_sequential_curr_state[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_curr_state[1]_i_6 
       (.I0(\delay_cnt_reg_n_0_[18] ),
        .I1(\delay_cnt_reg_n_0_[19] ),
        .I2(\delay_cnt_reg_n_0_[16] ),
        .I3(\delay_cnt_reg_n_0_[17] ),
        .I4(\FSM_sequential_curr_state[1]_i_10_n_0 ),
        .O(\FSM_sequential_curr_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_curr_state[1]_i_7 
       (.I0(\delay_cnt_reg_n_0_[13] ),
        .I1(\delay_cnt_reg_n_0_[12] ),
        .I2(\delay_cnt_reg_n_0_[15] ),
        .I3(\delay_cnt_reg_n_0_[14] ),
        .O(\FSM_sequential_curr_state[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_curr_state[1]_i_8 
       (.I0(\delay_cnt_reg_n_0_[5] ),
        .I1(\delay_cnt_reg_n_0_[4] ),
        .I2(\delay_cnt_reg_n_0_[6] ),
        .I3(\delay_cnt_reg_n_0_[7] ),
        .O(\FSM_sequential_curr_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_curr_state[1]_i_9 
       (.I0(\delay_cnt_reg_n_0_[29] ),
        .I1(\delay_cnt_reg_n_0_[28] ),
        .I2(\delay_cnt_reg_n_0_[31] ),
        .I3(\delay_cnt_reg_n_0_[30] ),
        .O(\FSM_sequential_curr_state[1]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "set_led:01,get_coord:10,wait_std:11,idle:00" *) 
  FDRE \FSM_sequential_curr_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(curr_state[0]),
        .R(m_axis_tvalid_i_1_n_0));
  (* FSM_ENCODED_STATES = "set_led:01,get_coord:10,wait_std:11,idle:00" *) 
  FDRE \FSM_sequential_curr_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(curr_state[1]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    btn_jstk_reg_i_1
       (.I0(s_axis_tdata[0]),
        .I1(btn_jstk_reg_i_2_n_0),
        .I2(rcv_byte_cnt[2]),
        .I3(rcv_byte_cnt[0]),
        .I4(btn_jstk_reg_i_3_n_0),
        .I5(btn_jstk),
        .O(btn_jstk_reg_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    btn_jstk_reg_i_2
       (.I0(rcv_byte_cnt[1]),
        .I1(rcv_byte_cnt[3]),
        .O(btn_jstk_reg_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    btn_jstk_reg_i_3
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(s_axis_tvalid),
        .O(btn_jstk_reg_i_3_n_0));
  FDRE btn_jstk_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_jstk_reg_i_1_n_0),
        .Q(btn_jstk),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    btn_trigger_reg_i_1
       (.I0(s_axis_tdata[1]),
        .I1(btn_jstk_reg_i_2_n_0),
        .I2(rcv_byte_cnt[2]),
        .I3(rcv_byte_cnt[0]),
        .I4(btn_jstk_reg_i_3_n_0),
        .I5(btn_trigger),
        .O(btn_trigger_reg_i_1_n_0));
  FDRE btn_trigger_reg_reg
       (.C(aclk),
        .CE(1'b1),
        .D(btn_trigger_reg_i_1_n_0),
        .Q(btn_trigger),
        .R(m_axis_tvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \delay_cnt[0]_i_1 
       (.I0(\delay_cnt_reg_n_0_[0] ),
        .O(\delay_cnt[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[10]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[10]),
        .O(\delay_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[11]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[11]),
        .O(\delay_cnt[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[12]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[12]),
        .O(\delay_cnt[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[13]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[13]),
        .O(\delay_cnt[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[14]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[14]),
        .O(\delay_cnt[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[15]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[15]),
        .O(\delay_cnt[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[16]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[16]),
        .O(\delay_cnt[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[17]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[17]),
        .O(\delay_cnt[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[18]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[18]),
        .O(\delay_cnt[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[19]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[19]),
        .O(\delay_cnt[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[1]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[1]),
        .O(\delay_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[20]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[20]),
        .O(\delay_cnt[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[21]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[21]),
        .O(\delay_cnt[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[22]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[22]),
        .O(\delay_cnt[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[23]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[23]),
        .O(\delay_cnt[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[24]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[24]),
        .O(\delay_cnt[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[25]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[25]),
        .O(\delay_cnt[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[26]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[26]),
        .O(\delay_cnt[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[27]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[27]),
        .O(\delay_cnt[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[28]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[28]),
        .O(\delay_cnt[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[29]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[29]),
        .O(\delay_cnt[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[2]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[2]),
        .O(\delay_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[30]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[30]),
        .O(\delay_cnt[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \delay_cnt[31]_i_1 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .O(delay_cnt));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[31]_i_2 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[31]),
        .O(\delay_cnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[3]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[3]),
        .O(\delay_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[4]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[4]),
        .O(\delay_cnt[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[5]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[5]),
        .O(\delay_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[6]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[6]),
        .O(\delay_cnt[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[7]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[7]),
        .O(\delay_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[8]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[8]),
        .O(\delay_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \delay_cnt[9]_i_1 
       (.I0(\FSM_sequential_curr_state[1]_i_6_n_0 ),
        .I1(\FSM_sequential_curr_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_curr_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr_state[1]_i_3_n_0 ),
        .I4(data0[9]),
        .O(\delay_cnt[9]_i_1_n_0 ));
  FDRE \delay_cnt_reg[0] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[0]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[10] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[10]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[10] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[11] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[11]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[11] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[12] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[12]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[12] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_cnt_reg[12]_i_2 
       (.CI(\delay_cnt_reg[8]_i_2_n_0 ),
        .CO({\delay_cnt_reg[12]_i_2_n_0 ,\delay_cnt_reg[12]_i_2_n_1 ,\delay_cnt_reg[12]_i_2_n_2 ,\delay_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\delay_cnt_reg_n_0_[12] ,\delay_cnt_reg_n_0_[11] ,\delay_cnt_reg_n_0_[10] ,\delay_cnt_reg_n_0_[9] }));
  FDRE \delay_cnt_reg[13] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[13]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[13] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[14] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[14]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[14] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[15] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[15]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[15] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[16] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[16]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[16] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_cnt_reg[16]_i_2 
       (.CI(\delay_cnt_reg[12]_i_2_n_0 ),
        .CO({\delay_cnt_reg[16]_i_2_n_0 ,\delay_cnt_reg[16]_i_2_n_1 ,\delay_cnt_reg[16]_i_2_n_2 ,\delay_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\delay_cnt_reg_n_0_[16] ,\delay_cnt_reg_n_0_[15] ,\delay_cnt_reg_n_0_[14] ,\delay_cnt_reg_n_0_[13] }));
  FDRE \delay_cnt_reg[17] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[17]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[17] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[18] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[18]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[18] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[19] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[19]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[19] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[1] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[1]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[20] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[20]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[20] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_cnt_reg[20]_i_2 
       (.CI(\delay_cnt_reg[16]_i_2_n_0 ),
        .CO({\delay_cnt_reg[20]_i_2_n_0 ,\delay_cnt_reg[20]_i_2_n_1 ,\delay_cnt_reg[20]_i_2_n_2 ,\delay_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\delay_cnt_reg_n_0_[20] ,\delay_cnt_reg_n_0_[19] ,\delay_cnt_reg_n_0_[18] ,\delay_cnt_reg_n_0_[17] }));
  FDRE \delay_cnt_reg[21] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[21]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[21] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[22] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[22]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[22] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[23] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[23]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[23] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[24] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[24]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[24] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_cnt_reg[24]_i_2 
       (.CI(\delay_cnt_reg[20]_i_2_n_0 ),
        .CO({\delay_cnt_reg[24]_i_2_n_0 ,\delay_cnt_reg[24]_i_2_n_1 ,\delay_cnt_reg[24]_i_2_n_2 ,\delay_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\delay_cnt_reg_n_0_[24] ,\delay_cnt_reg_n_0_[23] ,\delay_cnt_reg_n_0_[22] ,\delay_cnt_reg_n_0_[21] }));
  FDRE \delay_cnt_reg[25] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[25]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[25] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[26] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[26]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[26] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[27] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[27]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[27] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[28] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[28]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[28] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_cnt_reg[28]_i_2 
       (.CI(\delay_cnt_reg[24]_i_2_n_0 ),
        .CO({\delay_cnt_reg[28]_i_2_n_0 ,\delay_cnt_reg[28]_i_2_n_1 ,\delay_cnt_reg[28]_i_2_n_2 ,\delay_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\delay_cnt_reg_n_0_[28] ,\delay_cnt_reg_n_0_[27] ,\delay_cnt_reg_n_0_[26] ,\delay_cnt_reg_n_0_[25] }));
  FDRE \delay_cnt_reg[29] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[29]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[29] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[2] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[2]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[30] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[30]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[30] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[31] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[31]_i_2_n_0 ),
        .Q(\delay_cnt_reg_n_0_[31] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_cnt_reg[31]_i_3 
       (.CI(\delay_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_delay_cnt_reg[31]_i_3_CO_UNCONNECTED [3:2],\delay_cnt_reg[31]_i_3_n_2 ,\delay_cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_delay_cnt_reg[31]_i_3_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\delay_cnt_reg_n_0_[31] ,\delay_cnt_reg_n_0_[30] ,\delay_cnt_reg_n_0_[29] }));
  FDRE \delay_cnt_reg[3] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[3]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[3] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[4] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[4]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[4] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\delay_cnt_reg[4]_i_2_n_0 ,\delay_cnt_reg[4]_i_2_n_1 ,\delay_cnt_reg[4]_i_2_n_2 ,\delay_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\delay_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\delay_cnt_reg_n_0_[4] ,\delay_cnt_reg_n_0_[3] ,\delay_cnt_reg_n_0_[2] ,\delay_cnt_reg_n_0_[1] }));
  FDRE \delay_cnt_reg[5] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[5]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[5] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[6] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[6]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[6] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[7] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[7]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[7] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \delay_cnt_reg[8] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[8]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[8] ),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \delay_cnt_reg[8]_i_2 
       (.CI(\delay_cnt_reg[4]_i_2_n_0 ),
        .CO({\delay_cnt_reg[8]_i_2_n_0 ,\delay_cnt_reg[8]_i_2_n_1 ,\delay_cnt_reg[8]_i_2_n_2 ,\delay_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\delay_cnt_reg_n_0_[8] ,\delay_cnt_reg_n_0_[7] ,\delay_cnt_reg_n_0_[6] ,\delay_cnt_reg_n_0_[5] }));
  FDRE \delay_cnt_reg[9] 
       (.C(aclk),
        .CE(delay_cnt),
        .D(\delay_cnt[9]_i_1_n_0 ),
        .Q(\delay_cnt_reg_n_0_[9] ),
        .R(m_axis_tvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    \jstk_x_reg[7]_i_1 
       (.I0(rcv_byte_cnt[0]),
        .I1(rcv_byte_cnt[1]),
        .I2(rcv_byte_cnt[3]),
        .I3(\jstk_x_reg[9]_i_2_n_0 ),
        .O(\jstk_x_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \jstk_x_reg[8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(rcv_byte_cnt[1]),
        .I2(rcv_byte_cnt[3]),
        .I3(rcv_byte_cnt[0]),
        .I4(\jstk_x_reg[9]_i_2_n_0 ),
        .I5(jstk_x[8]),
        .O(\jstk_x_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \jstk_x_reg[9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(rcv_byte_cnt[1]),
        .I2(rcv_byte_cnt[3]),
        .I3(rcv_byte_cnt[0]),
        .I4(\jstk_x_reg[9]_i_2_n_0 ),
        .I5(jstk_x[9]),
        .O(\jstk_x_reg[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \jstk_x_reg[9]_i_2 
       (.I0(s_axis_tvalid),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .I3(rcv_byte_cnt[2]),
        .O(\jstk_x_reg[9]_i_2_n_0 ));
  FDRE \jstk_x_reg_reg[0] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(jstk_x[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[1] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(jstk_x[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[2] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(jstk_x[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[3] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(jstk_x[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[4] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(jstk_x[4]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[5] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(jstk_x[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[6] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(jstk_x[6]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[7] 
       (.C(aclk),
        .CE(\jstk_x_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(jstk_x[7]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\jstk_x_reg[8]_i_1_n_0 ),
        .Q(jstk_x[8]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\jstk_x_reg[9]_i_1_n_0 ),
        .Q(jstk_x[9]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    \jstk_y_reg[7]_i_1 
       (.I0(rcv_byte_cnt[0]),
        .I1(rcv_byte_cnt[1]),
        .I2(rcv_byte_cnt[3]),
        .I3(\jstk_x_reg[9]_i_2_n_0 ),
        .O(\jstk_y_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \jstk_y_reg[8]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(rcv_byte_cnt[0]),
        .I2(rcv_byte_cnt[1]),
        .I3(rcv_byte_cnt[3]),
        .I4(\jstk_x_reg[9]_i_2_n_0 ),
        .I5(jstk_y[8]),
        .O(\jstk_y_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \jstk_y_reg[9]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(rcv_byte_cnt[0]),
        .I2(rcv_byte_cnt[1]),
        .I3(rcv_byte_cnt[3]),
        .I4(\jstk_x_reg[9]_i_2_n_0 ),
        .I5(jstk_y[9]),
        .O(\jstk_y_reg[9]_i_1_n_0 ));
  FDRE \jstk_y_reg_reg[0] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(jstk_y[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[1] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(jstk_y[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[2] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(jstk_y[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[3] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(jstk_y[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[4] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(jstk_y[4]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[5] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(jstk_y[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[6] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(jstk_y[6]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[7] 
       (.C(aclk),
        .CE(\jstk_y_reg[7]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(jstk_y[7]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(\jstk_y_reg[8]_i_1_n_0 ),
        .Q(jstk_y[8]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(\jstk_y_reg[9]_i_1_n_0 ),
        .Q(jstk_y[9]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[0]_i_1 
       (.I0(\m_axis_tdata[5]_i_2_n_0 ),
        .I1(D[16]),
        .I2(\m_axis_tdata[5]_i_3_n_0 ),
        .I3(D[8]),
        .I4(D[0]),
        .I5(\m_axis_tdata[6]_i_3_n_0 ),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[1]_i_1 
       (.I0(\m_axis_tdata[5]_i_2_n_0 ),
        .I1(D[17]),
        .I2(\m_axis_tdata[5]_i_3_n_0 ),
        .I3(D[9]),
        .I4(D[1]),
        .I5(\m_axis_tdata[6]_i_3_n_0 ),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAEAFFAAAAEAEA)) 
    \m_axis_tdata[2]_i_1 
       (.I0(\m_axis_tdata[2]_i_2_n_0 ),
        .I1(D[2]),
        .I2(\m_axis_tdata[6]_i_3_n_0 ),
        .I3(curr_state[0]),
        .I4(curr_state[1]),
        .I5(rgb_set_req),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F888)) 
    \m_axis_tdata[2]_i_2 
       (.I0(\m_axis_tdata[5]_i_3_n_0 ),
        .I1(D[10]),
        .I2(\m_axis_tdata[5]_i_2_n_0 ),
        .I3(D[18]),
        .I4(curr_state[1]),
        .O(\m_axis_tdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[3]_i_1 
       (.I0(\m_axis_tdata[5]_i_2_n_0 ),
        .I1(D[19]),
        .I2(\m_axis_tdata[5]_i_3_n_0 ),
        .I3(D[11]),
        .I4(D[3]),
        .I5(\m_axis_tdata[6]_i_3_n_0 ),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[4]_i_1 
       (.I0(\m_axis_tdata[5]_i_2_n_0 ),
        .I1(D[20]),
        .I2(\m_axis_tdata[5]_i_3_n_0 ),
        .I3(D[12]),
        .I4(D[4]),
        .I5(\m_axis_tdata[6]_i_3_n_0 ),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axis_tdata[5]_i_1 
       (.I0(\m_axis_tdata[5]_i_2_n_0 ),
        .I1(D[21]),
        .I2(\m_axis_tdata[5]_i_3_n_0 ),
        .I3(D[13]),
        .I4(D[5]),
        .I5(\m_axis_tdata[6]_i_3_n_0 ),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata[5]_i_2 
       (.I0(\snd_byte_cnt_reg_n_0_[0] ),
        .I1(curr_state[0]),
        .I2(\snd_byte_cnt_reg_n_0_[2] ),
        .I3(\snd_byte_cnt_reg_n_0_[3] ),
        .I4(\snd_byte_cnt_reg_n_0_[1] ),
        .O(\m_axis_tdata[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata[5]_i_3 
       (.I0(\snd_byte_cnt_reg_n_0_[2] ),
        .I1(curr_state[0]),
        .I2(\snd_byte_cnt_reg_n_0_[0] ),
        .I3(\snd_byte_cnt_reg_n_0_[1] ),
        .I4(\snd_byte_cnt_reg_n_0_[3] ),
        .O(\m_axis_tdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEAEAEAFF)) 
    \m_axis_tdata[6]_i_1 
       (.I0(\m_axis_tdata[6]_i_2_n_0 ),
        .I1(D[6]),
        .I2(\m_axis_tdata[6]_i_3_n_0 ),
        .I3(rgb_set_req),
        .I4(curr_state[0]),
        .I5(curr_state[1]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F888)) 
    \m_axis_tdata[6]_i_2 
       (.I0(\m_axis_tdata[5]_i_3_n_0 ),
        .I1(D[14]),
        .I2(\m_axis_tdata[5]_i_2_n_0 ),
        .I3(D[22]),
        .I4(curr_state[1]),
        .O(\m_axis_tdata[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata[6]_i_3 
       (.I0(\snd_byte_cnt_reg_n_0_[3] ),
        .I1(\snd_byte_cnt_reg_n_0_[1] ),
        .I2(\snd_byte_cnt_reg_n_0_[0] ),
        .I3(curr_state[0]),
        .I4(\snd_byte_cnt_reg_n_0_[2] ),
        .O(\m_axis_tdata[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2B3F)) 
    \m_axis_tdata[7]_i_1 
       (.I0(m_axis_tready),
        .I1(curr_state[0]),
        .I2(curr_state[1]),
        .I3(m_axis_tvalid_i_3_n_0),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h020F)) 
    \m_axis_tdata[7]_i_2 
       (.I0(\m_axis_tdata[7]_i_3_n_0 ),
        .I1(\snd_byte_cnt_reg_n_0_[2] ),
        .I2(curr_state[1]),
        .I3(curr_state[0]),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000F0A0C00000A0C)) 
    \m_axis_tdata[7]_i_3 
       (.I0(D[7]),
        .I1(D[23]),
        .I2(\snd_byte_cnt_reg_n_0_[3] ),
        .I3(\snd_byte_cnt_reg_n_0_[1] ),
        .I4(\snd_byte_cnt_reg_n_0_[0] ),
        .I5(D[15]),
        .O(\m_axis_tdata[7]_i_3_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(\m_axis_tdata[7]_i_2_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_i_1
       (.I0(aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'hEB03)) 
    m_axis_tvalid_i_2
       (.I0(m_axis_tvalid_i_3_n_0),
        .I1(curr_state[1]),
        .I2(curr_state[0]),
        .I3(m_axis_tvalid),
        .O(m_axis_tvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    m_axis_tvalid_i_3
       (.I0(\snd_byte_cnt_reg_n_0_[0] ),
        .I1(\snd_byte_cnt_reg_n_0_[1] ),
        .I2(\snd_byte_cnt_reg_n_0_[3] ),
        .I3(\snd_byte_cnt_reg_n_0_[2] ),
        .O(m_axis_tvalid_i_3_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_2_n_0),
        .Q(m_axis_tvalid),
        .R(m_axis_tvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \rcv_byte_cnt[0]_i_1 
       (.I0(rcv_byte_cnt[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \rcv_byte_cnt[1]_i_1 
       (.I0(rcv_byte_cnt[3]),
        .I1(rcv_byte_cnt[2]),
        .I2(rcv_byte_cnt[1]),
        .I3(rcv_byte_cnt[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h38CC)) 
    \rcv_byte_cnt[2]_i_1 
       (.I0(rcv_byte_cnt[3]),
        .I1(rcv_byte_cnt[2]),
        .I2(rcv_byte_cnt[1]),
        .I3(rcv_byte_cnt[0]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'h00D0)) 
    \rcv_byte_cnt[3]_i_1 
       (.I0(\rcv_byte_cnt[3]_i_3_n_0 ),
        .I1(s_axis_tvalid),
        .I2(curr_state[1]),
        .I3(curr_state[0]),
        .O(rcv_byte_cnt_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rcv_byte_cnt[3]_i_2 
       (.I0(rcv_byte_cnt[3]),
        .I1(rcv_byte_cnt[1]),
        .I2(rcv_byte_cnt[2]),
        .I3(rcv_byte_cnt[0]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \rcv_byte_cnt[3]_i_3 
       (.I0(rcv_byte_cnt[2]),
        .I1(rcv_byte_cnt[0]),
        .I2(rcv_byte_cnt[3]),
        .I3(rcv_byte_cnt[1]),
        .O(\rcv_byte_cnt[3]_i_3_n_0 ));
  FDRE \rcv_byte_cnt_reg[0] 
       (.C(aclk),
        .CE(rcv_byte_cnt_0),
        .D(p_1_in[0]),
        .Q(rcv_byte_cnt[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rcv_byte_cnt_reg[1] 
       (.C(aclk),
        .CE(rcv_byte_cnt_0),
        .D(p_1_in[1]),
        .Q(rcv_byte_cnt[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rcv_byte_cnt_reg[2] 
       (.C(aclk),
        .CE(rcv_byte_cnt_0),
        .D(p_1_in[2]),
        .Q(rcv_byte_cnt[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rcv_byte_cnt_reg[3] 
       (.C(aclk),
        .CE(rcv_byte_cnt_0),
        .D(p_1_in[3]),
        .Q(rcv_byte_cnt[3]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'hF504)) 
    rgb_set_clc_i_1
       (.I0(curr_state[0]),
        .I1(rgb_set_req),
        .I2(curr_state[1]),
        .I3(rgb_set_clc),
        .O(rgb_set_clc_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rgb_set_clc_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rgb_set_clc_i_1_n_0),
        .Q(rgb_set_clc),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(rgb_set_d1[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(rgb_set_d1[10]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(rgb_set_d1[11]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(rgb_set_d1[12]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(rgb_set_d1[13]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(rgb_set_d1[14]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(rgb_set_d1[15]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(rgb_set_d1[16]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(rgb_set_d1[17]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(rgb_set_d1[18]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(rgb_set_d1[19]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(rgb_set_d1[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(rgb_set_d1[20]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(rgb_set_d1[21]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(rgb_set_d1[22]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(rgb_set_d1[23]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(rgb_set_d1[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(rgb_set_d1[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(rgb_set_d1[4]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(rgb_set_d1[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(rgb_set_d1[6]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(rgb_set_d1[7]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(rgb_set_d1[8]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \rgb_set_d1_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(rgb_set_d1[9]),
        .R(m_axis_tvalid_i_1_n_0));
  CARRY4 rgb_set_req0_carry
       (.CI(1'b0),
        .CO({rgb_set_req0_carry_n_0,rgb_set_req0_carry_n_1,rgb_set_req0_carry_n_2,rgb_set_req0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rgb_set_req0_carry_O_UNCONNECTED[3:0]),
        .S({rgb_set_req0_carry_i_1_n_0,rgb_set_req0_carry_i_2_n_0,rgb_set_req0_carry_i_3_n_0,rgb_set_req0_carry_i_4_n_0}));
  CARRY4 rgb_set_req0_carry__0
       (.CI(rgb_set_req0_carry_n_0),
        .CO({rgb_set_req0_carry__0_n_0,rgb_set_req0_carry__0_n_1,rgb_set_req0_carry__0_n_2,rgb_set_req0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_rgb_set_req0_carry__0_O_UNCONNECTED[3:0]),
        .S({rgb_set_req0_carry__0_i_1_n_0,rgb_set_req0_carry__0_i_2_n_0,rgb_set_req0_carry__0_i_3_n_0,rgb_set_req0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_set_req0_carry__0_i_1
       (.I0(D[23]),
        .I1(rgb_set_d1[23]),
        .I2(D[22]),
        .I3(rgb_set_d1[22]),
        .I4(rgb_set_d1[21]),
        .I5(D[21]),
        .O(rgb_set_req0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_set_req0_carry__0_i_2
       (.I0(D[20]),
        .I1(rgb_set_d1[20]),
        .I2(D[19]),
        .I3(rgb_set_d1[19]),
        .I4(rgb_set_d1[18]),
        .I5(D[18]),
        .O(rgb_set_req0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_set_req0_carry__0_i_3
       (.I0(D[17]),
        .I1(rgb_set_d1[17]),
        .I2(D[16]),
        .I3(rgb_set_d1[16]),
        .I4(rgb_set_d1[15]),
        .I5(D[15]),
        .O(rgb_set_req0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_set_req0_carry__0_i_4
       (.I0(D[14]),
        .I1(rgb_set_d1[14]),
        .I2(D[13]),
        .I3(rgb_set_d1[13]),
        .I4(rgb_set_d1[12]),
        .I5(D[12]),
        .O(rgb_set_req0_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_set_req0_carry_i_1
       (.I0(D[11]),
        .I1(rgb_set_d1[11]),
        .I2(D[10]),
        .I3(rgb_set_d1[10]),
        .I4(rgb_set_d1[9]),
        .I5(D[9]),
        .O(rgb_set_req0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_set_req0_carry_i_2
       (.I0(D[8]),
        .I1(rgb_set_d1[8]),
        .I2(D[7]),
        .I3(rgb_set_d1[7]),
        .I4(rgb_set_d1[6]),
        .I5(D[6]),
        .O(rgb_set_req0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_set_req0_carry_i_3
       (.I0(D[5]),
        .I1(rgb_set_d1[5]),
        .I2(D[4]),
        .I3(rgb_set_d1[4]),
        .I4(rgb_set_d1[3]),
        .I5(D[3]),
        .O(rgb_set_req0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    rgb_set_req0_carry_i_4
       (.I0(D[2]),
        .I1(rgb_set_d1[2]),
        .I2(D[1]),
        .I3(rgb_set_d1[1]),
        .I4(rgb_set_d1[0]),
        .I5(D[0]),
        .O(rgb_set_req0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hFF5D)) 
    rgb_set_req_i_1
       (.I0(aresetn),
        .I1(rgb_set_req),
        .I2(rgb_set_clc),
        .I3(rgb_set_req0_carry__0_n_0),
        .O(rgb_set_req_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rgb_set_req_reg
       (.C(aclk),
        .CE(1'b1),
        .D(rgb_set_req_i_1_n_0),
        .Q(rgb_set_req),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \snd_byte_cnt[0]_i_1 
       (.I0(curr_state[1]),
        .I1(curr_state[0]),
        .I2(\snd_byte_cnt_reg_n_0_[0] ),
        .O(snd_byte_cnt[0]));
  LUT6 #(
    .INIT(64'h0000EE0EEEEE0000)) 
    \snd_byte_cnt[1]_i_1 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(\snd_byte_cnt_reg_n_0_[2] ),
        .I3(\snd_byte_cnt_reg_n_0_[3] ),
        .I4(\snd_byte_cnt_reg_n_0_[1] ),
        .I5(\snd_byte_cnt_reg_n_0_[0] ),
        .O(snd_byte_cnt[1]));
  LUT6 #(
    .INIT(64'h0E0EE000E0E0E0E0)) 
    \snd_byte_cnt[2]_i_1 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(\snd_byte_cnt_reg_n_0_[2] ),
        .I3(\snd_byte_cnt_reg_n_0_[3] ),
        .I4(\snd_byte_cnt_reg_n_0_[1] ),
        .I5(\snd_byte_cnt_reg_n_0_[0] ),
        .O(snd_byte_cnt[2]));
  LUT6 #(
    .INIT(64'h0EE0EE00EE00EE00)) 
    \snd_byte_cnt[3]_i_1 
       (.I0(curr_state[0]),
        .I1(curr_state[1]),
        .I2(\snd_byte_cnt_reg_n_0_[2] ),
        .I3(\snd_byte_cnt_reg_n_0_[3] ),
        .I4(\snd_byte_cnt_reg_n_0_[1] ),
        .I5(\snd_byte_cnt_reg_n_0_[0] ),
        .O(snd_byte_cnt[3]));
  FDRE \snd_byte_cnt_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(snd_byte_cnt[0]),
        .Q(\snd_byte_cnt_reg_n_0_[0] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \snd_byte_cnt_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(snd_byte_cnt[1]),
        .Q(\snd_byte_cnt_reg_n_0_[1] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \snd_byte_cnt_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(snd_byte_cnt[2]),
        .Q(\snd_byte_cnt_reg_n_0_[2] ),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \snd_byte_cnt_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_1_n_0 ),
        .D(snd_byte_cnt[3]),
        .Q(\snd_byte_cnt_reg_n_0_[3] ),
        .R(m_axis_tvalid_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
