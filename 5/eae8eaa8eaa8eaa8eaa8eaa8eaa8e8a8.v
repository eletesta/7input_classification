 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4;
assign zero = 0;
assign w0 = ( x3 & x4 ) | ( x3 & x5 ) | ( x4 & x5 );
assign w1 = ( x0 & x1 ) | ( x0 & x2 ) | ( x1 & x2 );
assign w2 = ( x0 & x3 ) | ( x0 & w1 ) | ( x3 & w1 );
assign w3 = ( x6 & w1 ) | ( x6 & w2 ) | ( w1 & w2 );
assign w4 = ( w0 & w2 ) | ( w0 & w3 ) | ( w2 & w3 );
assign out = w4;
endmodule