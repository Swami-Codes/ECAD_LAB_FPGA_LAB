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



