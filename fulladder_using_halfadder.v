module halfadder (input a,b, output s,c);
    xor x1(s,a,b);
    and a1(c,a,b);
endmodule


module fulladder_using_halfadder (input a_fa, b_fa, cin_fa, output s_fa, c_fa);
    wire w1, w2, w3;
    halfadder ha1(.a(a_fa), .b(b_fa), .s(w1), .c(w2));
    halfadder ha2(.a(w1), .b(cin_fa), .s(s_fa), .c(w3));
    or o1(c_fa, w2, w3);
endmodule