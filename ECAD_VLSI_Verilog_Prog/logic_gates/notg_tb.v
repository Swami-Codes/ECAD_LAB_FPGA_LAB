module notg_tb;
reg A; 
wire Y; 
notg norgate(.A(A),.Y(Y));
initial begin
        A =1'b0;
        #10 A =1'b1; 
        #10
	$finish;
    end 
always @(Y)
    $display( "time =%0t \tINPUT VALUES: \t A=%b   output value Y  =%b",$time,A,Y);
endmodule 