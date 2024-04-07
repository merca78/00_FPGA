// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Apr  7 01:04:25 2024
// Host        : MercaPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               k:/Z01_ArchiveProj/00_Project/03_DESD/07_LAB2/01_proj/jstkLab2/jstkLab2.gen/sources_1/bd/jsk_top/ip/jsk_top_jstk_uart_bridge_0_0/jsk_top_jstk_uart_bridge_0_0_sim_netlist.v
// Design      : jsk_top_jstk_uart_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "jsk_top_jstk_uart_bridge_0_0,jstk_uart_bridge,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "jstk_uart_bridge,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module jsk_top_jstk_uart_bridge_0_0
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  input [9:0]jstk_x;
  input [9:0]jstk_y;
  input btn_jstk;
  input btn_trigger;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;

  wire \<const1> ;
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

  assign s_axis_tready = \<const1> ;
  jsk_top_jstk_uart_bridge_0_0_jstk_uart_bridge U0
       (.D({btn_trigger,btn_jstk}),
        .aclk(aclk),
        .aresetn(aresetn),
        .jstk_x(jstk_x[9:2]),
        .jstk_y(jstk_y[9:2]),
        .led_b(led_b),
        .led_g(led_g),
        .led_r(led_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "jstk_uart_bridge" *) 
module jsk_top_jstk_uart_bridge_0_0_jstk_uart_bridge
   (m_axis_tvalid,
    m_axis_tdata,
    led_r,
    led_g,
    led_b,
    aresetn,
    aclk,
    D,
    jstk_y,
    jstk_x,
    s_axis_tdata,
    m_axis_tready,
    s_axis_tvalid);
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;
  input aresetn;
  input aclk;
  input [1:0]D;
  input [7:0]jstk_y;
  input [7:0]jstk_x;
  input [7:0]s_axis_tdata;
  input m_axis_tready;
  input s_axis_tvalid;

  wire [1:0]D;
  wire aclk;
  wire aresetn;
  wire [1:0]button_reg;
  wire \button_reg[1]_i_1_n_0 ;
  wire curr_state;
  wire curr_state_i_1_n_0;
  wire curr_state_i_2_n_0;
  wire curr_state_i_3_n_0;
  wire [31:1]data0;
  wire [7:0]jstk_x;
  wire [7:0]jstk_x_reg;
  wire [7:0]jstk_y;
  wire [7:0]jstk_y_reg;
  wire [7:0]led_b;
  wire led_b_reg;
  wire [7:0]led_g;
  wire led_g_reg;
  wire [7:0]led_r;
  wire led_r_reg;
  wire [7:0]m_axis_tdata;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_2_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire m_axis_tvalid_i_1_n_0;
  wire [3:1]plusOp;
  wire [3:0]plusOp__0;
  wire \rcv_cnt[3]_i_1_n_0 ;
  wire [3:0]rcv_cnt_reg;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [31:0]sel0;
  wire send_flag;
  wire send_flag_i_1_n_0;
  wire send_flag_i_2_n_0;
  wire \snd_cnt[0]_i_1_n_0 ;
  wire [3:0]snd_cnt_reg;
  wire [31:0]tx_cnt;
  wire \tx_cnt[31]_i_10_n_0 ;
  wire \tx_cnt[31]_i_2_n_0 ;
  wire \tx_cnt[31]_i_3_n_0 ;
  wire \tx_cnt[31]_i_4_n_0 ;
  wire \tx_cnt[31]_i_5_n_0 ;
  wire \tx_cnt[31]_i_7_n_0 ;
  wire \tx_cnt[31]_i_8_n_0 ;
  wire \tx_cnt[31]_i_9_n_0 ;
  wire \tx_cnt_reg[12]_i_2_n_0 ;
  wire \tx_cnt_reg[12]_i_2_n_1 ;
  wire \tx_cnt_reg[12]_i_2_n_2 ;
  wire \tx_cnt_reg[12]_i_2_n_3 ;
  wire \tx_cnt_reg[16]_i_2_n_0 ;
  wire \tx_cnt_reg[16]_i_2_n_1 ;
  wire \tx_cnt_reg[16]_i_2_n_2 ;
  wire \tx_cnt_reg[16]_i_2_n_3 ;
  wire \tx_cnt_reg[20]_i_2_n_0 ;
  wire \tx_cnt_reg[20]_i_2_n_1 ;
  wire \tx_cnt_reg[20]_i_2_n_2 ;
  wire \tx_cnt_reg[20]_i_2_n_3 ;
  wire \tx_cnt_reg[24]_i_2_n_0 ;
  wire \tx_cnt_reg[24]_i_2_n_1 ;
  wire \tx_cnt_reg[24]_i_2_n_2 ;
  wire \tx_cnt_reg[24]_i_2_n_3 ;
  wire \tx_cnt_reg[28]_i_2_n_0 ;
  wire \tx_cnt_reg[28]_i_2_n_1 ;
  wire \tx_cnt_reg[28]_i_2_n_2 ;
  wire \tx_cnt_reg[28]_i_2_n_3 ;
  wire \tx_cnt_reg[31]_i_6_n_2 ;
  wire \tx_cnt_reg[31]_i_6_n_3 ;
  wire \tx_cnt_reg[4]_i_2_n_0 ;
  wire \tx_cnt_reg[4]_i_2_n_1 ;
  wire \tx_cnt_reg[4]_i_2_n_2 ;
  wire \tx_cnt_reg[4]_i_2_n_3 ;
  wire \tx_cnt_reg[8]_i_2_n_0 ;
  wire \tx_cnt_reg[8]_i_2_n_1 ;
  wire \tx_cnt_reg[8]_i_2_n_2 ;
  wire \tx_cnt_reg[8]_i_2_n_3 ;
  wire [3:2]\NLW_tx_cnt_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_tx_cnt_reg[31]_i_6_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0001)) 
    \button_reg[1]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .O(\button_reg[1]_i_1_n_0 ));
  FDRE \button_reg_reg[0] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(D[0]),
        .Q(button_reg[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \button_reg_reg[1] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(D[1]),
        .Q(button_reg[1]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF7F0F0F0F0)) 
    curr_state_i_1
       (.I0(rcv_cnt_reg[0]),
        .I1(rcv_cnt_reg[1]),
        .I2(curr_state_i_2_n_0),
        .I3(rcv_cnt_reg[3]),
        .I4(rcv_cnt_reg[2]),
        .I5(curr_state),
        .O(curr_state_i_1_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    curr_state_i_2
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_tdata[2]),
        .I2(curr_state),
        .I3(s_axis_tdata[0]),
        .I4(curr_state_i_3_n_0),
        .O(curr_state_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    curr_state_i_3
       (.I0(s_axis_tdata[6]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[4]),
        .I4(s_axis_tvalid),
        .I5(s_axis_tdata[7]),
        .O(curr_state_i_3_n_0));
  FDRE curr_state_reg
       (.C(aclk),
        .CE(1'b1),
        .D(curr_state_i_1_n_0),
        .Q(curr_state),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[0] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_x[0]),
        .Q(jstk_x_reg[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[1] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_x[1]),
        .Q(jstk_x_reg[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[2] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_x[2]),
        .Q(jstk_x_reg[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[3] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_x[3]),
        .Q(jstk_x_reg[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[4] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_x[4]),
        .Q(jstk_x_reg[4]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[5] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_x[5]),
        .Q(jstk_x_reg[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[6] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_x[6]),
        .Q(jstk_x_reg[6]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_x_reg_reg[7] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_x[7]),
        .Q(jstk_x_reg[7]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[0] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_y[0]),
        .Q(jstk_y_reg[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[1] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_y[1]),
        .Q(jstk_y_reg[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[2] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_y[2]),
        .Q(jstk_y_reg[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[3] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_y[3]),
        .Q(jstk_y_reg[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[4] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_y[4]),
        .Q(jstk_y_reg[4]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[5] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_y[5]),
        .Q(jstk_y_reg[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[6] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_y[6]),
        .Q(jstk_y_reg[6]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \jstk_y_reg_reg[7] 
       (.C(aclk),
        .CE(\button_reg[1]_i_1_n_0 ),
        .D(jstk_y[7]),
        .Q(jstk_y_reg[7]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \led_b_reg[7]_i_1 
       (.I0(curr_state),
        .I1(s_axis_tvalid),
        .I2(rcv_cnt_reg[1]),
        .I3(rcv_cnt_reg[0]),
        .I4(rcv_cnt_reg[3]),
        .I5(rcv_cnt_reg[2]),
        .O(led_b_reg));
  FDSE \led_b_reg_reg[0] 
       (.C(aclk),
        .CE(led_b_reg),
        .D(s_axis_tdata[0]),
        .Q(led_b[0]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_b_reg_reg[1] 
       (.C(aclk),
        .CE(led_b_reg),
        .D(s_axis_tdata[1]),
        .Q(led_b[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_b_reg_reg[2] 
       (.C(aclk),
        .CE(led_b_reg),
        .D(s_axis_tdata[2]),
        .Q(led_b[2]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_b_reg_reg[3] 
       (.C(aclk),
        .CE(led_b_reg),
        .D(s_axis_tdata[3]),
        .Q(led_b[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_b_reg_reg[4] 
       (.C(aclk),
        .CE(led_b_reg),
        .D(s_axis_tdata[4]),
        .Q(led_b[4]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_b_reg_reg[5] 
       (.C(aclk),
        .CE(led_b_reg),
        .D(s_axis_tdata[5]),
        .Q(led_b[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_b_reg_reg[6] 
       (.C(aclk),
        .CE(led_b_reg),
        .D(s_axis_tdata[6]),
        .Q(led_b[6]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_b_reg_reg[7] 
       (.C(aclk),
        .CE(led_b_reg),
        .D(s_axis_tdata[7]),
        .Q(led_b[7]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \led_g_reg[7]_i_1 
       (.I0(curr_state),
        .I1(s_axis_tvalid),
        .I2(rcv_cnt_reg[0]),
        .I3(rcv_cnt_reg[1]),
        .I4(rcv_cnt_reg[3]),
        .I5(rcv_cnt_reg[2]),
        .O(led_g_reg));
  FDSE \led_g_reg_reg[0] 
       (.C(aclk),
        .CE(led_g_reg),
        .D(s_axis_tdata[0]),
        .Q(led_g[0]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_g_reg_reg[1] 
       (.C(aclk),
        .CE(led_g_reg),
        .D(s_axis_tdata[1]),
        .Q(led_g[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_g_reg_reg[2] 
       (.C(aclk),
        .CE(led_g_reg),
        .D(s_axis_tdata[2]),
        .Q(led_g[2]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_g_reg_reg[3] 
       (.C(aclk),
        .CE(led_g_reg),
        .D(s_axis_tdata[3]),
        .Q(led_g[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_g_reg_reg[4] 
       (.C(aclk),
        .CE(led_g_reg),
        .D(s_axis_tdata[4]),
        .Q(led_g[4]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_g_reg_reg[5] 
       (.C(aclk),
        .CE(led_g_reg),
        .D(s_axis_tdata[5]),
        .Q(led_g[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_g_reg_reg[6] 
       (.C(aclk),
        .CE(led_g_reg),
        .D(s_axis_tdata[6]),
        .Q(led_g[6]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_g_reg_reg[7] 
       (.C(aclk),
        .CE(led_g_reg),
        .D(s_axis_tdata[7]),
        .Q(led_g[7]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \led_r_reg[7]_i_1 
       (.I0(curr_state),
        .I1(s_axis_tvalid),
        .I2(rcv_cnt_reg[0]),
        .I3(rcv_cnt_reg[1]),
        .I4(rcv_cnt_reg[3]),
        .I5(rcv_cnt_reg[2]),
        .O(led_r_reg));
  FDSE \led_r_reg_reg[0] 
       (.C(aclk),
        .CE(led_r_reg),
        .D(s_axis_tdata[0]),
        .Q(led_r[0]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_r_reg_reg[1] 
       (.C(aclk),
        .CE(led_r_reg),
        .D(s_axis_tdata[1]),
        .Q(led_r[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_r_reg_reg[2] 
       (.C(aclk),
        .CE(led_r_reg),
        .D(s_axis_tdata[2]),
        .Q(led_r[2]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_r_reg_reg[3] 
       (.C(aclk),
        .CE(led_r_reg),
        .D(s_axis_tdata[3]),
        .Q(led_r[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_r_reg_reg[4] 
       (.C(aclk),
        .CE(led_r_reg),
        .D(s_axis_tdata[4]),
        .Q(led_r[4]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_r_reg_reg[5] 
       (.C(aclk),
        .CE(led_r_reg),
        .D(s_axis_tdata[5]),
        .Q(led_r[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDSE \led_r_reg_reg[6] 
       (.C(aclk),
        .CE(led_r_reg),
        .D(s_axis_tdata[6]),
        .Q(led_r[6]),
        .S(m_axis_tvalid_i_1_n_0));
  FDRE \led_r_reg_reg[7] 
       (.C(aclk),
        .CE(led_r_reg),
        .D(s_axis_tdata[7]),
        .Q(led_r[7]),
        .R(m_axis_tvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hEC2C0000E0200000)) 
    \m_axis_tdata[0]_i_1 
       (.I0(jstk_y_reg[0]),
        .I1(snd_cnt_reg[0]),
        .I2(snd_cnt_reg[1]),
        .I3(button_reg[0]),
        .I4(\m_axis_tdata[1]_i_2_n_0 ),
        .I5(jstk_x_reg[0]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEC2C0000E0200000)) 
    \m_axis_tdata[1]_i_1 
       (.I0(jstk_y_reg[1]),
        .I1(snd_cnt_reg[0]),
        .I2(snd_cnt_reg[1]),
        .I3(button_reg[1]),
        .I4(\m_axis_tdata[1]_i_2_n_0 ),
        .I5(jstk_x_reg[1]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[1]_i_2 
       (.I0(snd_cnt_reg[2]),
        .I1(snd_cnt_reg[3]),
        .O(\m_axis_tdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C000000A0)) 
    \m_axis_tdata[2]_i_1 
       (.I0(jstk_y_reg[2]),
        .I1(jstk_x_reg[2]),
        .I2(snd_cnt_reg[1]),
        .I3(snd_cnt_reg[2]),
        .I4(snd_cnt_reg[3]),
        .I5(snd_cnt_reg[0]),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C000000A0)) 
    \m_axis_tdata[3]_i_1 
       (.I0(jstk_y_reg[3]),
        .I1(jstk_x_reg[3]),
        .I2(snd_cnt_reg[1]),
        .I3(snd_cnt_reg[2]),
        .I4(snd_cnt_reg[3]),
        .I5(snd_cnt_reg[0]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C000000A0)) 
    \m_axis_tdata[4]_i_1 
       (.I0(jstk_y_reg[4]),
        .I1(jstk_x_reg[4]),
        .I2(snd_cnt_reg[1]),
        .I3(snd_cnt_reg[2]),
        .I4(snd_cnt_reg[3]),
        .I5(snd_cnt_reg[0]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000C000000A0)) 
    \m_axis_tdata[5]_i_1 
       (.I0(jstk_y_reg[5]),
        .I1(jstk_x_reg[5]),
        .I2(snd_cnt_reg[1]),
        .I3(snd_cnt_reg[2]),
        .I4(snd_cnt_reg[3]),
        .I5(snd_cnt_reg[0]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000044000000F5)) 
    \m_axis_tdata[6]_i_1 
       (.I0(snd_cnt_reg[1]),
        .I1(jstk_x_reg[6]),
        .I2(jstk_y_reg[6]),
        .I3(snd_cnt_reg[3]),
        .I4(snd_cnt_reg[2]),
        .I5(snd_cnt_reg[0]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \m_axis_tdata[7]_i_1 
       (.I0(aresetn),
        .I1(send_flag),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000044000000F5)) 
    \m_axis_tdata[7]_i_2 
       (.I0(snd_cnt_reg[1]),
        .I1(jstk_x_reg[7]),
        .I2(jstk_y_reg[7]),
        .I3(snd_cnt_reg[3]),
        .I4(snd_cnt_reg[2]),
        .I5(snd_cnt_reg[0]),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\m_axis_tdata[7]_i_2_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_i_1
       (.I0(aresetn),
        .O(m_axis_tvalid_i_1_n_0));
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(send_flag),
        .Q(m_axis_tvalid),
        .R(m_axis_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rcv_cnt[0]_i_1 
       (.I0(rcv_cnt_reg[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rcv_cnt[1]_i_1 
       (.I0(rcv_cnt_reg[0]),
        .I1(rcv_cnt_reg[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rcv_cnt[2]_i_1 
       (.I0(rcv_cnt_reg[1]),
        .I1(rcv_cnt_reg[0]),
        .I2(rcv_cnt_reg[2]),
        .O(plusOp__0[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \rcv_cnt[3]_i_1 
       (.I0(aresetn),
        .I1(curr_state),
        .O(\rcv_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rcv_cnt[3]_i_2 
       (.I0(rcv_cnt_reg[2]),
        .I1(rcv_cnt_reg[0]),
        .I2(rcv_cnt_reg[1]),
        .I3(rcv_cnt_reg[3]),
        .O(plusOp__0[3]));
  FDRE \rcv_cnt_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(plusOp__0[0]),
        .Q(rcv_cnt_reg[0]),
        .R(\rcv_cnt[3]_i_1_n_0 ));
  FDRE \rcv_cnt_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(plusOp__0[1]),
        .Q(rcv_cnt_reg[1]),
        .R(\rcv_cnt[3]_i_1_n_0 ));
  FDRE \rcv_cnt_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(plusOp__0[2]),
        .Q(rcv_cnt_reg[2]),
        .R(\rcv_cnt[3]_i_1_n_0 ));
  FDRE \rcv_cnt_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(plusOp__0[3]),
        .Q(rcv_cnt_reg[3]),
        .R(\rcv_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555700000003)) 
    send_flag_i_1
       (.I0(send_flag_i_2_n_0),
        .I1(\tx_cnt[31]_i_2_n_0 ),
        .I2(\tx_cnt[31]_i_3_n_0 ),
        .I3(\tx_cnt[31]_i_4_n_0 ),
        .I4(\tx_cnt[31]_i_5_n_0 ),
        .I5(send_flag),
        .O(send_flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    send_flag_i_2
       (.I0(snd_cnt_reg[0]),
        .I1(snd_cnt_reg[1]),
        .I2(m_axis_tready),
        .I3(snd_cnt_reg[3]),
        .I4(snd_cnt_reg[2]),
        .O(send_flag_i_2_n_0));
  FDRE send_flag_reg
       (.C(aclk),
        .CE(1'b1),
        .D(send_flag_i_1_n_0),
        .Q(send_flag),
        .R(m_axis_tvalid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \snd_cnt[0]_i_1 
       (.I0(snd_cnt_reg[0]),
        .O(\snd_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \snd_cnt[1]_i_1 
       (.I0(snd_cnt_reg[0]),
        .I1(snd_cnt_reg[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \snd_cnt[2]_i_1 
       (.I0(snd_cnt_reg[1]),
        .I1(snd_cnt_reg[0]),
        .I2(snd_cnt_reg[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \snd_cnt[3]_i_1 
       (.I0(snd_cnt_reg[2]),
        .I1(snd_cnt_reg[0]),
        .I2(snd_cnt_reg[1]),
        .I3(snd_cnt_reg[3]),
        .O(plusOp[3]));
  FDRE \snd_cnt_reg[0] 
       (.C(aclk),
        .CE(m_axis_tready),
        .D(\snd_cnt[0]_i_1_n_0 ),
        .Q(snd_cnt_reg[0]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \snd_cnt_reg[1] 
       (.C(aclk),
        .CE(m_axis_tready),
        .D(plusOp[1]),
        .Q(snd_cnt_reg[1]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \snd_cnt_reg[2] 
       (.C(aclk),
        .CE(m_axis_tready),
        .D(plusOp[2]),
        .Q(snd_cnt_reg[2]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  FDRE \snd_cnt_reg[3] 
       (.C(aclk),
        .CE(m_axis_tready),
        .D(plusOp[3]),
        .Q(snd_cnt_reg[3]),
        .R(\m_axis_tdata[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tx_cnt[0]_i_1 
       (.I0(sel0[0]),
        .O(tx_cnt[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[10]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[10]),
        .O(tx_cnt[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[11]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(tx_cnt[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[12]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(tx_cnt[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[13]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[13]),
        .O(tx_cnt[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[14]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(tx_cnt[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[15]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(tx_cnt[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[16]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(tx_cnt[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[17]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(tx_cnt[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[18]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(tx_cnt[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[19]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(tx_cnt[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[1]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[1]),
        .O(tx_cnt[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[20]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(tx_cnt[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[21]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(tx_cnt[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[22]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(tx_cnt[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[23]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(tx_cnt[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[24]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(tx_cnt[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[25]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(tx_cnt[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[26]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(tx_cnt[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[27]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(tx_cnt[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[28]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(tx_cnt[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[29]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(tx_cnt[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[2]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[2]),
        .O(tx_cnt[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[30]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(tx_cnt[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[31]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(tx_cnt[31]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \tx_cnt[31]_i_10 
       (.I0(sel0[13]),
        .I1(sel0[12]),
        .I2(sel0[14]),
        .I3(sel0[15]),
        .O(\tx_cnt[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \tx_cnt[31]_i_2 
       (.I0(sel0[18]),
        .I1(sel0[19]),
        .I2(sel0[16]),
        .I3(sel0[17]),
        .I4(\tx_cnt[31]_i_7_n_0 ),
        .O(\tx_cnt[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tx_cnt[31]_i_3 
       (.I0(sel0[26]),
        .I1(sel0[27]),
        .I2(sel0[24]),
        .I3(sel0[25]),
        .I4(\tx_cnt[31]_i_8_n_0 ),
        .O(\tx_cnt[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \tx_cnt[31]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .I4(\tx_cnt[31]_i_9_n_0 ),
        .O(\tx_cnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \tx_cnt[31]_i_5 
       (.I0(sel0[10]),
        .I1(sel0[11]),
        .I2(sel0[8]),
        .I3(sel0[9]),
        .I4(\tx_cnt[31]_i_10_n_0 ),
        .O(\tx_cnt[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_cnt[31]_i_7 
       (.I0(sel0[21]),
        .I1(sel0[20]),
        .I2(sel0[23]),
        .I3(sel0[22]),
        .O(\tx_cnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \tx_cnt[31]_i_8 
       (.I0(sel0[29]),
        .I1(sel0[28]),
        .I2(sel0[31]),
        .I3(sel0[30]),
        .O(\tx_cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \tx_cnt[31]_i_9 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[7]),
        .I3(sel0[6]),
        .O(\tx_cnt[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[3]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(tx_cnt[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[4]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(tx_cnt[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[5]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[5]),
        .O(tx_cnt[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[6]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(tx_cnt[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[7]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(tx_cnt[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[8]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(tx_cnt[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \tx_cnt[9]_i_1 
       (.I0(\tx_cnt[31]_i_2_n_0 ),
        .I1(\tx_cnt[31]_i_3_n_0 ),
        .I2(\tx_cnt[31]_i_4_n_0 ),
        .I3(\tx_cnt[31]_i_5_n_0 ),
        .I4(data0[9]),
        .O(tx_cnt[9]));
  FDRE \tx_cnt_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[0]),
        .Q(sel0[0]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[10] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[10]),
        .Q(sel0[10]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[11] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[11]),
        .Q(sel0[11]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[12] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[12]),
        .Q(sel0[12]),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_cnt_reg[12]_i_2 
       (.CI(\tx_cnt_reg[8]_i_2_n_0 ),
        .CO({\tx_cnt_reg[12]_i_2_n_0 ,\tx_cnt_reg[12]_i_2_n_1 ,\tx_cnt_reg[12]_i_2_n_2 ,\tx_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(sel0[12:9]));
  FDRE \tx_cnt_reg[13] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[13]),
        .Q(sel0[13]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[14] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[14]),
        .Q(sel0[14]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[15] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[15]),
        .Q(sel0[15]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[16] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[16]),
        .Q(sel0[16]),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_cnt_reg[16]_i_2 
       (.CI(\tx_cnt_reg[12]_i_2_n_0 ),
        .CO({\tx_cnt_reg[16]_i_2_n_0 ,\tx_cnt_reg[16]_i_2_n_1 ,\tx_cnt_reg[16]_i_2_n_2 ,\tx_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(sel0[16:13]));
  FDRE \tx_cnt_reg[17] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[17]),
        .Q(sel0[17]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[18] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[18]),
        .Q(sel0[18]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[19] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[19]),
        .Q(sel0[19]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[1]),
        .Q(sel0[1]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[20] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[20]),
        .Q(sel0[20]),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_cnt_reg[20]_i_2 
       (.CI(\tx_cnt_reg[16]_i_2_n_0 ),
        .CO({\tx_cnt_reg[20]_i_2_n_0 ,\tx_cnt_reg[20]_i_2_n_1 ,\tx_cnt_reg[20]_i_2_n_2 ,\tx_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(sel0[20:17]));
  FDRE \tx_cnt_reg[21] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[21]),
        .Q(sel0[21]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[22] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[22]),
        .Q(sel0[22]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[23]),
        .Q(sel0[23]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[24] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[24]),
        .Q(sel0[24]),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_cnt_reg[24]_i_2 
       (.CI(\tx_cnt_reg[20]_i_2_n_0 ),
        .CO({\tx_cnt_reg[24]_i_2_n_0 ,\tx_cnt_reg[24]_i_2_n_1 ,\tx_cnt_reg[24]_i_2_n_2 ,\tx_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(sel0[24:21]));
  FDRE \tx_cnt_reg[25] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[25]),
        .Q(sel0[25]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[26] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[26]),
        .Q(sel0[26]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[27] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[27]),
        .Q(sel0[27]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[28] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[28]),
        .Q(sel0[28]),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_cnt_reg[28]_i_2 
       (.CI(\tx_cnt_reg[24]_i_2_n_0 ),
        .CO({\tx_cnt_reg[28]_i_2_n_0 ,\tx_cnt_reg[28]_i_2_n_1 ,\tx_cnt_reg[28]_i_2_n_2 ,\tx_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(sel0[28:25]));
  FDRE \tx_cnt_reg[29] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[29]),
        .Q(sel0[29]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[2]),
        .Q(sel0[2]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[30] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[30]),
        .Q(sel0[30]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[31] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[31]),
        .Q(sel0[31]),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_cnt_reg[31]_i_6 
       (.CI(\tx_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_tx_cnt_reg[31]_i_6_CO_UNCONNECTED [3:2],\tx_cnt_reg[31]_i_6_n_2 ,\tx_cnt_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_tx_cnt_reg[31]_i_6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,sel0[31:29]}));
  FDRE \tx_cnt_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[3]),
        .Q(sel0[3]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[4]),
        .Q(sel0[4]),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\tx_cnt_reg[4]_i_2_n_0 ,\tx_cnt_reg[4]_i_2_n_1 ,\tx_cnt_reg[4]_i_2_n_2 ,\tx_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(sel0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(sel0[4:1]));
  FDRE \tx_cnt_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[5]),
        .Q(sel0[5]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[6]),
        .Q(sel0[6]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[7]),
        .Q(sel0[7]),
        .R(m_axis_tvalid_i_1_n_0));
  FDRE \tx_cnt_reg[8] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[8]),
        .Q(sel0[8]),
        .R(m_axis_tvalid_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \tx_cnt_reg[8]_i_2 
       (.CI(\tx_cnt_reg[4]_i_2_n_0 ),
        .CO({\tx_cnt_reg[8]_i_2_n_0 ,\tx_cnt_reg[8]_i_2_n_1 ,\tx_cnt_reg[8]_i_2_n_2 ,\tx_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(sel0[8:5]));
  FDRE \tx_cnt_reg[9] 
       (.C(aclk),
        .CE(1'b1),
        .D(tx_cnt[9]),
        .Q(sel0[9]),
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
