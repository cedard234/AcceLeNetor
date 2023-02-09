module activation_layer_2(featuremap,featuremap_RELUed);
    parameter bitwidth = 32;

    input signed [bitwidth-1:0] featuremap [1:0][9:0][9:0];
    output reg signed [bitwidth-1:0] featuremap_RELUed[1:0][9:0][9:0];

    int i,j;

    always@(*) begin
        for (i=0;i<10;i=i+1) begin
            for (j=0;j<10;j=j+1) begin
                if (featuremap[0][i][j][bitwidth-1]) begin
                    featuremap_RELUed[0][i][j] = 0;
                end
                else begin
                    featuremap_RELUed[0][i][j] = featuremap[0][i][j];
                end
                if (featuremap[1][i][j][bitwidth-1]) begin
                    featuremap_RELUed[1][i][j] = 0;
                end
                else begin
                    featuremap_RELUed[1][i][j] = featuremap[1][i][j];
                end
            end
        end
    end
endmodule