 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2;
assign zero = 0;
assign w0 = ( x1 & x2 ) | ( x1 & x3 ) | ( x2 & x3 );
assign w1 = ( x4 & x5 ) | ( x4 & x6 ) | ( x5 & x6 );
assign w2 = ( x0 & w0 ) | ( x0 & w1 ) | ( w0 & w1 );
assign out = w2;
endmodule
