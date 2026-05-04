 //Full adder using structural modeling
module full_adder (
    input a,b,cin,
    output sum,carry
);

wire w1,w2,w3,w4;       //Internal connections

xor(w1,a,b);
xor(sum,w1,cin);        //Sum output

and(w2,a,b);
and(w3,b,cin);
and(w4,cin,a);

or(carry,w2,w3,w4);     //carry output

endmodule

module rca(input [3:0] a_rca,input [3:0] b_rca,input cin_rca , output [3:0]s_rca , cout_rca);
    full_adder f1(.a(a_rca[0]),.b(b_rca[0]),.cin(cin_rca),.sum(s_rca[0]),.carry((w1)));

endmodule