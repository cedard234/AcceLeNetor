module activation_layer_3(featuremap,featuremap_RELUed);
    parameter bitwidth = 32;

    input signed [bitwidth-1:0] featuremap [9:0];
    output reg signed [bitwidth-1:0] featuremap_RELUed[9:0];

    int i,j;

    always@(*) begin
        for (i=0;i<10;i=i+1) begin
            if (featuremap[i][bitwidth-1]) begin
                featuremap_RELUed[i] = 0;
            end
            else begin
                featuremap_RELUed[i] = featuremap[i];
            end
        end
    end
endmodule