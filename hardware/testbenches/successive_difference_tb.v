`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 07:27:08 PM
// Design Name: 
// Module Name: successive_difference_tb
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


module successive_difference_tb;

    reg clk;
    reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
    wire [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;

    // Instantiate the successive_difference module
    successive_difference uut (
        .clk(clk),
        .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), 
        .in6(in6), .in7(in7), .in8(in8), .in9(in9),
        .out1(out1), .out2(out2), .out3(out3), .out4(out4), 
        .out5(out5), .out6(out6), .out7(out7), .out8(out8), .out9(out9)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        in1 = 8'd1; 
        in2 = 8'd3; 
        in3 = 8'd4; 
        in4 = 8'd5; 
        in5 = 8'd9; 
        in6 = 8'd1; 
        in7 = 8'd1; 
        in8 = 8'd1; 
        in9 = 8'd1;

        #20; $finish;
    end

endmodule

