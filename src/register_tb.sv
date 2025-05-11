/*
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
*/

`include "gpio_defines.sv"

module register_tb;

  // Signals
  reg sys_clk;
  reg gpio_eclk;
  reg sys_rst;
  reg [31:0] gpio_dat_i;
  reg [31:0] gpio_addr;
  reg gpio_we;
  reg [31:0] in_pad_i;
  reg [31:0] aux_i;
  wire [31:0] out_pad_o;
  wire gpio_inta_o;
  wire [31:0] gpio_dat_o;
  wire [31:0] oen_padoe_o;

  // Instantiate the register module
  register dut (
      .sys_clk(sys_clk),
      .gpio_eclk(gpio_eclk),
      .sys_rst(sys_rst),
      .gpio_dat_i(gpio_dat_i),
      .gpio_addr(gpio_addr),
      .gpio_we(gpio_we),
      .in_pad_i(in_pad_i),
      .aux_i(aux_i),
      .out_pad_o(out_pad_o),
      .gpio_inta_o(gpio_inta_o),
      .gpio_dat_o(gpio_dat_o),
      .oen_padoe_o(oen_padoe_o)
  );

  // Clock generation
  initial begin
    sys_clk = 0;
    forever #5 sys_clk = ~sys_clk;  // 10ns period
  end

  initial begin
    gpio_eclk = 0;
    forever #10 gpio_eclk = ~gpio_eclk;  // 20ns period
  end

  // Tasks
  task reset();
    begin
      sys_rst = 0;
      #10;
      sys_rst = 1;
      #10;
    end
  endtask

  task write_reg(input [31:0] addr, input [31:0] data);
    begin
      @(negedge sys_clk);
      gpio_addr = addr;
      gpio_dat_i = data;
      gpio_we = 1;
      @(negedge sys_clk);
      gpio_we = 0;
      $display("Time %t: Wrote %h to address %h", $time, data, addr);
    end
  endtask

  task read_reg(input [31:0] addr, output [31:0] data);
    begin
      @(negedge sys_clk);
      gpio_addr = addr;
      gpio_we   = 0;
      @(posedge sys_clk);  // Wait for data to be available
      data = gpio_dat_o;
      $display("Time %t: Read %h from address %h", $time, data, addr);
    end
  endtask

  // Test sequence
  initial begin
    reg [31:0] temp;

    // Initialize
    sys_rst = 0;
    gpio_dat_i = 0;
    gpio_addr = 0;
    gpio_we = 0;
    in_pad_i = 0;
    aux_i = 0;
    #20;

    // 1. Reset Test
    reset();
    read_reg(`GPIO_RGPIO_OUT, temp);
    assert (temp == 32'h0)
    else $error("RGPIO_OUT not reset to 0: %h", temp);
    read_reg(`GPIO_RGPIO_OE, temp);
    assert (temp == 32'h0)
    else $error("RGPIO_OE not reset to 0: %h", temp);
    read_reg(`GPIO_RGPIO_INTE, temp);
    assert (temp == 32'h0)
    else $error("RGPIO_INTE not reset to 0: %h", temp);
    read_reg(`GPIO_RGPIO_CTRL, temp);
    assert (temp == 32'h0)
    else $error("RGPIO_CTRL not reset to 0: %h", temp);
    read_reg(`GPIO_RGPIO_INTS, temp);
    assert (temp == 32'h0)
    else $error("RGPIO_INTS not reset to 0: %h", temp);

    // 2. Write and Read Test
    write_reg(`GPIO_RGPIO_OUT, 32'hAAAA_5555);
    read_reg(`GPIO_RGPIO_OUT, temp);
    assert (temp == 32'hAAAA_5555)
    else $error("Write/read mismatch for RGPIO_OUT: %h", temp);

    write_reg(`GPIO_RGPIO_OE, 32'hFFFF_0000);
    read_reg(`GPIO_RGPIO_OE, temp);
    assert (temp == 32'hFFFF_0000)
    else $error("Write/read mismatch for RGPIO_OE: %h", temp);

    write_reg(`GPIO_RGPIO_INTE, 32'h5555_AAAA);
    read_reg(`GPIO_RGPIO_INTE, temp);
    assert (temp == 32'h5555_AAAA)
    else $error("Write/read mismatch for RGPIO_INTE: %h", temp);

    // 3. Output Control Test
    write_reg(`GPIO_RGPIO_OE, 32'hFFFF_FFFF);
    write_reg(`GPIO_RGPIO_OUT, 32'h1234_5678);
    #10;
    assert (out_pad_o == 32'h1234_5678)
    else $error("Output not driven correctly: %h", out_pad_o);

    aux_i = 32'hABCD_EF12;
    write_reg(`GPIO_RGPIO_AUX, 32'hFFFF_FFFF);
    #10;
    assert (out_pad_o == 32'hABCD_EF12)
    else $error("Auxiliary input not bypassing correctly: %h", out_pad_o);

    // 4. Input Sampling with System Clock
    write_reg(`GPIO_RGPIO_ECLK, 32'h0000_0000);  // Use sys_clk
    in_pad_i = 32'hDEAD_BEEF;
    @(posedge sys_clk);
    read_reg(`GPIO_RGPIO_IN, temp);
    assert (temp == 32'hDEAD_BEEF)
    else $error("Input sampling with sys_clk failed: %h", temp);

    // 5. Input Sampling with External Clock (Posedge)
    write_reg(`GPIO_RGPIO_ECLK, 32'hFFFF_FFFF);
    write_reg(`GPIO_RGPIO_NEC, 32'h0000_0000);  // Posedge
    @(negedge gpio_eclk);
    in_pad_i = 32'hCAFE_BABE;
    @(posedge gpio_eclk);
    @(posedge sys_clk);
    read_reg(`GPIO_RGPIO_IN, temp);
    assert (temp == 32'hCAFE_BABE)
    else $error("Input sampling with gpio_eclk posedge failed: %h", temp);

    // 6. Input Sampling with External Clock (Negedge)
    write_reg(`GPIO_RGPIO_NEC, 32'hFFFF_FFFF);  // Negedge
    @(posedge gpio_eclk);
    in_pad_i = 32'hBEEF_DEAD;
    @(negedge gpio_eclk);
    @(posedge sys_clk);
    read_reg(`GPIO_RGPIO_IN, temp);
    assert (temp == 32'hBEEF_DEAD)
    else $error("Input sampling with gpio_eclk negedge failed: %h", temp);

    // 7. Interrupt Test (Rising Edge)
    write_reg(`GPIO_RGPIO_OE, 32'h0000_0000);
    write_reg(`GPIO_RGPIO_ECLK, 32'h0000_0000);  // Use sys_clk
    write_reg(`GPIO_RGPIO_INTE, 32'h0000_00FF);  // Enable interrupts for bits 0-7
    write_reg(`GPIO_RGPIO_PTRIG, 32'h0000_00FF);  // Rising edge for bits 0-7
    write_reg(`GPIO_RGPIO_CTRL, 2'b01);  // INTE=1, INTS=0
    in_pad_i = 32'h0000_0000;
    @(posedge sys_clk);
    in_pad_i = 32'h0000_00FF;  // Trigger rising edge
    @(posedge sys_clk);
    read_reg(`GPIO_RGPIO_INTS, temp);
    assert (temp == 32'h0000_00FF)
    else $error("Interrupts not set correctly: %h", temp);
    assert (gpio_inta_o == 1'b1)
    else $error("Interrupt signal not asserted");
    read_reg(`GPIO_RGPIO_CTRL, temp);
    assert (temp[1] == 1'b1)
    else $error("RGPIO_CTRL[INTS] not set: %b", temp);

    // Clear interrupts
    write_reg(`GPIO_RGPIO_INTS, 32'h0000_0000);
    @(posedge sys_clk);
    assert (gpio_inta_o == 1'b0)
    else $error("Interrupt signal not deasserted");
    read_reg(`GPIO_RGPIO_CTRL, temp);
    assert (temp[1] == 1'b0)
    else $error("RGPIO_CTRL[INTS] not cleared automatically: %b", temp);

    // 8. Interrupt Test (Falling Edge)
    write_reg(`GPIO_RGPIO_PTRIG, 32'h0000_0000);  // Falling edge for bits 0-7
    in_pad_i = 32'h0000_00FF;
    @(posedge sys_clk);
    in_pad_i = 32'h0000_0000;  // Trigger falling edge
    @(posedge sys_clk);
    read_reg(`GPIO_RGPIO_INTS, temp);
    assert (temp == 32'h0000_00FF)
    else $error("Falling edge interrupts not set correctly: %h", temp);

    // 9. Bidirectional Test (Partial Outputs, Partial Inputs)
    write_reg(`GPIO_RGPIO_OE, 32'h0000_FFFF);  // Bits 0-15 output, 16-31 input
    write_reg(`GPIO_RGPIO_OUT, 32'h0000_ABCD);
    in_pad_i = 32'h1234_0000;
    @(posedge sys_clk);
    assert (out_pad_o[15:0] == 16'hABCD)
    else $error("Bidirectional output failed: %h", out_pad_o);
    read_reg(`GPIO_RGPIO_IN, temp);
    assert (temp[31:16] == 16'h1234)
    else $error("Bidirectional input failed: %h", temp);

    $display("All tests completed successfully");
    #100 $finish;
  end

  // Continuous monitoring
  always @(posedge sys_clk) begin
    $display("Time %t: rgpio_in = %h, rgpio_out = %h, out_pad_o = %h, gpio_inta_o = %b", $time,
             dut.rgpio_in, dut.rgpio_out, out_pad_o, gpio_inta_o);
  end

endmodule
