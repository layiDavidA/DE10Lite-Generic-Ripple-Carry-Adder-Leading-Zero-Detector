module tb_lab2part3;
	reg [3:0] count;
	wire [9:0] LEDR;
	wire [9:0] SW;
	
	assign SW[3:0] = count;
part3lab2 UUT (.LEDR(LEDR), .SW(SW));
		


initial begin



count = 4'b0000;
repeat (16) begin
#100
count = count + 4'b0001;
		end
	end
endmodule