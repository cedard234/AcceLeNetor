module activation_layer_1(featuremap,featuremap_RELUed);
    parameter bitwidth = 32;

    input [bitwidth-1:0] featuremap [1:0][27:0][27:0];
    output reg [bitwidth-1:0] featuremap_RELUed[1:0][27:0][27:0];

    int i,j;

    always@(*) begin
        for (i=0;i<28;i=i+1) begin
            for (j=0;j<28;j=j+1) begin
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