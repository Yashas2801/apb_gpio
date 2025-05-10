module apb_io_tb;
  reg [31:0] out_pad;
  reg [31:0] oen_padoe;
  wire [31:0] in_pad;
  wire [31:0] io_pad;

  reg ext_clk_pad_i;
  wire gpio_eclk;

  reg [31:0] temp;

  apb_io dut (
      .out_pad(out_pad),
      .oen_padoe(oen_padoe),
      .in_pad(in_pad),
      .io_pad(io_pad),
      .ext_clk_pad_i(ext_clk_pad_i),
      .gpio_eclk(gpio_eclk)
  );

  assign io_pad = ~oen_padoe ? temp : out_pad;

  initial begin
    ext_clk_pad_i = 'b0;
    forever #5 ext_clk_pad_i = ~ext_clk_pad_i;
  end

  task drive1(input [31:0] a);
    begin
      out_pad   = a;
      oen_padoe = 32'hffff_ffff;
    end
  endtask

  task drive2(input [31:0] a);
    begin
      temp = a;
      oen_padoe = 32'h0000_0000;
    end
  endtask

  initial begin
    #10;
    drive1(32'hffff_ffff);
    #20;
    drive2(32'hffff_ffff);
    #100 $finish;
  end

  initial begin
    $monitor("out_pad = %0h, io_pad = %0h, in_pad = %0h oen_padoe = %0h", out_pad, io_pad, in_pad,
             oen_padoe);
  end


endmodule



