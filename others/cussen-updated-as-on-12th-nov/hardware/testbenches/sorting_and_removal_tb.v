`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 04:04:34 PM
// Design Name: 
// Module Name: sorting_and_removal_tb
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


module sorting_and_removal_tb;

  // Testbench signals
  reg clk;
  reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
  wire [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
  wire [3:0] unique_count;

  // Instantiate the sorting_and_removal module
  sorting_and_removal uut (
      .clk(clk),
      .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), 
      .in6(in6), .in7(in7), .in8(in8), .in9(in9),
      .out1(out1), .out2(out2), .out3(out3), .out4(out4), 
      .out5(out5), .out6(out6), .out7(out7), .out8(out8), .out9(out9), 
      .unique_count(unique_count)
  );

  // Clock generation
  initial begin
      clk = 0;
      forever #5 clk = ~clk; // Toggle clock every 5 time units
  end

  // Test stimulus
  initial begin
      // Initialize inputs
      in1 = 8'd3;  // Input values with duplicates
      in2 = 8'd1;
      in3 = 8'd4;
      in4 = 8'd1;
      in5 = 8'd5;
      in6 = 8'd9;
      in7 = 8'd8;
      in8 = 8'd7;
      in9 = 8'd4;

      // Wait for a clock cycle
      #10;

      // Display outputs
      $display("Inputs: %d %d %d %d %d %d %d %d %d", in1, in2, in3, in4, in5, in6, in7, in8, in9);
      $display("Waiting for results...");

      // Wait for a few more clock cycles for processing
      #20;

      // Display the outputs and unique count
      $display("Outputs: %d %d %d %d %d %d %d %d %d", out1, out2, out3, out4, out5, out6, out7, out8, out9);
      $display("Unique Count: %d", unique_count);

      // End the simulation
      $finish;
  end

endmodule

