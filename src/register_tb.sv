`include "gpio_defines.sv"
module register_tb ();

  wire [31:0] gpio_dat_o;
  wire gpio_inta_o;
  wire [31:0] out_pad_o;
  wire [31:0] oen_padoe_o;

  reg sys_clk;
  reg sys_rst;
  reg [31:0] gpio_dat_i;
  reg [31:0] gpio_addr;
  reg gpio_we;
  reg gpio_eclk;
  reg [31:0] in_pad_i;
  reg [31:0] aux_i;

  register i1 (
      .sys_clk(sys_clk),
      .sys_rst(sys_rst),
      .gpio_dat_i(gpio_dat_i),
      .gpio_addr(gpio_addr),
      .gpio_we(gpio_we),
      .gpio_eclk(gpio_eclk),
      .in_pad_i(in_pad_i),
      .aux_i(aux_i),
      .gpio_inta_o(gpio_inta_o),
      .gpio_dat_o(gpio_dat_o),
      .out_pad_o(out_pad_o),
      .oen_padoe_o(oen_padoe_o)

  );

  initial sys_clk = 0;
  initial gpio_eclk = 0;

  always #5 sys_clk = ~sys_clk;
  always #15 gpio_eclk = ~gpio_eclk;

  task initialize();
    begin
      sys_rst = 0;
      gpio_dat_i = 0;
      gpio_addr = 0;
      gpio_we = 0;
    end
  endtask

  task drive(input [31:0] a, input [31:0] b);
    begin
      @(negedge sys_clk);
      gpio_dat_i = b;
      gpio_addr = a;
      sys_rst = 1;
      gpio_we = 1;
    end
  endtask

  task read(input [31:0] a, input [31:0] expected);
    begin
      repeat (2) begin
        @(negedge sys_clk);
      end
      gpio_addr = a;
      gpio_we   = 0;
      sys_rst   = 1;
      if (gpio_dat_o != expected) $error("data_mismatch");

    end
  endtask
  initial begin
    initialize;
    #20;
    drive(`GPIO_RGPIO_OUT, 32'habcd_ef12);
    read(`GPIO_RGPIO_OUT, 32'habcd_ef12);
    drive(`GPIO_RGPIO_OE, 32'habcd_ef12);
    read(`GPIO_RGPIO_OE, 32'habcd_ef12);
    drive(`GPIO_RGPIO_INTE, 32'habcd_ef12);
    read(`GPIO_RGPIO_INTE, 32'habcd_ef12);
    drive(`GPIO_RGPIO_PTRIG, 32'habcd_ef12);
    read(`GPIO_RGPIO_PTRIG, 32'habcd_ef12);
    drive(`GPIO_RGPIO_AUX, 32'habcd_ef12);
    read(`GPIO_RGPIO_AUX, 32'habcd_ef12);
    drive(`GPIO_RGPIO_ECLK, 32'habcd_ef12);
    read(`GPIO_RGPIO_ECLK, 32'habcd_ef12);
    drive(`GPIO_RGPIO_NEC, 32'habcd_ef12);
    read(`GPIO_RGPIO_NEC, 32'habcd_ef12);
    drive(`GPIO_RGPIO_INTS, 32'habcd_ef12);
    read(`GPIO_RGPIO_INTS, 32'habcd_ef12);
    drive(`GPIO_RGPIO_INTE, 32'h0000_0000);
    read(`GPIO_RGPIO_INTE, 32'h0000_0000);

    drive(`GPIO_RGPIO_AUX, 32'hffff_ffff);
    aux_i = 32'h5454_4545;
    repeat (2) begin
      @(negedge sys_clk);
    end
    if (out_pad_o != 32'h5454_4545) $error("aux not working");

    drive(`GPIO_RGPIO_ECLK, 32'hffff_ffff);
    in_pad_i = 32'haef0_1234;
    //		read(`GPIO_RGPIO_IN,32'haef0_1234);	

    $display("TEST VERIFIED");
    #100 $finish;
  end
  initial begin
    $monitor("gpio_dat_i= %0h,,gpio_addr = %0h, gpio_we = %0b, sys_rst = %0b ", gpio_dat_i,
             gpio_addr, gpio_we, sys_rst);
  end
endmodule
