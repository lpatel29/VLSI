module mux_tb ;
  wire Y;
  reg i0,i1,s;
  
  mux dut (Y,i0,i1,s);
   
  initial 
    begin
    i0 =1'b0;
    #15 i0=1'b1;
    #10 i0 =1'b0;
    #15 i0=1'b1;
  end
  
  initial 
    begin
    i1 =1'b0;
    #7 i1=1'b1;
    #5 i1=1'b0;
    #7 i1=1'b1;
    #5 i1=1'b0;
  end
  
   initial 
    begin
    s =1'b0;
    #10 s=1'b1;
    #10 s =1'b0;
    #10 s=1'b1;
  end
  initial begin
    $monitor("Y = %b i0 = %b i1 = %b s = %b", Y,i0,i1,s);
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
