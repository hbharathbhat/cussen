`timescale 1ns / 1ps

module russian_peasant_multiplication (
    input wire clk,
    input wire [7:0] a,            // 8-bit multiplicand
    input wire [7:0] b,            // 8-bit multiplier
    output reg [15:0] product      // 16-bit product
);

    // Task for Russian Peasant Multiplication
    task russian_peasant_multiply(
        input [7:0] multiplicand,
        input [7:0] multiplier,
        output reg [15:0] result
    );
        integer i;

        begin
            result = 0;

            // Russian Peasant Multiplication algorithm
            for (i = 0; i < 8; i = i + 1) 
            begin
                if (multiplier[0] == 1) 
                begin
                    result = result + multiplicand;
                end
                multiplicand = multiplicand << 1;  // Double the multiplicand
                multiplier = multiplier >> 1;      // Half the multiplier
            end
        end
    endtask

    // Sequential block to call the task
    always @(posedge clk) begin
        russian_peasant_multiply(a, b, product);
    end

endmodule
