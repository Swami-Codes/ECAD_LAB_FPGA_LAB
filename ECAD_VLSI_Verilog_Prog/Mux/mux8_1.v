module mux8_1(input D0,D1,D2,D3,D4,D5,D6,D7, input [2:0]S,output reg Y);
always @( * ) 
begin
  if (S==3'b000) Y=D0;
else if (S==3'b001) Y=D1; 
else if (S==3'b010) Y=D2;
else if (S==3'b011) Y=D3;  
else if (S==3'b100) Y=D4;  
else if (S==3'b101) Y=D5; 
else if (S==3'b110) Y=D6;
else if    (S==3'b111) Y=D7;
else Y=0;
end
endmodule

 
