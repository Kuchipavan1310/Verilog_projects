module fa(a,b,c,s,c0);
	input a,b,c;
	output s,c0;
	wire w1,w2,w3;
	xor x1(s,a,b,c);
	and a1(w1,a,b);
	and a2(w2,b,c);
	and a3(w3,a,c);
	or o1(c0,w1,w2,w3);
endmodule
