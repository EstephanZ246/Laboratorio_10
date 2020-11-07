module  Conjunto(clk_ALU,reset_ALU,enable_ALU,data_bus, accu, Entrada,
                salida_ALU,CZ_ALU,Configuracion_ALU,
                Control_1,Control_2);

input wire  clk_ALU,reset_ALU,Control_1,Control_2;
output wire [3:0] data_bus,accu,salida_ALU;
output wire [1:0] CZ_ALU;


///// señales clk y reset para el acumulador, de control  para buffers
// señal de control para ALU


Bus_driver1 f1(Entrada,Control_1,data_bus);

endmodule

module Bus_driver1(a,enable,salida);

input  [3:0] a;
input  enable;
output  [3:0] salida;

assign salida = enable ? a : 4'bZZZZ;

endmodule
/////////////////////////////////////////////////////////
module ALU(clk,reset,enable,operacion,Entrada, acumulador,salida,cz);

input wire clk,reset,enable;
input wire [2:0] operacion;
input wire [3:0] Entrada, acumulador;
output wire [3:0] salida;
output  wire [1:0] cz;

always @(posedge Entrada or posedge operacion or posedge acumulador)

begin
case(operacion)
3'b000: // dejar pasar accu
3'b001: // resta
3'b010: //  dejar pasar data_bus
3'b011: // Suma
3'b100: // NAND





endcase
end
endmodule
