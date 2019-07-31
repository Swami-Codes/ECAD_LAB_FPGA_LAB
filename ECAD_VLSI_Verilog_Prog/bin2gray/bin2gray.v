module bin2gray ( B ,G );

input [3:0] B ;
wire [3:0] B ;

output [3:0] G ;
wire [3:0] G ;

assign G[3] = B[3];
assign G[2:0] = B[3:1] ^ B[2:0];

endmodule


