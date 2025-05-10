remove_design -all
set search_path {../lib}
set target_library {lsi_10k.db}
set link_library "* lsi_10k.db"

analyze -format verilog {../src/apb_if.sv ../src/apb_fsm.sv }

elaborate apb_if

link 

check_design 

current_design  apb_if

compile_ultra

write_file -f verilog -hier -output apb_netlist.v


 

