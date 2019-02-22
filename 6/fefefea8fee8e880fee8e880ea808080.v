 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2, w3, w4, w5;
assign zero = 0;
assign w0 = ( x1 & x2 ) | ( x1 & x5 ) | ( x2 & x5 );
assign w1 = ( x3 & x4 ) | ( x3 & x5 ) | ( x4 & x5 );
assign w2 = ( x1 & x2 ) | ( x1 & x6 ) | ( x2 & x6 );
assign w3 = ( x3 & x4 ) | ( x3 & x6 ) | ( x4 & x6 );
assign w4 = ( x0 & w0 ) | ( x0 & w3 ) | ( w0 & w3 );
assign w5 = ( w1 & w2 ) | ( w1 & w4 ) | ( w2 & w4 );
assign out = w5;
endmodule
