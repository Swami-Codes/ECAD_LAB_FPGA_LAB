module demux_8_1_gate_tb;
reg   D;
reg  [2:0] S;
wire  Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7; 
//demux_8_1_gate demux(.D(D),.S(S),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6),.Y7(Y7));
 demux_8_1 demux(.D(D),.S(S),.Y0(Y0),.Y1(Y1),.Y2(Y2),.Y3(Y3),.Y4(Y4),.Y5(Y5),.Y6(Y6),.Y7(Y7));
initial begin
D=$random;  
  S= 000;
#10 S= 001;
D=$random;  
#10 S= 010;
D=$random;  
#10 S= 011;
D=$random;  
#10 S= 100; 
D=$random;  
#10 S= 101;
D=$random;  
#10 S= 110;
D=$random;  
#10 S= 111;
D=$random;  
#10$stop;
end
always @(*)
    $display("time =%0t \tINPUT VALUES: \t D =%b \t S = %b  \t output value Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7  = %b%b%b%b%b%b%b%b ",$time,D,S,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);

endmodule