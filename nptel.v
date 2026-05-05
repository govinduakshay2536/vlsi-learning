`timescale 1ps/1ps
// `timescale <time_unit>/<time_precision>
// #5 means 5ps delay

module nptel(a,b);
    input a,b;
    wire w1;
    and  #5 a1(w1,a,b);


endmodule