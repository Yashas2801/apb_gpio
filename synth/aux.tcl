set search_path {../lib}
set target_library {lsi_10k.db}
set link_library "* lsi_10k.db"

analyze -format verilog {../src/aux_if.sv ../src/aux_reg.sv }

elaborate aux_if

link 

check_design 

current_design  aux_if

compile_ultra

write_file -f verilog -hier -output aux_netlist.v


 

