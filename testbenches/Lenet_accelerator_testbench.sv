`timescale 1ns/1ps
module Lenet_accelerator_testbench();

	parameter bitwidth = 16;
	reg signed [bitwidth-1:0] image [27:0][27:0];
	reg clk;
	reg signed [bitwidth-1:0] conv1_kernel [1:0][4:0][4:0];
	reg signed [bitwidth-1:0] conv2_kernel [1:0][1:0][4:0][4:0];
	reg signed [bitwidth-1:0] conv3_kernel [9:0][1:0][4:0][4:0];
	reg signed [bitwidth-1:0] connect_matrix [9:0][9:0];
    reg signed [bitwidth-1:0] output_vector [9:0];
    
    int i,j,k;
    initial begin
		clk = 1'b0;
		forever #10 clk =~clk;
	end

    initial begin
        for(i=0;i<28;i=i+1) begin
            for (j=0;j<28;j=j+1) begin
                image[i][j]=0;
            end
        end

        for (i=0;i<5;i=i+1) begin
            for (j=0;j<5;j=j+1) begin
                conv1_kernel[0][i][j] = 0;
                conv1_kernel[1][i][j] = 0;
                conv2_kernel[0][0][i][j] = 0;
                conv2_kernel[0][1][i][j] = 0;
                conv2_kernel[1][0][i][j] = 0;
                conv2_kernel[1][1][i][j] = 0;
                for (k=0;k<10;k=k+1) begin
                    conv3_kernel[k][0][i][j] =0;
                    conv3_kernel[k][1][i][j] =0;
                end
            end
        end
        for (i=0;i<10;i=i+1) begin
            for (j=0;j<10;j=j+1) begin
                connect_matrix[i][j]=0;
            end
        end
	end

    initial begin
		image[0][0]=2**(bitwidth-3);
        conv1_kernel[0][0][0]=2**(bitwidth-2);
        conv2_kernel[0][0][0][0]=2**(bitwidth-3);
        conv3_kernel[0][0][0][0]=2**(bitwidth-3);
        for (i=0;i<10;i=i+1) begin
            connect_matrix[i][i]=2**(bitwidth-3);
        end
        #85 image[0][0]=2**(bitwidth-4);
        #85 image[0][0]=2**(bitwidth-5);
	end
    
    Lenet_accelerator #(bitwidth) Lenet_accelerator_inst(clk, image,conv1_kernel,conv2_kernel,conv3_kernel,connect_matrix,output_vector);
    endmodule