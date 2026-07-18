module tb_part4;
integer x, i;
wire [9:0] LEDR;
reg [7:0] SW;

part4lab2 UUT (.LEDR(LEDR), .SW(SW));

initial begin
for (i=0; i<10; i=i+1) begin
SW = $random % 256;
if(SW<0)
SW= SW*(-1);
#10

$display("Random Number is %h", SW);
end
$finish;
end
endmodule


