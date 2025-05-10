#Liberty files are needed for logical and physical netlist designs
set search_path "./"
set link_library " "

set_app_var enable_lint true

configure_lint_setup -goal lint_rtl

analyze -verbose -format verilog "../src/apb_if.sv ../src/apb_fsm.sv"

elaborate apb_if

check_lint

waive_lint -tag "STARC05-2.5.1.2" -add apb1

report_lint -verbose -file ./report/report_lint_apb_if.txt

