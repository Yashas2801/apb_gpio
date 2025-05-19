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
      PRESETn = 0;
      PSEL = 0;
      PENABLE = 0;
      PWRITE = 0;
      gpio_int_o = 0;
      PADDR = 32'b0;
      PWDATA = 32'b0;
      gpio_dat_o = 32'b0;
      #10;
      PRESETn = 1;
    end
  endtask

  task write();
    begin
      @(negedge PCLK);
      PRESETn = 1;
      PSEL = 1;
      PENABLE = 0;
      PWRITE = 1;
      PADDR = 32'hffff_0f0f;
      PWDATA = 32'h0000_00c9;
      @(negedge PCLK);
      PENABLE = 1;
      gpio_int_o = 1;
      @(negedge PCLK);
      PSEL = 0;
      PENABLE = 0;
    end
  endtask

  task read();
    begin
      @(negedge PCLK);
      PRESETn = 1;
      PSEL = 1;
      PENABLE = 0;
      PWRITE = 0;
      PADDR = 32'hf0f0_ffff;
      @(negedge PCLK);
      PENABLE = 1;
      gpio_dat_o = 32'h0000_00c9;  //dummy value from register block
      @(negedge PCLK);
      PSEL = 0;
      PENABLE = 0;
    end
  endtask

  task stay_in_setup();
    begin
      @(negedge PCLK);
      PRESETn = 1;
      PSEL = 1;
      PENABLE = 0;
      PWRITE = 1;
      PADDR = 32'h1234_5678;
      PWDATA = 32'habcd_ef01;
      @(negedge PCLK);
      @(negedge PCLK);
      PENABLE = 1;
      @(negedge PCLK);
      PSEL = 0;
      PENABLE = 0;
    end
  endtask

  task setup_to_idle();
    begin
      @(negedge PCLK);
      PRESETn = 1;
      PSEL = 1;
      PENABLE = 0;
      PWRITE = 1;
      PADDR = 32'h8765_4321;
      PWDATA = 32'hfeed_face;
      @(negedge PCLK);
      PRESETn = 0;
      PSEL = 0;
      PENABLE = 0;
      @(negedge PCLK);
    end
  endtask

  task enable_to_setup();
    begin
      @(negedge PCLK);
      PRESETn = 1;
      PSEL = 1;
      PENABLE = 0;
      PWRITE = 1;
      PADDR = 32'hABEF_1234;
      PWDATA = 32'hCAEF_4321;
      @(negedge PCLK);
      PENABLE = 1;
      @(negedge PCLK);
      PENABLE = 0;  //goes back to setup
      PSEL = 1;
    end
  endtask

  /*
  task condition_cov();
    begin
      @(negedge PCLK);
      PRESETn = 1;
      PSEL = 1;
      PENABLE = 1;
      PWRITE = 1;
      PADDR = 32'h8765_4321;
      PWDATA = 32'hfeed_face;
      @(negedge PCLK);
      PRESETn = 0;
      PSEL = 0;
      PENABLE = 0;
      @(negedge PCLK);
      initialise;
      @(negedge PCLK);
      PRESETn = 1;
      PSEL = 1;
      PENABLE = 0;
      PWRITE = 1;
      PADDR = 32'h8765_4321;
      PWDATA = 32'hfeed_face;
      @(negedge PCLK);
      PRESETn = 0;
      PSEL = 0;
      PENABLE = 0;
      @(negedge PCLK);

    end
  endtask
*/

  initial begin
    initialise;
    #20;

    write;  //SETUP to ENABLE
    #20;
    read;
    #20;

    stay_in_setup;
    #20;

    setup_to_idle;
    #20;
    write;
    #20;
    enable_to_setup;
    #20;
    //   condition_cov;

    #100 $finish;
  end
endmodule
