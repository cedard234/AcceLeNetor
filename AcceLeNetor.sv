module AcceLeNetor(clk,output_vector);

    parameter top_bitwidth = 4;
	
	wire signed [top_bitwidth-1:0] image [27:0][27:0];
	// input reset;
	input clk;
	wire signed [top_bitwidth-1:0] conv1_kernel [1:0][4:0][4:0];
	wire signed [top_bitwidth-1:0] conv2_kernel [1:0][1:0][4:0][4:0];
	wire signed [top_bitwidth-1:0] conv3_kernel [9:0][1:0][4:0][4:0];
	wire signed [top_bitwidth-1:0] connect_matrix [9:0][9:0];
    output reg signed [top_bitwidth-1:0] output_vector [9:0];
    always@(*) begin
    // `include "kernel_and_matrix.sv"
    // `include "test_image_4_13bits.sv"
    end

    Lenet_accelerator #(top_bitwidth) Lenet_accelerator_instance  (clk, image,conv1_kernel,conv2_kernel,conv3_kernel,connect_matrix,output_vector);
    

endmodule