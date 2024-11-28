`timescale 1ns / 1ps

module wallace_tb;

// Testbench inputs
reg [7:0] a;
reg [7:0] b;

// Testbench outputs
wire [15:0] asn;

// Instantiate the DUT (Device Under Test)
wallace uut (
    .a(a),
    .b(b),
    .asn(asn)
);

initial begin
    // Display header for results
    $display("Time\t a\t\t b\t\t asn");
    
    // Test 1: Multiply 0 x 0
    a = 8'b00000000;
    b = 8'b00000000;
    #10;
    $display("%0dns\t %b\t %b\t %b", $time, a, b, asn);

    // Test 2: Multiply 1 x 1
    a = 8'b00000001;
    b = 8'b00000001;
    #10;
    $display("%0dns\t %b\t %b\t %b", $time, a, b, asn);

    // Test 3: Multiply 8 x 8
    a = 8'b00001000;
    b = 8'b00001000;
    #10;
    $display("%0dns\t %b\t %b\t %b", $time, a, b, asn);

    // Test 4: Multiply 255 x 255 (maximum values for 8-bit)
    a = 8'b11111111;
    b = 8'b11111111;
    #10;
    $display("%0dns\t %b\t %b\t %b", $time, a, b, asn);

    // Test 5: Multiply 15 x 15
    a = 8'b00001111;
    b = 8'b00001111;
    #10;
    $display("%0dns\t %b\t %b\t %b", $time, a, b, asn);

    // Test 6: Multiply 127 x 63
    a = 8'b01111111;
    b = 8'b00111111;
    #10;
    $display("%0dns\t %b\t %b\t %b", $time, a, b, asn);

    // Test 7: Multiply random values
    a = 8'b10101010;
    b = 8'b01010101;
    #10;
    $display("%0dns\t %b\t %b\t %b", $time, a, b, asn);

    // End simulation
    $stop;
end

endmodule
