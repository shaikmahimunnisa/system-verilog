module dynamic_arr;
  int i;
  int da[];
  int da1[];
  initial begin
  da = new[5];
    da = '{1,2,3,4,5};
//     da = new[7]('{1,2,3,4,5});
    for(i=0;i<5;i=i+1)
      begin
        $display("the value of da[%0d]=%0d",i,da[i]);
      end
    da1=new[7](da);
    $display("the da1 array1 is :%p",da1 );
//     da =new[7](da1);
    
    da=new[7]('{7,8,9,10});
    da1 = new [7](da);
    $display(" The array is : %p",da);
    $display("the da1 array2 is :%p",da1);
  end
endmodule
  
