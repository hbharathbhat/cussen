`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2024 02:52:23 PM
// Design Name: 
// Module Name: remove_duplicates
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


module remove_duplicates(
    input wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9,
    output reg [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9,
    output reg [3:0] unique_count
);

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
      {out1, out2, out3, out4, out5, out6, out7, out8, out9} = {temp_out[1], temp_out[2], temp_out[3], temp_out[4], temp_out[5], temp_out[6], temp_out[7], temp_out[8], temp_out[9]};
    end
  endtask

  // Always block to call the task at the start
  always @* begin
    removeDuplicates(in1, in2, in3, in4, in5, in6, in7, in8, in9, out1, out2, out3, out4, out5, out6, out7, out8, out9, unique_count);
  end

endmodule




