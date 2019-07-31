module demux_8_1_gate(input D, input [2:0]S,output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
wire inv0, inv1, inv2; // Inverter outputs.
// Inverters.
not not_0 (inv0, S[0]);
not not_1 (inv1, S[1]);
not not_2 (inv2, S[2]);
 // 3-input AND gates.
 and and_0 (Y0, inv2, inv1, inv0,D );
and and_1 (Y1, inv2, inv1, S[0],D );
and and_2 (Y2, inv2, S[1], inv0,D );
and and_3 (Y3, inv2, S[1], S[0],D );
and and_4 (Y4, S[2], inv1, inv0,D );
and and_5 (Y5, S[2], inv1, S[0],D );
and and_6 (Y6, S[2], S[1], inv0,D );
and and_7 (Y7, S[2], S[1], S[0],D ); 
 
endmodule

