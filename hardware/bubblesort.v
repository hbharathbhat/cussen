`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 08:44:16 AM
// Design Name: 
// Module Name: bubblesort
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


module bubblesort (
  input  wire clk,
  input  wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9,
  output reg  [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9
  );
  reg [7:0] data1, data2, data3, data4, data5, data6, data7, data8, data9;
  always @(posedge clk)
  begin
      data1 <= in1;
      data2 <= in2;
      data3 <= in3;
      data4 <= in4;
      data5 <= in5;
      data6 <= in6;
      data7 <= in7;
      data8 <= in8;
      data9 <= in9;
  end
    integer i, j;
    reg [7:0] temp;
    reg [7:0] array [1:9];
    always @*
    begin
  array[1] = data1;
  array[2] = data2;
  array[3] = data3;
  array[4] = data4;
  array[5] = data5;
  array[6] = data6;
  array[7] = data7;
  array[8] = data8;
  array[9] = data9;
  for (i = 9; i > 0; i = i - 1) 
  begin
  for (j = 1 ; j < i; j = j + 1) 
  begin
          if (array[j] > array[j + 1])
          begin
            temp = array[j];
            array[j] = array[j + 1];
            array[j + 1] = temp;
  end 
  end
  end 
  end
    always @(posedge clk)
    begin
      out1 <= array[1];
      out2 <= array[2];
      out3 <= array[3];
      out4 <= array[4];
      out5 <= array[5];
      out6 <= array[6];
      out7 <= array[7];
      out8 <= array[8];
      out9 <= array[9];
  end
  endmodule

