module main;
reg d, clk, rst;
wire q;
dflipflop dff (d, clk, rst, q);
//Always at rising edge of clockdisplay the signals
always @(posedge clk)begin
$display("d=%b, clk=%b, rst=%b,q=%b\n", d, clk, rst, q);
 end
//Module to generate clock with period 10 time units
initial begin
forever begin
clk=0;
#5
clk=1;
#5
clk=0;
end
end
initial begin
d=0; rst=1;
#4
d=1; rst=0;
#50
d=1; rst=1;
#20
d=0; rst=0;
end
endmodule


 
`define TICK #2
module mod13Cntr(clk, reset, Q);
input clk, reset;
output [3:0] Q;
reg [3:0] Q;
//Behavioral Code for a Mod-13 counter
always @ (posedge clk) begin
if (~reset) begin
if (Q == 4'b1100) begin
Q <= `TICK 4'b0;
end
else begin 
Q <= `TICK Q+1;
end
end
end
always @ (posedge reset) begin
Q <= 4'b0000;
end
endmodule  

module main; 
reg clk, reset;
wire [3:0] Q;
downCntr dnCntr1(clk, reset, Q);
initial begin
forever begin
clk <= 0;
#5
clk <= 1;
#5
clk <= 0;
end
end
initial begin
reset = 1;
#12
reset = 0;
#170
reset = 1;
#12
reset = 0;
end
endmodule 