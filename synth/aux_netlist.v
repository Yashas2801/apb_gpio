/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Tue May  6 16:25:40 2025
/////////////////////////////////////////////////////////////


module aux_if ( sys_clk, aux_in, sys_rst, aux_i );
  input [31:0] aux_in;
  output [31:0] aux_i;
  input sys_clk, sys_rst;


  FD2 \i1/aux_i_reg[0]  ( .D(aux_in[0]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[0]) );
  FD2 \i1/aux_i_reg[1]  ( .D(aux_in[1]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[1]) );
  FD2 \i1/aux_i_reg[2]  ( .D(aux_in[2]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[2]) );
  FD2 \i1/aux_i_reg[3]  ( .D(aux_in[3]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[3]) );
  FD2 \i1/aux_i_reg[4]  ( .D(aux_in[4]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[4]) );
  FD2 \i1/aux_i_reg[5]  ( .D(aux_in[5]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[5]) );
  FD2 \i1/aux_i_reg[6]  ( .D(aux_in[6]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[6]) );
  FD2 \i1/aux_i_reg[7]  ( .D(aux_in[7]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[7]) );
  FD2 \i1/aux_i_reg[8]  ( .D(aux_in[8]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[8]) );
  FD2 \i1/aux_i_reg[9]  ( .D(aux_in[9]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[9]) );
  FD2 \i1/aux_i_reg[10]  ( .D(aux_in[10]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[10]) );
  FD2 \i1/aux_i_reg[11]  ( .D(aux_in[11]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[11]) );
  FD2 \i1/aux_i_reg[12]  ( .D(aux_in[12]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[12]) );
  FD2 \i1/aux_i_reg[13]  ( .D(aux_in[13]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[13]) );
  FD2 \i1/aux_i_reg[14]  ( .D(aux_in[14]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[14]) );
  FD2 \i1/aux_i_reg[15]  ( .D(aux_in[15]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[15]) );
  FD2 \i1/aux_i_reg[16]  ( .D(aux_in[16]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[16]) );
  FD2 \i1/aux_i_reg[17]  ( .D(aux_in[17]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[17]) );
  FD2 \i1/aux_i_reg[18]  ( .D(aux_in[18]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[18]) );
  FD2 \i1/aux_i_reg[19]  ( .D(aux_in[19]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[19]) );
  FD2 \i1/aux_i_reg[20]  ( .D(aux_in[20]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[20]) );
  FD2 \i1/aux_i_reg[21]  ( .D(aux_in[21]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[21]) );
  FD2 \i1/aux_i_reg[22]  ( .D(aux_in[22]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[22]) );
  FD2 \i1/aux_i_reg[23]  ( .D(aux_in[23]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[23]) );
  FD2 \i1/aux_i_reg[24]  ( .D(aux_in[24]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[24]) );
  FD2 \i1/aux_i_reg[25]  ( .D(aux_in[25]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[25]) );
  FD2 \i1/aux_i_reg[26]  ( .D(aux_in[26]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[26]) );
  FD2 \i1/aux_i_reg[27]  ( .D(aux_in[27]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[27]) );
  FD2 \i1/aux_i_reg[28]  ( .D(aux_in[28]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[28]) );
  FD2 \i1/aux_i_reg[29]  ( .D(aux_in[29]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[29]) );
  FD2 \i1/aux_i_reg[30]  ( .D(aux_in[30]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[30]) );
  FD2 \i1/aux_i_reg[31]  ( .D(aux_in[31]), .CP(sys_clk), .CD(sys_rst), .Q(
        aux_i[31]) );
endmodule

