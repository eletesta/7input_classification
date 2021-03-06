 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4, w5, w6;
assign zero = 0;
assign w0 = ( x0 & x3 ) | ( x0 & x4 ) | ( x3 & x4 );
assign w1 = ( x2 & x3 ) | ( x2 & x6 ) | ( x3 & x6 );
assign w2 = ( x0 & x2 ) | ( x0 & x6 ) | ( x2 & x6 );
assign w3 = ( x3 & x4 ) | ( x3 & w1 ) | ( x4 & w1 );
assign w4 = ( x0 & x2 ) | ( x0 & w0 ) | ( x2 & w0 );
assign w5 = ( x5 & w2 ) | ( x5 & w3 ) | ( w2 & w3 );
assign w6 = ( x1 & w4 ) | ( x1 & w5 ) | ( w4 & w5 );
assign out = w6;
endmodule
