module event_ctrl;
  bit clk;
  always #2 clk = ~clk;

  //always block will be executed at every posedge of clk signal
  always @(posedge clk)
  begin
    $display($time,"\tInside always block posedge only");
  end
  
   always @(negedge clk)
  begin
    $display($time,"\tInside always block neg edge only");
  end

  initial begin
    #10 $finish;
  end
endmodule
