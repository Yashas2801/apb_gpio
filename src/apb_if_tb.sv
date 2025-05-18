
module apb_if_tb ();
  reg PCLK;
  reg PRESETn;
  reg PSEL;
  reg PENABLE;
  reg PWRITE;
  reg [31:0] PWDATA;
  reg [31:0] PADDR;
  reg [31:0] gpio_dat_o;
  reg gpio_int_o;

  wire PREADY;
  wire IRQ;
  wire sys_clk;
  wire sys_rst;
  wire gpio_we;
  wire [31:0] gpio_addr;
  wire [31:0] gpio_dat_i;
  wire [31:0] PRDATA;

  apb_if duv (
      .PCLK(PCLK),
      .PRESETn(PRESETn),
      .PSEL(PSEL),
      .PENABLE(PENABLE),
      .PWRITE(PWRITE),
      .PWDATA(PWDATA),
      .PADDR(PADDR),
      .gpio_dat_o(gpio_dat_o),
      .gpio_int_o(gpio_int_o),
      .PREADY(PREADY),
      .IRQ(IRQ),
      .sys_clk(sys_clk),
      .sys_rst(sys_rst),
      .gpio_we(gpio_we),
      .gpio_addr(gpio_addr),
      .PRDATA(PRDATA),
      .gpio_dat_i(gpio_dat_i)
  );

  initial begin
    PCLK = 0;
    forever #5 PCLK = ~PCLK;
  end

  task initialise();
    begin
      {PRESETn, PSEL, PENABLE, PWRITE, gpio_int_o} = 5'b0;
      PADDR = 4'b0;
      PWDATA = 32'b0;
      gpio_dat_o = 32'b0;
    end

  endtask

  task write1();
    begin
      PRESETn = 'b1;
      @(negedge PCLK);
      PENABLE = 1'b0;
      PSEL = 1'b1;
      PWRITE = 1'b1;
      PADDR = 32'hffff_0f0f;
      PWDATA = 32'd201;
      @(negedge PCLK);
      PENABLE = 1'b1;
      gpio_int_o = 1'b1;
      @(negedge PCLK);
      PSEL = 1'b0;
    end
  endtask

  task read();
    begin
      PRESETn = 1'b1;
      @(negedge PCLK);
      PSEL   = 1'b1;
      PWRITE = 1'b0;
      PADDR  = 32'hf0f0_ffff;
      @(negedge PCLK);
      PENABLE = 1'b1;
      gpio_dat_o = 32'd201;
    end
  endtask

  initial begin
    #30;
    initialise;
    #30;
    read;
    #30;
    write1;
    #30;
    initialise;
     
    #50 $finish;
  end

  //initial begin

  //$monitor("pready = %0b, IRQ = %0b, gpio_int_o = %0b, sys_rst = %0b,");
  //end

endmodule

