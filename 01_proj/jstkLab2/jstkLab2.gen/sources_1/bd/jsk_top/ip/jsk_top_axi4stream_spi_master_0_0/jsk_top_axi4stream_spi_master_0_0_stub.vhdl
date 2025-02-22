-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Apr  6 18:42:37 2024
-- Host        : MercaPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               k:/Z01_ArchiveProj/00_Project/03_DESD/07_LAB2/01_proj/jstkLab2/jstkLab2.gen/sources_1/bd/jsk_top/ip/jsk_top_axi4stream_spi_master_0_0/jsk_top_axi4stream_spi_master_0_0_stub.vhdl
-- Design      : jsk_top_axi4stream_spi_master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jsk_top_axi4stream_spi_master_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cs_i : in STD_LOGIC;
    cs_o : out STD_LOGIC;
    cs_t : out STD_LOGIC;
    sclk_i : in STD_LOGIC;
    sclk_o : out STD_LOGIC;
    sclk_t : out STD_LOGIC;
    mosi_i : in STD_LOGIC;
    mosi_o : out STD_LOGIC;
    mosi_t : out STD_LOGIC;
    miso_i : in STD_LOGIC;
    miso_o : out STD_LOGIC;
    miso_t : out STD_LOGIC
  );

end jsk_top_axi4stream_spi_master_0_0;

architecture stub of jsk_top_axi4stream_spi_master_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_tvalid,s_axis_tdata[7:0],s_axis_tready,m_axis_tvalid,m_axis_tdata[7:0],cs_i,cs_o,cs_t,sclk_i,sclk_o,sclk_t,mosi_i,mosi_o,mosi_t,miso_i,miso_o,miso_t";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ipi_axis_lw_spi_master,Vivado 2020.2";
begin
end;
