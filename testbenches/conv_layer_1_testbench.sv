`timescale 1ns / 1ps

module conv_layer_1_testbench ();

    //module for convolution operation
    parameter bitwidth=32;

    reg [bitwidth-1:0] image_padded [31:0][31:0];
    reg [bitwidth-1:0] kernel [1:0][4:0][4:0];

    reg [bitwidth-1:0] featuremap [1:0][27:0][27:0];

    conv_layer_1 conv_layer_1_instance(image_padded,kernel,featuremap);
    
    int k,l;
    int i,j;
    initial begin
    for (k=0;k<32;k=k+1) begin
        for (l=0;l<32;l=l+1) begin
            image_padded[k][l] = 0;
        end
    end

    for (i=0;i<5;i=i+1) begin
        for (j=0;j<5;j=j+1) begin
            kernel[0][i][j] = 1;
            kernel[1][i][j] = 1;
        end
    end
    image_padded[2][2] = 1;
    image_padded[2][3] = 2;
    image_padded[29][2] = 1;
    end

endmodule