module counter10    (
out     ,  // Output of the counter
enable  ,  // enable for counter
clk     ,  // clock Input
reset      // reset Input  
);
 
    output [3:0] out;
    input enable, clk, reset;
    reg [3:0] out;
 
always @(posedge clk)
	if (reset) begin
  		out <= 4'b0 ;
	end else if (enable) begin
  		out <= (out + 1'b1);
	end
	
endmodule 