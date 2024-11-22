`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 07:19:46 AM
// Design Name: 
// Module Name: find_pointer
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


module find_pointer (
    input [7:0] sort1, sort2, sort3, sort4, sort5, sort6, sort7, sort8, sort9,
    input [7:0] arr1, arr2, arr3, arr4, arr5, arr6, arr7, arr8, arr9,
    output reg [3:0] pointer1, pointer2, pointer3, pointer4, pointer5, pointer6, pointer7, pointer8, pointer9
);


    task find_pointer;
        input [7:0] sort_val;
        output reg [3:0] pointer;

        begin
            pointer = 4'b1111; 
            

            if (sort_val == arr1) pointer = 4'd0;
            else if (sort_val == arr2) pointer = 4'd1;
            else if (sort_val == arr3) pointer = 4'd2;
            else if (sort_val == arr4) pointer = 4'd3;
            else if (sort_val == arr5) pointer = 4'd4;
            else if (sort_val == arr6) pointer = 4'd5;
            else if (sort_val == arr7) pointer = 4'd6;
            else if (sort_val == arr8) pointer = 4'd7;
            else if (sort_val == arr9) pointer = 4'd8;
        end
    endtask


    always @(*) begin
        find_pointer(sort1, pointer1);
        find_pointer(sort2, pointer2);
        find_pointer(sort3, pointer3);
        find_pointer(sort4, pointer4);
        find_pointer(sort5, pointer5);
        find_pointer(sort6, pointer6);
        find_pointer(sort7, pointer7);
        find_pointer(sort8, pointer8);
        find_pointer(sort9, pointer9);
    end

endmodule


