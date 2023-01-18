module maxpool1(featuremap1,clk,reset,enable,reply_from_next_device,featuremap1_maxpooled,finished_for_next_device,reply_to_last_device);
	
	//bitwidth
	parameter bitwidth = 32;

	//I/O
	input [2*28*28*bitwidth-1:0] featuremap1;
	input clk;
	input reset;
	input enable;
	input reply_from_next_device;
	output reg [2*14*14*bitwidth-1:0] featuremap1_maxpooled;
	output reg finished_for_next_device;
	output reg reply_to_last_device;
	
	//internal variables
	reg [bitwidth-1:0] featuremap1_2d [27:0][27:0];
	reg [bitwidth-1:0] featuremap2_2d [27:0][27:0];
	reg [bitwidth-1:0] featuremap1_maxpooled_2d [13:0][13:0];
	reg [bitwidth-1:0] featuremap2_maxpooled_2d [13:0][13:0];

	//counters
	integer i,j;

	//FSM parameters
	reg [1:0] state;
	parameter idle=0,read=1,process=2,finished=3;
	reg [1:0] next_state;


	always@(*) begin
		case (state)
			idle: next_state = enable?read:idle;
			read: next_state = process;
			process: next_state = finished;
			finished: next_state = reply_from_next_device?(enable?read:idle):finished;
		endcase
	end

	always@(posedge clk or posedge reset) begin
		if (reset) begin
			state = idle;
			for (i=0;i<28;i=i+1) begin
				for (j=0;j<28;j=j+1) begin
					featuremap1_2d[i][j] = 0;
					featuremap2_2d[i][j] = 0;
				end
			end
			for (i=0;i<14;i=i+1) begin
				for (j=0;j<14;j=j+1) begin
					featuremap1_maxpooled_2d[i][j] = 0;
					featuremap2_maxpooled_2d[i][j] = 0;
				end
			end
		end
		else begin
			if (state == read) begin
				for (i=0;i<28;i=i+1) begin
					for (j=0;j<28;j=j+1) begin
						featuremap1_2d[i][j] <= featuremap1[(28*j+i)*bitwidth+:bitwidth];
						featuremap2_2d[i][j] <= featuremap1[(28*28+28*j+i)*bitwidth+:bitwidth];
					end
				end
			end
			else if (state == process) begin
				for (i=0;i<14;i=i+1) begin
					for (j=0;j<14;j=j+1) begin
						//compare to get the maximum
						featuremap1_maxpooled_2d[i][j] = featuremap1_2d[2*i][2*j]>featuremap1_2d[2*i+1][2*j]?featuremap1_2d[2*i][2*j]:featuremap1_2d[2*i+1][2*j];
						featuremap1_maxpooled_2d[i][j] = featuremap1_maxpooled_2d[i][j]>featuremap1_2d[2*i][2*j+1]?featuremap1_maxpooled_2d[i][j]:featuremap1_2d[2*i][2*j+1];
						featuremap1_maxpooled_2d[i][j] = featuremap1_maxpooled_2d[i][j]>featuremap1_2d[2*i+1][2*j+1]?featuremap1_maxpooled_2d[i][j]:featuremap1_2d[2*i+1][2*j+1];
						//repeat for featuremap2
						featuremap2_maxpooled_2d[i][j] = featuremap2_2d[2*i][2*j]>featuremap2_2d[2*i+1][2*j]?featuremap2_2d[2*i][2*j]:featuremap2_2d[2*i+1][2*j];
						featuremap2_maxpooled_2d[i][j] = featuremap2_maxpooled_2d[i][j]>featuremap2_2d[2*i][2*j+1]?featuremap2_maxpooled_2d[i][j]:featuremap2_2d[2*i][2*j+1];
						featuremap2_maxpooled_2d[i][j] = featuremap2_maxpooled_2d[i][j]>featuremap2_2d[2*i+1][2*j+1]?featuremap2_maxpooled_2d[i][j]:featuremap2_2d[2*i+1][2*j+1];
					end
				end
			end
			state = next_state;
		end
	end

	always@(*) begin
		finished_for_next_device = (state==finished);
		reply_to_last_device = (state==process);

		for (i=0;i<14;i=i+1) begin
			for (j=0;j<14;j=j+1) begin
				featuremap1_maxpooled[(j*14+i)*bitwidth+:bitwidth] = featuremap1_maxpooled_2d[i][j];
				featuremap1_maxpooled[(14*14+j*14+i)*bitwidth+:bitwidth] = featuremap2_maxpooled_2d[i][j];
			end
		end
	end
endmodule





	
	