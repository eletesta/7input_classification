 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4, w5, w6, w7;
assign zero = 0;
assign w0 = ( x0 & x1 ) | ( x0 & x4 ) | ( x1 & x4 );
assign w1 = ( x1 & x2 ) | ( x1 & x4 ) | ( x2 & x4 );
assign w2 = ( x0 & x3 ) | ( x0 & w1 ) | ( x3 & w1 );
assign w3 = ( x2 & x5 ) | ( x2 & w2 ) | ( x5 & w2 );
assign w4 = ( x5 & w0 ) | ( x5 & w2 ) | ( w0 & w2 );
assign w5 = ( x4 & x6 ) | ( x4 & w3 ) | ( x6 & w3 );
assign w6 = ( x1 & x2 ) | ( x1 & x3 ) | ( x2 & x3 );
assign w7 = ( w4 & w5 ) | ( w4 & w6 ) | ( w5 & w6 );
assign out = w7;
endmodule
