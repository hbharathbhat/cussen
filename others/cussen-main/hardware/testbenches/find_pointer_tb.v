`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2024 07:20:18 AM
// Design Name: 
// Module Name: find_pointer_tb
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


module find_pointer_tb;


    reg [7:0] sort1, sort2, sort3, sort4, sort5, sort6, sort7, sort8, sort9;
    reg [7:0] arr1, arr2, arr3, arr4, arr5, arr6, arr7, arr8, arr9;

    wire [3:0] pointer1, pointer2, pointer3, pointer4, pointer5, pointer6, pointer7, pointer8, pointer9;


    find_pointer uut (
        .sort1(sort1), .sort2(sort2), .sort3(sort3), .sort4(sort4), .sort5(sort5),
        .sort6(sort6), .sort7(sort7), .sort8(sort8), .sort9(sort9),
        .arr1(arr1), .arr2(arr2), .arr3(arr3), .arr4(arr4), .arr5(arr5),
        .arr6(arr6), .arr7(arr7), .arr8(arr8), .arr9(arr9),
        .pointer1(pointer1), .pointer2(pointer2), .pointer3(pointer3), .pointer4(pointer4), .pointer5(pointer5),
        .pointer6(pointer6), .pointer7(pointer7), .pointer8(pointer8), .pointer9(pointer9)
    );

    initial begin

        sort1 = 8'd3; sort2 = 8'd1; sort3 = 8'd4;
        sort4 = 8'd1; sort5 = 8'd5; sort6 = 8'd9;
        sort7 = 8'd1; sort8 = 8'd1; sort9 = 8'd1;

        arr1 = 8'd1; arr2 = 8'd3; arr3 = 8'd4;
        arr4 = 8'd5; arr5 = 8'd9; arr6 = 8'd1;
        arr7 = 8'd1; arr8 = 8'd1; arr9 = 8'd1;

        #10;  
        $display("Pointer 1: %d (Expected: 4)", pointer1);
        $display("Pointer 2: %d (Expected: 2)", pointer2);
        $display("Pointer 3: %d (Expected: 8)", pointer3);
        $display("Pointer 4: %d (Expected: 1)", pointer4);
        $display("Pointer 5: %d (Expected: 7)", pointer5);
        $display("Pointer 6: %d (Expected: 6)", pointer6);
        $display("Pointer 7: %d (Expected: 0)", pointer7);
        $display("Pointer 8: %d (Expected: 3)", pointer8);
        $display("Pointer 9: %d (Expected: 5)", pointer9);

        $stop;
    end

endmodule



