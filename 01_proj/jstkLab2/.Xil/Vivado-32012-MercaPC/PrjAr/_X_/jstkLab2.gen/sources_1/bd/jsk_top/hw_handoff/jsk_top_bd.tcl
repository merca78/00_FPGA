
################################################################
# This is a generated script based on design: jsk_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source jsk_top_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# digilent_jstk2, jstk_uart_bridge

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:basys3:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name jsk_top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set SPI_M [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 SPI_M ]

  set usb_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 usb_uart ]


  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set sys_clock [ create_bd_port -dir I -type clk -freq_hz 100000000 sys_clock ]
  set_property -dict [ list \
   CONFIG.PHASE {0.000} \
 ] $sys_clock

  # Create instance: AXI4Stream_UART_0, and set properties
  set AXI4Stream_UART_0 [ create_bd_cell -type ip -vlnv DigiLAB:ip:AXI4Stream_UART:1.1 AXI4Stream_UART_0 ]
  set_property -dict [ list \
   CONFIG.UART_BOARD_INTERFACE {usb_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $AXI4Stream_UART_0

  # Create instance: axi4stream_spi_master_0, and set properties
  set axi4stream_spi_master_0 [ create_bd_cell -type ip -vlnv DigiLAB:ip:axi4stream_spi_master:1.0 axi4stream_spi_master_0 ]
  set_property -dict [ list \
   CONFIG.c_sclkfreq {66666} \
 ] $axi4stream_spi_master_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_clock} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: digilent_jstk2_0, and set properties
  set block_name digilent_jstk2
  set block_cell_name digilent_jstk2_0
  if { [catch {set digilent_jstk2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $digilent_jstk2_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: jstk_uart_bridge_0, and set properties
  set block_name jstk_uart_bridge
  set block_cell_name jstk_uart_bridge_0
  if { [catch {set jstk_uart_bridge_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $jstk_uart_bridge_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create interface connections
  connect_bd_intf_net -intf_net AXI4Stream_UART_0_M00_AXIS_RX [get_bd_intf_pins AXI4Stream_UART_0/M00_AXIS_RX] [get_bd_intf_pins jstk_uart_bridge_0/s_axis]
  connect_bd_intf_net -intf_net AXI4Stream_UART_0_UART [get_bd_intf_ports usb_uart] [get_bd_intf_pins AXI4Stream_UART_0/UART]
  connect_bd_intf_net -intf_net axi4stream_spi_master_0_M_AXIS [get_bd_intf_pins axi4stream_spi_master_0/M_AXIS] [get_bd_intf_pins digilent_jstk2_0/s_axis]
  connect_bd_intf_net -intf_net axi4stream_spi_master_0_SPI_M [get_bd_intf_ports SPI_M] [get_bd_intf_pins axi4stream_spi_master_0/SPI_M]
  connect_bd_intf_net -intf_net digilent_jstk2_0_m_axis [get_bd_intf_pins axi4stream_spi_master_0/S_AXIS] [get_bd_intf_pins digilent_jstk2_0/m_axis]
  connect_bd_intf_net -intf_net jstk_uart_bridge_0_m_axis [get_bd_intf_pins AXI4Stream_UART_0/S00_AXIS_TX] [get_bd_intf_pins jstk_uart_bridge_0/m_axis]

  # Create port connections
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins AXI4Stream_UART_0/clk_uart] [get_bd_pins AXI4Stream_UART_0/m00_axis_rx_aclk] [get_bd_pins AXI4Stream_UART_0/s00_axis_tx_aclk] [get_bd_pins axi4stream_spi_master_0/aclk] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins digilent_jstk2_0/aclk] [get_bd_pins jstk_uart_bridge_0/aclk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net digilent_jstk2_0_btn_jstk [get_bd_pins digilent_jstk2_0/btn_jstk] [get_bd_pins jstk_uart_bridge_0/btn_jstk]
  connect_bd_net -net digilent_jstk2_0_btn_trigger [get_bd_pins digilent_jstk2_0/btn_trigger] [get_bd_pins jstk_uart_bridge_0/btn_trigger]
  connect_bd_net -net digilent_jstk2_0_jstk_x [get_bd_pins digilent_jstk2_0/jstk_x] [get_bd_pins jstk_uart_bridge_0/jstk_x]
  connect_bd_net -net digilent_jstk2_0_jstk_y [get_bd_pins digilent_jstk2_0/jstk_y] [get_bd_pins jstk_uart_bridge_0/jstk_y]
  connect_bd_net -net jstk_uart_bridge_0_led_b [get_bd_pins digilent_jstk2_0/led_b] [get_bd_pins jstk_uart_bridge_0/led_b]
  connect_bd_net -net jstk_uart_bridge_0_led_g [get_bd_pins digilent_jstk2_0/led_g] [get_bd_pins jstk_uart_bridge_0/led_g]
  connect_bd_net -net jstk_uart_bridge_0_led_r [get_bd_pins digilent_jstk2_0/led_r] [get_bd_pins jstk_uart_bridge_0/led_r]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins AXI4Stream_UART_0/m00_axis_rx_aresetn] [get_bd_pins AXI4Stream_UART_0/s00_axis_tx_aresetn] [get_bd_pins axi4stream_spi_master_0/aresetn] [get_bd_pins digilent_jstk2_0/aresetn] [get_bd_pins jstk_uart_bridge_0/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins AXI4Stream_UART_0/rst] [get_bd_pins proc_sys_reset_0/peripheral_reset]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net sys_clock_1 [get_bd_ports sys_clock] [get_bd_pins clk_wiz_0/clk_in1]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


