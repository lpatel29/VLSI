module mux8x1_tb();
  reg a,b,c,d,e,f,g,h;
  reg [2:0] sel;
  wire out;
  
  mux8x1 dut(.a(a), .b(b), .c(c), .d(d),.e(e), .f(f), .g(g), .h(h), .sel(sel), .out(out));
  initial begin
    $dumpfile("mux4x1.vcd");
    $dumpvars(1);
  end
  initial begin
    sel=3'b000; a=0;b=1;c=0;d=1;e=0;f=1;g=0;h=1;
    #5
    sel=3'b001; a=0;b=1;c=0;d=1;e=0;f=1;g=0;h=1;
    #5
    sel=3'b010; a=0;b=1;c=0;d=1;e=0;f=1;g=0;h=1;
    #5
    sel=3'b011; a=0;b=1;c=0;d=1;e=0;f=1;g=0;h=1;
    #5
    sel=3'b100; a=0;b=1;c=0;d=1;e=0;f=1;g=0;h=1;
    #5
    sel=3'b101; a=0;b=1;c=0;d=1;e=0;f=1;g=0;h=1;
    #5
    sel=3'b110; a=0;b=1;c=0;d=1;e=0;f=1;g=0;h=1;
    #5
    sel=3'b111; a=0;b=0;c=0;d=0;e=0;f=1;g=1;h=1;
    #6
    $finish();
  end
endmodule
