module forever_loop;
  int a;
  initial begin
    forever begin
      $display("------------------------------------------");
      $display("\t the value of a= %0d",a);
      a++;
      #5;
    end
  end 
    initial begin
      #20;
      $finish;
//       $stop;
  end
endmodule
