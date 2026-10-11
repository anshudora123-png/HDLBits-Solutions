module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    assign out_assign = a&b;
    always @(*) out_alwaysblock = a&b;

endmodule

// For one statement, begin/end is optional:
// Example always @(*) out = a & b;

// For multiple statements, use:
// always @(*) begin
//   ...
//   ...
// end
