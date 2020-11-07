module data_b(IN,ENABLE,OUT);

input [3:0] IN;
input ENABLE;
output [3:0] OUT;

assign OUT = ENABLE ? IN : 4'bZZZZ;

endmodule
