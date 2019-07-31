module mux8_1_tb;
reg   D0,D1,D2,D3,D4,D5,D6,D7;
reg  [2:0] S;
wire  Y;
mux8_1_gate mux(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7), .S(S),.Y(Y));
//mux8_1 mux(.D0(D0),.D1(D1),.D2(D2),.D3(D3),.D4(D4),.D5(D5),.D6(D6),.D7(D7), .S(S),.Y(Y));
initial begin
{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
  S= 000;
#10 S= 001;
{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
#10 S= 010;
{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
#10 S= 011;
{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
#10 S= 100;
{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
#10 S= 101;
{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
#10 S= 110;
{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
#10 S= 111;
{D0,D1,D2,D3,D4,D5,D6,D7}=$random%8;  
#10$stop;
end
always @(Y)
    $display("time =%0t \tINPUT VALUES: \t D0 D1 D2 D3 D4 D5 D6 D7=%b%b%b%b%b%b%b%b \t S = %b  \t output value Y  = %b ",$time,D0,D1,D2,D3,D4,D5,D6,D7,S, Y);

endmodule