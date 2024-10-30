`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2024 11:47:01
// Design Name: 
// Module Name: cussen
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


module cussen (
  input  wire clk,
  input  wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9,
  output reg  [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9
);

  // Registers to hold the input data
  reg [7:0] data1, data2, data3, data4, data5, data6, data7, data8, data9;

  // Task to swap two 8-bit values if the first is greater than the second
  task swap_if_greater(
      inout reg [7:0] a, 
      inout reg [7:0] b
  );
    reg [7:0] temp;
    begin
      if (a > b) begin
        temp = a;
        a = b;
        b = temp;
      end
    end
  endtask

  // Bubble Sort Task
  task bubblesort;
    integer i, j;
    begin
      // Perform bubble sort through multiple passes
      for (i = 8; i > 0; i = i - 1) begin
        swap_if_greater(data1, data2);
        swap_if_greater(data2, data3);
        swap_if_greater(data3, data4);
        swap_if_greater(data4, data5);
        swap_if_greater(data5, data6);
        swap_if_greater(data6, data7);
        swap_if_greater(data7, data8);
        swap_if_greater(data8, data9);
      end
    end
  endtask

  // Sequential logic to load data and trigger bubble sort
  always @(posedge clk) begin
    // Load inputs into data registers
    data1 <= in1;
    data2 <= in2;
    data3 <= in3;
    data4 <= in4;
    data5 <= in5;
    data6 <= in6;
    data7 <= in7;
    data8 <= in8;
    data9 <= in9;
    
    // Call the bubblesort task to sort data
    bubblesort();

    // Assign sorted values to the outputs
    out1 <= data1;
    out2 <= data2;
    out3 <= data3;
    out4 <= data4;
    out5 <= data5;
    out6 <= data6;
    out7 <= data7;
    out8 <= data8;
    out9 <= data9;
  end
endmodule


