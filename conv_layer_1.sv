module conv_layer_1(image_padded,kernel,featuremap);


    parameter bitwidth=32;

    input signed [bitwidth-1:0] image_padded [31:0][31:0];
    input signed [bitwidth-1:0] kernel [1:0][4:0][4:0];

    output reg signed [bitwidth-1:0] featuremap [1:0][27:0][27:0];

	wire signed [bitwidth-1:0] image_sliced [27:0][27:0][4:0][4:0];
    
	genvar i,j,k,l,m;
	generate
		for (i=0;i<28; i=i+1) begin : generate_block_identifier // <-- example block name
		for (j=0;j<28;j=j+1) begin : generate_block_identifier_2
			for (l=0;l<5;l=l+1) begin : inner_row
				for (k=0;k<5;k=k+1) begin : inner_column
						assign image_sliced[i][j][l][k] = image_padded[i+l][j+k];
				end
			end
			convolution_point #(bitwidth,2) convolution_kernel1(image_sliced[i][j],kernel[0],featuremap[0][i][j]);
			convolution_point #(bitwidth,2) convolution_kernel2(image_sliced[i][j],kernel[1],featuremap[1][i][j]);
			end 
		end
	endgenerate
    
endmodule