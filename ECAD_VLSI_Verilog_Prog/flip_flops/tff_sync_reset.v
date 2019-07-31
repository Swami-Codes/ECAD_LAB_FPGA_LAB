 
module tff_sync_reset (
			data  , // Data Input
			clk   , // Clock Input
			reset , // Reset input
			q       // Q output
			);
	input data, clk, reset ; 
	output q;
	reg q;
	always @ ( posedge clk)
		if (~reset) begin
  			q <= 1'b0;
			end else if (data) begin
  		q <= !q;
	end
endmodule  

module tff_sync_reset_tb;
	reg data, clk, reset ; 
	wire q;
tff_sync_reset tffr (.data(data), .clk(clk), .reset(reset)  ,.q(q));
	initial
	begin
 	clk=0;
 	data = 0;
 	reset = 1;
	#5 reset = 0;
	#30 reset = 1;
 	$monitor($time, "\tclk=%b\t ,reset=%b\t, data=%b\t,  q=%b",clk,reset,data,q);
 	#100 $finish;
	end
 	always #5  clk = ~clk;
 	always #30 data = ~data;
 endmodule