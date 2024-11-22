`timescale 1ns / 1ps

module reorder_and_add_tb;

    // Inputs
    reg clk;
    reg [7:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8;
    reg [7:0] index0, index1, index2, index3, index4, index5, index6, index7, index8;

    // Outputs
    wire [7:0] add_res1, add_res2, add_res3, add_res4, add_res5, add_res6, add_res7, add_res8, add_res9;

    // Instantiate the module
    reorder_and_add uut (
        .clk(clk),
        .data_in0(data_in0), .data_in1(data_in1), .data_in2(data_in2), .data_in3(data_in3), .data_in4(data_in4),
        .data_in5(data_in5), .data_in6(data_in6), .data_in7(data_in7), .data_in8(data_in8),
        .index0(index0), .index1(index1), .index2(index2), .index3(index3), .index4(index4),
        .index5(index5), .index6(index6), .index7(index7), .index8(index8),
        .add_res1(add_res1), .add_res2(add_res2), .add_res3(add_res3), .add_res4(add_res4), .add_res5(add_res5),
        .add_res6(add_res6), .add_res7(add_res7), .add_res8(add_res8), .add_res9(add_res9)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns clock period
    end

    initial begin
        // Initialize inputs
        data_in0 = 8'd0; data_in1 = 8'd2; data_in2 = 8'd4; data_in3 = 8'd8; data_in4 = 8'd0;
        data_in5 = 8'd0; data_in6 = 8'd0; data_in7 = 8'd0; data_in8 = 8'd0;

        index0 = 8'd0; index1 = 8'd1; index2 = 8'd2; index3 = 8'd1; index4 = 8'd1;
        index5 = 8'd3; index6 = 8'd0; index7 = 8'd0; index8 = 8'd0;

        #10; // Wait for output after initial clock

        $display("Add Results: %d, %d, %d, %d, %d, %d, %d, %d, %d", 
                  add_res1, add_res2, add_res3, add_res4, add_res5, add_res6, add_res7, add_res8, add_res9);

        // Add more test cases as needed
        $stop;
    end
endmodule
