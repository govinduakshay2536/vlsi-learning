module halfsubtractor(input a,b,output d,br);
    wire w1;
    xor x1(d,a,b);
    not n1(w1,a);
    and a1(br,w1,b);
endmodule

module fullsubtractor(input a_fs,b_fs,bin_fs,output d_fs,br_fs);
    wire w1,w2,w3;
    halfsubtractor hs1(.a(a_fs),.b(b_fs),.d(w1),.br(w2));
    halfsubtractor hs2(.a(w1),.b(bin_fs),.d(d_fs),.br(w3));
    or o1(br_fs,w3,w2);
endmodule