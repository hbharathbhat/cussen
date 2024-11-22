`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 07:55:52 AM
// Design Name: 
// Module Name: russian_peasant_testbench
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


`timescale 1ns / 1ps

module russian_peasant_testbench;

    reg clk;
    reg [7:0] a;          // Multiplicand
    reg [7:0] b;          // Multiplier
    wire [15:0] product;  // Product output

    // Instantiate the russian_peasant_mult module
    russian_peasant_multiplication uut (
        .clk(clk),
        .a(a),
        .b(b),
        .product(product)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Toggle clock every 5 time units
    end

    // Test stimulus
    initial begin
        // Test case 1
        a = 8'd6; 
        b = 8'd7; 
        #10; // Wait for one clock cycle
        $display("Multiplicand: %d, Multiplier: %d, Product: %d", a, b, product);

        // Test case 2
        a = 8'd15; 
        b = 8'd5; 
        #10; // Wait for one clock cycle
        $display("Multiplicand: %d, Multiplier: %d, Product: %d", a, b, product);

        // Test case 3
        a = 8'd8; 
        b = 8'd3; 
        #10; // Wait for one clock cycle
        $display("Multiplicand: %d, Multiplier: %d, Product: %d", a, b, product);

        // End the simulation
        #10;
        $finish;
    end

endmodule

