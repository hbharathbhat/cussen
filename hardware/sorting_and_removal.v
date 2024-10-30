`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 04:03:51 PM
// Design Name: 
// Module Name: sorting_and_removal
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


module sorting_and_removal (
    input wire clk,
    input wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9,
    output reg [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9,
    output reg [3:0] unique_count
);
  
  // Internal registers for bubble sort
  reg [7:0] data1, data2, data3, data4, data5, data6, data7, data8, data9;

  // Task to swap two values if the first is greater than the second
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

  // Remove Duplicate Task
  task removeDuplicates;
    input [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
    output reg [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
    output reg [3:0] unique_count;

    reg [7:0] temp_out[1:9];
    integer i, j;
    reg duplicate;

    begin
      // Initialize temporary outputs and unique_count
      unique_count = 0;
      for (i = 1; i <= 9; i = i + 1) temp_out[i] = 8'd0;

      // Store unique values in temp_out
      for (i = 1; i <= 9; i = i + 1) begin
        duplicate = 0;

        // Check if in[i] is a duplicate
        for (j = 1; j <= unique_count; j = j + 1) begin
          if (temp_out[j] == in1 && i == 1) duplicate = 1;
          else if (temp_out[j] == in2 && i == 2) duplicate = 1;
          else if (temp_out[j] == in3 && i == 3) duplicate = 1;
          else if (temp_out[j] == in4 && i == 4) duplicate = 1;
          else if (temp_out[j] == in5 && i == 5) duplicate = 1;
          else if (temp_out[j] == in6 && i == 6) duplicate = 1;
          else if (temp_out[j] == in7 && i == 7) duplicate = 1;
          else if (temp_out[j] == in8 && i == 8) duplicate = 1;
          else if (temp_out[j] == in9 && i == 9) duplicate = 1;
        end

        // If not a duplicate, add to temp_out
        if (!duplicate) begin
          unique_count = unique_count + 1;
          case (i)
            1: temp_out[unique_count] = in1;
            2: temp_out[unique_count] = in2;
            3: temp_out[unique_count] = in3;
            4: temp_out[unique_count] = in4;
            5: temp_out[unique_count] = in5;
            6: temp_out[unique_count] = in6;
            7: temp_out[unique_count] = in7;
            8: temp_out[unique_count] = in8;
            9: temp_out[unique_count] = in9;
          endcase
        end
      end

      // Assign outputs
      {out1, out2, out3, out4, out5, out6, out7, out8, out9} = 
          {temp_out[1], temp_out[2], temp_out[3], temp_out[4], temp_out[5], 
           temp_out[6], temp_out[7], temp_out[8], temp_out[9]};
    end
  endtask

  // Always block to perform bubble sort and remove duplicates
  always @(posedge clk) begin
    // Load data into temporary variables
    data1 <= in1;
    data2 <= in2;
    data3 <= in3;
    data4 <= in4;
    data5 <= in5;
    data6 <= in6;
    data7 <= in7;
    data8 <= in8;
    data9 <= in9;

    // Call bubble sort
    bubblesort;

    // Call removeDuplicates
    removeDuplicates(data1, data2, data3, data4, data5, data6, data7, data8, data9, out1, out2, out3, out4, out5, out6, out7, out8, out9, unique_count);
  end

endmodule


