`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2024 12:54:39 PM
// Design Name: 
// Module Name: wallace_repeat
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

module wallace_repeat(
    input [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9, // 9 inputs
    input [7:0] scalar,                                    // scalar input
    output [15:0] out1, out2, out3, out4, out5, out6, out7, out8, out9 // 9 outputs (16-bit due to multiplication)
);
    // Instantiate the `wallace` multiplier 9 times
    wallace w1(.a(in1), .b(scalar), .asn(out1));
    wallace w2(.a(in2), .b(scalar), .asn(out2));
    wallace w3(.a(in3), .b(scalar), .asn(out3));
    wallace w4(.a(in4), .b(scalar), .asn(out4));
    wallace w5(.a(in5), .b(scalar), .asn(out5));
    wallace w6(.a(in6), .b(scalar), .asn(out6));
    wallace w7(.a(in7), .b(scalar), .asn(out7));
    wallace w8(.a(in8), .b(scalar), .asn(out8));
    wallace w9(.a(in9), .b(scalar), .asn(out9));

endmodule

