module srff(s,r,clk,rst,q,qb);
	input s,r,clk,rst;
	output q,qb;
	wire s,r,clk,rst,qb;
	reg q;
always @ (posedge clk)
	begin
	if(rst)
	q<=1'b0;
		else if (s==1'b0 && r==1'b0)
				q<=q;
		else if (s==1'b0&& r==1'b1)
				q<=1'b0;
		else if (s==1'b1 && r==1'b0)
				q<=1'b1;
		else if (s==1'b1 && r==1'b1)
		q<=1'bx;
		end
		assign qb=~q;
endmodule

module srff_tb;
	reg s,r,clk,rst;
	wire q,qb;
	srff srflipflop(.s(s),.r(r),.clk(clk),.rst(rst),.q(q),.qb(qb));
 
	initial
	begin
 	clk=0;
 	s = 0;
 	r = 0;
	#5 rst = 1;
	#30 rst = 0;
 	$monitor($time, "\tclk=%b\t ,rst=%b\t, s=%b\t,r=%b\t,  q=%b\t, qb=%b",clk,rst,s,r,q,qb);
 	#100 $finish;
	end
 	always #5  clk = ~clk;
 	always #30 s = ~s;
	always #40 r = ~r;
 endmodule

