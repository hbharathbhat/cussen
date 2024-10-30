`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.10.2024 09:23:14
// Design Name: 
// Module Name: remove_duplicates_tb
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


module remove_duplicates_tb;

    // Parameter
    parameter N = 8;


    reg [8*N-1:0] arr;            
    wire [8*N-1:0] out;           
    wire [3:0] unique_count;      


    duplicate_removal #(.N(N)) uut (
        .arr(arr),
        .out(out),
        .unique_count(unique_count)
    );


    reg [7:0] out_unpacked [0:N-1];

    
    initial begin
        arr = {8'h10, 8'h10, 8'h20, 8'h20, 8'h30, 8'h40, 8'h40, 8'h50};

        #10;


        for (integer i = 0; i < unique_count; i = i + 1) begin
            out_unpacked[i] = out[8*(i+1)-1 -: 8];
        end

        #10;
        $finish;
    end

endmodule

