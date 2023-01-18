`timescale 1ns / 1ps

module convolution1_testbench ();
	parameter bitwidth=32;
	reg [28*28*bitwidth-1:0] image;
	reg [5*5*bitwidth-1:0] kernel1;
	reg [5*5*bitwidth-1:0] kernel2;
	reg clk;
	reg reset;
	reg enable;
	reg reply_from_next_device;
	wire [2*28*28*bitwidth-1:0] featuremap1;
	wire finished_for_next_device;
	integer i;
	convolution1 convolution_layer_instance(image,kernel1,kernel2,clk,reset,enable,reply_from_next_device,featuremap1,finished_for_next_device);
	
	initial begin
		clk = 1'b0;
		forever #10 clk =~clk;
	end
	
	initial begin
		reset = 1'b1;
		#55
		reset = 1'b0;
	end
	
	initial begin
		reply_from_next_device=1;
		image=1;
		kernel1 = 1;
		kernel2 = 2;
		enable = 1;
	end
	
endmodule