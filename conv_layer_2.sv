module conv_layer_2(featuremap1,kernel,featuremap2);


    parameter bitwidth=16;

    input signed [bitwidth-1:0] featuremap1 [1:0][13:0][13:0];
    input signed [bitwidth-1:0] kernel [1:0][1:0][4:0][4:0];

    output reg signed [bitwidth-1:0] featuremap2 [1:0][9:0][9:0];

	wire signed [bitwidth-1:0] featuremap_sliced [1:0][9:0][9:0][4:0][4:0]; //channel, row, column, subrow,subcolumn

    wire signed [bitwidth-1:0] conv_intermediate_result [1:0][1:0][9:0][9:0];//kernel, channel, row, column
    
	genvar i,j,k,l,m;
	generate
		for (i=0;i<10; i=i+1) begin : generate_block_identifier // <-- example block name
		for (j=0;j<10;j=j+1) begin : generate_block_identifier_2
			for (l=0;l<5;l=l+1) begin : inner_row
				for (k=0;k<5;k=k+1) begin : inner_column
						assign featuremap_sliced[0][i][j][l][k] = featuremap1[0][i+l][j+k];
                        assign featuremap_sliced[1][i][j][l][k] = featuremap1[1][i+l][j+k];
				end
			end
			convolution_point #(bitwidth,15) convolution_kernel1_channel1(featuremap_sliced[0][i][j],kernel[0][0],conv_intermediate_result[0][0][i][j]);
            convolution_point #(bitwidth,15) convolution_kernel1_channel2(featuremap_sliced[1][i][j],kernel[0][1],conv_intermediate_result[0][1][i][j]);
            assign featuremap2[0][i][j] = conv_intermediate_result[0][0][i][j]+conv_intermediate_result[0][1][i][j];
			convolution_point #(bitwidth,15) convolution_kernel2_channel1(featuremap_sliced[0][i][j],kernel[1][0],conv_intermediate_result[1][0][i][j]);
            convolution_point #(bitwidth,15) convolution_kernel2_channel2(featuremap_sliced[1][i][j],kernel[1][1],conv_intermediate_result[1][1][i][j]);
			assign featuremap2[1][i][j] = conv_intermediate_result[1][0][i][j]+conv_intermediate_result[1][1][i][j];
            end 
		end
	endgenerate
    
endmodule