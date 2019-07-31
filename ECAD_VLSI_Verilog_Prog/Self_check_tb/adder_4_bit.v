module adder_4_bit(x,y,cin,z,cout); //z=x+y
	input [3:0] x, y; // x and y are 4-bit inputs
	input cin;
	output [3:0] z;
	output cout;
	wire [3:1] carry; // used for internal carries between FA's

	fulladder_gate_level fa0(.A(x[0]),.B(y[0]),.Cin(cin),.S(z[0]),.Cout(carry[1]));
	fulladder_gate_level fa1(.A(x[1]),.B(y[1]),.Cin(carry[1]),.S(z[1]),.Cout(carry[2]));
	fulladder_gate_level fa2(.A(x[2]),.B(y[2]),.Cin(carry[2]),.S(z[2]),.Cout(carry[3]));
	fulladder_gate_level fa3(.A(x[3]),.B(y[3]),.Cin(carry[3]),.S(z[3]),.Cout(cout));
endmodule
 
