//using case

module mux4x1(a,b,c,d,sel,out);
  input a,b,c,d;
  input [0:1]sel;
  output out;
  reg out; 
  
  always @(a or b or c or d or sel)begin
      case(sel)
        2'b00 : out = a;
        2'b01 : out = b;
        2'b10 : out = c;
        2'b11 : out = d;
      endcase
  end
endmodule

/*
module mux4x1(out,i0,i1,i2,i3,s1,s0);
  //port dec
  output out;
  input i0,i1,i2,i3;
  input s0,s1;
  wire s0n,s1n;
  wire y0,y1,y2,y3;
  
  //gate instantiation
  not (s1n,s1);
  not (s0n,s0);
  and (y0,i0,s1n,s0n);
  and (y1,i1,s1n,s0);
  and (y2,i2,s1,s0n);
  and (y3,i3,s1,s0);
  or(out,y0,y1,y2,y3);
endmodule
*/


  
