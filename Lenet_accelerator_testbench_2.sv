`timescale 1ns/1ps
module Lenet_accelerator_testbench_2();

	parameter bitwidth = 32;
	reg signed [bitwidth-1:0] image [27:0][27:0];
	reg clk;
	reg signed [bitwidth-1:0] conv1_kernel [1:0][4:0][4:0];
	reg signed [bitwidth-1:0] conv2_kernel [1:0][1:0][4:0][4:0];
	reg signed [bitwidth-1:0] conv3_kernel [9:0][1:0][4:0][4:0];
	reg signed [bitwidth-1:0] connect_matrix [9:0][9:0];
    reg signed [bitwidth-1:0] output_vector [9:0];
    `include "kernel_and_matrix.sv"
    `include "test_image_4.sv"
    initial begin
		clk = 1'b0;
		forever #10 clk =~clk;
	end
    Lenet_accelerator #(32) Lenet_accelerator_inst(clk, image,conv1_kernel,conv2_kernel,conv3_kernel,connect_matrix,output_vector);
    endmodule