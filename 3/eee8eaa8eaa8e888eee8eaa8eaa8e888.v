 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1, w2;
assign zero = 0;
assign w0 = ( x0 & x4 ) | ( x0 & x5 ) | ( x4 & x5 );
assign w1 = ( x2 & x3 ) | ( x2 & w0 ) | ( x3 & w0 );
assign w2 = ( x0 & x1 ) | ( x0 & w1 ) | ( x1 & w1 );
assign out = w2;
endmodule
