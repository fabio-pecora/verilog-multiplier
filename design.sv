module halfadder(S,C,x,y);
  input x,y;
  output S,C;
  
  xor U1(S,x,y);
  and U2(C,x,y);
 
endmodule

module multiplier(A, B, C);
  input [1:0] A, B;
  output [3:0] C;
  wire x, y, z, a;
  
  and(C[0], A[0], B[0]);
  and(x, A[0], B[1]);
  and(y, A[1], B[1]);
  and(z, A[1], B[0]);
  
  halfadder HA1(a, C[1], x, z);
  halfadder HA2(C[3], C[2], a, y);
  
endmodule


