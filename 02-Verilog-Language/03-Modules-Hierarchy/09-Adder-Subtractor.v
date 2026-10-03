module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b_xorr;
    wire carry;
    
    assign b_xorr = b ^{32{sub}};
    
    add16 lower(
        .a(a[15:0]),
        .b(b_xorr[15:0]),
        .cin(sub),
        .sum(sum[15:0]),
        .cout(carry)
    );
    
        add16 upper(
            .a(a[31:16]),
            .b(b_xorr[31:16]),
            .cin(carry),
            .sum(sum[31:16]),
            .cout()
        );
    
               

endmodule
