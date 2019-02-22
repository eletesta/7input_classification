 module top ( 
 x0, x1, x2, x3, x4, x5, x6, out);
input x0, x1, x2, x3, x4, x5, x6;
output out;
 wire zero, w0, w1;
assign zero = 0;
assign w0 = ( x0 & x1 ) | ( x0 & x2 ) | ( x1 & x2 );
assign w1 = ( x0 & x3 ) | ( x0 & w0 ) | ( x3 & w0 );
assign out = w1;
endmodule
