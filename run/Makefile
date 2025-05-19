# Directories
SRC_DIR = ../src
SIM_DIR = ../sim
VSIMOPT = -vopt -voptargs=+acc 

# Files for Register
 VERILOG_FILES_REGISTER = $(SRC_DIR)/register.sv $(SRC_DIR)/register_tb.sv $(SRC_DIR)/gpio_defines.sv
 TOP_MODULE_REGISTER = register_tb
 WAVE_DIR_REG = $(SIM_DIR)/reg_wv

# Files for aux_if
 VERILOG_FILES_AUX = $(SRC_DIR)/aux_if.sv $(SRC_DIR)/aux_reg.sv $(SRC_DIR)/aux_if_tb.sv
 TOP_MODULE_AUX = aux_if_tb
 WAVE_DIR_AUX = $(SIM_DIR)/aux_wv

# Files for apb_interface
 VERILOG_FILES_APB_IF = $(SRC_DIR)/apb_if.sv $(SRC_DIR)/apb_if_tb.sv $(SRC_DIR)/apb_fsm.sv 
 TOP_MODULE_APB_IF = apb_if_tb
 WAVE_DIR_APB_IF = $(SIM_DIR)/apb_if_wv

# Files for io_interface
 VERILOG_FILES_IO = $(SRC_DIR)/apb_io.sv $(SRC_DIR)/apb_io_tb.sv
 TOP_MODULE_IO = apb_io_tb
 WAVE_DIR_IO = $(SIM_DIR)/io_wv

# Files for apb_top
VERILOG_FILES_TOP = $(SRC_DIR)/*.sv
TOP_MODULE_TOP = apb_top_tb
WAVE_DIR_TOP = $(SIM_DIR)/top_wv

# Coverage database and report directory
COV_DB_REG = $(SIM_DIR)/covdb_reg.ucdb
COV_REPORT_REG = $(SIM_DIR)/covhtmlreport_reg

# Coverage database and report directory
COV_DB_TOP = $(SIM_DIR)/covdb_top.ucdb
COV_REPORT_TOP = $(SIM_DIR)/covhtmlreport_top

# Coverage database and report directory
COV_DB_AUX = $(SIM_DIR)/covdb_aux.ucdb
COV_REPORT_AUX = $(SIM_DIR)/covhtmlreport_aux

# Coverage database and report directory
COV_DB_IO = $(SIM_DIR)/covdb_io.ucdb
COV_REPORT_IO = $(SIM_DIR)/covhtmlreport_io

# Coverage database and report directory
COV_DB_APB_IF = $(SIM_DIR)/covdb_apb_if.ucdb
COV_REPORT_APB_IF = $(SIM_DIR)/covhtmlreport_apb_if

# APB slave interface
# Simulation using QuestaSim with coverage

simulate_register:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_REG) 
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_REGISTER)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_REG); log -r /* ;run -all; quit" $(TOP_MODULE_REGISTER) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_reg.log -wlf $(WAVE_DIR_REG)/waveform_reg.wlf

simulate_aux:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_AUX) 
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_AUX)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_AUX); log -r /* ;run -all; quit" $(TOP_MODULE_AUX) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_aux.log -wlf $(WAVE_DIR_AUX)/waveform_aux.wlf

simulate_apb_if:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_APB_IF) 
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_APB_IF)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_APB_IF); log -r /* ;run -all; quit" $(TOP_MODULE_APB_IF) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_apb_if.log -wlf $(WAVE_DIR_APB_IF)/waveform_apb_if.wlf

simulate_io:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_IO) 
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_IO)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_IO); log -r /* ;run -all; quit" $(TOP_MODULE_IO) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_io.log -wlf $(WAVE_DIR_IO)/waveform_io.wlf

simulate_top:
	mkdir -p $(SIM_DIR)
	mkdir -p $(WAVE_DIR_TOP) 
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES_TOP)
	vsim $(VSIMOPT) -coverage -c -do "coverage save -onexit -codeAll $(COV_DB_TOP); log -r /* ;run -all; quit" $(TOP_MODULE_TOP) -work $(SIM_DIR) -l $(SIM_DIR)/simulation_top.log -wlf $(WAVE_DIR_TOP)/waveform_top.wlf

simulate_all : simulate_register simulate_apb_if simulate_aux simulate_io simulate_top

# Simulation in GUI mode with coverage
simulate_gui:
	mkdir -p $(SIM_DIR)
	vlib $(SIM_DIR)
	vlog -work $(SIM_DIR) -coveropt 3 +cover $(VERILOG_FILES)
	vsim $(VSIMOPT) -coverage -do "log -r /*" $(TOP_MODULE) -work $(SIM_DIR)

# View waveform
view_wave_Questa_top:
	vsim -view $(WAVE_DIR_TOP)/waveform_top.wlf

view_wave_Questa_reg:
	vsim -view $(WAVE_DIR_REG)/waveform_reg.wlf

view_wave_Questa_io:
	vsim -view $(WAVE_DIR_IO)/waveform_io.wlf

view_wave_Questa_apb_if:
	vsim -view $(WAVE_DIR_APB_IF)/waveform_apb_if.wlf

view_wave_Questa_aux:
	vsim -view $(WAVE_DIR_AUX)/waveform_aux.wlf

# Generate coverage report for reg
cov_report_reg:
	vcover report -details -codeAll -html -output $(COV_REPORT_REG) $(COV_DB_REG)

# Generate coverage report for top
cov_report_top:
	vcover report -details -codeAll -html -output $(COV_REPORT_TOP) $(COV_DB_TOP)

# Generate coverage report for aux
cov_report_aux:
	vcover report -details -codeAll -html -output $(COV_REPORT_AUX) $(COV_DB_AUX)

# Generate coverage report for top
cov_report_io:
	vcover report -details -codeAll -html -output $(COV_REPORT_IO) $(COV_DB_IO)

# Generate coverage report for top
cov_report_apb_if:
	vcover report -details -codeAll -html -output $(COV_REPORT_APB_IF) $(COV_DB_APB_IF)

cov_report_all: cov_report_reg cov_report_top cov_report_aux cov_report_io cov_report_apb_if

# View coverage report in browser

view_cov_report_reg:
	firefox $(COV_REPORT_REG)/index.html &

view_cov_report_top:
	firefox $(COV_REPORT_TOP)/index.html &

view_cov_report_io:
	firefox $(COV_REPORT_IO)/index.html &

view_cov_report_aux:
	firefox $(COV_REPORT_AUX)/index.html &

view_cov_report_apb_if:
	firefox $(COV_REPORT_APB_IF)/index.html &

view_cov_report_all: view_cov_report_apb_if view_cov_report_aux view_cov_report_io view_cov_report_top view_cov_report_reg

# Help
help:
	@echo "=================================== HELP ===================================="
	@echo "Makefile Commands:"
	@echo ""
	@echo "Simulation Targets:"
	@echo "  simulate_register      : Run simulation for the register module with coverage."
	@echo "  simulate_aux          : Run simulation for the aux_if module with coverage."
	@echo "  simulate_apb_if       : Run simulation for the apb_if module with coverage."
	@echo "  simulate_io           : Run simulation for the apb_io module with coverage."
	@echo "  simulate_top          : Run simulation for the apb_top module with coverage."
	@echo "  simulate_all          : Run simulations for all modules (register, aux, apb_if, io, top) with coverage."
	@echo "  simulate_gui          : Run simulation in QuestaSim GUI mode with coverage for interactive debugging."
	@echo ""
	@echo "Waveform Viewing Targets:"
	@echo "  view_wave_Questa_reg  : View waveform for the register module simulation."
	@echo "  view_wave_Questa_aux  : View waveform for the aux_if module simulation."
	@echo "  view_wave_Questa_apb_if : View waveform for the apb_if module simulation."
	@echo "  view_wave_Questa_io   : View waveform for the apb_io module simulation."
	@echo "  view_wave_Questa_top  : View waveform for the apb_top module simulation."
	@echo ""
	@echo "Coverage Report Targets:"
	@echo "  cov_report_reg        : Generate HTML coverage report for the register module."
	@echo "  cov_report_aux        : Generate HTML coverage report for the aux_if module."
	@echo "  cov_report_apb_if     : Generate HTML coverage report for the apb_if module."
	@echo "  cov_report_io         : Generate HTML coverage report for the apb_io module."
	@echo "  cov_report_top        : Generate HTML coverage report for the apb_top module."
	@echo "  cov_report_all        : Generate HTML coverage reports for all modules."
	@echo ""
	@echo "View Coverage Report Targets:"
	@echo "  view_cov_report_reg   : Open the register module coverage report in Firefox."
	@echo "  view_cov_report_aux   : Open the aux_if module coverage report in Firefox."
	@echo "  view_cov_report_apb_if : Open the apb_if module coverage report in Firefox."
	@echo "  view_cov_report_io    : Open the apb_io module coverage report in Firefox."
	@echo "  view_cov_report_top   : Open the apb_top module coverage report in Firefox."
	@echo "  view_cov_report_all   : Open all coverage reports in Firefox."
	@echo ""
	@echo "Utility Targets:"
	@echo "  clean                 : Remove all generated files and clean the workspace."
	@echo ""
	@echo "Example Usage:"
	@echo "  make simulate_register      # Run simulation for register module with coverage."
	@echo "  make simulate_all           # Run simulations for all modules."
	@echo "  make simulate_gui           # Run simulation in GUI mode for debugging."
	@echo "  make view_wave_Questa_top   # View waveform for apb_top simulation."
	@echo "  make cov_report_all         # Generate coverage reports for all modules."
	@echo "  make view_cov_report_top    # View coverage report for apb_top in Firefox."
	@echo "  make clean                  # Clean all generated files."
	@echo "============================================================================"

clean:
	rm -rf $(SIM_DIR)
