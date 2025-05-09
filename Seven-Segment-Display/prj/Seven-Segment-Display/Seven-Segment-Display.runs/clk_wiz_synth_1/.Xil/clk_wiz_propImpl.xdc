set_property SRC_FILE_INFO {cfile:y:/Code/Digital_Design_MCU/Seven-Segment-Display/prj/Seven-Segment-Display/Seven-Segment-Display.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc rfile:../../../Seven-Segment-Display.srcs/sources_1/ip/clk_wiz/clk_wiz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
