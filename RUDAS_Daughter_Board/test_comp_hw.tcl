# TCL File Generated by Component Editor 18.1
# Sun Jun 09 15:28:09 CHOT 2019
# DO NOT MODIFY


# 
# test_comp "test_comp" v1.0
# Mike C 2019.06.09.15:28:09
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module test_comp
# 
set_module_property DESCRIPTION ""
set_module_property NAME test_comp
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Mike C"
set_module_property DISPLAY_NAME test_comp
set_module_property INSTANTIATE_IN_SYSTEM_MODULE false
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 

# 
# parameters
# 


# 
# display items
# 


# 
# connection point altera_axi_slave
# 
add_interface altera_axi_slave axi end
set_interface_property altera_axi_slave associatedClock ""
set_interface_property altera_axi_slave associatedReset ""
set_interface_property altera_axi_slave readAcceptanceCapability 1
set_interface_property altera_axi_slave writeAcceptanceCapability 1
set_interface_property altera_axi_slave combinedAcceptanceCapability 1
set_interface_property altera_axi_slave readDataReorderingDepth 1
set_interface_property altera_axi_slave bridgesToMaster ""
set_interface_property altera_axi_slave ENABLED true
set_interface_property altera_axi_slave EXPORT_OF ""
set_interface_property altera_axi_slave PORT_NAME_MAP ""
set_interface_property altera_axi_slave CMSIS_SVD_VARIABLES ""
set_interface_property altera_axi_slave SVD_ADDRESS_GROUP ""

add_interface_port altera_axi_slave altera_axi_slave_araddr araddr Input 1
add_interface_port altera_axi_slave altera_axi_slave_arcache arcache Input 4
add_interface_port altera_axi_slave altera_axi_slave_arburst arburst Input 2
add_interface_port altera_axi_slave altera_axi_slave_arid arid Input 1
add_interface_port altera_axi_slave altera_axi_slave_arlen arlen Input 4
add_interface_port altera_axi_slave altera_axi_slave_arlock arlock Input 2
add_interface_port altera_axi_slave altera_axi_slave_arprot arprot Input 3
add_interface_port altera_axi_slave altera_axi_slave_arready arready Output 1
add_interface_port altera_axi_slave altera_axi_slave_arsize arsize Input 3
add_interface_port altera_axi_slave altera_axi_slave_aruser aruser Input 1
add_interface_port altera_axi_slave altera_axi_slave_arvalid arvalid Input 1
add_interface_port altera_axi_slave altera_axi_slave_awaddr awaddr Input 1
add_interface_port altera_axi_slave altera_axi_slave_awburst awburst Input 2
add_interface_port altera_axi_slave altera_axi_slave_awcache awcache Input 4
add_interface_port altera_axi_slave altera_axi_slave_awid awid Input 1
add_interface_port altera_axi_slave altera_axi_slave_awlen awlen Input 4
add_interface_port altera_axi_slave altera_axi_slave_awlock awlock Input 2
add_interface_port altera_axi_slave altera_axi_slave_awprot awprot Input 3
add_interface_port altera_axi_slave altera_axi_slave_awready awready Output 1
add_interface_port altera_axi_slave altera_axi_slave_awsize awsize Input 3
add_interface_port altera_axi_slave altera_axi_slave_awuser awuser Input 1
add_interface_port altera_axi_slave altera_axi_slave_awvalid awvalid Input 1
add_interface_port altera_axi_slave altera_axi_slave_bid bid Output 1
add_interface_port altera_axi_slave altera_axi_slave_bready bready Input 1
add_interface_port altera_axi_slave altera_axi_slave_bresp bresp Output 2
add_interface_port altera_axi_slave altera_axi_slave_bvalid bvalid Output 1
add_interface_port altera_axi_slave altera_axi_slave_rdata rdata Output 8
add_interface_port altera_axi_slave altera_axi_slave_rid rid Output 1
add_interface_port altera_axi_slave altera_axi_slave_rlast rlast Output 1
add_interface_port altera_axi_slave altera_axi_slave_rready rready Input 1
add_interface_port altera_axi_slave altera_axi_slave_rresp rresp Output 2
add_interface_port altera_axi_slave altera_axi_slave_rvalid rvalid Output 1
add_interface_port altera_axi_slave altera_axi_slave_wdata wdata Input 8
add_interface_port altera_axi_slave altera_axi_slave_wid wid Input 1
add_interface_port altera_axi_slave altera_axi_slave_wlast wlast Input 1
add_interface_port altera_axi_slave altera_axi_slave_wready wready Output 1
add_interface_port altera_axi_slave altera_axi_slave_wstrb wstrb Input 2
add_interface_port altera_axi_slave altera_axi_slave_wvalid wvalid Input 1


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink CMSIS_SVD_VARIABLES ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clock_sink_clk clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink CMSIS_SVD_VARIABLES ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink reset_sink_reset reset Input 1


# 
# connection point interrupt_sender
# 
add_interface interrupt_sender interrupt end
set_interface_property interrupt_sender associatedAddressablePoint ""
set_interface_property interrupt_sender associatedClock clock_sink
set_interface_property interrupt_sender associatedReset reset_sink
set_interface_property interrupt_sender bridgedReceiverOffset ""
set_interface_property interrupt_sender bridgesToReceiver ""
set_interface_property interrupt_sender ENABLED true
set_interface_property interrupt_sender EXPORT_OF ""
set_interface_property interrupt_sender PORT_NAME_MAP ""
set_interface_property interrupt_sender CMSIS_SVD_VARIABLES ""
set_interface_property interrupt_sender SVD_ADDRESS_GROUP ""

add_interface_port interrupt_sender interrupt_sender_irq irq Output 1
