module mux(y, i0,i1,s);
  output y;
  input i0,i1,s;
  
  assign y = (i0&!s) | (i1&s);
endmodule
