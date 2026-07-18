module part2tb; 
parameter K=6;
wire [K-1:0] sum;
wire cout;
reg [K*2:0] test;
// design under test;

general_adder fa0 (test[K*2-1:K], test[K-1:0], sum[K-1:0], overflow);
// stimulus and verification that the output is correct

initial begin
for (test = 0; test < 4**K; test = test + 1)
begin
#10;


if ({cout, sum} != (test[K*2-1:K] + test[K-1:0] ))
$display("ERROR: a=%b b=%b sum=%b cout=%b", test[K*2-1:K], test[K-1:0], sum[K-1:0], cout);


end
$display("done");

#10 $finish;

end
endmodule