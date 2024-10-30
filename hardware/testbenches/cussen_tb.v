`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 02:20:22 PM
// Design Name: 
// Module Name: cussen_tb
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

module cussen_tb;

  // Testbench variables
  reg clk;
  reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
  wire [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
  wire [3:0] unique_count;

  // Instantiate the bubblesort module
  cussen uut (
    .clk(clk),
    .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .in8(in8), .in9(in9),
    .out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5), .out6(out6), .out7(out7), .out8(out8), .out9(out9), .unique_count(unique_count)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // 10 ns clock period
  end

  // Test procedure
  initial begin
    // Initialize inputs with an unsorted set of values
    in1 = 8'd03;
    in2 = 8'd01;
    in3 = 8'd04;
    in4 = 8'd01;
    in5 = 8'd05;
    in6 = 8'd09;
    in7 = 8'd06;
    in8 = 8'd04;
    in9 = 8'd08;

    // Wait a few clock cycles to allow sorting to complete
    #100;

    // Display the sorted outputs
    $display("Sorted Output:");
    $display("out1 = %d", out1);
    $display("out2 = %d", out2);
    $display("out3 = %d", out3);
    $display("out4 = %d", out4);
    $display("out5 = %d", out5);
    $display("out6 = %d", out6);
    $display("out7 = %d", out7);
    $display("out8 = %d", out8);
    $display("out9 = %d", out9);

    // Verify the outputs are sorted in ascending order
    if (out1 <= out2 && out2 <= out3 && out3 <= out4 && out4 <= out5 &&
        out5 <= out6 && out6 <= out7 && out7 <= out8 && out8 <= out9)
      $display("Test Passed: Outputs are sorted in ascending order.");
    else
      $display("Test Failed: Outputs are not sorted.");

    $stop;  // End simulation
  end

endmodule

