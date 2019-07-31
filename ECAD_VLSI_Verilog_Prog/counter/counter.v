module counter    (out, enable, clk,reset);
output [3:0] out;//----------Output Ports------ 
input enable, clk, reset; ////--- Input Ports---- 
reg [3:0] out;//---Internal Variables--------
 
always @(posedge clk)
	if (reset) begin
  	out <= 4'b0 ;
	end else if (enable) begin
  	out <= out + 1'b1;
	end
	endmodule 

module counter_tb; 
  reg clk, reset, enable; 
  wire [3:0] out; 
    
  counter U0 ( .clk    (clk), .reset  (reset), .enable (enable),.out  (out)); 
  initial begin
    clk = 0;  enable = 0; 
reset = 1; 
#5 enable = 1;  
#5   reset = 0; 
#200 $finish; 
end 
    
  always #5 clk = !clk; 
  
initial  begin
    $display("\t\ttime,\tclk,\treset,\tenable,\tout"); 
    $monitor("%d,\t%b,\t%b,\t%b,\t%d",$time, clk,reset,enable,out); 
  end 
endmodule