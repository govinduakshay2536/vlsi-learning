`timescale 1ns/1ps
module syncupdowncounter_tb;
    reg clk, mode;
    wire [3:0] y;

    syncupdowncounter s1 (
        .clk(clk),
        .mode(mode),
        .y(y)
    );

    initial begin
        $dumpfile("syncupdowncounter_tb.vcd");
        $dumpvars(0, syncupdowncounter_tb);
        $monitor(" mode = %b, y = %b", mode, y);
        clk = 0;
        mode = 0;
        #150 mode = 1;
        #150 mode = 0;
        #150 $finish;
    end
    always #5 clk <= ~clk;
endmodule