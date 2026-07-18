module general_adder #(parameter K=8) (input [K-1:0] a, b, output [K-1:0] sum, output overflow);

wire [K:0] carry;
assign carry[0]=0;

genvar i;

generate
	for(i=0; i<K; i=i+1) begin : genloop

part1fulladder fai (a[i],b[i],carry[i], sum[i], carry[i+1]);

end
endgenerate

assign overflow = carry[K]^carry[K-1];

endmodule 