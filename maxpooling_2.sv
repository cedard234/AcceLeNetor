// `include "max.sv"
module maxpooling_2(featuremap,featuremap_maxpooled);
    parameter bitwidth=16;

    input signed [bitwidth-1:0] featuremap [1:0][9:0][9:0];
    output reg signed [bitwidth-1:0] featuremap_maxpooled [1:0][4:0][4:0];

    int i,j;
    always@(*) begin
        for (i=0;i<5;i=i+1) begin
            for (j=0;j<5;j=j+1) begin
                featuremap_maxpooled[0][i][j] = max(featuremap[0][2*i][2*j],featuremap[0][2*i+1][2*j],featuremap[0][2*i][2*j+1],featuremap[0][2*i+1][2*j+1]);
                featuremap_maxpooled[1][i][j] = max(featuremap[1][2*i][2*j],featuremap[1][2*i+1][2*j],featuremap[1][2*i][2*j+1],featuremap[1][2*i+1][2*j+1]);
            end
        end
    end
endmodule
