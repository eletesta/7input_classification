 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4;
assign zero = 0;
assign w0 = ( x1 & x2 ) | ( x1 & x3 ) | ( x2 & x3 );
assign w1 = ( x2 & x3 ) | ( x2 & x4 ) | ( x3 & x4 );
assign w2 = ( x1 & x4 ) | ( x1 & w0 ) | ( x4 & w0 );
assign w3 = ( x5 & x6 ) | ( x5 & w1 ) | ( x6 & w1 );
assign w4 = ( x0 & w2 ) | ( x0 & w3 ) | ( w2 & w3 );
assign out = w4;
endmodule
