module muxtest;
reg [15:0]in;
reg [3:0]s;
wire y;
mux16_1 m1(in,s,y);

initial begin
    $dumpfile("mux16_1tb.vcd");
    // mux16_1tb.vcd is the name of the file where the waveform will be stored value change dumpfile vcd.
    $dumpvars(0,muxtest);
    $monitor($time,"in=%h,s=%h,y=%b",in,s,y);
    #5 in=16'h3a56;s=4'ha;
    #5 s=4'hb;
    #5 s=4'hc;
    #5 s=4'hd;
    #5 finish;

end
endmodule