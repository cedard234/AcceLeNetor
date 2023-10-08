module AcceLeNetor_testbench();

    reg clk;
    wire [9:0] led;
    AcceLeNetor AcceLeNetor_instance(clk,led);

    initial begin
		clk = 1'b0;
		forever #10 clk =~clk;
	end

endmodule