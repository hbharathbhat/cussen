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


module cussen(
    input wire clk,
    input wire [8*9-1:0] in,      // Concatenated input array (9 elements of 8 bits each)
    output reg [8*9-1:0] out      // Concatenated output array (9 elements of 8 bits each)
);

    reg [7:0] data[1:9];          // Internal array for sorting
    reg [7:0] array[1:9];
    integer i, j;
    reg [7:0] temp;

    // Task Declaration for Bubble Sort
    task bubble_sort;
        inout [7:0] arr[1:9];    // Task for bubble sort logic
        integer i, j;
        reg [7:0] temp;
        begin
            for (i = 9; i > 0; i = i - 1) 
            begin
                for (j = 1; j < i; j = j + 1) 
                begin
                    if (arr[j] > arr[j + 1]) 
                    begin
                        temp = arr[j];
                        arr[j] = arr[j + 1];
                        arr[j + 1] = temp;
                    end
                end
            end
        end
    endtask

    // Load concatenated input into internal array `data`
    always @(posedge clk) begin
        data[1] <= in[8*1-1:8*0];
        data[2] <= in[8*2-1:8*1];
        data[3] <= in[8*3-1:8*2];
        data[4] <= in[8*4-1:8*3];
        data[5] <= in[8*5-1:8*4];
        data[6] <= in[8*6-1:8*5];
        data[7] <= in[8*7-1:8*6];
        data[8] <= in[8*8-1:8*7];
        data[9] <= in[8*9-1:8*8];
    end

    // Call the bubble_sort task and assign the output
    always @(posedge clk) begin
        array[1] = data[1];
        array[2] = data[2];
        array[3] = data[3];
        array[4] = data[4];
        array[5] = data[5];
        array[6] = data[6];
        array[7] = data[7];
        array[8] = data[8];
        array[9] = data[9];

        // Call bubble_sort task
        bubble_sort(array);

        // Assign sorted values to concatenated output
        out[8*1-1:8*0] <= array[1];
        out[8*2-1:8*1] <= array[2];
        out[8*3-1:8*2] <= array[3];
        out[8*4-1:8*3] <= array[4];
        out[8*5-1:8*4] <= array[5];
        out[8*6-1:8*5] <= array[6];
        out[8*7-1:8*6] <= array[7];
        out[8*8-1:8*7] <= array[8];
        out[8*9-1:8*8] <= array[9];
    end

endmodule
