
module Lenet_accelerator(clk, image,conv1_kernel,conv2_kernel,conv3_kernel,connect_matrix,output_vector);
	parameter bitwidth = 32;
	input [bitwidth-1:0] image [27:0][27:0];
	// input reset;
	input clk;
	input [bitwidth-1:0] conv1_kernel [1:0][4:0][4:0];
	input [bitwidth-1:0] conv2_kernel [1:0][1:0][4:0][4:0];
	input [bitwidth-1:0] conv3_kernel [9:0][1:0][4:0][4:0];
	input [bitwidth-1:0] connect_matrix [9:0][9:0];

	int i,j;

	//conv1, actv1, maxp1: first layers(first stage)
	reg [bitwidth-1:0] image_buffer [27:0][27:0];
	reg [bitwidth-1:0] image_padded [31:0][31:0];
	wire [bitwidth-1:0] actv1_featuremap [1:0][27:0][27:0];
	wire [bitwidth-1:0] maxp1_featuremap [1:0][27:0][27:0];
	reg [bitwidth-1:0]  featuremap1 [1:0][13:0][13:0];
	//conv2, actv2, maxp2: second layers(second stage)
	reg [bitwidth-1:0] conv2_featuremap [1:0][13:0][13:0];
	wire [bitwidth-1:0] actv2_featuremap [1:0][9:0][9:0];
	wire [bitwidth-1:0] maxp2_featuremap [1:0][9:0][9:0];
	reg [bitwidth-1:0] featuremap2 [1:0][4:0][4:0];
	//conv3, actv3, fully-connect layers(final stage)
	reg [bitwidth-1:0] conv3_featuremap [1:0][4:0][4:0];
	wire [bitwidth-1:0] actv3_featuremap [9:0];
	wire [bitwidth-1:0] featuremap3 [9:0];
	reg [bitwidth-1:0] output_buffer[9:0];
	output reg [bitwidth-1:0] output_vector[9:0];

	conv_layer_1 conv_layer_1_inst(image_padded,conv1_kernel,actv1_featuremap);
	activation_layer_1 activation_layer_1_inst(actv1_featuremap,maxp1_featuremap);
	maxpooling_1 maxpooling_1_inst(maxp1_featuremap,featuremap1);
	
	conv_layer_2 conv_layer_2_inst(conv2_featuremap,conv2_kernel,actv2_featuremap);
	activation_layer_2 activation_layer_2_inst(actv2_featuremap,maxp2_featuremap);
	maxpooling_2 maxpooling_2_inst(maxp2_featuremap,featuremap2);

	conv_layer_3 conv_layer_3_inst(conv3_featuremap,conv3_kernel,actv3_featuremap);
	activation_layer_3 activation_layer_3_inst(actv3_featuremap, featuremap3);
	fully_connect_layer fully_connect_layer_inst(featuremap3,connect_matrix,output_buffer);


	always@(*) begin 
		for (i=0;i<32;i=i+1) begin
			for (j=0;j<32;j=j+1) begin
				image_padded[i][j] = 0;
			end
		end

		for (i=0;i<28;i=i+1) begin
			for (j=0;j<28;j=j+1) begin
				image_padded [i+2][j+2] = image_buffer[i][j];
			end
		end
	end

	
	always@(posedge clk) begin
		image_buffer <= image;
		conv2_featuremap <= featuremap1;
		conv3_featuremap <= featuremap2;
		output_vector <= output_buffer;
	end
	
endmodule