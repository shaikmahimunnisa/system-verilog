module dynamicarr();
  int da1[], da2[];

  initial begin
    // Allocate size and initialize da1
    da1 = new[5];
    foreach (da1[j]) begin
      da1[j] = j;
      $display("da1[%0d] = %0d", j, da1[j]);
    end

    // Copy da1 into da2
    da2 = da1;

    // Resize da1 to 20 and print pointer (just for illustration)
    da1 = new[20](da1); // Copy old contents
    $display("After resizing to 20: da1 = %p", da1);

    // Resize da1 to 100 and print size
    da1 = new[100](da1); // Keep existing data
    $display("Size of da1 = %0d", $size(da1));
  end
endmodule
