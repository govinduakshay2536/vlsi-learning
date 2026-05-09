module ringcounter (input  clk, output reg [8:1]out);
    initial 
        begin
            
            out[7:1]=7'b0;
            out[8]=1'b1;

        end
    always @(posedge clk)
        begin
            out[8:2]<=out[7:1];//left shift
            out[1]<=out[8];
        end
    
endmodule