`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2024 09:28:40
// Design Name: 
// Module Name: russian_peasant_mult
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


module russian_peasant_mult (
    input wire [7:0] a,            // 8-bit multiplicand
    input wire [7:0] b,            // 8-bit multiplier
    output reg [15:0] product      // 16-bit product
);

    reg [7:0] multiplier;
    reg [15:0] multiplicand;
    integer i;

    always @(*) 
    begin
        multiplier = b;
        multiplicand = a;
        product = 0;

        // Russian Peasant Multiplication algorithm
        for (i = 0; i < 8; i = i + 1) 
        begin
            if (multiplier[0] == 1) 
            begin
                product = product + multiplicand;
            end
            multiplicand = multiplicand << 1;  // Double the multiplicand
            multiplier = multiplier >> 1;      // Half the multiplier
        end
    end

endmodule

