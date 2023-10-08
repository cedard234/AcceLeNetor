`timescale 1ns / 1ps

module activation_layer_3_testbench ();

    parameter bitwidth = 32;

    reg [bitwidth-1:0] featuremap [9:0];
    reg [bitwidth-1:0] featuremap_RELUed[9:0];

    activation_layer_3 activation_layer_3_instance(featuremap,featuremap_RELUed);

    int i;
    initial begin
        for (i=0;i<10;i=i+1) begin
            featuremap[i] = 0;
        end

        featuremap[0] = 1;
        featuremap[1] = 2;
        featuremap[2] = 3;
        featuremap[3] = -1145;
    end
endmodule