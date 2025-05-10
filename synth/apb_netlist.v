/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Tue Apr 22 09:56:38 2025
/////////////////////////////////////////////////////////////


module apb_if ( PREADY, IRQ, sys_clk, sys_rst, gpio_we, gpio_addr, PRDATA, 
        gpio_dat_i, PCLK, PRESETn, PSEL, PENABLE, PWRITE, PWDATA, PADDR, 
        gpio_dat_o, gpio_int_o );
  output [3:0] gpio_addr;
  output [31:0] PRDATA;
  output [31:0] gpio_dat_i;
  input [31:0] PWDATA;
  input [3:0] PADDR;
  input [31:0] gpio_dat_o;
  input PCLK, PRESETn, PSEL, PENABLE, PWRITE, gpio_int_o;
  output PREADY, IRQ, sys_clk, sys_rst, gpio_we;
  wire   IRQ, gpio_we, PCLK, PRESETn, N6, N7, N8, N9, N10, N11, N12, N13, N14,
         N15, N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28,
         N29, N30, N31, N32, N33, N34, N35, N36, N37, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60, N61, N62,
         N63, N64, N65, N66, N67, N68, N69, N70, N71, N72, N73, N74, N75,
         \fs1/N21 , \fs1/N20 , n10, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23;
  wire   [1:0] \fs1/next_state ;
  wire   [1:0] \fs1/present_state ;
  assign IRQ = gpio_int_o;
  assign gpio_we = PWRITE;
  assign gpio_addr[3] = PADDR[3];
  assign gpio_addr[2] = PADDR[2];
  assign gpio_addr[1] = PADDR[1];
  assign gpio_addr[0] = PADDR[0];
  assign sys_clk = PCLK;
  assign sys_rst = PRESETn;

  FD2 \fs1/present_state_reg[1]  ( .D(\fs1/next_state [1]), .CP(PCLK), .CD(
        PRESETn), .Q(\fs1/present_state [1]), .QN(n23) );
  FD2 \fs1/present_state_reg[0]  ( .D(\fs1/next_state [0]), .CP(PCLK), .CD(
        PRESETn), .Q(\fs1/present_state [0]) );
  LD1 \fs1/next_state_reg[0]  ( .G(n10), .D(\fs1/N20 ), .Q(\fs1/next_state [0]) );
  LD1 \fs1/next_state_reg[1]  ( .G(n10), .D(\fs1/N21 ), .Q(\fs1/next_state [1]) );
  FD1 \gpio_dat_i_reg[0]  ( .D(N6), .CP(PCLK), .Q(gpio_dat_i[0]) );
  FD1 \gpio_dat_i_reg[1]  ( .D(N7), .CP(PCLK), .Q(gpio_dat_i[1]) );
  FD1 \gpio_dat_i_reg[2]  ( .D(N8), .CP(PCLK), .Q(gpio_dat_i[2]) );
  FD1 \gpio_dat_i_reg[3]  ( .D(N9), .CP(PCLK), .Q(gpio_dat_i[3]) );
  FD1 \gpio_dat_i_reg[4]  ( .D(N10), .CP(PCLK), .Q(gpio_dat_i[4]) );
  FD1 \gpio_dat_i_reg[5]  ( .D(N11), .CP(PCLK), .Q(gpio_dat_i[5]) );
  FD1 \gpio_dat_i_reg[6]  ( .D(N12), .CP(PCLK), .Q(gpio_dat_i[6]) );
  FD1 \gpio_dat_i_reg[7]  ( .D(N13), .CP(PCLK), .Q(gpio_dat_i[7]) );
  FD1 \gpio_dat_i_reg[8]  ( .D(N14), .CP(PCLK), .Q(gpio_dat_i[8]) );
  FD1 \gpio_dat_i_reg[9]  ( .D(N15), .CP(PCLK), .Q(gpio_dat_i[9]) );
  FD1 \gpio_dat_i_reg[10]  ( .D(N16), .CP(PCLK), .Q(gpio_dat_i[10]) );
  FD1 \gpio_dat_i_reg[11]  ( .D(N17), .CP(PCLK), .Q(gpio_dat_i[11]) );
  FD1 \gpio_dat_i_reg[12]  ( .D(N18), .CP(PCLK), .Q(gpio_dat_i[12]) );
  FD1 \gpio_dat_i_reg[13]  ( .D(N19), .CP(PCLK), .Q(gpio_dat_i[13]) );
  FD1 \gpio_dat_i_reg[14]  ( .D(N20), .CP(PCLK), .Q(gpio_dat_i[14]) );
  FD1 \gpio_dat_i_reg[15]  ( .D(N21), .CP(PCLK), .Q(gpio_dat_i[15]) );
  FD1 \gpio_dat_i_reg[16]  ( .D(N22), .CP(PCLK), .Q(gpio_dat_i[16]) );
  FD1 \gpio_dat_i_reg[17]  ( .D(N23), .CP(PCLK), .Q(gpio_dat_i[17]) );
  FD1 \gpio_dat_i_reg[18]  ( .D(N24), .CP(PCLK), .Q(gpio_dat_i[18]) );
  FD1 \gpio_dat_i_reg[19]  ( .D(N25), .CP(PCLK), .Q(gpio_dat_i[19]) );
  FD1 \gpio_dat_i_reg[20]  ( .D(N26), .CP(PCLK), .Q(gpio_dat_i[20]) );
  FD1 \gpio_dat_i_reg[21]  ( .D(N27), .CP(PCLK), .Q(gpio_dat_i[21]) );
  FD1 \gpio_dat_i_reg[22]  ( .D(N28), .CP(PCLK), .Q(gpio_dat_i[22]) );
  FD1 \gpio_dat_i_reg[23]  ( .D(N29), .CP(PCLK), .Q(gpio_dat_i[23]) );
  FD1 \gpio_dat_i_reg[24]  ( .D(N30), .CP(PCLK), .Q(gpio_dat_i[24]) );
  FD1 \gpio_dat_i_reg[25]  ( .D(N31), .CP(PCLK), .Q(gpio_dat_i[25]) );
  FD1 \gpio_dat_i_reg[26]  ( .D(N32), .CP(PCLK), .Q(gpio_dat_i[26]) );
  FD1 \gpio_dat_i_reg[27]  ( .D(N33), .CP(PCLK), .Q(gpio_dat_i[27]) );
  FD1 \gpio_dat_i_reg[28]  ( .D(N34), .CP(PCLK), .Q(gpio_dat_i[28]) );
  FD1 \gpio_dat_i_reg[29]  ( .D(N35), .CP(PCLK), .Q(gpio_dat_i[29]) );
  FD1 \gpio_dat_i_reg[30]  ( .D(N36), .CP(PCLK), .Q(gpio_dat_i[30]) );
  FD1 \gpio_dat_i_reg[31]  ( .D(N37), .CP(PCLK), .Q(gpio_dat_i[31]) );
  FD1 \PRDATA_reg[0]  ( .D(N44), .CP(PCLK), .Q(PRDATA[0]) );
  FD1 \PRDATA_reg[1]  ( .D(N45), .CP(PCLK), .Q(PRDATA[1]) );
  FD1 \PRDATA_reg[2]  ( .D(N46), .CP(PCLK), .Q(PRDATA[2]) );
  FD1 \PRDATA_reg[3]  ( .D(N47), .CP(PCLK), .Q(PRDATA[3]) );
  FD1 \PRDATA_reg[4]  ( .D(N48), .CP(PCLK), .Q(PRDATA[4]) );
  FD1 \PRDATA_reg[5]  ( .D(N49), .CP(PCLK), .Q(PRDATA[5]) );
  FD1 \PRDATA_reg[6]  ( .D(N50), .CP(PCLK), .Q(PRDATA[6]) );
  FD1 \PRDATA_reg[7]  ( .D(N51), .CP(PCLK), .Q(PRDATA[7]) );
  FD1 \PRDATA_reg[8]  ( .D(N52), .CP(PCLK), .Q(PRDATA[8]) );
  FD1 \PRDATA_reg[9]  ( .D(N53), .CP(PCLK), .Q(PRDATA[9]) );
  FD1 \PRDATA_reg[10]  ( .D(N54), .CP(PCLK), .Q(PRDATA[10]) );
  FD1 \PRDATA_reg[11]  ( .D(N55), .CP(PCLK), .Q(PRDATA[11]) );
  FD1 \PRDATA_reg[12]  ( .D(N56), .CP(PCLK), .Q(PRDATA[12]) );
  FD1 \PRDATA_reg[13]  ( .D(N57), .CP(PCLK), .Q(PRDATA[13]) );
  FD1 \PRDATA_reg[14]  ( .D(N58), .CP(PCLK), .Q(PRDATA[14]) );
  FD1 \PRDATA_reg[15]  ( .D(N59), .CP(PCLK), .Q(PRDATA[15]) );
  FD1 \PRDATA_reg[16]  ( .D(N60), .CP(PCLK), .Q(PRDATA[16]) );
  FD1 \PRDATA_reg[17]  ( .D(N61), .CP(PCLK), .Q(PRDATA[17]) );
  FD1 \PRDATA_reg[18]  ( .D(N62), .CP(PCLK), .Q(PRDATA[18]) );
  FD1 \PRDATA_reg[19]  ( .D(N63), .CP(PCLK), .Q(PRDATA[19]) );
  FD1 \PRDATA_reg[20]  ( .D(N64), .CP(PCLK), .Q(PRDATA[20]) );
  FD1 \PRDATA_reg[21]  ( .D(N65), .CP(PCLK), .Q(PRDATA[21]) );
  FD1 \PRDATA_reg[22]  ( .D(N66), .CP(PCLK), .Q(PRDATA[22]) );
  FD1 \PRDATA_reg[23]  ( .D(N67), .CP(PCLK), .Q(PRDATA[23]) );
  FD1 \PRDATA_reg[24]  ( .D(N68), .CP(PCLK), .Q(PRDATA[24]) );
  FD1 \PRDATA_reg[25]  ( .D(N69), .CP(PCLK), .Q(PRDATA[25]) );
  FD1 \PRDATA_reg[26]  ( .D(N70), .CP(PCLK), .Q(PRDATA[26]) );
  FD1 \PRDATA_reg[27]  ( .D(N71), .CP(PCLK), .Q(PRDATA[27]) );
  FD1 \PRDATA_reg[28]  ( .D(N72), .CP(PCLK), .Q(PRDATA[28]) );
  FD1 \PRDATA_reg[29]  ( .D(N73), .CP(PCLK), .Q(PRDATA[29]) );
  FD1 \PRDATA_reg[30]  ( .D(N74), .CP(PCLK), .Q(PRDATA[30]) );
  FD1 \PRDATA_reg[31]  ( .D(N75), .CP(PCLK), .Q(PRDATA[31]) );
  NR2 U80 ( .A(\fs1/present_state [0]), .B(n23), .Z(PREADY) );
  IVP U81 ( .A(PSEL), .Z(n14) );
  NR2 U82 ( .A(PENABLE), .B(\fs1/present_state [1]), .Z(n12) );
  NR2 U83 ( .A(PREADY), .B(n12), .Z(n13) );
  NR2 U84 ( .A(n14), .B(n13), .Z(\fs1/N20 ) );
  ND2 U85 ( .A(\fs1/present_state [0]), .B(n23), .Z(n22) );
  ND2 U86 ( .A(PSEL), .B(PENABLE), .Z(n15) );
  NR2 U87 ( .A(n22), .B(n15), .Z(\fs1/N21 ) );
  AN2P U88 ( .A(PRESETn), .B(PREADY), .Z(n21) );
  ND2 U89 ( .A(gpio_we), .B(n21), .Z(n17) );
  IVP U90 ( .A(PWDATA[0]), .Z(n16) );
  NR2 U91 ( .A(n17), .B(n16), .Z(N6) );
  AN3 U92 ( .A(gpio_we), .B(n21), .C(PWDATA[1]), .Z(N7) );
  AN3 U93 ( .A(gpio_we), .B(n21), .C(PWDATA[2]), .Z(N8) );
  AN3 U94 ( .A(gpio_we), .B(n21), .C(PWDATA[3]), .Z(N9) );
  AN3 U95 ( .A(gpio_we), .B(n21), .C(PWDATA[4]), .Z(N10) );
  AN3 U96 ( .A(gpio_we), .B(n21), .C(PWDATA[5]), .Z(N11) );
  AN3 U97 ( .A(gpio_we), .B(n21), .C(PWDATA[6]), .Z(N12) );
  AN3 U98 ( .A(gpio_we), .B(n21), .C(PWDATA[7]), .Z(N13) );
  AN3 U99 ( .A(gpio_we), .B(n21), .C(PWDATA[8]), .Z(N14) );
  AN3 U100 ( .A(gpio_we), .B(n21), .C(PWDATA[9]), .Z(N15) );
  AN3 U101 ( .A(gpio_we), .B(n21), .C(PWDATA[10]), .Z(N16) );
  AN3 U102 ( .A(gpio_we), .B(n21), .C(PWDATA[11]), .Z(N17) );
  AN3 U103 ( .A(gpio_we), .B(n21), .C(PWDATA[12]), .Z(N18) );
  AN3 U104 ( .A(gpio_we), .B(n21), .C(PWDATA[13]), .Z(N19) );
  AN3 U105 ( .A(gpio_we), .B(n21), .C(PWDATA[14]), .Z(N20) );
  AN3 U106 ( .A(gpio_we), .B(n21), .C(PWDATA[15]), .Z(N21) );
  AN3 U107 ( .A(gpio_we), .B(n21), .C(PWDATA[16]), .Z(N22) );
  AN3 U108 ( .A(gpio_we), .B(n21), .C(PWDATA[17]), .Z(N23) );
  AN3 U109 ( .A(gpio_we), .B(n21), .C(PWDATA[18]), .Z(N24) );
  AN3 U110 ( .A(gpio_we), .B(n21), .C(PWDATA[19]), .Z(N25) );
  AN3 U111 ( .A(gpio_we), .B(n21), .C(PWDATA[20]), .Z(N26) );
  AN3 U112 ( .A(gpio_we), .B(n21), .C(PWDATA[21]), .Z(N27) );
  AN3 U113 ( .A(gpio_we), .B(n21), .C(PWDATA[22]), .Z(N28) );
  AN3 U114 ( .A(gpio_we), .B(n21), .C(PWDATA[23]), .Z(N29) );
  AN3 U115 ( .A(gpio_we), .B(n21), .C(PWDATA[24]), .Z(N30) );
  AN3 U116 ( .A(gpio_we), .B(n21), .C(PWDATA[25]), .Z(N31) );
  AN3 U117 ( .A(gpio_we), .B(n21), .C(PWDATA[26]), .Z(N32) );
  AN3 U118 ( .A(gpio_we), .B(n21), .C(PWDATA[27]), .Z(N33) );
  AN3 U119 ( .A(gpio_we), .B(n21), .C(PWDATA[28]), .Z(N34) );
  AN3 U120 ( .A(gpio_we), .B(n21), .C(PWDATA[29]), .Z(N35) );
  AN3 U121 ( .A(gpio_we), .B(n21), .C(PWDATA[30]), .Z(N36) );
  AN3 U122 ( .A(gpio_we), .B(n21), .C(PWDATA[31]), .Z(N37) );
  IVP U123 ( .A(gpio_we), .Z(n20) );
  ND2 U124 ( .A(n21), .B(n20), .Z(n19) );
  IVP U125 ( .A(gpio_dat_o[0]), .Z(n18) );
  NR2 U126 ( .A(n19), .B(n18), .Z(N44) );
  AN3 U127 ( .A(n21), .B(gpio_dat_o[1]), .C(n20), .Z(N45) );
  AN3 U128 ( .A(n21), .B(gpio_dat_o[2]), .C(n20), .Z(N46) );
  AN3 U129 ( .A(n21), .B(gpio_dat_o[3]), .C(n20), .Z(N47) );
  AN3 U130 ( .A(n21), .B(gpio_dat_o[4]), .C(n20), .Z(N48) );
  AN3 U131 ( .A(n21), .B(gpio_dat_o[5]), .C(n20), .Z(N49) );
  AN3 U132 ( .A(n21), .B(gpio_dat_o[6]), .C(n20), .Z(N50) );
  AN3 U133 ( .A(n21), .B(gpio_dat_o[7]), .C(n20), .Z(N51) );
  AN3 U134 ( .A(n21), .B(gpio_dat_o[8]), .C(n20), .Z(N52) );
  AN3 U135 ( .A(n21), .B(gpio_dat_o[9]), .C(n20), .Z(N53) );
  AN3 U136 ( .A(n21), .B(gpio_dat_o[10]), .C(n20), .Z(N54) );
  AN3 U137 ( .A(n21), .B(gpio_dat_o[11]), .C(n20), .Z(N55) );
  AN3 U138 ( .A(n21), .B(gpio_dat_o[12]), .C(n20), .Z(N56) );
  AN3 U139 ( .A(n21), .B(gpio_dat_o[13]), .C(n20), .Z(N57) );
  AN3 U140 ( .A(n21), .B(gpio_dat_o[14]), .C(n20), .Z(N58) );
  AN3 U141 ( .A(n21), .B(gpio_dat_o[15]), .C(n20), .Z(N59) );
  AN3 U142 ( .A(n21), .B(gpio_dat_o[16]), .C(n20), .Z(N60) );
  AN3 U143 ( .A(n21), .B(gpio_dat_o[17]), .C(n20), .Z(N61) );
  AN3 U144 ( .A(n21), .B(gpio_dat_o[18]), .C(n20), .Z(N62) );
  AN3 U145 ( .A(n21), .B(gpio_dat_o[19]), .C(n20), .Z(N63) );
  AN3 U146 ( .A(n21), .B(gpio_dat_o[20]), .C(n20), .Z(N64) );
  AN3 U147 ( .A(n21), .B(gpio_dat_o[21]), .C(n20), .Z(N65) );
  AN3 U148 ( .A(n21), .B(gpio_dat_o[22]), .C(n20), .Z(N66) );
  AN3 U149 ( .A(n21), .B(gpio_dat_o[23]), .C(n20), .Z(N67) );
  AN3 U150 ( .A(n21), .B(gpio_dat_o[24]), .C(n20), .Z(N68) );
  AN3 U151 ( .A(n21), .B(gpio_dat_o[25]), .C(n20), .Z(N69) );
  AN3 U152 ( .A(n21), .B(gpio_dat_o[26]), .C(n20), .Z(N70) );
  AN3 U153 ( .A(n21), .B(gpio_dat_o[27]), .C(n20), .Z(N71) );
  AN3 U154 ( .A(n21), .B(gpio_dat_o[28]), .C(n20), .Z(N72) );
  AN3 U155 ( .A(n21), .B(gpio_dat_o[29]), .C(n20), .Z(N73) );
  AN3 U156 ( .A(n21), .B(gpio_dat_o[30]), .C(n20), .Z(N74) );
  AN3 U157 ( .A(n21), .B(gpio_dat_o[31]), .C(n20), .Z(N75) );
  OR2P U158 ( .A(n22), .B(PSEL), .Z(n10) );
endmodule

