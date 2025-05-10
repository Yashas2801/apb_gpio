remove_design -all
set search_path {../lib}
set target_library {lsi_10k.db}
set link_library "* lsi_10k.db"

analyze -format verilog {../src/apb_io.sv ../src/apb_if.sv ../src/apb_top.sv ../src/register.sv ../src/aux_if.sv}

elaborate apb_top

link 

check_design 

current_design  apb_top

compile_ultra

write_file -f verilog -hier -output apb_top_netlist.v


 

