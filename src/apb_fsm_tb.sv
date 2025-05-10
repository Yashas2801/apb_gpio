module apb_fsm_tb;
  reg  PCLK;
  reg  PENABLE;
  reg  PSEL;
  reg  PRESETn;

  wire PREADY;

  apb_fsm dut (
      .PCLK(PCLK),
      .PENABLE(PENABLE),
      .PSEL(PSEL),
      .PRESETn(PRESETn),
      .PREADY(PREADY)
  );
  initial begin
    PCLK = 1'b0;
    forever #5 PCLK = ~PCLK;
  end

  task initialise();
    {PENABLE, PSEL, PRESETn} = 3'b000;
  endtask

  task start0(input a, b, c);
    begin
      PRESETn = a;
      @(negedge PCLK);
      PSEL = b;
      @(negedge PCLK);
      PENABLE = c;
    end
  endtask

  initial begin
    initialise();
    #10;
    start0(1, 0, 0);  //stay to idle
    start0(1, 1, 0);  //go to setup
    start0(1, 1, 0);  //stay in setup
    start0(1, 0, 0);  //go to idle
    start0(1, 1, 0);  //go to setup
    start0(1, 1, 0);  //stay in setup
    start0(1, 1, 1);  //go to enable
    start0(1, 1, 0);  //back to setup
    start0(1, 1, 1);  //go to enable
    start0(1, 0, 0);  //go to idle
    #20 $finish();
  end

  initial begin
    $monitor("presetn = %0b, psel = %0b, penable = %0b, pready = %0b,time = %0t", PRESETn, PSEL,
             PENABLE, PREADY, $time);
  end

endmodule
