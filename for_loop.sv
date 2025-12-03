module for_loop;
  initial begin
    $display("---------------------------------------");
    for(int i=0;i<5;i=i+1)
      begin
        $display("\t the value of i = %0d",i);
        $display("-----------------------------------------");
      end
  end
endmodule
