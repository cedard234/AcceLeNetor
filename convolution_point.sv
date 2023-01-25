module convolution_point(map_block,kernel,value);
    //module for convolution operation
    parameter bitwidth=32;

    input [bitwidth-1:0] map_block [4:0][4:0];
    input [bitwidth-1:0] kernel [4:0][4:0];

    output reg [bitwidth-1:0] value;

    
    integer i,j;
    always@(*) begin
        value = 0;
        for (i=0;i<5;i=i+1) begin
            for (j=0;j<5;j=j+1) begin
                value = value+kernel[i][j]*map_block[i][j];
            end
        end
    end
    
endmodule