
/*
`include "gpio_defines.sv"
module apb_top_tb ();

  reg PCLK;
  reg PRESETn;
  reg PSEL;
  reg PENABLE;
  reg PWRITE;
  reg [31:0] PADDR;
  reg [31:0] PWDATA;
  wire [31:0] PRDATA;
  wire IRQ;
  wire PREADY;

  reg [31:0] aux_in;

  wire [31:0] io_pad;
  reg ext_clk_pad_i;

  reg flag;
  reg [31:0] temp;

  assign io_pad = flag ? 'bz : temp;

  //flag 1 = output, flag 0 = input;
  apb_top i1 (
      .PCLK(PCLK),
      .PRESETn(PRESETn),
      .PSEL(PSEL),
      .PENABLE(PENABLE),
      .PWRITE(PWRITE),
      .PADDR(PADDR),
      .PWDATA(PWDATA),
      .PRDATA(PRDATA),
      .IRQ(IRQ),
      .PREADY(PREADY),
      .aux_in(aux_in),
      .io_pad(io_pad),
      .ext_clk_pad_i(ext_clk_pad_i)
  );

  initial begin
    PCLK = 'b0;
    forever begin
      #5 PCLK = ~PCLK;
    end

  end

  initial begin
    ext_clk_pad_i = 'b0;
    forever begin
      #10 ext_clk_pad_i = ~ext_clk_pad_i;
    end

  end

  task initialize();
    begin
      PRESETn = 1'b0;
      PSEL = 1'b0;
      PADDR = 'b0;
      PWDATA = 'b0;
      PENABLE = 'b0;
      aux_in = 'b0;
    end
  endtask

  task write(input [31:0] addr, data, input [31:0] aux_i = 32'habcd_abcd);
    begin
      @(negedge PCLK);
      PSEL = 1'b1;
      PADDR = addr;
      PWDATA = data;
      PWRITE = 1'b1;
      PRESETn = 1'b1;
      aux_in = aux_i;
      PENABLE = 0;
      @(negedge PCLK);
      PENABLE = 1'b1;
      @(negedge PCLK);
    end
  endtask

  task read(input [31:0] addr);
    begin
      @(negedge PCLK);
      PSEL = 1'b1;
      PADDR = addr;
      PWRITE = 1'b0;
      PRESETn = 1'b1;
      PENABLE = 1'b0;
      @(negedge PCLK);
      PENABLE = 1'b1;
      @(negedge PCLK);
    end
  endtask

  initial begin
    initialize;
    #40;
    //as output
    write(`GPIO_RGPIO_OUT, 32'haaaa_ffff);
    read(`GPIO_RGPIO_OUT);
    write(`GPIO_RGPIO_OE, 32'hffff_ffff);
    read(`GPIO_RGPIO_OE);
    write(`GPIO_RGPIO_AUX, 32'hffff_ffff, 32'h1234_5678);
    $display("Working as output DONE");

    //as input
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);
    read(`GPIO_RGPIO_OE);
    temp = 32'habfe_fabe;
    read(`GPIO_RGPIO_IN);
    $display("Working as input DONE");

    //sampling wrt external clk negedge
    initialize;
    #50;
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);
    read(`GPIO_RGPIO_OE);
    write(`GPIO_RGPIO_ECLK, 32'hffff_ffff);  //eclk for sampling rgpio_in
    read(`GPIO_RGPIO_ECLK);
    write(`GPIO_RGPIO_NEC, 32'hffff_ffff);  //posedge
    read(`GPIO_RGPIO_NEC);
    @(negedge PCLK);
    temp = 32'haabb_ccdd;
    read(`GPIO_RGPIO_IN);
    $display("posedge and negedge ext clk DONE");

    //flag 1 = output, flag 0 = input;
    //interrupts
    initialize;
    #50;
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);  //oe 0 input
    write(`GPIO_RGPIO_PTRIG, 32'hffff_ffff);  //interrupts are sampled at posedge of sys_clk
    write(`GPIO_RGPIO_INTE, 32'hffff_ffff);  //enable interruts for all 32 pins
    write(`GPIO_RGPIO_CTRL, 2'b10);  //enable intrupts
    write(`GPIO_RGPIO_INTS, 32'h0000_0000);  //reset all the status bits
    read(`GPIO_RGPIO_INTS);
    write(`GPIO_RGPIO_ECLK, 32'h0000_0000);  //use sys_clk for all the pins, no need for nec
    @(negedge PCLK);
    temp = 32'hffff_ffff;
    read(`GPIO_RGPIO_IN);
    read(`GPIO_RGPIO_INTS);
    write(`GPIO_RGPIO_INTS, 32'h0000_0000);  //serviced all the interrupts
    read(`GPIO_RGPIO_INTS);
    read(`GPIO_RGPIO_IN);
    #100 $finish;
  end

endmodule
*/

`include "gpio_defines.sv"

module apb_top_tb ();

  reg PCLK;
  reg PRESETn;
  reg PSEL;
  reg PENABLE;
  reg PWRITE;
  reg [31:0] PADDR;
  reg [31:0] PWDATA;
  wire [31:0] PRDATA;
  wire IRQ;
  wire PREADY;

  reg [31:0] aux_in;

  wire [31:0] io_pad;
  reg ext_clk_pad_i;

  reg flag;
  reg [31:0] temp;

  assign io_pad = flag ? 'bz : temp;

  apb_top i1 (
      .PCLK(PCLK),
      .PRESETn(PRESETn),
      .PSEL(PSEL),
      .PENABLE(PENABLE),
      .PWRITE(PWRITE),
      .PADDR(PADDR),
      .PWDATA(PWDATA),
      .PRDATA(PRDATA),
      .IRQ(IRQ),
      .PREADY(PREADY),
      .aux_in(aux_in),
      .io_pad(io_pad),
      .ext_clk_pad_i(ext_clk_pad_i)
  );

  initial begin
    PCLK = 'b0;
    forever #5 PCLK = ~PCLK;
  end

  initial begin
    ext_clk_pad_i = 'b0;
    forever #10 ext_clk_pad_i = ~ext_clk_pad_i;
  end

  task initialize();
    begin
      PRESETn = 1'b0;
      PSEL = 1'b0;
      PADDR = 'b0;
      PWDATA = 'b0;
      PENABLE = 'b0;
      aux_in = 'b0;
    end
  endtask

  task write(input [31:0] addr, data, input [31:0] aux_i = 32'habcd_abcd);
    begin
      @(negedge PCLK);
      PSEL = 1'b1;
      PADDR = addr;
      PWDATA = data;
      PWRITE = 1'b1;
      PRESETn = 1'b1;
      aux_in = aux_i;
      PENABLE = 0;
      @(negedge PCLK);
      PENABLE = 1'b1;
      @(negedge PCLK);
      $display("Time %t: Wrote %h to address %h", $time, data, addr);
    end
  endtask

  task read(input [31:0] addr);
    begin
      @(negedge PCLK);
      PSEL = 1'b1;
      PADDR = addr;
      PWRITE = 1'b0;
      PRESETn = 1'b1;
      PENABLE = 1'b0;
      @(negedge PCLK);
      PENABLE = 1'b1;
      @(negedge PCLK);
      @(posedge PCLK);  // Wait for PREADY to ensure data is valid
      $display("Time %t: Read %h from address %h", $time, PRDATA, addr);
    end
  endtask

  // Continuous monitor at posedge PCLK
  always @(posedge PCLK) begin
    $display(
        "Time %t: rgpio_in = %h, in_mux = %h, rgpio_ints = %h, rgpio_ctrl = %b, IRQ = %b, temp = %h",
        $time, i1.reg_instance.rgpio_in, i1.reg_instance.in_mux, i1.reg_instance.rgpio_ints,
        i1.reg_instance.rgpio_ctrl, IRQ, temp);
  end

  initial begin
    initialize;
    #40;
    // As output
    write(`GPIO_RGPIO_OUT, 32'haaaa_ffff);
    read(`GPIO_RGPIO_OUT);
    write(`GPIO_RGPIO_OE, 32'hffff_ffff);
    read(`GPIO_RGPIO_OE);
    write(`GPIO_RGPIO_AUX, 32'hffff_ffff, 32'h1234_5678);
    $display("Working as output DONE");

    // As input
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);
    read(`GPIO_RGPIO_OE);
    temp = 32'habfe_fabe;
    read(`GPIO_RGPIO_IN);
    $display("Working as input DONE");

    // Sampling wrt external clk negedge
    initialize;
    #50;
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);
    read(`GPIO_RGPIO_OE);
    write(`GPIO_RGPIO_ECLK, 32'hffff_ffff);
    read(`GPIO_RGPIO_ECLK);
    write(`GPIO_RGPIO_NEC, 32'hffff_ffff);
    read(`GPIO_RGPIO_NEC);
    @(negedge PCLK);
    temp = 32'haabb_ccdd;
    read(`GPIO_RGPIO_IN);
    $display("posedge and negedge ext clk DONE");

    // Interrupts
    initialize;
    temp = 32'h0000_0000;
    #50;
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);
    write(`GPIO_RGPIO_PTRIG, 32'hffff_ffff);
    write(`GPIO_RGPIO_INTE, 32'hffff_ffff);
    write(`GPIO_RGPIO_CTRL, 2'b10);
    write(`GPIO_RGPIO_INTS, 32'h0000_0000);
    read(`GPIO_RGPIO_INTS);
    write(`GPIO_RGPIO_ECLK, 32'h0000_0000);
    @(negedge PCLK);
    $display("Time %t: Setting temp to 32'hffff_ffff", $time);
    temp = 32'hffff_ffff;
    #10;  // Small delay to ensure input propagates before read
    read(`GPIO_RGPIO_IN);
    read(`GPIO_RGPIO_INTS);
    write(`GPIO_RGPIO_INTS, 32'h0000_0000);
    read(`GPIO_RGPIO_INTS);
    read(`GPIO_RGPIO_IN);
    #100 $finish;
  end

endmodule
