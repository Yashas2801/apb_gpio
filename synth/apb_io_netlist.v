/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Thu Apr 24 10:00:12 2025
/////////////////////////////////////////////////////////////


module apb_io ( out_pad, in_pad, io_pad, oen_padoe, ext_clk_pad_i, gpio_eclk
 );
  input [31:0] out_pad;
  output [31:0] in_pad;
  inout [31:0] io_pad;
  input [31:0] oen_padoe;
  input ext_clk_pad_i;
  output gpio_eclk;
  wire   gpio_eclk, n66, n68, n70, n72, n74, n76, n78, n80, n82, n84, n86, n88,
         n90, n92, n94, n96, n98, n100, n102, n104, n106, n108, n110, n112,
         n114, n116, n118, n120, n122, n124, n126, n128;
  tri   [31:0] in_pad;
  tri   [31:0] io_pad;
  assign gpio_eclk = ext_clk_pad_i;

  BTS4 \in_pad_tri[31]  ( .A(io_pad[31]), .E(n128), .Z(in_pad[31]) );
  BTS4 \in_pad_tri[30]  ( .A(io_pad[30]), .E(n126), .Z(in_pad[30]) );
  BTS4 \in_pad_tri[29]  ( .A(io_pad[29]), .E(n124), .Z(in_pad[29]) );
  BTS4 \in_pad_tri[28]  ( .A(io_pad[28]), .E(n122), .Z(in_pad[28]) );
  BTS4 \in_pad_tri[27]  ( .A(io_pad[27]), .E(n120), .Z(in_pad[27]) );
  BTS4 \in_pad_tri[26]  ( .A(io_pad[26]), .E(n118), .Z(in_pad[26]) );
  BTS4 \in_pad_tri[25]  ( .A(io_pad[25]), .E(n116), .Z(in_pad[25]) );
  BTS4 \in_pad_tri[24]  ( .A(io_pad[24]), .E(n114), .Z(in_pad[24]) );
  BTS4 \in_pad_tri[23]  ( .A(io_pad[23]), .E(n112), .Z(in_pad[23]) );
  BTS4 \in_pad_tri[22]  ( .A(io_pad[22]), .E(n110), .Z(in_pad[22]) );
  BTS4 \in_pad_tri[21]  ( .A(io_pad[21]), .E(n108), .Z(in_pad[21]) );
  BTS4 \in_pad_tri[20]  ( .A(io_pad[20]), .E(n106), .Z(in_pad[20]) );
  BTS4 \in_pad_tri[19]  ( .A(io_pad[19]), .E(n104), .Z(in_pad[19]) );
  BTS4 \in_pad_tri[18]  ( .A(io_pad[18]), .E(n102), .Z(in_pad[18]) );
  BTS4 \in_pad_tri[17]  ( .A(io_pad[17]), .E(n100), .Z(in_pad[17]) );
  BTS4 \in_pad_tri[16]  ( .A(io_pad[16]), .E(n98), .Z(in_pad[16]) );
  BTS4 \in_pad_tri[15]  ( .A(io_pad[15]), .E(n96), .Z(in_pad[15]) );
  BTS4 \in_pad_tri[14]  ( .A(io_pad[14]), .E(n94), .Z(in_pad[14]) );
  BTS4 \in_pad_tri[13]  ( .A(io_pad[13]), .E(n92), .Z(in_pad[13]) );
  BTS4 \in_pad_tri[12]  ( .A(io_pad[12]), .E(n90), .Z(in_pad[12]) );
  BTS4 \in_pad_tri[11]  ( .A(io_pad[11]), .E(n88), .Z(in_pad[11]) );
  BTS4 \in_pad_tri[10]  ( .A(io_pad[10]), .E(n86), .Z(in_pad[10]) );
  BTS4 \in_pad_tri[9]  ( .A(io_pad[9]), .E(n84), .Z(in_pad[9]) );
  BTS4 \in_pad_tri[8]  ( .A(io_pad[8]), .E(n82), .Z(in_pad[8]) );
  BTS4 \in_pad_tri[7]  ( .A(io_pad[7]), .E(n80), .Z(in_pad[7]) );
  BTS4 \in_pad_tri[6]  ( .A(io_pad[6]), .E(n78), .Z(in_pad[6]) );
  BTS4 \in_pad_tri[5]  ( .A(io_pad[5]), .E(n76), .Z(in_pad[5]) );
  BTS4 \in_pad_tri[4]  ( .A(io_pad[4]), .E(n74), .Z(in_pad[4]) );
  BTS4 \in_pad_tri[3]  ( .A(io_pad[3]), .E(n72), .Z(in_pad[3]) );
  BTS4 \in_pad_tri[2]  ( .A(io_pad[2]), .E(n70), .Z(in_pad[2]) );
  BTS4 \in_pad_tri[1]  ( .A(io_pad[1]), .E(n68), .Z(in_pad[1]) );
  BTS4 \in_pad_tri[0]  ( .A(io_pad[0]), .E(n66), .Z(in_pad[0]) );
  BTS4 \io_pad_tri[31]  ( .A(out_pad[31]), .E(oen_padoe[31]), .Z(io_pad[31])
         );
  BTS4 \io_pad_tri[30]  ( .A(out_pad[30]), .E(oen_padoe[30]), .Z(io_pad[30])
         );
  BTS4 \io_pad_tri[29]  ( .A(out_pad[29]), .E(oen_padoe[29]), .Z(io_pad[29])
         );
  BTS4 \io_pad_tri[28]  ( .A(out_pad[28]), .E(oen_padoe[28]), .Z(io_pad[28])
         );
  BTS4 \io_pad_tri[27]  ( .A(out_pad[27]), .E(oen_padoe[27]), .Z(io_pad[27])
         );
  BTS4 \io_pad_tri[26]  ( .A(out_pad[26]), .E(oen_padoe[26]), .Z(io_pad[26])
         );
  BTS4 \io_pad_tri[25]  ( .A(out_pad[25]), .E(oen_padoe[25]), .Z(io_pad[25])
         );
  BTS4 \io_pad_tri[24]  ( .A(out_pad[24]), .E(oen_padoe[24]), .Z(io_pad[24])
         );
  BTS4 \io_pad_tri[23]  ( .A(out_pad[23]), .E(oen_padoe[23]), .Z(io_pad[23])
         );
  BTS4 \io_pad_tri[22]  ( .A(out_pad[22]), .E(oen_padoe[22]), .Z(io_pad[22])
         );
  BTS4 \io_pad_tri[21]  ( .A(out_pad[21]), .E(oen_padoe[21]), .Z(io_pad[21])
         );
  BTS4 \io_pad_tri[20]  ( .A(out_pad[20]), .E(oen_padoe[20]), .Z(io_pad[20])
         );
  BTS4 \io_pad_tri[19]  ( .A(out_pad[19]), .E(oen_padoe[19]), .Z(io_pad[19])
         );
  BTS4 \io_pad_tri[18]  ( .A(out_pad[18]), .E(oen_padoe[18]), .Z(io_pad[18])
         );
  BTS4 \io_pad_tri[17]  ( .A(out_pad[17]), .E(oen_padoe[17]), .Z(io_pad[17])
         );
  BTS4 \io_pad_tri[16]  ( .A(out_pad[16]), .E(oen_padoe[16]), .Z(io_pad[16])
         );
  BTS4 \io_pad_tri[15]  ( .A(out_pad[15]), .E(oen_padoe[15]), .Z(io_pad[15])
         );
  BTS4 \io_pad_tri[14]  ( .A(out_pad[14]), .E(oen_padoe[14]), .Z(io_pad[14])
         );
  BTS4 \io_pad_tri[13]  ( .A(out_pad[13]), .E(oen_padoe[13]), .Z(io_pad[13])
         );
  BTS4 \io_pad_tri[12]  ( .A(out_pad[12]), .E(oen_padoe[12]), .Z(io_pad[12])
         );
  BTS4 \io_pad_tri[11]  ( .A(out_pad[11]), .E(oen_padoe[11]), .Z(io_pad[11])
         );
  BTS4 \io_pad_tri[10]  ( .A(out_pad[10]), .E(oen_padoe[10]), .Z(io_pad[10])
         );
  BTS4 \io_pad_tri[9]  ( .A(out_pad[9]), .E(oen_padoe[9]), .Z(io_pad[9]) );
  BTS4 \io_pad_tri[8]  ( .A(out_pad[8]), .E(oen_padoe[8]), .Z(io_pad[8]) );
  BTS4 \io_pad_tri[7]  ( .A(out_pad[7]), .E(oen_padoe[7]), .Z(io_pad[7]) );
  BTS4 \io_pad_tri[6]  ( .A(out_pad[6]), .E(oen_padoe[6]), .Z(io_pad[6]) );
  BTS4 \io_pad_tri[5]  ( .A(out_pad[5]), .E(oen_padoe[5]), .Z(io_pad[5]) );
  BTS4 \io_pad_tri[4]  ( .A(out_pad[4]), .E(oen_padoe[4]), .Z(io_pad[4]) );
  BTS4 \io_pad_tri[3]  ( .A(out_pad[3]), .E(oen_padoe[3]), .Z(io_pad[3]) );
  BTS4 \io_pad_tri[2]  ( .A(out_pad[2]), .E(oen_padoe[2]), .Z(io_pad[2]) );
  BTS4 \io_pad_tri[1]  ( .A(out_pad[1]), .E(oen_padoe[1]), .Z(io_pad[1]) );
  BTS4 \io_pad_tri[0]  ( .A(out_pad[0]), .E(oen_padoe[0]), .Z(io_pad[0]) );
  IVP U34 ( .A(oen_padoe[1]), .Z(n68) );
  IVP U35 ( .A(oen_padoe[2]), .Z(n70) );
  IVP U36 ( .A(oen_padoe[3]), .Z(n72) );
  IVP U37 ( .A(oen_padoe[4]), .Z(n74) );
  IVP U38 ( .A(oen_padoe[5]), .Z(n76) );
  IVP U39 ( .A(oen_padoe[6]), .Z(n78) );
  IVP U40 ( .A(oen_padoe[7]), .Z(n80) );
  IVP U41 ( .A(oen_padoe[8]), .Z(n82) );
  IVP U42 ( .A(oen_padoe[9]), .Z(n84) );
  IVP U43 ( .A(oen_padoe[10]), .Z(n86) );
  IVP U44 ( .A(oen_padoe[11]), .Z(n88) );
  IVP U45 ( .A(oen_padoe[12]), .Z(n90) );
  IVP U46 ( .A(oen_padoe[13]), .Z(n92) );
  IVP U47 ( .A(oen_padoe[14]), .Z(n94) );
  IVP U48 ( .A(oen_padoe[15]), .Z(n96) );
  IVP U64 ( .A(oen_padoe[31]), .Z(n128) );
  IVP U49 ( .A(oen_padoe[16]), .Z(n98) );
  IVP U50 ( .A(oen_padoe[17]), .Z(n100) );
  IVP U51 ( .A(oen_padoe[18]), .Z(n102) );
  IVP U52 ( .A(oen_padoe[19]), .Z(n104) );
  IVP U53 ( .A(oen_padoe[20]), .Z(n106) );
  IVP U54 ( .A(oen_padoe[21]), .Z(n108) );
  IVP U55 ( .A(oen_padoe[22]), .Z(n110) );
  IVP U56 ( .A(oen_padoe[23]), .Z(n112) );
  IVP U57 ( .A(oen_padoe[24]), .Z(n114) );
  IVP U58 ( .A(oen_padoe[25]), .Z(n116) );
  IVP U59 ( .A(oen_padoe[26]), .Z(n118) );
  IVP U60 ( .A(oen_padoe[27]), .Z(n120) );
  IVP U61 ( .A(oen_padoe[28]), .Z(n122) );
  IVP U62 ( .A(oen_padoe[29]), .Z(n124) );
  IVP U63 ( .A(oen_padoe[30]), .Z(n126) );
  IVP U33 ( .A(oen_padoe[0]), .Z(n66) );
endmodule

