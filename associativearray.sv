module assocarr();
  int mem [int];   // Associative array
  int idx;

  initial begin
    // Insert entries into the associative array
    mem[2] = 5;
    mem[3] = 1;
    mem[35] = 60;
    mem[2000] = 89;

    // Check if key 35 exists
    if (mem.exists(35))
      $display("Entry exists in mem, whose value is %0d", mem[35]);
    else
      $display("No entry");

    // Get the first key in the associative array
    if (mem.first(idx))
      $display("Entry (first) is made in address %0d, value = %0d", idx, mem[idx]);
    else
      $display("No entry");

    // Display total number of entries
    $display("Number of entries are %0d", mem.num());
  end
endmodule
