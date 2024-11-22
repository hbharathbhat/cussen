`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 12:46:09 PM
// Design Name: 
// Module Name: duplicate_removal
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


module duplicate_removal #(parameter N = 8) (
    input wire [8*N-1:0] arr,        
    output reg [8*N-1:0] out,        
    output reg [3:0] unique_count    
);

    integer i, j;
    reg [7:0] arr_unpacked [0:N-1];  
    reg [7:0] out_unpacked [0:N-1];  

    always @(*) begin

        for (i = 0; i < N; i = i + 1) begin
            arr_unpacked[i] = arr[8*(i+1)-1 -: 8];
        end

        unique_count = 0;
        j = 0;

        // Iterate over the array to remove duplicates
        for (i = 0; i < N - 1; i = i + 1) begin
            if (arr_unpacked[i] != arr_unpacked[i + 1]) begin
                out_unpacked[j] = arr_unpacked[i];
                j = j + 1;
            end
        end


        out_unpacked[j] = arr_unpacked[N - 1];
        unique_count = j + 1;

        for (i = 0; i < N; i = i + 1) begin
            out[8*(i+1)-1 -: 8] = out_unpacked[i];
        end
    end

endmodule
