module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum0;
    wire [15:0] sum1;
    wire carry;
    
    add16 lower(
        .a(a[15:0]),
        .b(b[15:0]),
        .cin(1'b0),
        .sum(sum[15:0]),
        .cout(carry)
    );
    
       
    add16 upper0(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b0),
        .sum(sum0),
        .cout()
    );
    
    add16 upper1(
        .a(a[31:16]),
        .b(b[31:16]),
        .cin(1'b1),
        .sum(sum1),
        .cout()
    );
    
    assign sum[31:16] = carry ? sum1 : sum0;
    
endmodule
