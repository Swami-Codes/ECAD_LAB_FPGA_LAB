module fulladder_gate_level
(
 input A,
 input B,
 input Cin,
 
 output S, 
 output Cout
 );
 
 
wire  p,r,s;
	xor (p,A,B);
	xor (S,p,Cin);
 
	and(r,p,Cin);
	and(s,A,B);
	or(Cout,r,s);
 
endmodule
module fulladder_data_flow
( input A,
 input B,
 input Cin,
 
 output   S, 
 output   Cout);
 

assign S = A^B^Cin;
assign Cout = (A&B)|(B&Cin)|(Cin&A);
 
endmodule

module fulladder_behav
(
 input A,
 input B,
 input Cin,
 
 output S, 
 output Cout
 );
 
assign {Cout,S} =  Cin + A + B;
 
endmodule


module fulladder_gate_level_tb;
reg A, B, Cin;
wire S, Cout;
 integer i;
fulladder_gate_level FA (.A(A),.B(B) ,.Cin(Cin), .S(S), .Cout(Cout));
  
initial
begin
{A,B,Cin} <= 3'b000;
for(i=1;i<20; i=i+1)
begin
$monitor($time, "\tA=%b\t    B=%b\t   Cin=%b\t   S=%b\t    Cout=%b", A, B,Cin, S,Cout);
#5{A,B,Cin} <= $random%8;
end
//always #5 {A,B,Cin}<=$random%8;

 #45 $finish;
end

endmodule
