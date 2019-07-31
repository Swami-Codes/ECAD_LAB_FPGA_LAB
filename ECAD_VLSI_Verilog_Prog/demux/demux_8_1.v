module demux_8_1(D, S, Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
  input         D;
  input   [2:0] S;
  output  Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
  assign {Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7} = D << S; 
endmodule 
