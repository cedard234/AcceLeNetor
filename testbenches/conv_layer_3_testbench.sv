module conv_layer_3_testbench();
    parameter bitwidth=32;

    reg [bitwidth-1:0] featuremap2 [1:0][4:0][4:0];
    reg [bitwidth-1:0] kernel [9:0][1:0][4:0][4:0];

    reg [bitwidth-1:0] featuremap3 [9:0];

    conv_layer_3 conv_layer_3_instance(featuremap2,kernel,featuremap3);

    int i,j,k;
    initial begin
        for (i=0;i<5;i=i+1) begin
            for (j=0;j<5;j=j+1) begin
                featuremap2[0][i][j] = 0;
                featuremap2[1][i][j] = 0;
            end
        end

        for (i=0;i<5;i=i+1) begin
            for (j=0;j<5;j=j+1) begin
                for (k=0;k<10;k=k+1) begin
                    kernel[k][0][i][j]=1;
                    kernel[k][1][i][j]=2;
                end
            end
        end
        featuremap2[0][0][0]=1;
        featuremap2[1][0][0]=5;
        featuremap2[0][2][0]=10;
        featuremap2[1][2][0]=-2;
    end
endmodule