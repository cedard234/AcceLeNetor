module conv_layer_2_testbench();
    parameter bitwidth=32;

    reg [bitwidth-1:0] featuremap1 [1:0][13:0][13:0];
    reg [bitwidth-1:0] kernel [1:0][1:0][4:0][4:0];

    reg [bitwidth-1:0] featuremap2 [1:0][9:0][9:0];

    conv_layer_2 conv_layer_2_instance(featuremap1,kernel,featuremap2);

    int i,j;
    initial begin
        for (i=0;i<14;i=i+1) begin
            for (j=0;j<14;j=j+1) begin
                featuremap1[0][i][j] = 0;
                featuremap1[1][i][j] = 0;
            end
        end

        for (i=0;i<5;i=i+1) begin
            for (j=0;j<5;j=j+1) begin
                kernel[0][0][i][j]=1;
                kernel[0][1][i][j]=0;
                kernel[1][0][i][j]=2;
                kernel[1][1][i][j]=3;
            end
        end
        featuremap1[0][0][0]=1;
        featuremap1[1][0][0]=5;
        featuremap1[0][3][0]=10;
        featuremap1[1][3][0]=-5;
    end
endmodule