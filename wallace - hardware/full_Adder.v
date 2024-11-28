`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2024 12:45:54 PM
// Design Name: 
// Module Name: full_Adder
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


module full_Adder (a,b,cin,sum, ca);
input a, b,cin;
output sum, ca;
    assign {ca,sum} =  cin + a + b;
endmodule
