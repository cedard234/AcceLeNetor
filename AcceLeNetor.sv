module AcceLeNetor(clk,led);

    parameter top_bitwidth = 9;
	
	wire signed [top_bitwidth-1:0] image [27:0][27:0];
	// input reset;
	input clk;
	wire signed [top_bitwidth-1:0] conv1_kernel [1:0][4:0][4:0];
	wire signed [top_bitwidth-1:0] conv2_kernel [1:0][1:0][4:0][4:0];
	wire signed [top_bitwidth-1:0] conv3_kernel [9:0][1:0][4:0][4:0];
	wire signed [top_bitwidth-1:0] connect_matrix [9:0][9:0];
   reg signed [top_bitwidth-1:0] output_vector [9:0];
	reg [top_bitwidth-1:0] comparator;
	reg [3:0] index;
	output reg [9:0] led;
	int i;
	`include "kernel_and_matrix_8bits.sv"
	`include "test_image_4_8bits.sv"
	

    Lenet_accelerator #(top_bitwidth) Lenet_accelerator_instance  (clk, image,conv1_kernel,conv2_kernel,conv3_kernel,connect_matrix,output_vector);
    always@(*) begin
	 comparator = output_vector[0];
	 index = 0;
	 led = 10'b0;
	 for (i = 1; i < 10; i=i+1) begin
			if (output_vector[i] > comparator) begin
				comparator  = output_vector[i];
				index = i;
			end
			led[index] = 1;
			end 
	end
endmodule