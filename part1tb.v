module part1tb;
wire [7:0] sum;
wire cout;
reg [16:0] test;
// design under test;

ripple_carry fa (test[15:8], test[7:0], sum[7:0], cout, overflow); 

// stimulus and verification that the output is correct

initial begin
for (test = 0; test < 65536; test = test + 1)
begin
#10;
if ({cout, sum} != (test[15:8] + test[7:0]) )
$display("ERROR: a=%b b=%b sum=%b cout=%b", test[15:8], test[7:0], sum[7:0], cout);
end
$display("done");

#10 $finish;

end
endmodule