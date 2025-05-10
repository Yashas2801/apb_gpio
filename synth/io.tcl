set search_path {../lib}
set target_library {lsi_10k.db}
set link_library "* lsi_10k.db"

analyze -format verilog {../src/apb_io.sv}

elaborate apb_io

link 

check_design 

current_design  apb_io

compile_ultra

write_file -f verilog -hier -output apb_io_netlist.v


 

