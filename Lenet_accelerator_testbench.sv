`timescale 1ns/1ps
module Lenet_accelerator_testbench();

	parameter bitwidth = 32;
	reg [bitwidth-1:0] image [27:0][27:0];
	reg clk;
	reg [bitwidth-1:0] conv1_kernel [1:0][4:0][4:0];
	reg [bitwidth-1:0] conv2_kernel [1:0][1:0][4:0][4:0];
	reg [bitwidth-1:0] conv3_kernel [9:0][1:0][4:0][4:0];
	reg [bitwidth-1:0] connect_matrix [9:0][9:0];
    reg [bitwidth-1:0] output_vector [9:0];
    
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
		image[0][0]=1;
        conv1_kernel[0][0][0]=1;
        conv2_kernel[0][0][0][0]=1;
        conv3_kernel[0][0][0][0]=1;
        for (i=0;i<10;i=i+1) begin
            connect_matrix[i][i]=1;
        end
        #85 image[0][0]=3;
	end
    
    Lenet_accelerator Lenet_accelerator_inst(clk, image,conv1_kernel,conv2_kernel,conv3_kernel,connect_matrix,output_vector);
    endmodule