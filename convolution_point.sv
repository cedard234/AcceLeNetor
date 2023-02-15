module convolution_point(map_block,kernel,value);
    //module for convolution operation
    parameter bitwidth=16;
    parameter shift;

    input signed [bitwidth-1:0] map_block [4:0][4:0];
    input signed [bitwidth-1:0] kernel [4:0][4:0];
    reg signed [2*bitwidth-1:0] intermediate_value;
    output signed [bitwidth-1:0] value;

    
    integer i,j;
    always@(*) begin
        intermediate_value = 0;
        for (i=0;i<5;i=i+1) begin
            for (j=0;j<5;j=j+1) begin
                intermediate_value = intermediate_value+kernel[i][j]*map_block[i][j];
            end
        end
    end
    
    assign value = intermediate_value >>> shift;
    // assign value = intermediate_value[shift+1+:bitwidth];

endmodule