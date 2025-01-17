`timescale 1ns / 1ps
// Approximate 4:2 compressor module
module ApproximateCompressor (
    input  wire a, b, c, d, cin,
    output wire sum, carry, cout
);
    // Approximate sum and carry calculations
    assign sum   = a ^ b ^ c ^ d;       // XOR operation for sum
    assign carry = (a & b) | (c & d);   // OR operation for carry
    assign cout  = cin;                 // Pass-through for carry-in
endmodule
