 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4, w5, w6, w7;
assign zero = 0;
assign w0 = ( x4 & x5 ) | ( x4 & x6 ) | ( x5 & x6 );
assign w1 = ( x1 & x2 ) | ( x1 & x4 ) | ( x2 & x4 );
assign w2 = ( x0 & w0 ) | ( x0 & w1 ) | ( w0 & w1 );
assign w3 = ( x2 & x6 ) | ( x2 & w2 ) | ( x6 & w2 );
assign w4 = ( x1 & x5 ) | ( x1 & w2 ) | ( x5 & w2 );
assign w5 = ( x3 & w3 ) | ( x3 & w4 ) | ( w3 & w4 );
assign w6 = ( x0 & x3 ) | ( x0 & w5 ) | ( x3 & w5 );
assign w7 = ( x4 & w5 ) | ( x4 & w6 ) | ( w5 & w6 );
assign out = w7;
endmodule
