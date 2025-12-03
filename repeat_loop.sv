module repeat_loop;
  int a;
  initial begin
    $display("------------------------------------------------");
    repeat(4) begin
//       $display("\t the value of a=%0d",a);
       a++;
      $display("\t the value of a=%0d i=%0d ",a,i);
      $display("------------------------------------------");
    end
  end
endmodule
