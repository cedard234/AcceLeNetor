module fully_connect_layer(featuremap3,connect_matrix,output_vector);
    parameter bitwidth = 32;

    input signed [bitwidth-1:0] featuremap3[9:0];
    input signed [bitwidth-1:0] connect_matrix [9:0][9:0];
    reg signed [2*bitwidth-1:0] intermediate_output[9:0];
    output reg signed [bitwidth-1:0] output_vector [9:0];

    int i,j;
    always@(*) begin
        for (i=0;i<10;i=i+1) begin
            intermediate_output[i] = 0;
            for (j=0;j<10;j=j+1) begin
                intermediate_output[i] = intermediate_output[i]+ featuremap3[i]*connect_matrix[i][j];
            end
            output_vector[i] = intermediate_output[i]>>(bitwidth);
        end
    end
endmodule
