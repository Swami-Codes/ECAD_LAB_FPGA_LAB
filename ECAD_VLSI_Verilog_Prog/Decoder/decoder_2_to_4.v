module decoder_2_to_4(EN, A0, A1, D0, D1, D2, D3);
   		input EN, A0, A1;
   		output D0, D1, D2, D3;
     		wire x,y;
    		not u1(y,A1);
    		not u2(x,A0);
   		and u3(D0,EN,y,x);
   		and u4(D1,EN,A0,y);
    		and u5(D2,EN,x,A1);
    		and u6(D3,EN,A0,A1);
    endmodule





 