 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4;
assign zero = 0;
assign w0 = ( x0 & x1 ) | ( x0 & x3 ) | ( x1 & x3 );
assign w1 = ( x0 & x4 ) | ( x0 & w0 ) | ( x4 & w0 );
assign w2 = ( x0 & x2 ) | ( x0 & x5 ) | ( x2 & x5 );
assign w3 = ( x1 & x6 ) | ( x1 & w0 ) | ( x6 & w0 );
assign w4 = ( w1 & w2 ) | ( w1 & w3 ) | ( w2 & w3 );
assign out = w4;
endmodule
