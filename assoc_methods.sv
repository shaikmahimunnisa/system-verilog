module assiociate_array();
  int array[*];
  int index;
  
  initial begin
    repeat(5) begin
    array[index]=index*2;
    index=index+4;
      $display("\t the entries in the array is %0d",array.num());
      foreach(array[i]) $display("\tarray[%0d]=%0d",i,array[i]);
    end
   
      array.first(index);
    $display("\t the value of array after the first method array[%0d]=%0d",index,array[index]);
  end
  
  initial begin
  array.last(index);
//     foreach(array[i]) 
    $display("the value of the array after last metho is array[%0d]= %0d",index,array[index]);
  end
  
endmodule
