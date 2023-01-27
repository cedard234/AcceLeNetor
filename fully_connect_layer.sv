module fully_connect_layer(featuremap3,connect_matrix,output_vector);
    parameter bitwidth = 32;

    input [bitwidth-1:0] featuremap3[9:0];
    input [bitwidth-1:0] connect_matrix [9:0][9:0];
    output reg [bitwidth-1:0] output_vector [9:0];

    wire [bitwidth-1:0] intermediate_product [9:0][9:0];
    int i,j;
    always@(*) begin
        for (i=0;i<10;i=i+1) begin
            output_vector[i] = 0;
            for (j=0;j<10;j=j+1) begin
                output_vector[i] = output_vector[i]+ featuremap3[i]*connect_matrix[i][j];
            end
        end
    end
endmodule

