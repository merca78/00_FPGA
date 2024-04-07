-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Apr  7 01:06:42 2024
-- Host        : MercaPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ jsk_top_digilent_jstk2_0_0_sim_netlist.vhdl
-- Design      : jsk_top_digilent_jstk2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2 is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    btn_jstk : out STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2 is
  signal \FSM_sequential_curr_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \^btn_jstk\ : STD_LOGIC;
  signal btn_jstk_reg_i_1_n_0 : STD_LOGIC;
  signal btn_jstk_reg_i_2_n_0 : STD_LOGIC;
  signal btn_jstk_reg_i_3_n_0 : STD_LOGIC;
  signal \^btn_trigger\ : STD_LOGIC;
  signal btn_trigger_reg_i_1_n_0 : STD_LOGIC;
  signal curr_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal delay_cnt : STD_LOGIC;
  signal \delay_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \delay_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[31]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \delay_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \^jstk_x\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \jstk_x_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_x_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_x_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_x_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \^jstk_y\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \jstk_y_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_y_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \jstk_y_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_3_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rcv_byte_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \rcv_byte_cnt[3]_i_3_n_0\ : STD_LOGIC;
  signal rcv_byte_cnt_0 : STD_LOGIC;
  signal rgb_set_clc : STD_LOGIC;
  signal rgb_set_clc_i_1_n_0 : STD_LOGIC;
  signal rgb_set_d1 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal rgb_set_req : STD_LOGIC;
  signal \rgb_set_req0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \rgb_set_req0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \rgb_set_req0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \rgb_set_req0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \rgb_set_req0_carry__0_n_0\ : STD_LOGIC;
  signal \rgb_set_req0_carry__0_n_1\ : STD_LOGIC;
  signal \rgb_set_req0_carry__0_n_2\ : STD_LOGIC;
  signal \rgb_set_req0_carry__0_n_3\ : STD_LOGIC;
  signal rgb_set_req0_carry_i_1_n_0 : STD_LOGIC;
  signal rgb_set_req0_carry_i_2_n_0 : STD_LOGIC;
  signal rgb_set_req0_carry_i_3_n_0 : STD_LOGIC;
  signal rgb_set_req0_carry_i_4_n_0 : STD_LOGIC;
  signal rgb_set_req0_carry_n_0 : STD_LOGIC;
  signal rgb_set_req0_carry_n_1 : STD_LOGIC;
  signal rgb_set_req0_carry_n_2 : STD_LOGIC;
  signal rgb_set_req0_carry_n_3 : STD_LOGIC;
  signal rgb_set_req_i_1_n_0 : STD_LOGIC;
  signal snd_byte_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \snd_byte_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \snd_byte_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \snd_byte_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \snd_byte_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \NLW_delay_cnt_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delay_cnt_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_rgb_set_req0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_rgb_set_req0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_curr_state[1]_i_2\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[0]\ : label is "set_led:01,get_coord:10,wait_std:11,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_state_reg[1]\ : label is "set_led:01,get_coord:10,wait_std:11,idle:00";
  attribute SOFT_HLUTNM of btn_jstk_reg_i_3 : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \jstk_x_reg[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rcv_byte_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rcv_byte_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rcv_byte_cnt[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rcv_byte_cnt[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \snd_byte_cnt[0]_i_1\ : label is "soft_lutpair2";
begin
  btn_jstk <= \^btn_jstk\;
  btn_trigger <= \^btn_trigger\;
  jstk_x(9 downto 0) <= \^jstk_x\(9 downto 0);
  jstk_y(9 downto 0) <= \^jstk_y\(9 downto 0);
  m_axis_tvalid <= \^m_axis_tvalid\;
\FSM_sequential_curr_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
        port map (
      I0 => \FSM_sequential_curr_state[0]_i_2_n_0\,
      I1 => curr_state(0),
      I2 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I4 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I5 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      O => next_state(0)
    );
\FSM_sequential_curr_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3374"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => curr_state(1),
      I2 => rgb_set_req,
      I3 => curr_state(0),
      O => \FSM_sequential_curr_state[0]_i_2_n_0\
    );
\FSM_sequential_curr_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEEA"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_2_n_0\,
      I1 => curr_state(1),
      I2 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I4 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I5 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      O => next_state(1)
    );
\FSM_sequential_curr_state[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[21]\,
      I1 => \delay_cnt_reg_n_0_[20]\,
      I2 => \delay_cnt_reg_n_0_[23]\,
      I3 => \delay_cnt_reg_n_0_[22]\,
      O => \FSM_sequential_curr_state[1]_i_10_n_0\
    );
\FSM_sequential_curr_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F35"
    )
        port map (
      I0 => rgb_set_req,
      I1 => m_axis_tvalid_i_3_n_0,
      I2 => curr_state(0),
      I3 => curr_state(1),
      O => \FSM_sequential_curr_state[1]_i_2_n_0\
    );
\FSM_sequential_curr_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[10]\,
      I1 => \delay_cnt_reg_n_0_[11]\,
      I2 => \delay_cnt_reg_n_0_[8]\,
      I3 => \delay_cnt_reg_n_0_[9]\,
      I4 => \FSM_sequential_curr_state[1]_i_7_n_0\,
      O => \FSM_sequential_curr_state[1]_i_3_n_0\
    );
\FSM_sequential_curr_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[2]\,
      I1 => \delay_cnt_reg_n_0_[3]\,
      I2 => \delay_cnt_reg_n_0_[0]\,
      I3 => \delay_cnt_reg_n_0_[1]\,
      I4 => \FSM_sequential_curr_state[1]_i_8_n_0\,
      O => \FSM_sequential_curr_state[1]_i_4_n_0\
    );
\FSM_sequential_curr_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[26]\,
      I1 => \delay_cnt_reg_n_0_[27]\,
      I2 => \delay_cnt_reg_n_0_[24]\,
      I3 => \delay_cnt_reg_n_0_[25]\,
      I4 => \FSM_sequential_curr_state[1]_i_9_n_0\,
      O => \FSM_sequential_curr_state[1]_i_5_n_0\
    );
\FSM_sequential_curr_state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[18]\,
      I1 => \delay_cnt_reg_n_0_[19]\,
      I2 => \delay_cnt_reg_n_0_[16]\,
      I3 => \delay_cnt_reg_n_0_[17]\,
      I4 => \FSM_sequential_curr_state[1]_i_10_n_0\,
      O => \FSM_sequential_curr_state[1]_i_6_n_0\
    );
\FSM_sequential_curr_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[13]\,
      I1 => \delay_cnt_reg_n_0_[12]\,
      I2 => \delay_cnt_reg_n_0_[15]\,
      I3 => \delay_cnt_reg_n_0_[14]\,
      O => \FSM_sequential_curr_state[1]_i_7_n_0\
    );
\FSM_sequential_curr_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[5]\,
      I1 => \delay_cnt_reg_n_0_[4]\,
      I2 => \delay_cnt_reg_n_0_[6]\,
      I3 => \delay_cnt_reg_n_0_[7]\,
      O => \FSM_sequential_curr_state[1]_i_8_n_0\
    );
\FSM_sequential_curr_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[29]\,
      I1 => \delay_cnt_reg_n_0_[28]\,
      I2 => \delay_cnt_reg_n_0_[31]\,
      I3 => \delay_cnt_reg_n_0_[30]\,
      O => \FSM_sequential_curr_state[1]_i_9_n_0\
    );
\FSM_sequential_curr_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => next_state(0),
      Q => curr_state(0),
      R => m_axis_tvalid_i_1_n_0
    );
\FSM_sequential_curr_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => next_state(1),
      Q => curr_state(1),
      R => m_axis_tvalid_i_1_n_0
    );
btn_jstk_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => btn_jstk_reg_i_2_n_0,
      I2 => rcv_byte_cnt(2),
      I3 => rcv_byte_cnt(0),
      I4 => btn_jstk_reg_i_3_n_0,
      I5 => \^btn_jstk\,
      O => btn_jstk_reg_i_1_n_0
    );
btn_jstk_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rcv_byte_cnt(1),
      I1 => rcv_byte_cnt(3),
      O => btn_jstk_reg_i_2_n_0
    );
btn_jstk_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      I2 => s_axis_tvalid,
      O => btn_jstk_reg_i_3_n_0
    );
btn_jstk_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => btn_jstk_reg_i_1_n_0,
      Q => \^btn_jstk\,
      R => m_axis_tvalid_i_1_n_0
    );
btn_trigger_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => btn_jstk_reg_i_2_n_0,
      I2 => rcv_byte_cnt(2),
      I3 => rcv_byte_cnt(0),
      I4 => btn_jstk_reg_i_3_n_0,
      I5 => \^btn_trigger\,
      O => btn_trigger_reg_i_1_n_0
    );
btn_trigger_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => btn_trigger_reg_i_1_n_0,
      Q => \^btn_trigger\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \delay_cnt_reg_n_0_[0]\,
      O => \delay_cnt[0]_i_1_n_0\
    );
\delay_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(10),
      O => \delay_cnt[10]_i_1_n_0\
    );
\delay_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(11),
      O => \delay_cnt[11]_i_1_n_0\
    );
\delay_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(12),
      O => \delay_cnt[12]_i_1_n_0\
    );
\delay_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(13),
      O => \delay_cnt[13]_i_1_n_0\
    );
\delay_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(14),
      O => \delay_cnt[14]_i_1_n_0\
    );
\delay_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(15),
      O => \delay_cnt[15]_i_1_n_0\
    );
\delay_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(16),
      O => \delay_cnt[16]_i_1_n_0\
    );
\delay_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(17),
      O => \delay_cnt[17]_i_1_n_0\
    );
\delay_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(18),
      O => \delay_cnt[18]_i_1_n_0\
    );
\delay_cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(19),
      O => \delay_cnt[19]_i_1_n_0\
    );
\delay_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(1),
      O => \delay_cnt[1]_i_1_n_0\
    );
\delay_cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(20),
      O => \delay_cnt[20]_i_1_n_0\
    );
\delay_cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(21),
      O => \delay_cnt[21]_i_1_n_0\
    );
\delay_cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(22),
      O => \delay_cnt[22]_i_1_n_0\
    );
\delay_cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(23),
      O => \delay_cnt[23]_i_1_n_0\
    );
\delay_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(24),
      O => \delay_cnt[24]_i_1_n_0\
    );
\delay_cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(25),
      O => \delay_cnt[25]_i_1_n_0\
    );
\delay_cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(26),
      O => \delay_cnt[26]_i_1_n_0\
    );
\delay_cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(27),
      O => \delay_cnt[27]_i_1_n_0\
    );
\delay_cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(28),
      O => \delay_cnt[28]_i_1_n_0\
    );
\delay_cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(29),
      O => \delay_cnt[29]_i_1_n_0\
    );
\delay_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(2),
      O => \delay_cnt[2]_i_1_n_0\
    );
\delay_cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(30),
      O => \delay_cnt[30]_i_1_n_0\
    );
\delay_cnt[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      O => delay_cnt
    );
\delay_cnt[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(31),
      O => \delay_cnt[31]_i_2_n_0\
    );
\delay_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(3),
      O => \delay_cnt[3]_i_1_n_0\
    );
\delay_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(4),
      O => \delay_cnt[4]_i_1_n_0\
    );
\delay_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(5),
      O => \delay_cnt[5]_i_1_n_0\
    );
\delay_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(6),
      O => \delay_cnt[6]_i_1_n_0\
    );
\delay_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(7),
      O => \delay_cnt[7]_i_1_n_0\
    );
\delay_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(8),
      O => \delay_cnt[8]_i_1_n_0\
    );
\delay_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \FSM_sequential_curr_state[1]_i_6_n_0\,
      I1 => \FSM_sequential_curr_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_curr_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr_state[1]_i_3_n_0\,
      I4 => data0(9),
      O => \delay_cnt[9]_i_1_n_0\
    );
\delay_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[0]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[10]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[10]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[11]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[11]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[12]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[12]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[8]_i_2_n_0\,
      CO(3) => \delay_cnt_reg[12]_i_2_n_0\,
      CO(2) => \delay_cnt_reg[12]_i_2_n_1\,
      CO(1) => \delay_cnt_reg[12]_i_2_n_2\,
      CO(0) => \delay_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \delay_cnt_reg_n_0_[12]\,
      S(2) => \delay_cnt_reg_n_0_[11]\,
      S(1) => \delay_cnt_reg_n_0_[10]\,
      S(0) => \delay_cnt_reg_n_0_[9]\
    );
\delay_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[13]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[13]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[14]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[14]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[15]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[15]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[16]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[16]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[12]_i_2_n_0\,
      CO(3) => \delay_cnt_reg[16]_i_2_n_0\,
      CO(2) => \delay_cnt_reg[16]_i_2_n_1\,
      CO(1) => \delay_cnt_reg[16]_i_2_n_2\,
      CO(0) => \delay_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \delay_cnt_reg_n_0_[16]\,
      S(2) => \delay_cnt_reg_n_0_[15]\,
      S(1) => \delay_cnt_reg_n_0_[14]\,
      S(0) => \delay_cnt_reg_n_0_[13]\
    );
\delay_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[17]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[17]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[18]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[18]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[19]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[19]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[1]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[20]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[20]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[16]_i_2_n_0\,
      CO(3) => \delay_cnt_reg[20]_i_2_n_0\,
      CO(2) => \delay_cnt_reg[20]_i_2_n_1\,
      CO(1) => \delay_cnt_reg[20]_i_2_n_2\,
      CO(0) => \delay_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \delay_cnt_reg_n_0_[20]\,
      S(2) => \delay_cnt_reg_n_0_[19]\,
      S(1) => \delay_cnt_reg_n_0_[18]\,
      S(0) => \delay_cnt_reg_n_0_[17]\
    );
\delay_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[21]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[21]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[22]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[22]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[23]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[23]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[24]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[24]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[20]_i_2_n_0\,
      CO(3) => \delay_cnt_reg[24]_i_2_n_0\,
      CO(2) => \delay_cnt_reg[24]_i_2_n_1\,
      CO(1) => \delay_cnt_reg[24]_i_2_n_2\,
      CO(0) => \delay_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \delay_cnt_reg_n_0_[24]\,
      S(2) => \delay_cnt_reg_n_0_[23]\,
      S(1) => \delay_cnt_reg_n_0_[22]\,
      S(0) => \delay_cnt_reg_n_0_[21]\
    );
\delay_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[25]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[25]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[26]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[26]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[27]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[27]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[28]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[28]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[24]_i_2_n_0\,
      CO(3) => \delay_cnt_reg[28]_i_2_n_0\,
      CO(2) => \delay_cnt_reg[28]_i_2_n_1\,
      CO(1) => \delay_cnt_reg[28]_i_2_n_2\,
      CO(0) => \delay_cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \delay_cnt_reg_n_0_[28]\,
      S(2) => \delay_cnt_reg_n_0_[27]\,
      S(1) => \delay_cnt_reg_n_0_[26]\,
      S(0) => \delay_cnt_reg_n_0_[25]\
    );
\delay_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[29]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[29]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[2]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[30]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[30]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[31]_i_2_n_0\,
      Q => \delay_cnt_reg_n_0_[31]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_delay_cnt_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \delay_cnt_reg[31]_i_3_n_2\,
      CO(0) => \delay_cnt_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_delay_cnt_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \delay_cnt_reg_n_0_[31]\,
      S(1) => \delay_cnt_reg_n_0_[30]\,
      S(0) => \delay_cnt_reg_n_0_[29]\
    );
\delay_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[3]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[3]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[4]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[4]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \delay_cnt_reg[4]_i_2_n_0\,
      CO(2) => \delay_cnt_reg[4]_i_2_n_1\,
      CO(1) => \delay_cnt_reg[4]_i_2_n_2\,
      CO(0) => \delay_cnt_reg[4]_i_2_n_3\,
      CYINIT => \delay_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \delay_cnt_reg_n_0_[4]\,
      S(2) => \delay_cnt_reg_n_0_[3]\,
      S(1) => \delay_cnt_reg_n_0_[2]\,
      S(0) => \delay_cnt_reg_n_0_[1]\
    );
\delay_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[5]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[5]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[6]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[6]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[7]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[7]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[8]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[8]\,
      R => m_axis_tvalid_i_1_n_0
    );
\delay_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt_reg[4]_i_2_n_0\,
      CO(3) => \delay_cnt_reg[8]_i_2_n_0\,
      CO(2) => \delay_cnt_reg[8]_i_2_n_1\,
      CO(1) => \delay_cnt_reg[8]_i_2_n_2\,
      CO(0) => \delay_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \delay_cnt_reg_n_0_[8]\,
      S(2) => \delay_cnt_reg_n_0_[7]\,
      S(1) => \delay_cnt_reg_n_0_[6]\,
      S(0) => \delay_cnt_reg_n_0_[5]\
    );
\delay_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => delay_cnt,
      D => \delay_cnt[9]_i_1_n_0\,
      Q => \delay_cnt_reg_n_0_[9]\,
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => rcv_byte_cnt(0),
      I1 => rcv_byte_cnt(1),
      I2 => rcv_byte_cnt(3),
      I3 => \jstk_x_reg[9]_i_2_n_0\,
      O => \jstk_x_reg[7]_i_1_n_0\
    );
\jstk_x_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => rcv_byte_cnt(1),
      I2 => rcv_byte_cnt(3),
      I3 => rcv_byte_cnt(0),
      I4 => \jstk_x_reg[9]_i_2_n_0\,
      I5 => \^jstk_x\(8),
      O => \jstk_x_reg[8]_i_1_n_0\
    );
\jstk_x_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => rcv_byte_cnt(1),
      I2 => rcv_byte_cnt(3),
      I3 => rcv_byte_cnt(0),
      I4 => \jstk_x_reg[9]_i_2_n_0\,
      I5 => \^jstk_x\(9),
      O => \jstk_x_reg[9]_i_1_n_0\
    );
\jstk_x_reg[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => rcv_byte_cnt(2),
      O => \jstk_x_reg[9]_i_2_n_0\
    );
\jstk_x_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \^jstk_x\(0),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \^jstk_x\(1),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \^jstk_x\(2),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \^jstk_x\(3),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \^jstk_x\(4),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \^jstk_x\(5),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \^jstk_x\(6),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_x_reg[7]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \^jstk_x\(7),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \jstk_x_reg[8]_i_1_n_0\,
      Q => \^jstk_x\(8),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_x_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \jstk_x_reg[9]_i_1_n_0\,
      Q => \^jstk_x\(9),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rcv_byte_cnt(0),
      I1 => rcv_byte_cnt(1),
      I2 => rcv_byte_cnt(3),
      I3 => \jstk_x_reg[9]_i_2_n_0\,
      O => \jstk_y_reg[7]_i_1_n_0\
    );
\jstk_y_reg[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => rcv_byte_cnt(0),
      I2 => rcv_byte_cnt(1),
      I3 => rcv_byte_cnt(3),
      I4 => \jstk_x_reg[9]_i_2_n_0\,
      I5 => \^jstk_y\(8),
      O => \jstk_y_reg[8]_i_1_n_0\
    );
\jstk_y_reg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => rcv_byte_cnt(0),
      I2 => rcv_byte_cnt(1),
      I3 => rcv_byte_cnt(3),
      I4 => \jstk_x_reg[9]_i_2_n_0\,
      I5 => \^jstk_y\(9),
      O => \jstk_y_reg[9]_i_1_n_0\
    );
\jstk_y_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(0),
      Q => \^jstk_y\(0),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(1),
      Q => \^jstk_y\(1),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(2),
      Q => \^jstk_y\(2),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(3),
      Q => \^jstk_y\(3),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(4),
      Q => \^jstk_y\(4),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(5),
      Q => \^jstk_y\(5),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(6),
      Q => \^jstk_y\(6),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \jstk_y_reg[7]_i_1_n_0\,
      D => s_axis_tdata(7),
      Q => \^jstk_y\(7),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \jstk_y_reg[8]_i_1_n_0\,
      Q => \^jstk_y\(8),
      R => m_axis_tvalid_i_1_n_0
    );
\jstk_y_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \jstk_y_reg[9]_i_1_n_0\,
      Q => \^jstk_y\(9),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => D(16),
      I2 => \m_axis_tdata[5]_i_3_n_0\,
      I3 => D(8),
      I4 => D(0),
      I5 => \m_axis_tdata[6]_i_3_n_0\,
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => D(17),
      I2 => \m_axis_tdata[5]_i_3_n_0\,
      I3 => D(9),
      I4 => D(1),
      I5 => \m_axis_tdata[6]_i_3_n_0\,
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAEAFFAAAAEAEA"
    )
        port map (
      I0 => \m_axis_tdata[2]_i_2_n_0\,
      I1 => D(2),
      I2 => \m_axis_tdata[6]_i_3_n_0\,
      I3 => curr_state(0),
      I4 => curr_state(1),
      I5 => rgb_set_req,
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_3_n_0\,
      I1 => D(10),
      I2 => \m_axis_tdata[5]_i_2_n_0\,
      I3 => D(18),
      I4 => curr_state(1),
      O => \m_axis_tdata[2]_i_2_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => D(19),
      I2 => \m_axis_tdata[5]_i_3_n_0\,
      I3 => D(11),
      I4 => D(3),
      I5 => \m_axis_tdata[6]_i_3_n_0\,
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => D(20),
      I2 => \m_axis_tdata[5]_i_3_n_0\,
      I3 => D(12),
      I4 => D(4),
      I5 => \m_axis_tdata[6]_i_3_n_0\,
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => D(21),
      I2 => \m_axis_tdata[5]_i_3_n_0\,
      I3 => D(13),
      I4 => D(5),
      I5 => \m_axis_tdata[6]_i_3_n_0\,
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \snd_byte_cnt_reg_n_0_[0]\,
      I1 => curr_state(0),
      I2 => \snd_byte_cnt_reg_n_0_[2]\,
      I3 => \snd_byte_cnt_reg_n_0_[3]\,
      I4 => \snd_byte_cnt_reg_n_0_[1]\,
      O => \m_axis_tdata[5]_i_2_n_0\
    );
\m_axis_tdata[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \snd_byte_cnt_reg_n_0_[2]\,
      I1 => curr_state(0),
      I2 => \snd_byte_cnt_reg_n_0_[0]\,
      I3 => \snd_byte_cnt_reg_n_0_[1]\,
      I4 => \snd_byte_cnt_reg_n_0_[3]\,
      O => \m_axis_tdata[5]_i_3_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEAEAEAFF"
    )
        port map (
      I0 => \m_axis_tdata[6]_i_2_n_0\,
      I1 => D(6),
      I2 => \m_axis_tdata[6]_i_3_n_0\,
      I3 => rgb_set_req,
      I4 => curr_state(0),
      I5 => curr_state(1),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_3_n_0\,
      I1 => D(14),
      I2 => \m_axis_tdata[5]_i_2_n_0\,
      I3 => D(22),
      I4 => curr_state(1),
      O => \m_axis_tdata[6]_i_2_n_0\
    );
\m_axis_tdata[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => \snd_byte_cnt_reg_n_0_[3]\,
      I1 => \snd_byte_cnt_reg_n_0_[1]\,
      I2 => \snd_byte_cnt_reg_n_0_[0]\,
      I3 => curr_state(0),
      I4 => \snd_byte_cnt_reg_n_0_[2]\,
      O => \m_axis_tdata[6]_i_3_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B3F"
    )
        port map (
      I0 => m_axis_tready,
      I1 => curr_state(0),
      I2 => curr_state(1),
      I3 => m_axis_tvalid_i_3_n_0,
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"020F"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_3_n_0\,
      I1 => \snd_byte_cnt_reg_n_0_[2]\,
      I2 => curr_state(1),
      I3 => curr_state(0),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F0A0C00000A0C"
    )
        port map (
      I0 => D(7),
      I1 => D(23),
      I2 => \snd_byte_cnt_reg_n_0_[3]\,
      I3 => \snd_byte_cnt_reg_n_0_[1]\,
      I4 => \snd_byte_cnt_reg_n_0_[0]\,
      I5 => D(15),
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => m_axis_tvalid_i_1_n_0
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => \m_axis_tdata[7]_i_2_n_0\,
      Q => m_axis_tdata(7),
      R => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB03"
    )
        port map (
      I0 => m_axis_tvalid_i_3_n_0,
      I1 => curr_state(1),
      I2 => curr_state(0),
      I3 => \^m_axis_tvalid\,
      O => m_axis_tvalid_i_2_n_0
    );
m_axis_tvalid_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \snd_byte_cnt_reg_n_0_[0]\,
      I1 => \snd_byte_cnt_reg_n_0_[1]\,
      I2 => \snd_byte_cnt_reg_n_0_[3]\,
      I3 => \snd_byte_cnt_reg_n_0_[2]\,
      O => m_axis_tvalid_i_3_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tvalid_i_2_n_0,
      Q => \^m_axis_tvalid\,
      R => m_axis_tvalid_i_1_n_0
    );
\rcv_byte_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rcv_byte_cnt(0),
      O => p_1_in(0)
    );
\rcv_byte_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF0"
    )
        port map (
      I0 => rcv_byte_cnt(3),
      I1 => rcv_byte_cnt(2),
      I2 => rcv_byte_cnt(1),
      I3 => rcv_byte_cnt(0),
      O => p_1_in(1)
    );
\rcv_byte_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"38CC"
    )
        port map (
      I0 => rcv_byte_cnt(3),
      I1 => rcv_byte_cnt(2),
      I2 => rcv_byte_cnt(1),
      I3 => rcv_byte_cnt(0),
      O => p_1_in(2)
    );
\rcv_byte_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => \rcv_byte_cnt[3]_i_3_n_0\,
      I1 => s_axis_tvalid,
      I2 => curr_state(1),
      I3 => curr_state(0),
      O => rcv_byte_cnt_0
    );
\rcv_byte_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rcv_byte_cnt(3),
      I1 => rcv_byte_cnt(1),
      I2 => rcv_byte_cnt(2),
      I3 => rcv_byte_cnt(0),
      O => p_1_in(3)
    );
\rcv_byte_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => rcv_byte_cnt(2),
      I1 => rcv_byte_cnt(0),
      I2 => rcv_byte_cnt(3),
      I3 => rcv_byte_cnt(1),
      O => \rcv_byte_cnt[3]_i_3_n_0\
    );
\rcv_byte_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rcv_byte_cnt_0,
      D => p_1_in(0),
      Q => rcv_byte_cnt(0),
      R => m_axis_tvalid_i_1_n_0
    );
\rcv_byte_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rcv_byte_cnt_0,
      D => p_1_in(1),
      Q => rcv_byte_cnt(1),
      R => m_axis_tvalid_i_1_n_0
    );
\rcv_byte_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rcv_byte_cnt_0,
      D => p_1_in(2),
      Q => rcv_byte_cnt(2),
      R => m_axis_tvalid_i_1_n_0
    );
\rcv_byte_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => rcv_byte_cnt_0,
      D => p_1_in(3),
      Q => rcv_byte_cnt(3),
      R => m_axis_tvalid_i_1_n_0
    );
rgb_set_clc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F504"
    )
        port map (
      I0 => curr_state(0),
      I1 => rgb_set_req,
      I2 => curr_state(1),
      I3 => rgb_set_clc,
      O => rgb_set_clc_i_1_n_0
    );
rgb_set_clc_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => rgb_set_clc_i_1_n_0,
      Q => rgb_set_clc,
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(0),
      Q => rgb_set_d1(0),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(10),
      Q => rgb_set_d1(10),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(11),
      Q => rgb_set_d1(11),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(12),
      Q => rgb_set_d1(12),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(13),
      Q => rgb_set_d1(13),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(14),
      Q => rgb_set_d1(14),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(15),
      Q => rgb_set_d1(15),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(16),
      Q => rgb_set_d1(16),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(17),
      Q => rgb_set_d1(17),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(18),
      Q => rgb_set_d1(18),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(19),
      Q => rgb_set_d1(19),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(1),
      Q => rgb_set_d1(1),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(20),
      Q => rgb_set_d1(20),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(21),
      Q => rgb_set_d1(21),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(22),
      Q => rgb_set_d1(22),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(23),
      Q => rgb_set_d1(23),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(2),
      Q => rgb_set_d1(2),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(3),
      Q => rgb_set_d1(3),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(4),
      Q => rgb_set_d1(4),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(5),
      Q => rgb_set_d1(5),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(6),
      Q => rgb_set_d1(6),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(7),
      Q => rgb_set_d1(7),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(8),
      Q => rgb_set_d1(8),
      R => m_axis_tvalid_i_1_n_0
    );
\rgb_set_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => D(9),
      Q => rgb_set_d1(9),
      R => m_axis_tvalid_i_1_n_0
    );
rgb_set_req0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => rgb_set_req0_carry_n_0,
      CO(2) => rgb_set_req0_carry_n_1,
      CO(1) => rgb_set_req0_carry_n_2,
      CO(0) => rgb_set_req0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_rgb_set_req0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => rgb_set_req0_carry_i_1_n_0,
      S(2) => rgb_set_req0_carry_i_2_n_0,
      S(1) => rgb_set_req0_carry_i_3_n_0,
      S(0) => rgb_set_req0_carry_i_4_n_0
    );
\rgb_set_req0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => rgb_set_req0_carry_n_0,
      CO(3) => \rgb_set_req0_carry__0_n_0\,
      CO(2) => \rgb_set_req0_carry__0_n_1\,
      CO(1) => \rgb_set_req0_carry__0_n_2\,
      CO(0) => \rgb_set_req0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_rgb_set_req0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \rgb_set_req0_carry__0_i_1_n_0\,
      S(2) => \rgb_set_req0_carry__0_i_2_n_0\,
      S(1) => \rgb_set_req0_carry__0_i_3_n_0\,
      S(0) => \rgb_set_req0_carry__0_i_4_n_0\
    );
\rgb_set_req0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => D(23),
      I1 => rgb_set_d1(23),
      I2 => D(22),
      I3 => rgb_set_d1(22),
      I4 => rgb_set_d1(21),
      I5 => D(21),
      O => \rgb_set_req0_carry__0_i_1_n_0\
    );
\rgb_set_req0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => D(20),
      I1 => rgb_set_d1(20),
      I2 => D(19),
      I3 => rgb_set_d1(19),
      I4 => rgb_set_d1(18),
      I5 => D(18),
      O => \rgb_set_req0_carry__0_i_2_n_0\
    );
\rgb_set_req0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => D(17),
      I1 => rgb_set_d1(17),
      I2 => D(16),
      I3 => rgb_set_d1(16),
      I4 => rgb_set_d1(15),
      I5 => D(15),
      O => \rgb_set_req0_carry__0_i_3_n_0\
    );
\rgb_set_req0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => D(14),
      I1 => rgb_set_d1(14),
      I2 => D(13),
      I3 => rgb_set_d1(13),
      I4 => rgb_set_d1(12),
      I5 => D(12),
      O => \rgb_set_req0_carry__0_i_4_n_0\
    );
rgb_set_req0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => D(11),
      I1 => rgb_set_d1(11),
      I2 => D(10),
      I3 => rgb_set_d1(10),
      I4 => rgb_set_d1(9),
      I5 => D(9),
      O => rgb_set_req0_carry_i_1_n_0
    );
rgb_set_req0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => D(8),
      I1 => rgb_set_d1(8),
      I2 => D(7),
      I3 => rgb_set_d1(7),
      I4 => rgb_set_d1(6),
      I5 => D(6),
      O => rgb_set_req0_carry_i_2_n_0
    );
rgb_set_req0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => D(5),
      I1 => rgb_set_d1(5),
      I2 => D(4),
      I3 => rgb_set_d1(4),
      I4 => rgb_set_d1(3),
      I5 => D(3),
      O => rgb_set_req0_carry_i_3_n_0
    );
rgb_set_req0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => D(2),
      I1 => rgb_set_d1(2),
      I2 => D(1),
      I3 => rgb_set_d1(1),
      I4 => rgb_set_d1(0),
      I5 => D(0),
      O => rgb_set_req0_carry_i_4_n_0
    );
rgb_set_req_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF5D"
    )
        port map (
      I0 => aresetn,
      I1 => rgb_set_req,
      I2 => rgb_set_clc,
      I3 => \rgb_set_req0_carry__0_n_0\,
      O => rgb_set_req_i_1_n_0
    );
rgb_set_req_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => rgb_set_req_i_1_n_0,
      Q => rgb_set_req,
      R => '0'
    );
\snd_byte_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => curr_state(1),
      I1 => curr_state(0),
      I2 => \snd_byte_cnt_reg_n_0_[0]\,
      O => snd_byte_cnt(0)
    );
\snd_byte_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EE0EEEEE0000"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      I2 => \snd_byte_cnt_reg_n_0_[2]\,
      I3 => \snd_byte_cnt_reg_n_0_[3]\,
      I4 => \snd_byte_cnt_reg_n_0_[1]\,
      I5 => \snd_byte_cnt_reg_n_0_[0]\,
      O => snd_byte_cnt(1)
    );
\snd_byte_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0EE000E0E0E0E0"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      I2 => \snd_byte_cnt_reg_n_0_[2]\,
      I3 => \snd_byte_cnt_reg_n_0_[3]\,
      I4 => \snd_byte_cnt_reg_n_0_[1]\,
      I5 => \snd_byte_cnt_reg_n_0_[0]\,
      O => snd_byte_cnt(2)
    );
\snd_byte_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EE0EE00EE00EE00"
    )
        port map (
      I0 => curr_state(0),
      I1 => curr_state(1),
      I2 => \snd_byte_cnt_reg_n_0_[2]\,
      I3 => \snd_byte_cnt_reg_n_0_[3]\,
      I4 => \snd_byte_cnt_reg_n_0_[1]\,
      I5 => \snd_byte_cnt_reg_n_0_[0]\,
      O => snd_byte_cnt(3)
    );
\snd_byte_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => snd_byte_cnt(0),
      Q => \snd_byte_cnt_reg_n_0_[0]\,
      R => m_axis_tvalid_i_1_n_0
    );
\snd_byte_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => snd_byte_cnt(1),
      Q => \snd_byte_cnt_reg_n_0_[1]\,
      R => m_axis_tvalid_i_1_n_0
    );
\snd_byte_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => snd_byte_cnt(2),
      Q => \snd_byte_cnt_reg_n_0_[2]\,
      R => m_axis_tvalid_i_1_n_0
    );
\snd_byte_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_1_n_0\,
      D => snd_byte_cnt(3),
      Q => \snd_byte_cnt_reg_n_0_[3]\,
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
    jstk_x : out STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : out STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : out STD_LOGIC;
    btn_trigger : out STD_LOGIC;
    led_r : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "jsk_top_digilent_jstk2_0_0,digilent_jstk2,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "digilent_jstk2,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_digilent_jstk2
     port map (
      D(23 downto 16) => led_r(7 downto 0),
      D(15 downto 8) => led_g(7 downto 0),
      D(7 downto 0) => led_b(7 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      jstk_x(9 downto 0) => jstk_x(9 downto 0),
      jstk_y(9 downto 0) => jstk_y(9 downto 0),
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
