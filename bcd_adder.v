 //Full adder using structural modeling
module fulladder (
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

module ripplecarryadder4bit(input [3:0] a_rca,input [3:0] b_rca,input cin_rca , output [3:0]s_rca ,output cout_rca);
    wire w1,w2,w3;
    fulladder f1(.a(a_rca[0]),.b(b_rca[0]),.cin(cin_rca),.sum(s_rca[0]),.carry((w1)));
    fulladder f2(.a(a_rca[1]),.b(b_rca[1]),.cin(w1),.sum(s_rca[1]),.carry((w2)));
    fulladder f3(.a(a_rca[2]),.b(b_rca[2]),.cin(w2),.sum(s_rca[2]),.carry((w3)));
    fulladder f4(.a(a_rca[3]),.b(b_rca[3]),.cin(w3),.sum(s_rca[3]),.carry((cout_rca)));

endmodule





module bcd_adder (input [3:0]a_bcd,input [3:0]b_bcd,input cin_bcd,output [3:0]s_bcd,output cout_bcd);
wire [3:0]sum_temp;
wire w1,w6,w7,o_1,r2cout;
wire [3:0]b2;
assign b2[0]=1'b0; 
assign b2[1]=o_1;
assign b2[2]=o_1;
assign b2[3]=1'b0;
assign cout_bcd=o_1;
ripplecarryadder4bit r1(a_bcd,b_bcd,cin_bcd,sum_temp,w1);
ripplecarryadder4bit r2(sum_temp,b2,1'b0,s_bcd,r2cout);

and a1(w6,sum_temp[3],sum_temp[2]);
and a2(w7,sum_temp[3],sum_temp[1]);
or o1(o_1,w1,w6,w7);
endmodule
