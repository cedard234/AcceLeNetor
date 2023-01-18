module convolution1(
	input [783:0] image,
	input [24:0] kernel1,
	input [24:0] kernel2,
	input clk,
	input reset,
	input enable,
	input reply_from_next_device,
	output reg [1567:0] featuremap1,
	output reg finished_for_next_device
	);
	
	reg [31:0] image_2d [31:0];
	reg [4:0] kernel1_2d [4:0] ;
	reg [4:0] kernel2_2d [4:0] ;
	reg [27:0] featuremap_kernel1_2d [27:0];
	reg [27:0] featuremap_kernel2_2d [27:0];
	// reg [4:0] convolution_result_kernel1[4:0];
	// reg [4:0] convolution_result_kernel2[4:0];
	
	reg [4:0] counter_for_MAC;

	reg [1:0] state;
	parameter idle=0,read_image=1,process_image=2,finished=3;
	reg [1:0] next_state;
	
	integer i,j,conv_i,conv_j,i1,i2;


	
	always@(*) begin
	// I use finite state machine to direct the flow of states.
	// There are in total of 4 states: idle, read_image,process_image and finished.
	// each state will take one clock cycle.
	//
	// when the state is "finished", the state remains unchanged until the next device(in the design, "maxpooling layer") has replied that 
	// it has received the output, in this example, featuremap1.
		case(state)
			idle			:	next_state = enable?read_image:idle;
			read_image	:	next_state = process_image;
			process_image: next_state = (counter_for_MAC==28)?finished:process_image;
			finished		: next_state = reply_from_next_device?idle:finished;
		endcase
		end
		

	
	always@(posedge clk or posedge reset) begin
		if (reset) begin
			counter_for_MAC = 5'b0;
			
			for (i=0;i<28;i=i+1) begin
				featuremap_kernel1_2d [i] = 0;
				featuremap_kernel2_2d [i] = 0;
			end
			for (i=0;i<5;i=i+1) begin
				kernel1_2d [i] = 0;
				kernel2_2d [i] = 0;
			end
			for (i=0;i<32;i=i+1) begin
				image_2d [i] = 0;
			end
			state = idle;
			
			end
		else begin
			if (state == read_image) begin
			//in the state of read_image, try to convert input image and kernel1 and kernel2 into inner register type.
				integer i;
				for (i=0;i<28;i=i+1) begin
				// padding calculation.
					image_2d[i+2][29:2] <= image[i*27+:28];
				end
				
//				integer j;
				for (j=0;j<5;j=j+1) begin
					kernel1_2d[j] <= kernel1[j*5+:5];
					kernel2_2d[j] <= kernel2[j*5+:5];
				end
			end
			else if (state == process_image) begin
			//in the state of "process_image", the convolution calculation starts.
				
				for (i=0;i<28;i=i+1) begin
					for (conv_i=0;conv_i<5;conv_i=conv_i+1) begin
						for (conv_j=0;conv_j<5;conv_j=conv_j+1) begin
							featuremap_kernel1_2d[i][counter_for_MAC] <=  featuremap_kernel1_2d[counter_for_MAC][i]+kernel1_2d[conv_i][conv_j]*image_2d[conv_i+i][conv_j+counter_for_MAC];
							featuremap_kernel2_2d[i][counter_for_MAC] <=  featuremap_kernel2_2d[counter_for_MAC][i]+kernel2_2d[conv_i][conv_j]*image_2d[conv_i+i][conv_j+counter_for_MAC];
						end
					end
				end
				counter_for_MAC = counter_for_MAC+1;
			end

			state = next_state;
		end
	end

	always@(*) begin
		for (i1=0;i1<28;i1=i1+1) begin
			featuremap1[28*i1+:28] <= featuremap_kernel1_2d[i1];
		end

		for (i2=28;i2<56;i2=i2+1) begin
			featuremap1[28*i2+:28] <= featuremap_kernel2_2d[i2-28];
		end
		finished_for_next_device = (state==finished);
	end
endmodule

				

						
			