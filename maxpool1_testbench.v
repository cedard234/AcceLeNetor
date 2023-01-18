`timescale 1ns / 1ps

module maxpool1_testbench ();
	parameter bitwidth=32;
	reg [2*28*28*bitwidth-1:0] featuremap1;
	reg clk;
	reg reset;
	reg enable;
	reg reply_from_next_device;
	wire [2*14*14*bitwidth-1:0] featuremap1_maxpooled;
	wire finished_for_next_device;
	wire reply_to_last_device;	
	maxpool1 maxpool1_instance(featuremap1,clk,reset,enable,reply_from_next_device,featuremap1_maxpooled,finished_for_next_device,reply_to_last_device);
	
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
		featuremap1 = 0;
		featuremap1[0*bitwidth+:bitwidth] = 1; //(0,0)
		featuremap1[1*bitwidth+:bitwidth] = 2; //(0,1)
		featuremap1[28*bitwidth+:bitwidth] = 3; //(1,0)
		featuremap1[29*bitwidth+:bitwidth] = 7;
		enable = 1;
	end
	
endmodule