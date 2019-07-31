module Gray_to_Binary_tb;
reg [3:0]G;
wire [3:0]B;
Gray_to_Binary G2B (.G(G) ,.B(B));
always #5 G=G+1'b1;
initial
begin
$monitor($time,  "\tG=%b\t, B=%b\t", G,B); 
 G <= 4'b0000;
 #80 $finish;
end
endmodule

