module test;
  // registers
 reg [1:0] A, B;
  wire [3:0] C;
  
  // instantiating the Unit Under Test(UUT)
  multiplier uut(A, B, C);
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars(1, test);
      $monitor("x * y = %b * %b = C %b", A, B, C);
      
      A = 0; B=0; 
      #10  A = 0; B = 1; 
      #10  A = 0; B = 2; 
      #10  A = 0; B = 3; 
      #10  A = 1; B = 0; 
      #10  A = 1; B = 1; 
      #10  A = 1; B = 2; 
      #10  A = 1; B = 3; 
      #10  A = 2; B = 0; 
      #10  A = 2; B = 1; 
      #10  A = 2; B = 2; 
      #10  A = 2; B = 3; 
      #10  A = 3; B = 0; 
      #10  A = 3; B = 1; 
      #10  A = 3; B = 2; 
      #10  A = 3; B = 3; 
      
      
      #10 $finish;
      
    end
endmodule
      
      
