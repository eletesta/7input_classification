 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4, w5;
assign zero = 0;
assign w0 = ( x2 & x3 ) | ( x2 & x5 ) | ( x3 & x5 );
assign w1 = ( x0 & x1 ) | ( x0 & x6 ) | ( x1 & x6 );
assign w2 = ( x1 & x5 ) | ( x1 & w1 ) | ( x5 & w1 );
assign w3 = ( x3 & x4 ) | ( x3 & w2 ) | ( x4 & w2 );
assign w4 = ( x0 & x2 ) | ( x0 & w3 ) | ( x2 & w3 );
assign w5 = ( w0 & w1 ) | ( w0 & w4 ) | ( w1 & w4 );
assign out = w5;
endmodule
