module pd(a,b,c,y);
  input a,b,c;
  output y;
  wire w1,w2,w3;
  not n1(w1,a);
  and a1(w2,w1,b);
  and a2(w3,a,c);
  or o1(y,w2,w3);
endmodule;
