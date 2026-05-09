`timescale  1ns/10ps
module ringcountertb;
wire [8:1]out;reg clk;

    ringcounter r1(.clk(clk),.out(out));
    initial begin
        clk<=0;
    forever 
    begin
        #5 clk = ~clk;
    end
    end
    initial begin
    $monitor("time: %2t clk=%b out=%b",$time,clk,out);
    $dumpfile("ringcountertb.vcd");
    $dumpvars(0,ringcountertb); 
    #200 $finish;
    end

endmodule