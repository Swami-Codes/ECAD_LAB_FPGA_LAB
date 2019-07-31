module JKFF(
    	 input J,
	 input K,
	 input clk, 
	 input rst,
	 output reg Q
    	);

	always @(posedge clk or posedge rst) //asynch reset
	begin
			if(rst == 1) 
				begin 
				Q <= 0;
				end
			else begin
				case({J, K})
				2'b00: Q <= Q; //no change
				2'b01: Q <= 1'b0; //Clear
				2'b10: Q <= 1'b1; //Set
				2'b11: Q <= ~Q; //Complement
				endcase
			end
	end
endmodule

module JKFF_tb;
	reg J,K,clk,rst;
	wire Q;
	JKFF JKflipflop(.J(J),.K(K),.clk(clk),.rst(rst),.Q(Q));
 
	initial
	begin
 	clk=0;
 	J = 0;
 	K = 0;
	#5 rst = 1;
	#30 rst = 0;
 	$monitor($time, "\tclk=%b\t ,rst=%b\t, J=%b\t,K=%b\t,   Q=%b",clk,rst,J,J,Q);
 	#100 $finish;
	end
 	always #5  clk = ~clk;
 	always #30 J = ~J;
	always #40 K = ~K;
 endmodule




 