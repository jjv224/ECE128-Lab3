`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2023 03:14:19 PM
// Design Name: 
// Module Name: FBA_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FBA_tb();
    reg [3:0] A, B;
    wire CO;
    wire [3:0] Sum;
    FBA uut(.A(A),.B(B),.S(Sum),.Co(CO));
    
    initial begin
        A= 4'b0000; B = 4'b0000;
        #10
        A= 4'b0001; B = 4'b0000; 
        #10;
        A= 4'b0010; B = 4'b0001;
        #10;
        A= 4'b0011; B = 4'b0001; 
        #10;
        A= 4'b0100; B = 4'b0100; 
        #10;
        A= 4'b1000; B = 4'b0110; 
        #10;
        A= 4'b1011; B = 4'b1011; 
        
    end
endmodule
