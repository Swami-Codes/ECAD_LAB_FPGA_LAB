module bin2gray_tb;
reg [3:0]B;
wire [3:0]G; 

bin2gray B2G (.B(B) ,.G(G));
always #5 B=B+1'b1;
initial
begin 
$monitor($time,  "\tB=%b\t ,  G=%b\t", B,G);
B <= 4'b0000;
#80 $finish;
end 
endmodule



 