`define zero 2'b00
`define one1 2'b01
`define two1s 2'b10
module moore_fsm (CLK, reset, in, out);
input CLK, reset, in;
output out;
reg out;
reg [1:0] state; // state variables
reg [1:0] next_state;
	always @(posedge CLK)
	if (reset) state = `zero;
	else state = next_state;

always @(in or state)
	case (state)
	`zero: // last input was a zero
		begin
		if (in) next_state = `one1;
		else next_state = `zero;
		end
	`one1: // we've seen one 1
		begin
		if (in) next_state = `two1s;
		else next_state = `zero;
		end
	`two1s: // we've seen at least 2 ones
		begin
		if (in) next_state = `two1s;
		else next_state = `zero;
		end
		endcase

always @(state)
		case (state)
		`zero: out = 0;
		`one1: out = 0;
		`two1s: out = 1;
		endcase
endmodule


module moore_fsm_tb;
reg CLK, reset, in;
wire out;
moore_fsm mooreFSM(.CLK(CLK), .reset(reset), .in(in), .out(out));
initial 
 begin 
 CLK = 0; 
 reset = 1; 
 in = 0;
#10 reset = 0;
#100   $finish;
 end 
    
 always 
  #5  CLK =  ! CLK; 
always
#5 in = $random;
 
 

 



initial  begin
  $display("\t\ttime,\tCLK,\treset,\tin,\tout"); 
  $monitor("%d,\t%b,\t%b,\t%b,\t%b",$time, CLK,reset,in,out); 
  end 
    
 endmodule


