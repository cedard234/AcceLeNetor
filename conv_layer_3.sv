module conv_layer_3(featuremap2,kernel,featuremap3);


    parameter bitwidth=16;

    input signed [bitwidth-1:0] featuremap2 [1:0][4:0][4:0];
    input signed [bitwidth-1:0] kernel [9:0][1:0][4:0][4:0];

    output reg signed [bitwidth-1:0] featuremap3 [9:0];

	wire signed [bitwidth-1:0] featuremap_sliced [1:0][4:0][4:0][4:0][4:0]; //channel, row, column, subrow,subcolumn

    wire signed [bitwidth-1:0] conv_intermediate_result [9:0][1:0];//kernel, channel, row, column
    
	genvar i,j,k;
	generate
        for (k=0;k<10;k=k+1) begin :generate_block_identifier
            convolution_point #(bitwidth,9) convolution_kernel_channel1(featuremap2[0],kernel[k][0],conv_intermediate_result[k][0]);
            convolution_point #(bitwidth,9) convolution_kernel_channel2(featuremap2[1],kernel[k][1],conv_intermediate_result[k][1]);
            assign featuremap3[k] = conv_intermediate_result[k][0]+conv_intermediate_result[k][1];
        end
	endgenerate
    
endmodule