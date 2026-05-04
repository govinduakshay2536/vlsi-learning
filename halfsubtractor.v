module halfsubtractor(input a,b,output d,br);
    wire w1;
    xor x1(d,a,b);
    not n1(w1,a);
    and a1(br,w1,b);
endmodule