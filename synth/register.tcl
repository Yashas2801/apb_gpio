remove_design -all
set search_path {../lib}
set target_library {lsi_10k.db}
set link_library "* lsi_10k.db"

analyze -format verilog {../src/register.sv}

elaborate register

link 

check_design 

current_design  register

compile_ultra

write_file -f verilog -hier -output register_netlist.v


 

