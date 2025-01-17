
`timescale 1ns/1ps
module Multiplier (
    input  [3:0] A, // 4-bit input A
    input  [3:0] B, // 4-bit input B
    output [7:0] result // 8-bit output result
);
  wire [3:0] partialproduct0 = A & {4{B[0]}};
  wire [3:0] partialproduct1 = A & {4{B[1]}};
  wire [3:0] partialproduct2 = A & {4{B[2]}};
  wire [3:0] partialproduct3 = A & {4{B[3]}};

    wire s1, c1, c2;
    ApproximateCompressor comp1 (
        .a(partialproduct0[1]), .b(partialproduct1[0]), .c(1'b0), .d(1'b0), .cin(1'b0),
        .sum(s1), .carry(c1), .cout()
    );

    wire s2, c3, c4;
    ApproximateCompressor comp2 (
        .a(partialproduct0[2]), .b(partialproduct1[1]), .c(partialproduct2[0]), .d(1'b0), .cin(c1),
        .sum(s2), .carry(c2), .cout()
    );

    wire s3, c5, c6;
    ApproximateCompressor comp3 (
        .a(partialproduct0[3]), .b(partialproduct1[2]), .c(partialproduct2[1]), .d(partialproduct3[0]), .cin(c2),
        .sum(s3), .carry(c3), .cout()
    );

    wire s4, c7, c8;
    ApproximateCompressor comp4 (
        .a(partialproduct1[3]), .b(partialproduct2[2]), .c(partialproduct3[1]), .d(1'b0), .cin(c3),
        .sum(s4), .carry(c4), .cout()
    );

    wire s5, c9, c10;
    ApproximateCompressor comp5 (
        .a(partialproduct2[3]), .b(partialproduct3[2]), .c(1'b0), .d(1'b0), .cin(c4),
        .sum(s5), .carry(c5), .cout()
    );

  assign result[0] = partialproduct0[0];
    assign result[1] = s1;
    assign result[2] = s2;
    assign result[3] = s3;
    assign result[4] = s4;
    assign result[5] = s5;
    assign result[6] = partialproduct3[3] ^ c5;
    assign result[7] = partialproduct3[3] & c5;

endmodule
