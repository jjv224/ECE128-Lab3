`timescale 1ns / 1ps

module final(
    input [3:0] A,
    input [3:0] B,
    output Co,
    output [6:0] Display
    );
    wire [3:0] Sum;
    FBA add4 (.A(A), .B(B), .S(Sum), .Co(Co));
    sev_seg shine_bright_like_a_diamond (.Sum(Sum), .Display(Display));
    
endmodule
