module aux_if_tb ();
  reg sys_clk;
  reg [31:0] aux_in;
  reg sys_rst;

  wire [31:0] aux_i;

  aux_if i1 (
      .sys_clk(sys_clk),
      .sys_rst(sys_rst),
      .aux_in (aux_in),
      .aux_i  (aux_i)
  );

  task drive(input [31:0] data_in, input rst);
    begin
      @(negedge sys_clk);
      aux_in  = data_in;
      sys_rst = rst;
    end
  endtask

  task initialize();
    begin
      aux_in  = 'b0;
      sys_rst = 'b0;
    end
  endtask

  initial begin
    sys_clk = 'b0;
    forever #5 sys_clk = ~sys_clk;
  end


  initial begin
    $monitor("aux_in = %0b, aux_i = %0b, sys_rst = %0b, time = %0t", aux_in, aux_i, sys_rst, $time);
  end

  initial begin
    initialize;
    #20;
    drive(32'd125, 1);
    #20 drive(32'd134, 1);
    #20 drive(32'd198, 1);
    #40 $finish;
  end

endmodule
