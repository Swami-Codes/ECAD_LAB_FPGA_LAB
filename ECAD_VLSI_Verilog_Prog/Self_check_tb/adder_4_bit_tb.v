  module adder_4_bit_tb();        //TestBench code start      
   reg  [3:0] x, y; 
   reg  cin;
   wire  [3:0] z;
   wire  cout;
   reg [4:0]tot_sum;
   
     
                                         
              adder_4_bit adder_4_bit_DUT ( x, y, cin, z, cout); //DUT Instantiation            
                                       
             initial                      
             repeat(100) begin   
                                  
                   x = $random;    //apply random stimulus          
                   y = $random; 
                   cin = $random;   
                     #10 ;          
                   tot_sum = {cout,z}; 
                   $display(" x +y +cin= {cout +z}= tot_sum");
                   $display(" %b+ %b+ %b= {%b%b} = %b",x,y,cin,cout,z, tot_sum); 
                   if( x + y + cin != tot_sum)     // monitor logic.
                       $display(" *ERROR* ");
                    else  $display(" *Passed* ");
                      
             end                                                          
        endmodule            //TestBench code end