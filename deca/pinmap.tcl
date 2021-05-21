
#set_global_assignment -name FAMILY "MAX 10"
#set_global_assignment -name DEVICE 10M50DAF484C6GES
#set_global_assignment -name TOP_LEVEL_ENTITY "top"
#set_global_assignment -name SDC_FILE DECA.SDC
#set_global_assignment -name ENABLE_OCT_DONE OFF
#set_global_assignment -name USE_CONFIGURATION_DEVICE ON

#============================================================
# disable config pin so bank8 can use 1.2V
#============================================================
#set_global_assignment -name AUTO_RESTART_CONFIGURATION ON
#set_global_assignment -name ENABLE_CONFIGURATION_PINS OFF
#set_global_assignment -name ENABLE_BOOT_SEL_PIN OFF

#============================================================
# CLK/ARST
#============================================================
set_location_assignment PIN_P11 -to clk
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk_50MHz
set_location_assignment PIN_H21 -to arst_n
set_instance_assignment -name IO_STANDARD "1.5 V SCHMITT TRIGGER" -to arst_n
#============================================================
# LEDs
#============================================================
#1set_location_assignment PIN_C7 -to leds[0]
#1set_instance_assignment -name IO_STANDARD "1.2 V" -to leds[0]
#1set_location_assignment PIN_C8 -to leds[1]
#1set_instance_assignment -name IO_STANDARD "1.2 V" -to leds[1]
#1set_location_assignment PIN_A6 -to leds[2]
#1set_instance_assignment -name IO_STANDARD "1.2 V" -to leds[2]
#1set_location_assignment PIN_B7 -to leds[3]
#1set_instance_assignment -name IO_STANDARD "1.2 V" -to leds[3]
#1set_location_assignment PIN_C4 -to leds[4]
#1set_instance_assignment -name IO_STANDARD "1.2 V" -to leds[4]
#1set_location_assignment PIN_A5 -to leds[5]
#1set_instance_assignment -name IO_STANDARD "1.2 V" -to leds[5]
#1set_location_assignment PIN_B4 -to leds[6]
#1set_instance_assignment -name IO_STANDARD "1.2 V" -to leds[6]
#1set_location_assignment PIN_C5 -to heartbeat[0]
#1set_instance_assignment -name IO_STANDARD "1.2 V" -to heartbeat[0]
#1#============================================================
#1# UART TX/RX
#1#============================================================
#1set_location_assignment PIN_AB19 -to uart_rxd
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_rxd
#1set_location_assignment PIN_V16 -to uart_txd
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to uart_txd
#1#============================================================
#1# Heartbeat Pins
#1#============================================================
set_location_assignment PIN_C7 -to heartbeat[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to heartbeat[0]
#1set_location_assignment PIN_W6 -to heartbeat[1]
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to heartbeat[1]
#1set_location_assignment PIN_W8 -to heartbeat[2]
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to heartbeat[2]
#1set_location_assignment PIN_AB8 -to heartbeat[3]
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to heartbeat[3]
#1#============================================================
#1# JTAG Pins
#1#============================================================
#1set_location_assignment PIN_Y6 -to jtag_tdi
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to jtag_tdi
#1set_location_assignment PIN_W7 -to jtag_tdo
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to jtag_tdo
#1set_location_assignment PIN_V8 -to jtag_tck
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to jtag_tck
#1set_location_assignment PIN_V7 -to jtag_tms
#1set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to jtag_tms


