`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 07:16:15 PM
// Design Name: 
// Module Name: successive_difference
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


module successive_difference (
    input wire clk,
    input wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9,
    output reg [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9
);

    // Task to calculate successive differences
    task calculate_successive_differences;
        input [7:0] a, b, c, d, e, f, g, h, i;
        output [7:0] res1, res2, res3, res4, res5, res6, res7, res8;

        begin
            res1 = a;                      // First element remains the same
            res2 = b - a;                  // Difference between second and first
            res3 = c - b;                  // Difference between third and second
            res4 = d - c;                  // Difference between fourth and third
            res5 = e - d;                  // Difference between fifth and fourth
            res6 = f - e;                  // Difference between sixth and fifth
            res7 = g - f;                  // Difference between seventh and sixth
            res8 = h - g;                  // Difference between eighth and seventh
            // Additional output for the ninth input, if needed
            out9 = i - h;                  // Difference between ninth and eighth
        end
    endtask

    // Sequential block to call the task
    always @(posedge clk) begin
        calculate_successive_differences(in1, in2, in3, in4, in5, in6, in7, in8, in9, 
                                          out1, out2, out3, out4, out5, out6, out7, out8);
    end

endmodule

