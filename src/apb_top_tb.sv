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

  wire [31:0] drive_enable = ~i1.reg_instance.rgpio_oe;

  generate
    for (genvar i = 0; i < 32; i = i + 1) begin
      assign io_pad[i] = drive_enable[i] ? temp[i] : 1'bz;
    end
  endgenerate

  //WARN: This temp logic cannot be used as bidirectional
  // assign io_pad = flag ? 'bz : temp;

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

  task write(input [31:0] addr, data, input [31:0] aux_i = 32'h0000_0000);
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
    flag = 1'b1;
    write(`GPIO_RGPIO_OE, 32'hffff_ffff);  //io as output
    read(`GPIO_RGPIO_OE);
    write(`GPIO_RGPIO_INTE, 32'h0000_0000);  //cleared all the inte to disable the interrupts
    read(`GPIO_RGPIO_INTE);
    write(`GPIO_RGPIO_OUT, 32'haaaa_ffff);
    read(`GPIO_RGPIO_OUT);
    write(`GPIO_RGPIO_AUX, 32'hffff_ffff, 32'h1234_5678);
    $display("Working as output DONE");
    #100;

    //As bidirectional
    initialize;
    #50;
    //NOTE: 0-15 act as outputs , 16-31 act as inputs
    write(`GPIO_RGPIO_OE, 32'h0000_ffff);
    read(`GPIO_RGPIO_OE);
    write(`GPIO_RGPIO_ECLK, 32'h0000_0000);
    read(`GPIO_RGPIO_ECLK);
    write(`GPIO_RGPIO_OUT, 32'h0000_abcd);
    read(`GPIO_RGPIO_OUT);
    //NOTE: Enabling interrupts for 23-31
    write(`GPIO_RGPIO_INTE, 32'hff00_0000);
    read(`GPIO_RGPIO_INTE);
    write(`GPIO_RGPIO_PTRIG, 32'hff_000000);  //posedge(RGPIO_IN) triggering
    read(`GPIO_RGPIO_INTE);
    write(`GPIO_RGPIO_CTRL, 2'b01);
    //NOTE: NO external clock
    temp = 32'h0000_0000;
    read(`GPIO_RGPIO_IN);
    read(`GPIO_RGPIO_INTS);
    temp = 32'hffff_0000;
    read(`GPIO_RGPIO_IN);
    read(`GPIO_RGPIO_INTS);
    write(`GPIO_RGPIO_CTRL, 2'b00);  // resetting the ctrl[inte], serviced all the interrupts
    read(`GPIO_RGPIO_IN);
    read(`GPIO_RGPIO_INTS);
    #50;

    // As input
    initialize;

    #40;
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);
    read(`GPIO_RGPIO_OE);
    temp = 32'habfe_fabe;
    read(`GPIO_RGPIO_IN);
    $display("Working as input DONE");
    #50;

    // Sampling wrt external clk
    initialize;
    #50;
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);
    read(`GPIO_RGPIO_OE);
    write(`GPIO_RGPIO_ECLK, 32'hffff_ffff);
    read(`GPIO_RGPIO_ECLK);
    //write(`GPIO_RGPIO_NEC, 32'h0000_0000);  // posedge
    //read(`GPIO_RGPIO_NEC);
    write(`GPIO_RGPIO_NEC, 32'hffff_ffff);  // negedge
    read(`GPIO_RGPIO_NEC);
    @(negedge PCLK);  //uncomment this if you are sampling at negedge
    temp = 32'haabb_ccdd;
    read(`GPIO_RGPIO_IN);
    $display("posedge and negedge ext clk DONE");
    #50;

    // Interrupts
    initialize;
    temp = 32'h0000_0000;
    #50;
    flag = 1'b0;
    write(`GPIO_RGPIO_OE, 32'h0000_0000);
    write(`GPIO_RGPIO_PTRIG, 32'hffff_ffff);
    write(`GPIO_RGPIO_INTE, 32'hffff_ffff);
    write(`GPIO_RGPIO_CTRL, 2'b01);
    write(`GPIO_RGPIO_INTS, 32'h0000_0000);
    read(`GPIO_RGPIO_INTS);
    write(`GPIO_RGPIO_ECLK, 32'h0000_0000);
    @(negedge PCLK);
    $display("Time %t: Setting temp to 32'hffff_ffff", $time);
    temp = 32'hffff_ffff;
    read(`GPIO_RGPIO_IN);
    //WARN: Experiment- what happens if ctrl[ints] is cleared
    //The ctrl[ints] is set by the design since ctrl[inte] is set and ints
    //register has some bits set, indicating pending interrupts
    //write(`GPIO_RGPIO_CTRL, 2'b01); // uncomment this to see the above in action
    read(`GPIO_RGPIO_INTS);
    write(`GPIO_RGPIO_INTS, 32'h0000_0000);
    read(`GPIO_RGPIO_INTS);
    read(`GPIO_RGPIO_IN);

    //invalid addr coverage
    write(32'd200, 32'h0000_0000);
    #100 $finish;
  end

endmodule
