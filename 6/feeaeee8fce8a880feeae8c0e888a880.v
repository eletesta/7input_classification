 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4, w5;
assign zero = 0;
assign w0 = ( x4 & x5 ) | ( x4 & x6 ) | ( x5 & x6 );
assign w1 = ( x1 & x4 ) | ( x1 & w0 ) | ( x4 & w0 );
assign w2 = ( x0 & x3 ) | ( x0 & w1 ) | ( x3 & w1 );
assign w3 = ( x0 & x1 ) | ( x0 & w0 ) | ( x1 & w0 );
assign w4 = ( x1 & x5 ) | ( x1 & w3 ) | ( x5 & w3 );
assign w5 = ( x2 & w2 ) | ( x2 & w4 ) | ( w2 & w4 );
assign out = w5;
endmodule
