module top_module ( input clk, input d, output q );
    wire a,b;
    my_dff inst_1(.clk(clk),.d(d), .q(a));
    my_dff inst_2(.clk(clk),.d(a), .q(b));
    my_dff inst_3(.clk(clk),.d(b), .q(q));
                  
endmodule
