module syncupdowncounter(input clk,mode, output reg [3:0]y);
    initial begin
        y=4'b0001;
    end
    always @ (posedge clk)
     begin
        if (mode)
        begin
            y<=y+1;
        end
        else if (mode==1 && y==4'b1111)
        begin
            y<=4'b0000;
        end
        else if(!mode && y==4'b0000)
        begin 
            y<=4'b1111;
        end
        else
        begin
            y<=y-1;
        end
    end
 
endmodule
