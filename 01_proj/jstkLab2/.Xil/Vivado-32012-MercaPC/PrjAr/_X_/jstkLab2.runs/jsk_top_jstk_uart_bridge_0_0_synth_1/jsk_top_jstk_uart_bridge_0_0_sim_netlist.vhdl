-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr 16 19:13:41 2024
-- Host        : MercaPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ jsk_top_jstk_uart_bridge_0_0_sim_netlist.vhdl
-- Design      : jsk_top_jstk_uart_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    jstk_y : in STD_LOGIC_VECTOR ( 6 downto 0 );
    jstk_x : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge is
  signal button_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \button_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal curr_state : STD_LOGIC;
  signal curr_state_i_1_n_0 : STD_LOGIC;
  signal curr_state_i_2_n_0 : STD_LOGIC;
  signal curr_state_i_3_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal jstk_x_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal jstk_y_reg : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal led_b_reg : STD_LOGIC;
  signal led_g_reg : STD_LOGIC;
  signal led_r_reg : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rcv_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal rcv_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal send_flag : STD_LOGIC;
  signal send_flag_i_1_n_0 : STD_LOGIC;
  signal send_flag_i_2_n_0 : STD_LOGIC;
  signal \snd_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal snd_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tx_cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \tx_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \tx_cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \tx_cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \tx_cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \tx_cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \tx_cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \tx_cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal \tx_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \tx_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \tx_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \tx_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \tx_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \tx_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \tx_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \tx_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \tx_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \tx_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \tx_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \tx_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \tx_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \tx_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \tx_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \tx_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \tx_cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \tx_cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \tx_cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \tx_cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \tx_cnt_reg[31]_i_6_n_2\ : STD_LOGIC;
  signal \tx_cnt_reg[31]_i_6_n_3\ : STD_LOGIC;
  signal \tx_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \tx_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \tx_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \tx_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \tx_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \tx_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \tx_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \tx_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_tx_cnt_reg[31]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tx_cnt_reg[31]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rcv_cnt[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rcv_cnt[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rcv_cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rcv_cnt[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of send_flag_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \snd_cnt[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \snd_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \snd_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \tx_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_cnt_reg[31]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \tx_cnt_reg[8]_i_2\ : label is 35;
begin
\button_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      O => \button_reg[1]_i_1_n_0\
    );
\button_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => D(0),
      Q => button_reg(0),
      R => m_axis_tvalid_i_1_n_0
    );
\button_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => D(1),
      Q => button_reg(1),
      R => m_axis_tvalid_i_1_n_0
    );
curr_state_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF7F0F0F0F0"
    )
        port map (
      I0 => rcv_cnt_reg(0),
      I1 => rcv_cnt_reg(1),
      I2 => curr_state_i_2_n_0,
      I3 => rcv_cnt_reg(3),
      I4 => rcv_cnt_reg(2),
      I5 => curr_state,
      O => curr_state_i_1_n_0
    );
curr_state_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => s_axis_tdata(2),
      I2 => curr_state,
      I3 => s_axis_tdata(0),
      I4 => curr_state_i_3_n_0,
      O => curr_state_i_2_n_0
    );
curr_state_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(4),
      I4 => s_axis_tvalid,
      I5 => s_axis_tdata(7),
      O => curr_state_i_3_n_0
    );
curr_state_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => curr_state_i_1_n_0,
      Q => curr_state,
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_x(0),
      Q => jstk_x_reg(0),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_x(1),
      Q => jstk_x_reg(1),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_x(2),
      Q => jstk_x_reg(2),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_x(3),
      Q => jstk_x_reg(3),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_x(4),
      Q => jstk_x_reg(4),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_x(5),
      Q => jstk_x_reg(5),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_x(6),
      Q => jstk_x_reg(6),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_y(0),
      Q => jstk_y_reg(0),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_y(1),
      Q => jstk_y_reg(1),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_y(2),
      Q => jstk_y_reg(2),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_y(3),
      Q => jstk_y_reg(3),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_y(4),
      Q => jstk_y_reg(4),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_y(5),
      Q => jstk_y_reg(5),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \button_reg[1]_i_1_n_0\,
      D => jstk_y(6),
      Q => jstk_y_reg(6),
      R => m_axis_tvalid_i_1_n_0
    );
\led_b_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => curr_state,
      I1 => s_axis_tvalid,
      I2 => rcv_cnt_reg(1),
      I3 => rcv_cnt_reg(0),
      I4 => rcv_cnt_reg(3),
      I5 => rcv_cnt_reg(2),
      O => led_b_reg
    );
\led_b_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_b_reg,
      D => s_axis_tdata(0),
      Q => led_b(0),
      S => m_axis_tvalid_i_1_n_0
    );
\led_b_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b_reg,
      D => s_axis_tdata(1),
      Q => led_b(1),
      R => m_axis_tvalid_i_1_n_0
    );
\led_b_reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_b_reg,
      D => s_axis_tdata(2),
      Q => led_b(2),
      S => m_axis_tvalid_i_1_n_0
    );
\led_b_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b_reg,
      D => s_axis_tdata(3),
      Q => led_b(3),
      R => m_axis_tvalid_i_1_n_0
    );
\led_b_reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_b_reg,
      D => s_axis_tdata(4),
      Q => led_b(4),
      S => m_axis_tvalid_i_1_n_0
    );
\led_b_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b_reg,
      D => s_axis_tdata(5),
      Q => led_b(5),
      R => m_axis_tvalid_i_1_n_0
    );
\led_b_reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_b_reg,
      D => s_axis_tdata(6),
      Q => led_b(6),
      S => m_axis_tvalid_i_1_n_0
    );
\led_b_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b_reg,
      D => s_axis_tdata(7),
      Q => led_b(7),
      R => m_axis_tvalid_i_1_n_0
    );
\led_g_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => curr_state,
      I1 => s_axis_tvalid,
      I2 => rcv_cnt_reg(0),
      I3 => rcv_cnt_reg(1),
      I4 => rcv_cnt_reg(3),
      I5 => rcv_cnt_reg(2),
      O => led_g_reg
    );
\led_g_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_g_reg,
      D => s_axis_tdata(0),
      Q => led_g(0),
      S => m_axis_tvalid_i_1_n_0
    );
\led_g_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg,
      D => s_axis_tdata(1),
      Q => led_g(1),
      R => m_axis_tvalid_i_1_n_0
    );
\led_g_reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_g_reg,
      D => s_axis_tdata(2),
      Q => led_g(2),
      S => m_axis_tvalid_i_1_n_0
    );
\led_g_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg,
      D => s_axis_tdata(3),
      Q => led_g(3),
      R => m_axis_tvalid_i_1_n_0
    );
\led_g_reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_g_reg,
      D => s_axis_tdata(4),
      Q => led_g(4),
      S => m_axis_tvalid_i_1_n_0
    );
\led_g_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg,
      D => s_axis_tdata(5),
      Q => led_g(5),
      R => m_axis_tvalid_i_1_n_0
    );
\led_g_reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_g_reg,
      D => s_axis_tdata(6),
      Q => led_g(6),
      S => m_axis_tvalid_i_1_n_0
    );
\led_g_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g_reg,
      D => s_axis_tdata(7),
      Q => led_g(7),
      R => m_axis_tvalid_i_1_n_0
    );
\led_r_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => curr_state,
      I1 => s_axis_tvalid,
      I2 => rcv_cnt_reg(0),
      I3 => rcv_cnt_reg(1),
      I4 => rcv_cnt_reg(3),
      I5 => rcv_cnt_reg(2),
      O => led_r_reg
    );
\led_r_reg_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_r_reg,
      D => s_axis_tdata(0),
      Q => led_r(0),
      S => m_axis_tvalid_i_1_n_0
    );
\led_r_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg,
      D => s_axis_tdata(1),
      Q => led_r(1),
      R => m_axis_tvalid_i_1_n_0
    );
\led_r_reg_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_r_reg,
      D => s_axis_tdata(2),
      Q => led_r(2),
      S => m_axis_tvalid_i_1_n_0
    );
\led_r_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg,
      D => s_axis_tdata(3),
      Q => led_r(3),
      R => m_axis_tvalid_i_1_n_0
    );
\led_r_reg_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_r_reg,
      D => s_axis_tdata(4),
      Q => led_r(4),
      S => m_axis_tvalid_i_1_n_0
    );
\led_r_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg,
      D => s_axis_tdata(5),
      Q => led_r(5),
      R => m_axis_tvalid_i_1_n_0
    );
\led_r_reg_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => led_r_reg,
      D => s_axis_tdata(6),
      Q => led_r(6),
      S => m_axis_tvalid_i_1_n_0
    );
\led_r_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r_reg,
      D => s_axis_tdata(7),
      Q => led_r(7),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC2C0000E0200000"
    )
        port map (
      I0 => jstk_y_reg(0),
      I1 => snd_cnt_reg(0),
      I2 => snd_cnt_reg(1),
      I3 => button_reg(0),
      I4 => \m_axis_tdata[1]_i_2_n_0\,
      I5 => jstk_x_reg(0),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EC2C0000E0200000"
    )
        port map (
      I0 => jstk_y_reg(1),
      I1 => snd_cnt_reg(0),
      I2 => snd_cnt_reg(1),
      I3 => button_reg(1),
      I4 => \m_axis_tdata[1]_i_2_n_0\,
      I5 => jstk_x_reg(1),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => snd_cnt_reg(2),
      I1 => snd_cnt_reg(3),
      O => \m_axis_tdata[1]_i_2_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => jstk_y_reg(2),
      I1 => jstk_x_reg(2),
      I2 => snd_cnt_reg(1),
      I3 => snd_cnt_reg(0),
      I4 => snd_cnt_reg(3),
      I5 => snd_cnt_reg(2),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => jstk_y_reg(3),
      I1 => jstk_x_reg(3),
      I2 => snd_cnt_reg(1),
      I3 => snd_cnt_reg(0),
      I4 => snd_cnt_reg(3),
      I5 => snd_cnt_reg(2),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => jstk_y_reg(4),
      I1 => jstk_x_reg(4),
      I2 => snd_cnt_reg(1),
      I3 => snd_cnt_reg(0),
      I4 => snd_cnt_reg(3),
      I5 => snd_cnt_reg(2),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000CA0"
    )
        port map (
      I0 => jstk_y_reg(5),
      I1 => jstk_x_reg(5),
      I2 => snd_cnt_reg(1),
      I3 => snd_cnt_reg(0),
      I4 => snd_cnt_reg(3),
      I5 => snd_cnt_reg(2),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000044000000F5"
    )
        port map (
      I0 => snd_cnt_reg(1),
      I1 => jstk_x_reg(6),
      I2 => jstk_y_reg(6),
      I3 => snd_cnt_reg(3),
      I4 => snd_cnt_reg(2),
      I5 => snd_cnt_reg(0),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aresetn,
      I1 => send_flag,
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => snd_cnt_reg(0),
      I1 => snd_cnt_reg(2),
      I2 => snd_cnt_reg(3),
      I3 => snd_cnt_reg(1),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[7]_i_2_n_0\,
      Q => m_axis_tdata(7),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => send_flag,
      Q => m_axis_tvalid,
      R => m_axis_tvalid_i_1_n_0
    );
\rcv_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rcv_cnt_reg(0),
      O => \plusOp__0\(0)
    );
\rcv_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rcv_cnt_reg(0),
      I1 => rcv_cnt_reg(1),
      O => \plusOp__0\(1)
    );
\rcv_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rcv_cnt_reg(1),
      I1 => rcv_cnt_reg(0),
      I2 => rcv_cnt_reg(2),
      O => \plusOp__0\(2)
    );
\rcv_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aresetn,
      I1 => curr_state,
      O => \rcv_cnt[3]_i_1_n_0\
    );
\rcv_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rcv_cnt_reg(2),
      I1 => rcv_cnt_reg(0),
      I2 => rcv_cnt_reg(1),
      I3 => rcv_cnt_reg(3),
      O => \plusOp__0\(3)
    );
\rcv_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => \plusOp__0\(0),
      Q => rcv_cnt_reg(0),
      R => \rcv_cnt[3]_i_1_n_0\
    );
\rcv_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => \plusOp__0\(1),
      Q => rcv_cnt_reg(1),
      R => \rcv_cnt[3]_i_1_n_0\
    );
\rcv_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => \plusOp__0\(2),
      Q => rcv_cnt_reg(2),
      R => \rcv_cnt[3]_i_1_n_0\
    );
\rcv_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => s_axis_tvalid,
      D => \plusOp__0\(3),
      Q => rcv_cnt_reg(3),
      R => \rcv_cnt[3]_i_1_n_0\
    );
send_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555700000003"
    )
        port map (
      I0 => send_flag_i_2_n_0,
      I1 => \tx_cnt[31]_i_2_n_0\,
      I2 => \tx_cnt[31]_i_3_n_0\,
      I3 => \tx_cnt[31]_i_4_n_0\,
      I4 => \tx_cnt[31]_i_5_n_0\,
      I5 => send_flag,
      O => send_flag_i_1_n_0
    );
send_flag_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => snd_cnt_reg(0),
      I1 => snd_cnt_reg(1),
      I2 => m_axis_tready,
      I3 => snd_cnt_reg(3),
      I4 => snd_cnt_reg(2),
      O => send_flag_i_2_n_0
    );
send_flag_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => send_flag_i_1_n_0,
      Q => send_flag,
      R => m_axis_tvalid_i_1_n_0
    );
\snd_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => snd_cnt_reg(0),
      O => \snd_cnt[0]_i_1_n_0\
    );
\snd_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => snd_cnt_reg(1),
      I1 => snd_cnt_reg(0),
      O => plusOp(1)
    );
\snd_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => snd_cnt_reg(1),
      I1 => snd_cnt_reg(0),
      I2 => snd_cnt_reg(2),
      O => plusOp(2)
    );
\snd_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => snd_cnt_reg(2),
      I1 => snd_cnt_reg(0),
      I2 => snd_cnt_reg(1),
      I3 => snd_cnt_reg(3),
      O => plusOp(3)
    );
\snd_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tready,
      D => \snd_cnt[0]_i_1_n_0\,
      Q => snd_cnt_reg(0),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\snd_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tready,
      D => plusOp(1),
      Q => snd_cnt_reg(1),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\snd_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tready,
      D => plusOp(2),
      Q => snd_cnt_reg(2),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\snd_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tready,
      D => plusOp(3),
      Q => snd_cnt_reg(3),
      R => \m_axis_tdata[7]_i_1_n_0\
    );
\tx_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel0(0),
      O => tx_cnt(0)
    );
\tx_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(10),
      O => tx_cnt(10)
    );
\tx_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(11),
      O => tx_cnt(11)
    );
\tx_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(12),
      O => tx_cnt(12)
    );
\tx_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(13),
      O => tx_cnt(13)
    );
\tx_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(14),
      O => tx_cnt(14)
    );
\tx_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(15),
      O => tx_cnt(15)
    );
\tx_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(16),
      O => tx_cnt(16)
    );
\tx_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(17),
      O => tx_cnt(17)
    );
\tx_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(18),
      O => tx_cnt(18)
    );
\tx_cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(19),
      O => tx_cnt(19)
    );
\tx_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(1),
      O => tx_cnt(1)
    );
\tx_cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(20),
      O => tx_cnt(20)
    );
\tx_cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(21),
      O => tx_cnt(21)
    );
\tx_cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(22),
      O => tx_cnt(22)
    );
\tx_cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(23),
      O => tx_cnt(23)
    );
\tx_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(24),
      O => tx_cnt(24)
    );
\tx_cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(25),
      O => tx_cnt(25)
    );
\tx_cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(26),
      O => tx_cnt(26)
    );
\tx_cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(27),
      O => tx_cnt(27)
    );
\tx_cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(28),
      O => tx_cnt(28)
    );
\tx_cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(29),
      O => tx_cnt(29)
    );
\tx_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(2),
      O => tx_cnt(2)
    );
\tx_cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(30),
      O => tx_cnt(30)
    );
\tx_cnt[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(31),
      O => tx_cnt(31)
    );
\tx_cnt[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => sel0(13),
      I1 => sel0(12),
      I2 => sel0(14),
      I3 => sel0(15),
      O => \tx_cnt[31]_i_10_n_0\
    );
\tx_cnt[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => sel0(18),
      I1 => sel0(19),
      I2 => sel0(16),
      I3 => sel0(17),
      I4 => \tx_cnt[31]_i_7_n_0\,
      O => \tx_cnt[31]_i_2_n_0\
    );
\tx_cnt[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sel0(26),
      I1 => sel0(27),
      I2 => sel0(24),
      I3 => sel0(25),
      I4 => \tx_cnt[31]_i_8_n_0\,
      O => \tx_cnt[31]_i_3_n_0\
    );
\tx_cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => \tx_cnt[31]_i_9_n_0\,
      O => \tx_cnt[31]_i_4_n_0\
    );
\tx_cnt[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => sel0(10),
      I1 => sel0(11),
      I2 => sel0(8),
      I3 => sel0(9),
      I4 => \tx_cnt[31]_i_10_n_0\,
      O => \tx_cnt[31]_i_5_n_0\
    );
\tx_cnt[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(21),
      I1 => sel0(20),
      I2 => sel0(23),
      I3 => sel0(22),
      O => \tx_cnt[31]_i_7_n_0\
    );
\tx_cnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sel0(29),
      I1 => sel0(28),
      I2 => sel0(31),
      I3 => sel0(30),
      O => \tx_cnt[31]_i_8_n_0\
    );
\tx_cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => sel0(5),
      I1 => sel0(4),
      I2 => sel0(7),
      I3 => sel0(6),
      O => \tx_cnt[31]_i_9_n_0\
    );
\tx_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(3),
      O => tx_cnt(3)
    );
\tx_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(4),
      O => tx_cnt(4)
    );
\tx_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(5),
      O => tx_cnt(5)
    );
\tx_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(6),
      O => tx_cnt(6)
    );
\tx_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(7),
      O => tx_cnt(7)
    );
\tx_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(8),
      O => tx_cnt(8)
    );
\tx_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \tx_cnt[31]_i_2_n_0\,
      I1 => \tx_cnt[31]_i_3_n_0\,
      I2 => \tx_cnt[31]_i_4_n_0\,
      I3 => \tx_cnt[31]_i_5_n_0\,
      I4 => data0(9),
      O => tx_cnt(9)
    );
\tx_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(0),
      Q => sel0(0),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(10),
      Q => sel0(10),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(11),
      Q => sel0(11),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(12),
      Q => sel0(12),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_cnt_reg[8]_i_2_n_0\,
      CO(3) => \tx_cnt_reg[12]_i_2_n_0\,
      CO(2) => \tx_cnt_reg[12]_i_2_n_1\,
      CO(1) => \tx_cnt_reg[12]_i_2_n_2\,
      CO(0) => \tx_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => sel0(12 downto 9)
    );
\tx_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(13),
      Q => sel0(13),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(14),
      Q => sel0(14),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(15),
      Q => sel0(15),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(16),
      Q => sel0(16),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_cnt_reg[12]_i_2_n_0\,
      CO(3) => \tx_cnt_reg[16]_i_2_n_0\,
      CO(2) => \tx_cnt_reg[16]_i_2_n_1\,
      CO(1) => \tx_cnt_reg[16]_i_2_n_2\,
      CO(0) => \tx_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => sel0(16 downto 13)
    );
\tx_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(17),
      Q => sel0(17),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(18),
      Q => sel0(18),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(19),
      Q => sel0(19),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(1),
      Q => sel0(1),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(20),
      Q => sel0(20),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_cnt_reg[16]_i_2_n_0\,
      CO(3) => \tx_cnt_reg[20]_i_2_n_0\,
      CO(2) => \tx_cnt_reg[20]_i_2_n_1\,
      CO(1) => \tx_cnt_reg[20]_i_2_n_2\,
      CO(0) => \tx_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => sel0(20 downto 17)
    );
\tx_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(21),
      Q => sel0(21),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(22),
      Q => sel0(22),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(23),
      Q => sel0(23),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(24),
      Q => sel0(24),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_cnt_reg[20]_i_2_n_0\,
      CO(3) => \tx_cnt_reg[24]_i_2_n_0\,
      CO(2) => \tx_cnt_reg[24]_i_2_n_1\,
      CO(1) => \tx_cnt_reg[24]_i_2_n_2\,
      CO(0) => \tx_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => sel0(24 downto 21)
    );
\tx_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(25),
      Q => sel0(25),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(26),
      Q => sel0(26),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(27),
      Q => sel0(27),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(28),
      Q => sel0(28),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_cnt_reg[24]_i_2_n_0\,
      CO(3) => \tx_cnt_reg[28]_i_2_n_0\,
      CO(2) => \tx_cnt_reg[28]_i_2_n_1\,
      CO(1) => \tx_cnt_reg[28]_i_2_n_2\,
      CO(0) => \tx_cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => sel0(28 downto 25)
    );
\tx_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(29),
      Q => sel0(29),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(2),
      Q => sel0(2),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(30),
      Q => sel0(30),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(31),
      Q => sel0(31),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[31]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_tx_cnt_reg[31]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tx_cnt_reg[31]_i_6_n_2\,
      CO(0) => \tx_cnt_reg[31]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_tx_cnt_reg[31]_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => sel0(31 downto 29)
    );
\tx_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(3),
      Q => sel0(3),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(4),
      Q => sel0(4),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tx_cnt_reg[4]_i_2_n_0\,
      CO(2) => \tx_cnt_reg[4]_i_2_n_1\,
      CO(1) => \tx_cnt_reg[4]_i_2_n_2\,
      CO(0) => \tx_cnt_reg[4]_i_2_n_3\,
      CYINIT => sel0(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => sel0(4 downto 1)
    );
\tx_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(5),
      Q => sel0(5),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(6),
      Q => sel0(6),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(7),
      Q => sel0(7),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(8),
      Q => sel0(8),
      R => m_axis_tvalid_i_1_n_0
    );
\tx_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tx_cnt_reg[4]_i_2_n_0\,
      CO(3) => \tx_cnt_reg[8]_i_2_n_0\,
      CO(2) => \tx_cnt_reg[8]_i_2_n_1\,
      CO(1) => \tx_cnt_reg[8]_i_2_n_2\,
      CO(0) => \tx_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => sel0(8 downto 5)
    );
\tx_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tx_cnt(9),
      Q => sel0(9),
      R => m_axis_tvalid_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    jstk_x : in STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : in STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : in STD_LOGIC;
    btn_trigger : in STD_LOGIC;
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "jsk_top_jstk_uart_bridge_0_0,jstk_uart_bridge,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "jstk_uart_bridge,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  s_axis_tready <= \<const1>\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_jstk_uart_bridge
     port map (
      D(1) => btn_trigger,
      D(0) => btn_jstk,
      aclk => aclk,
      aresetn => aresetn,
      jstk_x(6 downto 0) => jstk_x(9 downto 3),
      jstk_y(6 downto 0) => jstk_y(9 downto 3),
      led_b(7 downto 0) => led_b(7 downto 0),
      led_g(7 downto 0) => led_g(7 downto 0),
      led_r(7 downto 0) => led_r(7 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
