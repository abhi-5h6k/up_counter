`timescale 1ns / 1ps

module tb();

reg clk = 0, rst = 0, ld = 0;
reg [3:0] ldvalue = 0;

wire [3:0] dout;
integer i = 0;

up_counter dut(clk, rst, ld, ldvalue, dout);
always #10 clk = ~clk;

initial begin
rst = 1'b1;
#20;
rst = 1'b0;
end

initial begin
ld = 1'b1;
#40;
ld = 1'b0;
end

initial begin
for(i = 0; i < 20; i = i + 1)
begin
ldvalue = $urandom();
end
end

initial begin
#500;
$finish;
end


endmodule
