module mux8_1_gate(input D0,D1,D2,D3,D4,D5,D6,D7, input [2:0]S,output Y);
 
wire inv0, inv1, inv2; // Inverter outputs.
wire a0, a1, a2, a3, a4, a5, a6, a7 ; // AND gates outputs.

// Inverters.
not not_0 (inv0, S[0]);
not not_1 (inv1, S[1]);
not not_2 (inv2, S[2]);
 

// 3-input AND gates.
 and and_0 (a0, inv2, inv1, inv0,D0);
and and_1 (a1, inv2, inv1, S[0],D1);
and and_2 (a2, inv2, S[1], inv0,D2);
and and_3 (a3, inv2, S[1], S[0],D3);
and and_4 (a4, S[2], inv1, inv0,D4);
and and_5 (a5, S[2], inv1, S[0],D5);
and and_6 (a6, S[2], S[1], inv0,D6);
and and_7 (a7, S[2], S[1], S[0],D7); 

 

// 8-input OR gate.
or or_0(Y, a0, a1, a2, a3, a4, a5, a6, a7);

endmodule