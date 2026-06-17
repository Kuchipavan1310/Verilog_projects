module pd_tb;
  reg a,b,c;
  wire y;
  pd dut(a,b,c,y);
  initial begin;
    a=0;b=0;c=0;
    #2 a=0;b=0;c=1;
    #2 a=0;b=1;c=0;
    #2 a=0;b=1;c=1;
    #2 a=1;b=0;c=0;
    #2 a=1;b=0;c=1;
    #2 a=1;b=1;c=0;
    #2 a=1;b=1;c=1;
  end
  initial begin
    $monitor ("time=%0t,a=%b,b=%b,c=%b,y=%b",$time,a,b,c,y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(a,b,c,y);
  end
endmodule
