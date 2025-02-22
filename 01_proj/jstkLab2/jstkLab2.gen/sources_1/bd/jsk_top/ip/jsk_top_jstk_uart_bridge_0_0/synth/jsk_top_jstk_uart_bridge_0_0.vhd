-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:jstk_uart_bridge:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY jsk_top_jstk_uart_bridge_0_0 IS
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    m_axis_tvalid : OUT STD_LOGIC;
    m_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axis_tready : IN STD_LOGIC;
    s_axis_tvalid : IN STD_LOGIC;
    s_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axis_tready : OUT STD_LOGIC;
    jstk_x : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    jstk_y : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    btn_jstk : IN STD_LOGIC;
    btn_trigger : IN STD_LOGIC;
    led_r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    led_g : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    led_b : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END jsk_top_jstk_uart_bridge_0_0;

ARCHITECTURE jsk_top_jstk_uart_bridge_0_0_arch OF jsk_top_jstk_uart_bridge_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF jsk_top_jstk_uart_bridge_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT jstk_uart_bridge IS
    GENERIC (
      HEADER_CODE : STD_LOGIC_VECTOR(7 DOWNTO 0);
      TX_DELAY : INTEGER;
      JSTK_BITS : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      m_axis_tvalid : OUT STD_LOGIC;
      m_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axis_tready : IN STD_LOGIC;
      s_axis_tvalid : IN STD_LOGIC;
      s_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_axis_tready : OUT STD_LOGIC;
      jstk_x : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      jstk_y : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
      btn_jstk : IN STD_LOGIC;
      btn_trigger : IN STD_LOGIC;
      led_r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      led_g : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      led_b : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
  END COMPONENT jstk_uart_bridge;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF jsk_top_jstk_uart_bridge_0_0_arch: ARCHITECTURE IS "jstk_uart_bridge,Vivado 2020.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF jsk_top_jstk_uart_bridge_0_0_arch : ARCHITECTURE IS "jsk_top_jstk_uart_bridge_0_0,jstk_uart_bridge,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF jsk_top_jstk_uart_bridge_0_0_arch: ARCHITECTURE IS "jsk_top_jstk_uart_bridge_0_0,jstk_uart_bridge,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=jstk_uart_bridge,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,HEADER_CODE=11000000,TX_DELAY=1000000,JSTK_BITS=7}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF jsk_top_jstk_uart_bridge_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 s_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TDATA";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axis_tvalid: SIGNAL IS "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 m_axis TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aresetn: SIGNAL IS "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk CLK";
BEGIN
  U0 : jstk_uart_bridge
    GENERIC MAP (
      HEADER_CODE => B"11000000",
      TX_DELAY => 1000000,
      JSTK_BITS => 7
    )
    PORT MAP (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tvalid => m_axis_tvalid,
      m_axis_tdata => m_axis_tdata,
      m_axis_tready => m_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      s_axis_tdata => s_axis_tdata,
      s_axis_tready => s_axis_tready,
      jstk_x => jstk_x,
      jstk_y => jstk_y,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      led_r => led_r,
      led_g => led_g,
      led_b => led_b
    );
END jsk_top_jstk_uart_bridge_0_0_arch;
