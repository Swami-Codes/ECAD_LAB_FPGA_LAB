module Gray_to_Binary ( G ,B );

output [3:0] B ;

input [3:0] G ;

assign B[3] = G[3];
assign B[2] = G[3]^G[2];
assign B[1] = G[3]^G[2]^G[1];
assign B[0] = G[3]^G[2]^G[1]^G[0];

endmodule

