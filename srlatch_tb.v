`timescale 10ns/1ns
module srlatch_tb;

wire q_tb,qbar_tb;
reg s_tb,r_tb;
// outputs should be continuously driven so they are of wire type(net)
// inputs should be driven by reg type because they are assigned in procedural block(left side of expression)
srlatch s1(.s(s_tb),.r(r_tb),.q(q_tb),.qbar(qbar_tb));
initial begin
    $dumpfile("srlatch_tb.vcd");
    $dumpvars(0,srlatch_tb);
    $monitor("s_tb=%b,r_tb=%b,q_tb=%b,qbar_tb=%b",s_tb,r_tb,q_tb,qbar_tb);
    #5  s_tb=1'b0; 
        r_tb=1'b0;
    #5  s_tb=1'b0;
        r_tb=1'b1;
    #5  s_tb=1'b1; 
        r_tb=1'b0;
    #5  s_tb=1'b1;
        r_tb=1'b1;
    #5   $finish;

end
endmodule