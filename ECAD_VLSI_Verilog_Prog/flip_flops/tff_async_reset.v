module tff_async_reset (
data  , // Data Input
clk   , // Clock Input
reset , // Reset input
q       // Q output
);
 
input data, clk, reset ; 
 
output q;
 
reg q;
 
always @ ( posedge clk or negedge reset)
if (~reset) begin
  q <= 1'b0;
end else if (data) begin
  q <= !q;
end

endmodule  
