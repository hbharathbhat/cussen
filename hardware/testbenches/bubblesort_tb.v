`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2024 14:11:58
// Design Name: 
// Module Name: bubblesort_testbench
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


module bubblesort_tb;
  reg clk;
  reg [7:0] in1, in2, in3, in4, in5;
  wire  [7:0] out1, out2, out3, out4, out5;
  
  bubblesort dut0(clk, in1, in2, in3, in4, in5, out1, out2, out3, out4, out5);
  
  initial
    begin
        clk = 1'b0;
    end
  
  always #5 clk = ~clk;
  initial
  begin
    in1 = 8'd16;
    in2 = 8'd14;
    in3 = 8'd15;
    in4 = 8'd17;
    in5 = 8'd12;
  end
  initial #200 $finish;
endmodule 