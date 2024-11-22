`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2024 09:47:55
// Design Name: 
// Module Name: russian_peasant_mult_tb
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


module russian_peasant_mult_tb;

    reg [7:0] a;
    reg [7:0] b;
    wire [15:0] product;

    // Instantiate the multiplication module
    russian_peasant_mult uut (
        .a(a),
        .b(b),
        .product(product)
    );

    initial begin
        // Test cases
        a = 8'd13; b = 8'd12; #10;   // 13 * 12 = 156
        $display("a = %d, b = %d, product = %d", a, b, product);

        a = 8'd15; b = 8'd10; #10;   // 15 * 10 = 150
        $display("a = %d, b = %d, product = %d", a, b, product);

        a = 8'd7; b = 8'd9; #10;     // 7 * 9 = 63
        $display("a = %d, b = %d, product = %d", a, b, product);

        a = 8'd20; b = 8'd5; #10;    // 20 * 5 = 100
        $display("a = %d, b = %d, product = %d", a, b, product);

        a = 8'd0; b = 8'd25; #10;    // 0 * 25 = 0
        $display("a = %d, b = %d, product = %d", a, b, product);

        // Finish simulation
        $finish;
    end

endmodule

