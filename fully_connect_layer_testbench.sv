module fully_connect_layer_testbench();
 
    parameter bitwidth = 32;

    reg [bitwidth-1:0] featuremap3[9:0];
    reg [bitwidth-1:0] connect_matrix [9:0][9:0];
    reg [bitwidth-1:0] output_vector [9:0];

    fully_connect_layer fully_connect_layer_instance(featuremap3,connect_matrix,output_vector);

    int i,j;

    initial begin
        for(i=0;i<10;i=i+1) begin
            for (j=0;j<10;j=j+1) begin
                connect_matrix[i][j] = 0;
            end
        end

        for (i=0;i<10;i=i+1) begin
            featuremap3[i] = i;
            connect_matrix[i][i]=1;
        end
    end
endmodule