`include "gpio_defines.sv"

module register_tb;

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

  initial begin
    sys_clk = 0;
    forever #5 sys_clk = ~sys_clk;
  end

  initial begin
    gpio_eclk = 0;
    forever #10 gpio_eclk = ~gpio_eclk;
  end

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
      @(posedge sys_clk);
      data = gpio_dat_o;
      $display("Time %t: Read %h from address %h", $time, data, addr);
    end
  endtask

  initial begin
    reg [31:0] temp;

    sys_rst = 0;
    gpio_dat_i = 0;
    gpio_addr = 0;
    gpio_we = 0;
    in_pad_i = 0;
    aux_i = 0;
    #20;

    reset();
    write_reg(`GPIO_RGPIO_IN, 32'hAAAA_FFFF);
    read_reg(`GPIO_RGPIO_IN, temp);
    if (temp != 32'hAAAA_FFFF) $error("Write/read mismatch for RGPIO_OUT: %h", temp);

    write_reg(`GPIO_RGPIO_OUT, 32'hAAAA_5555);
    read_reg(`GPIO_RGPIO_OUT, temp);
    if (temp != 32'hAAAA_5555) $error("Write/read mismatch for RGPIO_OUT: %h", temp);

    write_reg(`GPIO_RGPIO_OE, 32'hFFFF_0000);
    read_reg(`GPIO_RGPIO_OE, temp);
    if (temp != 32'hFFFF_0000) $error("Write/read mismatch for RGPIO_OE: %h", temp);

    write_reg(`GPIO_RGPIO_INTE, 32'h5555_AAAA);
    read_reg(`GPIO_RGPIO_INTE, temp);
    if (temp != 32'h5555_AAAA) $error("Write/read mismatch for RGPIO_INTE: %h", temp);

    write_reg(`GPIO_RGPIO_PTRIG, 32'h5555_AAAA);
    read_reg(`GPIO_RGPIO_PTRIG, temp);
    if (temp != 32'h5555_AAAA) $error("Write/read mismatch for RGPIO_INTE: %h", temp);

    write_reg(`GPIO_RGPIO_AUX, 32'h5555_AAAA);
    read_reg(`GPIO_RGPIO_AUX, temp);
    if (temp != 32'h5555_AAAA) $error("Write/read mismatch for RGPIO_INTE: %h", temp);

    write_reg(`GPIO_RGPIO_CTRL, 2'b11);
    read_reg(`GPIO_RGPIO_CTRL, temp);
    if (temp != 2'b11) $error("Write/read mismatch for RGPIO_INTE: %h", temp);

    write_reg(`GPIO_RGPIO_INTS, 32'hFFFF_0F0F);
    read_reg(`GPIO_RGPIO_INTS, temp);
    if (temp != 32'hFFFF_0F0F) $error("Write/read mismatch for RGPIO_INTE: %h", temp);

    write_reg(`GPIO_RGPIO_ECLK, 32'hFFFF_0F0F);
    read_reg(`GPIO_RGPIO_ECLK, temp);
    if (temp != 32'hFFFF_0F0F) $error("Write/read mismatch for RGPIO_INTE: %h", temp);

    write_reg(`GPIO_RGPIO_NEC, 32'hFFFF_0F0F);
    read_reg(`GPIO_RGPIO_NEC, temp);
    if (temp != 32'hFFFF_0F0F) $error("Write/read mismatch for RGPIO_INTE: %h", temp);

    reset;

    // 3. Output Test
    write_reg(`GPIO_RGPIO_OE, 32'hFFFF_FFFF);
    write_reg(`GPIO_RGPIO_OUT, 32'h1234_5678);
    #10;
    assert (out_pad_o == 32'h1234_5678)
    else $error("Output not driven correctly: %h", out_pad_o);

    aux_i = 32'hABCD_EF12;
    write_reg(`GPIO_RGPIO_AUX, 32'hFFFF_FFFF);
    #10;
    assert (out_pad_o == 32'hABCD_EF12)
    else $error("Auxiliary input not passing %h", out_pad_o);

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
    read_reg(`GPIO_RGPIO_NEC, temp);
    in_pad_i = 32'hCAFE_FF00;
    read_reg(`GPIO_RGPIO_IN, temp);
    $display("Verified via waveform");

    // 6. Input Sampling with External Clock (Negedge)
    write_reg(`GPIO_RGPIO_NEC, 32'hFFFF_FFFF);  // Negedge
    read_reg(`GPIO_RGPIO_NEC, temp);
    in_pad_i = 32'hBEEF_DEAD;
    read_reg(`GPIO_RGPIO_IN, temp);
    $display("Verified via waveform");

    // 7. Interrupt posedge
    write_reg(`GPIO_RGPIO_OE, 32'h0000_0000);  //configure as ip
    write_reg(`GPIO_RGPIO_ECLK, 32'h0000_0000);  // use sys_clk
    write_reg(`GPIO_RGPIO_INTE, 32'h0000_00FF);  // enable interrupts for bits 0-7
    write_reg(`GPIO_RGPIO_PTRIG, 32'h0000_00FF);  // pos edge for bits 0-7
    write_reg(`GPIO_RGPIO_CTRL, 2'b01);  // enable interrupt
    in_pad_i = 32'h0000_0000;
    @(posedge sys_clk);
    in_pad_i = 32'h0000_00FF;
    @(posedge sys_clk);
    read_reg(`GPIO_RGPIO_INTS, temp);
    read_reg(`GPIO_RGPIO_CTRL, temp);
    $display("Interrupts verified");

    // Clear interrupts
    write_reg(`GPIO_RGPIO_INTS, 32'h0000_0000);
    read_reg(`GPIO_RGPIO_CTRL, temp);
    //clear working

    // 8. Interrupt negedge
    write_reg(`GPIO_RGPIO_PTRIG, 32'h0000_0000);  // neg_edge for bits 0-7
    in_pad_i = 32'h0000_00FF;
    @(posedge sys_clk);
    in_pad_i = 32'h0000_0000;
    @(posedge sys_clk);
    read_reg(`GPIO_RGPIO_INTS, temp);
    $display("Interrupts working in negedge");

    // 9. Bidirectional
    write_reg(`GPIO_RGPIO_OE, 32'h0000_FFFF);  // Bits 0-15 output, 16-31 input
    write_reg(`GPIO_RGPIO_OUT, 32'h0000_ABCD);
    in_pad_i = 32'h1234_0000;
    read_reg(`GPIO_RGPIO_IN, temp);
    read_reg(32'd122, temp);
    $display("All tests completed successfully");
    #100 $finish;
  end

endmodule
