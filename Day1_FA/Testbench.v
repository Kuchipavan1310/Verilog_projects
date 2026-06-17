module fa_tb;
	reg a,b,c;
	wire s,c0;
	fa dut(a,b,c,s,c0);

	initial begin
		a=0;b=0;c=0;
		#2 a=0;b=0;c=1;
		#2 a=0;b=1;c=0;
		#2 a=0;b=1;c=1;
		#2 a=1;b=0;c=0;
		#2 a=1;b=0;c=1;
		#2 a=1;b=1;c=0;
		#2 a=1;b=1;c=1;
		#2 $finish;
	end

	initial begin
		$monitor("time=%0t a=%b b=%b c=%b s=%b c0=%b", $time, a, b, c, s, c0);
	end

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, fa_tb);
	end
endmodule
