
`define zero 2'b00
`define one  2'b01

module mealy_fsm (clk, reset, in, out);
	input clk, reset, in;
	output out;
	reg out;
	reg state; // state variables
always @(posedge clk)
	if (reset) state = `zero;
	else
	case (state)
		`zero: // last input was a zero
		begin
		out = 0;
		if (in) state = `one;
		else state = `zero;
		end
		`one: // we've seen one 1
		if (in) begin
		state = `one; out = 1;
		end else begin
		state = `zero; 
                out = 0;
		end
	endcase
endmodule


module mealy_fsm_tb;
reg clk, reset, in;
wire out;
mealy_fsm mooreFSM(.clk(clk), .reset(reset), .in(in), .out(out));
initial 
 begin 
 clk = 0; 
 reset = 1; 
 in = 0;
#10 reset = 0;
#100   $finish;
 end 
    
 always 
  #5  clk =  ! clk; 
always
#5 in = $random;
 
initial  begin
  $display("\t\ttime,\tclk,\treset,\tin,\tout"); 
  $monitor("%d,\t%b,\t%b,\t%b,\t%b",$time, clk,reset,in,out); 
  end 
    
 endmodule