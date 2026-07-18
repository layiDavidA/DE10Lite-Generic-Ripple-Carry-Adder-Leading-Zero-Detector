module part4lab2(

	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,
	output		     [9:0]		LEDR,
	input 		     [9:0]		SW
);

wire [2:0] upperOutput, lowerOutput;


part3lab2 upper ( .SW(SW[7:4]), .LEDR(upperOutput));

part3lab2 lower ( .SW(SW[3:0]), .LEDR(lowerOutput));


assign LEDR = (upperOutput == 3'b100) ? (4 + lowerOutput) :  {1'b0, upperOutput};
	

	
	
endmodule