-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Apr  6 18:42:40 2024
-- Host        : MercaPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               k:/Z01_ArchiveProj/00_Project/03_DESD/07_LAB2/01_proj/jstkLab2/jstkLab2.gen/sources_1/bd/jsk_top/ip/jsk_top_AXI4Stream_UART_0_0/jsk_top_AXI4Stream_UART_0_0_stub.vhdl
-- Design      : jsk_top_AXI4Stream_UART_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jsk_top_AXI4Stream_UART_0_0 is
  Port ( 
    clk_uart : in STD_LOGIC;
    rst : in STD_LOGIC;
    UART_TX : out STD_LOGIC;
    UART_RX : in STD_LOGIC;
    m00_axis_rx_aclk : in STD_LOGIC;
    m00_axis_rx_aresetn : in STD_LOGIC;
    m00_axis_rx_tvalid : out STD_LOGIC;
    m00_axis_rx_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axis_rx_tready : in STD_LOGIC;
    s00_axis_tx_aclk : in STD_LOGIC;
    s00_axis_tx_aresetn : in STD_LOGIC;
    s00_axis_tx_tready : out STD_LOGIC;
    s00_axis_tx_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tx_tvalid : in STD_LOGIC
  );

end jsk_top_AXI4Stream_UART_0_0;

architecture stub of jsk_top_AXI4Stream_UART_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_uart,rst,UART_TX,UART_RX,m00_axis_rx_aclk,m00_axis_rx_aresetn,m00_axis_rx_tvalid,m00_axis_rx_tdata[7:0],m00_axis_rx_tready,s00_axis_tx_aclk,s00_axis_tx_aresetn,s00_axis_tx_tready,s00_axis_tx_tdata[7:0],s00_axis_tx_tvalid";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI4Stream_UART_v1_0,Vivado 2020.2";
begin
end;
