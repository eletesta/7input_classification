 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4, w5, w6;
assign zero = 0;
assign w0 = ( x0 & x1 ) | ( x0 & x4 ) | ( x1 & x4 );
assign w1 = ( x3 & x6 ) | ( x3 & w0 ) | ( x6 & w0 );
assign w2 = ( x0 & w0 ) | ( x0 & w1 ) | ( w0 & w1 );
assign w3 = ( x1 & x5 ) | ( x1 & w1 ) | ( x5 & w1 );
assign w4 = ( x2 & x4 ) | ( x2 & x5 ) | ( x4 & x5 );
assign w5 = ( x3 & w3 ) | ( x3 & w4 ) | ( w3 & w4 );
assign w6 = ( x2 & w2 ) | ( x2 & w5 ) | ( w2 & w5 );
assign out = w6;
endmodule
