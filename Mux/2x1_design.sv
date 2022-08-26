module mux(Z, A,B,S);
  output Z;
  input A,B,S;
  
  assign Z = (A&!S) | (B&S);
endmodule
