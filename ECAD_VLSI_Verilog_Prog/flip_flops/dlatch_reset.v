module dlatch_reset (data, en,  reset,  q);
	input data, en, reset ; 
	output q;
	reg q;
always @ ( en or reset or data)
	if (reset) begin
  	q <= 1'b0;
	end else if (en) begin
  	q <= data;
	end
endmodule //End Of Module dlatch_reset

module  dlatch_reset_tb;
	reg data, en, reset ; 
	wire q;
	dlatch_reset dlatch(data, en,  reset,  q);	
 
	initial
	begin
 	en=0;
 	data = 0;
 	 
	#5 reset = 1;
	#30 reset = 0;
 	$monitor($time, "\ten=%b\t ,reset=%b\t, data=%b\t, q=%b",en,reset,data,q);
 	#160 $finish;
	end
 	always #25  en = ~en;
 	always #40 data = ~data;
	 
 endmodule

