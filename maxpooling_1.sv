`include "max.sv"
module maxpooling_1(featuremap,featuremap_maxpooled);
    parameter bitwidth=32;

    // function [bitwidth:0] min;
    // input [bitwidth:0] a,b,c,d;
    // begin
    //     min = a;
    //     if (min>b) min = b;
    //     if (min>c) min = c;
    //     if (min>d) min = d;
    // end
    // endfunction

    input [bitwidth-1:0] featuremap [1:0][27:0][27:0];
    output reg [bitwidth-1:0] featuremap_maxpooled [1:0][13:0][13:0];

    int i,j;
    always@(*) begin
        for (i=0;i<14;i=i+1) begin
            for (j=0;j<14;j=j+1) begin
                featuremap_maxpooled[0][i][j] = max(featuremap[0][2*i][2*j],featuremap[0][2*i+1][2*j],featuremap[0][2*i][2*j+1],featuremap[0][2*i+1][2*j+1]);
                featuremap_maxpooled[1][i][j] = max(featuremap[1][2*i][2*j],featuremap[1][2*i+1][2*j],featuremap[1][2*i][2*j+1],featuremap[1][2*i+1][2*j+1]);
            end
        end
    end
endmodule
