//my code
`timescale 1ns / 1ps

module cussen_repeat_tb;

    // Declare inputs and outputs
    reg clk;
    reg [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9;
    reg [7:0] scalar;
    wire [7:0] product;
    wire [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
//    wire [3:0] unique_count;
//    wire [7:0] pointers1, pointers2, pointers3, pointers4, pointers5, pointers6, pointers7, pointers8, pointers9;

    // Instantiate the cussen_repeat module
    cussen_repeat dut (
        .clk(clk),
        .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .in8(in8), .in9(in9),
        .out1(out1), .out2(out2), .out3(out3), .out4(out4), .out5(out5), .out6(out6), .out7(out7), .out8(out8), .out9(out9),
//        .unique_count(unique_count),
//        .pointers1(pointers1), .pointers2(pointers2), .pointers3(pointers3), .pointers4(pointers4),
//        .pointers5(pointers5), .pointers6(pointers6), .pointers7(pointers7), .pointers8(pointer8), .pointers9(pointers9), 
            .scalar(scalar), .product(product)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Generate clock with 10ns period
    end

    // Stimulus
    initial begin
        // Initialize inputs
        clk = 0;
//        in1 = 8'd0; in2 = 8'd0; in3 = 8'd0; in4 = 8'd0;
//        in5 = 8'd0; in6 = 8'd0; in7 = 8'd0; in8 = 8'd0; in9 = 8'd0;scalar = 8'd2;

//        // Wait for global reset
//        #10;

//        // Apply some test vectors
//        in1 = 8'd5; in2 = 8'd3; in3 = 8'd8; in4 = 8'd1;
//        in5 = 8'd2; in6 = 8'd9; in7 = 8'd7; in8 = 8'd6; in9 = 8'd4;scalar = 8'd2;

        // Wait for a few clock cycles
        #20;


        in1 = 8'd9; in2 = 8'd1; in3 = 8'd0; in4 = 8'd0;
        in5 = 8'd0; in6 = 8'd0; in7 = 8'd0; in8 = 8'd0; in9 = 8'd0; scalar = 8'd6;
        
//        #100;
//        in1 = 8'd3; in2 = 8'd1; in3 = 8'd4; in4 = 8'd1;
//        in5 = 8'd5; in6 = 8'd9; in7 = 8'd1; in8 = 8'd1; in9 = 8'd1; scalar = 8'd2;
        
//        #100
//        in1 = 8'd5; in2 = 8'd4; in3 = 8'd7; in4 = 8'd1;
//        in5 = 8'd1; in6 = 8'd2; in7 = 8'd1; in8 = 8'd1; in9 = 8'd1; scalar = 8'd2;

        // Wait for a few more clock cycles
        #200;

        // Finish the simulation
        $finish;
    end



endmodule
