module bit2comparator(input [1:0]a,input [1:0]b,output agb,alb,aeb);
  wire [11:0]w;
  
  not n0(w[0],a[1]);
  not n1(w[1],a[0]);
  not n2(w[2],b[1]);
  not n3(w[3],b[0]);
  
  xnor x1(w[4],a[0],b[0]);
  xnor x2(w[5],a[1],b[1]);
  and a1(aeb,w[4],w[5]);
  
  and a2(w[6],a[1],w[2]);
  and a3(w[7],a[0],w[2],w[3]);
  and a4 (w[8],a[1],a[0],w[2]);
  or o1(agb,w[6],w[7],w[8]);
  
  
  and a5(w[9],w[1],b[1]);
  and a6(w[10],w[1],b[1],b[0]);
  and a7(w[11],w[0],w[1],b[1]);
  or o2(alb,w[9],w[10],w[11]);
endmodule