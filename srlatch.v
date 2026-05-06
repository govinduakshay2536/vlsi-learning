module srlatch(s,r,q,qbar);

    input s,r;
    output q, qbar;
    nand n1(q,r,qbar);
    nand n2(qbar,q,s);

endmodule