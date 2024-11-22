`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 03:03:40 PM
// Design Name: 
// Module Name: remove_duplicates_tb
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

module remove_duplicates_tb;

  // Testbench variables
  reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
  wire [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
  wire [3:0] unique_count;

  // Instantiate the remove_duplicates module
  remove_duplicates uut (
    .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .in8(in8), .in9(in9),
    .out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5), .out6(out6), .out7(out7), .out8(out8), .out9(out9),
    .unique_count(unique_count)
  );

  // Test procedure
  initial begin
    // Test Case 1: Some duplicate values
    in1 = 8'd15; in2 = 8'd22; in3 = 8'd15; in4 = 8'd33; in5 = 8'd22;
    in6 = 8'd45; in7 = 8'd33; in8 = 8'd67; in9 = 8'd15;

    #10;  // Wait 10 time units for processing
    $display("Test Case 1 - Some duplicates");
    $display("Unique Count = %d", unique_count);
    $display("Outputs: %d %d %d %d %d %d %d %d %d", out1, out2, out3, out4, out5, out6, out7, out8, out9);

    // Test Case 2: All unique values
    in1 = 8'd10; in2 = 8'd20; in3 = 8'd30; in4 = 8'd40; in5 = 8'd50;
    in6 = 8'd60; in7 = 8'd70; in8 = 8'd80; in9 = 8'd90;

    #10;  // Wait 10 time units for processing
    $display("Test Case 2 - All unique values");
    $display("Unique Count = %d", unique_count);
    $display("Outputs: %d %d %d %d %d %d %d %d %d", out1, out2, out3, out4, out5, out6, out7, out8, out9);

    // Test Case 3: All values are the same
    in1 = 8'd5; in2 = 8'd5; in3 = 8'd5; in4 = 8'd5; in5 = 8'd5;
    in6 = 8'd5; in7 = 8'd5; in8 = 8'd5; in9 = 8'd5;

    #10;  // Wait 10 time units for processing
    $display("Test Case 3 - All values are the same");
    $display("Unique Count = %d", unique_count);
    $display("Outputs: %d %d %d %d %d %d %d %d %d", out1, out2, out3, out4, out5, out6, out7, out8, out9);

    $stop;  // End simulation
  end

endmodule


