//my code
`timescale 1ns / 1ps

module cussen_repeat(
    input wire [7:0] scalar,
    input wire clk,
    input wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9,
    output [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9,
    output reg [7:0] product
);



task russian_peasant_multiply(
        input [7:0] multiplicand,
        input [7:0] multiplier,
        output reg [7:0] result
    );
        integer i;

        begin
            result = 0;
            for (i = 0; i < 8; i = i + 1) 
            begin
                if (multiplier[0] == 1) 
                begin
                    result = result + multiplicand;
                end
                multiplicand = multiplicand << 1;  
                multiplier = multiplier >> 1;      
            end
        end
    endtask

wire [3:0] pointers [1:9][1:9]; //[rows][columns]


wire [71:0] out_wire0, out_wire1, out_wire2, out_wire3, out_wire4, out_wire5, out_wire6, out_wire7, out_wire8, out_wire9;
wire [71:0] r0, r1, r2, r3, r4, r5, r6, rx, ry, rz;
reg [7:0] data_r1, data_r2, data_r3, data_r4, data_r5, data_r6, data_r7, data_r8, data_r9; 

    cussen dut0(.clk(clk), .in1(in1), .in2(in2), .in3(in3), .in4(in4), .in5(in5), .in6(in6), .in7(in7), .in8(in8), .in9(in9),
        .out1(out_wire0[71:64]), .out2(out_wire0[63:56]), .out3(out_wire0[55:48]), .out4(out_wire0[47:40]), .out5(out_wire0[39:32]), 
        .out6(out_wire0[31:24]), .out7(out_wire0[23:16]), .out8(out_wire0[15:8]), .out9(out_wire0[7:0]),
        .pointer1(pointers[1][1]), .pointer2(pointers[1][2]), .pointer3(pointers[1][3]), .pointer4(pointers[1][4]), .pointer5(pointers[1][5]), 
        .pointer6(pointers[1][6]), .pointer7(pointers[1][7]), .pointer8(pointers[1][8]), .pointer9(pointers[1][9]));
        
    cussen dut1(.clk(clk), .in1(out_wire0[71:64]), .in2(out_wire0[63:56]), .in3(out_wire0[55:48]), .in4(out_wire0[47:40]), .in5(out_wire0[39:32]), 
        .in6(out_wire0[31:24]), .in7(out_wire0[23:16]), .in8(out_wire0[15:8]), .in9(out_wire0[7:0]),
        .out1(out_wire1[71:64]), .out2(out_wire1[63:56]), .out3(out_wire1[55:48]), .out4(out_wire1[47:40]), .out5(out_wire1[39:32]), 
        .out6(out_wire1[31:24]), .out7(out_wire1[23:16]), .out8(out_wire1[15:8]), .out9(out_wire1[7:0]),
        .pointer1(pointers[2][1]), .pointer2(pointers[2][2]), .pointer3(pointers[2][3]), .pointer4(pointers[2][4]), .pointer5(pointers[2][5]), 
        .pointer6(pointers[2][6]), .pointer7(pointers[2][7]), .pointer8(pointers[2][8]), .pointer9(pointers[2][9]));
        
     
    cussen dut2(.clk(clk), .in1(out_wire1[71:64]), .in2(out_wire1[63:56]), .in3(out_wire1[55:48]), .in4(out_wire1[47:40]), .in5(out_wire1[39:32]), 
        .in6(out_wire1[31:24]), .in7(out_wire1[23:16]), .in8(out_wire1[15:8]), .in9(out_wire1[7:0]),
        .out1(out_wire2[71:64]), .out2(out_wire2[63:56]), .out3(out_wire2[55:48]), .out4(out_wire2[47:40]), .out5(out_wire2[39:32]), 
        .out6(out_wire2[31:24]), .out7(out_wire2[23:16]), .out8(out_wire2[15:8]), .out9(out_wire2[7:0]),
        .pointer1(pointers[3][1]), .pointer2(pointers[3][2]), .pointer3(pointers[3][3]), .pointer4(pointers[3][4]), .pointer5(pointers[3][5]), 
        .pointer6(pointers[3][6]), .pointer7(pointers[3][7]), .pointer8(pointers[3][8]), .pointer9(pointers[3][9]));
        
     cussen dut3(.clk(clk), .in1(out_wire2[71:64]), .in2(out_wire2[63:56]), .in3(out_wire2[55:48]), .in4(out_wire2[47:40]), .in5(out_wire2[39:32]), 
        .in6(out_wire2[31:24]), .in7(out_wire2[23:16]), .in8(out_wire2[15:8]), .in9(out_wire2[7:0]),
        .out1(out_wire3[71:64]), .out2(out_wire3[63:56]), .out3(out_wire3[55:48]), .out4(out_wire3[47:40]), .out5(out_wire3[39:32]), 
        .out6(out_wire3[31:24]), .out7(out_wire3[23:16]), .out8(out_wire3[15:8]), .out9(out_wire3[7:0]),
        .pointer1(pointers[4][1]), .pointer2(pointers[4][2]), .pointer3(pointers[4][3]), .pointer4(pointers[4][4]), .pointer5(pointers[4][5]), 
        .pointer6(pointers[4][6]), .pointer7(pointers[4][7]), .pointer8(pointers[4][8]), .pointer9(pointers[4][9]));
        
     cussen dut4(.clk(clk), .in1(out_wire3[71:64]), .in2(out_wire3[63:56]), .in3(out_wire3[55:48]), .in4(out_wire3[47:40]), .in5(out_wire3[39:32]), 
        .in6(out_wire3[31:24]), .in7(out_wire3[23:16]), .in8(out_wire3[15:8]), .in9(out_wire3[7:0]),
        .out1(out_wire4[71:64]), .out2(out_wire4[63:56]), .out3(out_wire4[55:48]), .out4(out_wire4[47:40]), .out5(out_wire4[39:32]), 
        .out6(out_wire4[31:24]), .out7(out_wire4[23:16]), .out8(out_wire4[15:8]), .out9(out_wire4[7:0]),
        .pointer1(pointers[5][1]), .pointer2(pointers[5][2]), .pointer3(pointers[5][3]), .pointer4(pointers[5][4]), .pointer5(pointers[5][5]), 
        .pointer6(pointers[5][6]), .pointer7(pointers[5][7]), .pointer8(pointers[5][8]), .pointer9(pointers[5][9]));
        
     cussen dut5(.clk(clk), .in1(out_wire4[71:64]), .in2(out_wire4[63:56]), .in3(out_wire4[55:48]), .in4(out_wire4[47:40]), .in5(out_wire4[39:32]), 
        .in6(out_wire4[31:24]), .in7(out_wire4[23:16]), .in8(out_wire4[15:8]), .in9(out_wire4[7:0]),
        .out1(out_wire5[71:64]), .out2(out_wire5[63:56]), .out3(out_wire5[55:48]), .out4(out_wire5[47:40]), .out5(out_wire5[39:32]), 
        .out6(out_wire5[31:24]), .out7(out_wire5[23:16]), .out8(out_wire5[15:8]), .out9(out_wire5[7:0]),
        .pointer1(pointers[6][1]), .pointer2(pointers[6][2]), .pointer3(pointers[6][3]), .pointer4(pointers[6][4]), .pointer5(pointers[6][5]), 
        .pointer6(pointers[6][6]), .pointer7(pointers[6][7]), .pointer8(pointers[6][8]), .pointer9(pointers[6][9]));
     
     cussen dut6(.clk(clk), .in1(out_wire5[71:64]), .in2(out_wire5[63:56]), .in3(out_wire5[55:48]), .in4(out_wire5[47:40]), .in5(out_wire5[39:32]), 
        .in6(out_wire5[31:24]), .in7(out_wire5[23:16]), .in8(out_wire5[15:8]), .in9(out_wire5[7:0]),
        .out1(out_wire6[71:64]), .out2(out_wire6[63:56]), .out3(out_wire6[55:48]), .out4(out_wire6[47:40]), .out5(out_wire6[39:32]), 
        .out6(out_wire6[31:24]), .out7(out_wire6[23:16]), .out8(out_wire6[15:8]), .out9(out_wire6[7:0]),
        .pointer1(pointers[7][1]), .pointer2(pointers[7][2]), .pointer3(pointers[7][3]), .pointer4(pointers[7][4]), .pointer5(pointers[7][5]), 
        .pointer6(pointers[7][6]), .pointer7(pointers[7][7]), .pointer8(pointers[7][8]), .pointer9(pointers[7][9]));
        
     cussen dut7(.clk(clk), .in1(out_wire6[71:64]), .in2(out_wire6[63:56]), .in3(out_wire6[55:48]), .in4(out_wire6[47:40]), .in5(out_wire6[39:32]), 
        .in6(out_wire6[31:24]), .in7(out_wire6[23:16]), .in8(out_wire6[15:8]), .in9(out_wire6[7:0]),
        .out1(out_wire7[71:64]), .out2(out_wire7[63:56]), .out3(out_wire7[55:48]), .out4(out_wire7[47:40]), .out5(out_wire7[39:32]), 
        .out6(out_wire7[31:24]), .out7(out_wire7[23:16]), .out8(out_wire7[15:8]), .out9(out_wire7[7:0]),
        .pointer1(pointers[8][1]), .pointer2(pointers[8][2]), .pointer3(pointers[8][3]), .pointer4(pointers[8][4]), .pointer5(pointers[8][5]), 
        .pointer6(pointers[8][6]), .pointer7(pointers[8][7]), .pointer8(pointers[8][8]), .pointer9(pointers[8][9]));
        
     cussen dut8(.clk(clk), .in1(out_wire7[71:64]), .in2(out_wire7[63:56]), .in3(out_wire7[55:48]), .in4(out_wire7[47:40]), .in5(out_wire7[39:32]), 
        .in6(out_wire7[31:24]), .in7(out_wire7[23:16]), .in8(out_wire7[15:8]), .in9(out_wire7[7:0]),
        .out1(out_wire8[71:64]), .out2(out_wire8[63:56]), .out3(out_wire8[55:48]), .out4(out_wire8[47:40]), .out5(out_wire8[39:32]), 
        .out6(out_wire8[31:24]), .out7(out_wire8[23:16]), .out8(out_wire8[15:8]), .out9(out_wire8[7:0]),
        .pointer1(pointers[9][1]), .pointer2(pointers[9][2]), .pointer3(pointers[9][3]), .pointer4(pointers[9][4]), .pointer5(pointers[9][5]), 
        .pointer6(pointers[9][6]), .pointer7(pointers[9][7]), .pointer8(pointers[9][8]), .pointer9(pointers[9][9]));
        
//     cussen dut9(.clk(clk), .in1(out_wire5[71:64]), .in2(out_wire5[63:56]), .in3(out_wire5[55:48]), .in4(out_wire5[47:40]), .in5(out_wire5[39:32]), 
//        .in6(out_wire5[31:24]), .in7(out_wire5[23:16]), .in8(out_wire5[15:8]), .in9(out_wire5[7:0]),
//        .out1(out_wire6[71:64]), .out2(out_wire6[63:56]), .out3(out_wire6[55:48]), .out4(out_wire6[47:40]), .out5(out_wire6[39:32]), 
//        .out6(out_wire6[31:24]), .out7(out_wire6[23:16]), .out8(out_wire6[15:8]), .out9(out_wire6[7:0]),
//        .pointer1(pointers[7][1]), .pointer2(pointers[7][2]), .pointer3(pointers[7][3]), .pointer4(pointers[7][4]), .pointer5(pointers[7][5]), 
//        .pointer6(pointers[7][6]), .pointer7(pointers[7][7]), .pointer8(pointers[7][8]), .pointer9(pointers[7][9]));

     always@(posedge clk)
     begin
        russian_peasant_multiply(out_wire8[63:56], scalar, product);
     end
     
     always@(posedge clk) begin
         data_r1 <= 8'b0;
         data_r2 <= product;
         data_r3 <= 8'b0;
         data_r4 <= 8'b0;
         data_r5 <= 8'b0;
         data_r6 <= 8'b0;
         data_r7 <= 8'b0;
         data_r8 <= 8'b0;
         data_r9 <= 8'b0;
     end  
     
         reorder_and_add dut_r8(
        .clk(clk),
        .data_in0(data_r1), .data_in1(product), .data_in2(data_r3), .data_in3(data_r4), .data_in4(data_r5),
        .data_in5(data_r6), .data_in6(data_r7), .data_in7(data_r8), .data_in8(data_r9),
        .index0(pointers[9][1]), 
        .index1(pointers[9][2]), 
        .index2(pointers[9][3]), 
        .index3(pointers[9][4]), 
        .index4(pointers[9][5]),
        .index5(pointers[9][6]), 
        .index6(pointers[9][7]), 
        .index7(pointers[9][8]), 
        .index8(pointers[9][9]),
        .add_res1(rx[71:64]), 
        .add_res2(rx[63:56]), 
        .add_res3(rx[55:48]), 
        .add_res4(rx[47:40]), 
        .add_res5(rx[39:32]),
        .add_res6(rx[31:24]), 
        .add_res7(rx[23:16]), 
        .add_res8(rx[15:8]), 
        .add_res9(rx[7:0])
    );
     
     
         reorder_and_add dut_r7(
        .clk(clk),
        .data_in0(rx[71:64]), 
        .data_in1(rx[63:56]), 
        .data_in2(rx[55:48]), 
        .data_in3(rx[47:40]), 
        .data_in4(rx[39:32]),
        .data_in5(rx[31:24]), 
        .data_in6(rx[23:16]), 
        .data_in7(rx[15:8]), 
        .data_in8(rx[7:0]),
        .index0(pointers[8][1]), 
        .index1(pointers[8][2]), 
        .index2(pointers[8][3]), 
        .index3(pointers[8][4]), 
        .index4(pointers[8][5]),
        .index5(pointers[8][6]), 
        .index6(pointers[8][7]), 
        .index7(pointers[8][8]), 
        .index8(pointers[8][9]),
        .add_res1(ry[71:64]), 
        .add_res2(ry[63:56]), 
        .add_res3(ry[55:48]), 
        .add_res4(ry[47:40]), 
        .add_res5(ry[39:32]),
        .add_res6(ry[31:24]), 
        .add_res7(ry[23:16]), 
        .add_res8(ry[15:8]), 
        .add_res9(ry[7:0])
    );
     
     
     
     
     
     
    reorder_and_add dut_r6(
        .clk(clk),
        .data_in0(ry[71:64]), 
        .data_in1(ry[63:56]), 
        .data_in2(ry[55:48]), 
        .data_in3(ry[47:40]), 
        .data_in4(ry[39:32]),
        .data_in5(ry[31:24]), 
        .data_in6(ry[23:16]), 
        .data_in7(ry[15:8]), 
        .data_in8(ry[7:0]),
        .index0(pointers[7][1]), 
        .index1(pointers[7][2]), 
        .index2(pointers[7][3]), 
        .index3(pointers[7][4]), 
        .index4(pointers[7][5]),
        .index5(pointers[7][6]), 
        .index6(pointers[7][7]), 
        .index7(pointers[7][8]), 
        .index8(pointers[7][9]),
        .add_res1(r1[71:64]), .add_res2(r1[63:56]), .add_res3(r1[55:48]), .add_res4(r1[47:40]), .add_res5(r1[39:32]),
        .add_res6(r1[31:24]), .add_res7(r1[23:16]), .add_res8(r1[15:8]), .add_res9(r1[7:0])
    );
    
    reorder_and_add dut_r5(
        .clk(clk),
        .data_in0(r1[71:64]), 
        .data_in1(r1[63:56]), 
        .data_in2(r1[55:48]), 
        .data_in3(r1[47:40]), 
        .data_in4(r1[39:32]),
        .data_in5(r1[31:24]), 
        .data_in6(r1[23:16]), 
        .data_in7(r1[15:8]), 
        .data_in8(r1[7:0]),
        .index0(pointers[6][1]), 
        .index1(pointers[6][2]), 
        .index2(pointers[6][3]), 
        .index3(pointers[6][4]), 
        .index4(pointers[6][5]),
        .index5(pointers[6][6]), 
        .index6(pointers[6][7]), 
        .index7(pointers[6][8]), 
        .index8(pointers[6][9]),
        .add_res1(r2[71:64]), 
        .add_res2(r2[63:56]), 
        .add_res3(r2[55:48]), 
        .add_res4(r2[47:40]), 
        .add_res5(r2[39:32]),
        .add_res6(r2[31:24]), 
        .add_res7(r2[23:16]), 
        .add_res8(r2[15:8]), 
        .add_res9(r2[7:0])
    );
    
    reorder_and_add dut_r4(
        .clk(clk),
        .data_in0(r2[71:64]), 
        .data_in1(r2[63:56]), 
        .data_in2(r2[55:48]), 
        .data_in3(r2[47:40]), 
        .data_in4(r2[39:32]),
        .data_in5(r2[31:24]), 
        .data_in6(r2[23:16]), 
        .data_in7(r2[15:8]), 
        .data_in8(r2[7:0]),
        .index0(pointers[5][1]), 
        .index1(pointers[5][2]), 
        .index2(pointers[5][3]), 
        .index3(pointers[5][4]), 
        .index4(pointers[5][5]),
        .index5(pointers[5][6]), 
        .index6(pointers[5][7]), 
        .index7(pointers[5][8]), 
        .index8(pointers[5][9]),
        .add_res1(r3[71:64]), 
        .add_res2(r3[63:56]), 
        .add_res3(r3[55:48]), 
        .add_res4(r3[47:40]), 
        .add_res5(r3[39:32]),
        .add_res6(r3[31:24]), 
        .add_res7(r3[23:16]), 
        .add_res8(r3[15:8]), 
        .add_res9(r3[7:0])
    );
    
    reorder_and_add dut_r3(
        .clk(clk),
        .data_in0(r3[71:64]), 
        .data_in1(r3[63:56]), 
        .data_in2(r3[55:48]), 
        .data_in3(r3[47:40]), 
        .data_in4(r3[39:32]),
        .data_in5(r3[31:24]), 
        .data_in6(r3[23:16]), 
        .data_in7(r3[15:8]), 
        .data_in8(r3[7:0]),
        .index0(pointers[4][1]), 
        .index1(pointers[4][2]), 
        .index2(pointers[4][3]), 
        .index3(pointers[4][4]), 
        .index4(pointers[4][5]),
        .index5(pointers[4][6]), 
        .index6(pointers[4][7]), 
        .index7(pointers[4][8]), 
        .index8(pointers[4][9]),
        .add_res1(r4[71:64]), 
        .add_res2(r4[63:56]), 
        .add_res3(r4[55:48]), 
        .add_res4(r4[47:40]), 
        .add_res5(r4[39:32]),
        .add_res6(r4[31:24]), 
        .add_res7(r4[23:16]), 
        .add_res8(r4[15:8]), 
        .add_res9(r4[7:0])
    );
    
    reorder_and_add dut_r2(
        .clk(clk),
        .data_in0(r4[71:64]), 
        .data_in1(r4[63:56]), 
        .data_in2(r4[55:48]), 
        .data_in3(r4[47:40]), 
        .data_in4(r4[39:32]),
        .data_in5(r4[31:24]), 
        .data_in6(r4[23:16]), 
        .data_in7(r4[15:8]), 
        .data_in8(r4[7:0]),
        .index0(pointers[3][1]), 
        .index1(pointers[3][2]), 
        .index2(pointers[3][3]), 
        .index3(pointers[3][4]), 
        .index4(pointers[3][5]),
        .index5(pointers[3][6]), 
        .index6(pointers[3][7]), 
        .index7(pointers[3][8]), 
        .index8(pointers[3][9]),
        .add_res1(r5[71:64]), 
        .add_res2(r5[63:56]), 
        .add_res3(r5[55:48]), 
        .add_res4(r5[47:40]), 
        .add_res5(r5[39:32]),
        .add_res6(r5[31:24]), 
        .add_res7(r5[23:16]), 
        .add_res8(r5[15:8]), 
        .add_res9(r5[7:0])
    );
    
        reorder_and_add dut_r1(
        .clk(clk),
        .data_in0(r5[71:64]), 
        .data_in1(r5[63:56]), 
        .data_in2(r5[55:48]), 
        .data_in3(r5[47:40]), 
        .data_in4(r5[39:32]),
        .data_in5(r5[31:24]), 
        .data_in6(r5[23:16]), 
        .data_in7(r5[15:8]), 
        .data_in8(r5[7:0]),
        .index0(pointers[2][1]), 
        .index1(pointers[2][2]), 
        .index2(pointers[2][3]), 
        .index3(pointers[2][4]), 
        .index4(pointers[2][5]),
        .index5(pointers[2][6]), 
        .index6(pointers[2][7]), 
        .index7(pointers[2][8]), 
        .index8(pointers[2][9]),
        .add_res1(r6[71:64]), 
        .add_res2(r6[63:56]), 
        .add_res3(r6[55:48]), 
        .add_res4(r6[47:40]), 
        .add_res5(r6[39:32]),
        .add_res6(r6[31:24]), 
        .add_res7(r6[23:16]), 
        .add_res8(r6[15:8]), 
        .add_res9(r6[7:0])
     
    );
    
    reorder_logic dut_r0(
    .data_in0(r6[71:64]), 
    .data_in1(r6[63:56]), 
    .data_in2(r6[55:48]), 
    .data_in3(r6[47:40]), 
    .data_in4(r6[39:32]), 
    .data_in5(r6[31:24]), 
    .data_in6(r6[23:16]), 
    .data_in7(r6[15:8]), 
    .data_in8(r6[7:0]),
    .index0(pointers[1][1]), 
    .index1(pointers[1][2]), 
    .index2(pointers[1][3]), 
    .index3(pointers[1][4]), 
    .index4(pointers[1][5]), 
    .index5(pointers[1][6]), 
    .index6(pointers[1][7]), 
    .index7(pointers[1][8]), 
    .index8(pointers[1][9]),
    .data_out0(out1),
    .data_out1(out2), 
    .data_out2(out3), 
    .data_out3(out4), 
    .data_out4(out5), 
    .data_out5(out6), 
    .data_out6(out7), 
    .data_out7(out8), 
    .data_out8(out9)
    );
     
     
     
     
endmodule
