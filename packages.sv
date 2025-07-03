package pkg1;
  int no_of_trans = 10;
endpackage

package pkg2;
  int no_of_trans = 50;
  int value;
endpackage

module mem;
  import pkg1; // Import the package without wildcard
  import pkg2;
  initial begin
    $display("mem_module := %0d", pkg1::no_of_trans); // Use fully qualified name
  end
endmodule

module cpu;
  import pkg1;
  import pkg2;
  initial begin
    $display("cpu_module := %0d", pkg2::no_of_trans); // Use fully qualified name
  end
endmodule
