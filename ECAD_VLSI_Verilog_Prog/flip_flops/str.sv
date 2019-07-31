module str; 
string A; 
string B; 
initial 
begin 
A = "TEST "; 
B = "Bench"; 
$display(" %d ",A.len() ); 
$display(" %s ",A.getc(3) ); 
$display(" %s ",A.tolower); 
$display(" %s ",B.toupper); 
$display(" %d ",B.compare(A) ); 
$display(" %d ",A.compare("test") ); 
$display(" %s ",A.substr(2,3) ); A = "111"; 
$display(" %d ",A.atoi() ); 
end 
endmodule  