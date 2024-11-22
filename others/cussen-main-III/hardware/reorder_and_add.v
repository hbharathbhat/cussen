`timescale 1ns / 1ps

module reorder_and_add(
    input clk,
    input [7:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8,
    input [3:0] index0, index1, index2, index3, index4, index5, index6, index7, index8,
    output [7:0] add_res1, add_res2, add_res3, add_res4, add_res5, add_res6, add_res7, add_res8, add_res9
);

    // Registers to store outputs from the reordering logic
    reg [7:0] reordered_out0, reordered_out1, reordered_out2, reordered_out3, reordered_out4, reordered_out5, reordered_out6, reordered_out7, reordered_out8;

    // Registers to store the results of successive addition
    reg [7:0] add_res1_reg, add_res2_reg, add_res3_reg, add_res4_reg, add_res5_reg, add_res6_reg, add_res7_reg, add_res8_reg, add_res9_reg;

    // Assign outputs
    assign add_res1 = add_res1_reg;
    assign add_res2 = add_res2_reg;
    assign add_res3 = add_res3_reg;
    assign add_res4 = add_res4_reg;
    assign add_res5 = add_res5_reg;
    assign add_res6 = add_res6_reg;
    assign add_res7 = add_res7_reg;
    assign add_res8 = add_res8_reg;
    assign add_res9 = add_res9_reg;

    // Task for reordering data based on index inputs
    task assign_data;
        input [7:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8;
        input [3:0] index0, index1, index2, index3, index4, index5, index6, index7, index8;
        output reg [7:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8;
        
        reg [7:0] data_in_array [0:8];
        begin
            // Assign input data to array
            data_in_array[0] = data_in0;
            data_in_array[1] = data_in1;
            data_in_array[2] = data_in2;
            data_in_array[3] = data_in3;
            data_in_array[4] = data_in4;
            data_in_array[5] = data_in5;
            data_in_array[6] = data_in6;
            data_in_array[7] = data_in7;
            data_in_array[8] = data_in8;

            // Reorder data based on indices
            data_out0 = data_in_array[index0];
            data_out1 = data_in_array[index1];
            data_out2 = data_in_array[index2];
            data_out3 = data_in_array[index3];
            data_out4 = data_in_array[index4];
            data_out5 = data_in_array[index5];
            data_out6 = data_in_array[index6];
            data_out7 = data_in_array[index7];
            data_out8 = data_in_array[index8];
        end
    endtask

    // Task for calculating successive additions
    task calculate_successive_additions;
        input [7:0] a, b, c, d, e, f, g, h, i;
        output reg [7:0] res1, res2, res3, res4, res5, res6, res7, res8, res9;

        begin
            res1 = a;
            res2 = (b != 8'd0) ? (a + b) : b;
            res3 = (c != 8'd0) ? (res2 + c) : c;
            res4 = (d != 8'd0) ? (res3 + d) : d;
            res5 = (e != 8'd0) ? (res4 + e) : e;
            res6 = (f != 8'd0) ? (res5 + f) : f;
            res7 = (g != 8'd0) ? (res6 + g) : g;
            res8 = (h != 8'd0) ? (res7 + h) : h;
            res9 = (i != 8'd0) ? (res8 + i) : i;
        end
    endtask

    // Sequential block to trigger tasks on clock edge
    always @(posedge clk) begin
        // Step 1: Reorder the data using assign_data task
        assign_data(data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8, 
                    index0, index1, index2, index3, index4, index5, index6, index7, index8,
                    reordered_out0, reordered_out1, reordered_out2, reordered_out3, reordered_out4, reordered_out5, reordered_out6, reordered_out7, reordered_out8);

        // Step 2: Calculate successive additions on reordered data
        calculate_successive_additions(reordered_out0, reordered_out1, reordered_out2, reordered_out3, reordered_out4, reordered_out5, reordered_out6, reordered_out7, reordered_out8, 
                                       add_res1_reg, add_res2_reg, add_res3_reg, add_res4_reg, add_res5_reg, add_res6_reg, add_res7_reg, add_res8_reg, add_res9_reg);
    end

endmodule
