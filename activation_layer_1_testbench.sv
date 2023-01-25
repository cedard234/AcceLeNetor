`timescale 1ns / 1ps

module activation_layer_1_testbench ();

    parameter bitwidth=32;

    reg [bitwidth-1:0] featuremap[1:0][27:0][27:0];
    reg [bitwidth-1:0] featuremap_RELUed[1:0][27:0][27:0];

    activation_layer_1 activation_layer_1_instance(featuremap,featuremap_RELUed);

    int i,j;
    initial begin
        for (i=0;i<28;i=i+1) begin
            for (j=0;j<28;j=j+1) begin
                featuremap[0][i][j]=0;
                featuremap[1][i][j]=0;
            end
        end

        featuremap[0][0][0] = 1;
        featuremap[0][0][1] = 2;
        featuremap[0][1][0] = 3;
        featuremap[0][1][1] = -1145;
    end
endmodule