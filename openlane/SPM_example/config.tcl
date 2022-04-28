set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"
set script_dir [file dirname [file normalize [info script]]]
set ::env(DESIGN_NAME) SPM_example
set ::env(VERILOG_FILES) "\
	$::env(CARAVEL_ROOT)/verilog/rtl/defines.v \
	$script_dir/../../verilog/rtl/SPM_example.v"

set ::env(DESIGN_IS_CORE) 0
set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CLOCK_NET) "SPM.clk"
set ::env(CLOCK_PERIOD) "50"
set ::env(FP_SIZING) relative
set ::env(FP_CORE_UTIL) 20
# set ::env(FP_ASPECT_RATIO) 0.7
set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg
set ::env(PL_TARGET_DENSITY) 0.25
set ::env(RT_MAX_LAYER) {met4}
set ::env(RUN_CVC) 1
# set ::env(DIODE_INSERTION_STRATEGY) 4
# set ::env(PL_RESIZER_HOLD_SLACK_MARGIN) 100
# set ::env(PL_RESIZER_SETUP_SLACK_MARGIN) 0
set ::env(GLB_RESIZER_HOLD_SLACK_MARGIN) 100
set ::env(GLB_RESIZER_SETUP_SLACK_MARGIN) 0