module conv1(
	input [783:0] image,
	input [24:0] kernel1,
	input [24:0] kernel2,
	input clk,
	input reset,
	input enable,
	input have_received_reply_from_next_device,
	output [1567:0] featuremap1,
	output finished
	)
	
	reg [31:0] image_2d [31:0];
	reg [4:0] kernel1_2d [4:0];
	reg [4:0] kernel2_2d [4:0];
	reg [28:0] featuremap_2d [28:0];
	reg [4:0] convolution_result_kernel1[4:0];
	reg [4:0] convolution_result_kernel2[4:0];
	
	reg [2:0] state;
	parameter idle=0,read_image=1,process_image_multiplication=2,process_image_addition=3,finished=4;
	wire [2:0] next_state;
	
	always@(*) begin
	// I use finite state machine to direct the flow of states.
	// There are in total of 4 states: idle, read_image,process_image and finished.
	// each state will take one clock cycle.
	//
	// when the state is "finished", the state remains unchanged until the next device(in the design, "maxpooling layer") has replied that 
	// it has received the output, in this example, featuremap1.
		case(state)
			idle			:	next_state = enable?read_image:idle;
			read_image	:	next_state = process_image_multiplication;
			process_image_multiplication : next_state = process_image_addition;
			process_image_addition			: next_state = finished;
			finished		: next_state = have_received_reply_from_next_device?idle:finished;
		endcase
		end
	
	always@(posedge clk or posedge reset)
		if (reset) begin
			featuremap1 = 1568b'0;
			finished		= 1'b0;
			end
		else
			if (state == read_image) begin
			//in the state of read_image, try to convert input image and kernel1 and kernel2 into inner register type.
				integer i;
				for (i=0;i<28;i++) begin
				// padding calculation.
					image_2d[i+2][29:2] <= image[i*27+27,i*27];
				end
				
				integer j;
				for (j=0;j<5;j++) begin
					kernel1_2d[j] <= kernel1[j*5+5,j*5];
					kernel2_2d[j] <= kernel2[j*5+5,j*5];
				end
			end
			else if (state == process_image) begin
			//in the state of "process_image", the convolution calculation starts.
				integer i,j;
				for (i=0;i<28;i++) begin
					for (j=0;i<28;i++) begin
						convolution_result_kernel1[i][j] = 
						
			