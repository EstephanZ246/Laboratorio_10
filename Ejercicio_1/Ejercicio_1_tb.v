module Ejercicio_1_tb();

reg clk_PC,reset_PC,enable_PC,load_PC;
reg clk_Fetch,reset_Fetch, enable_Fetch;
reg [11:0] RAM;
wire [7:0] Program_Byte;
wire [3:0] Instr,Oprnd;

//instancia
conjunto c1(clk_PC,reset_PC,enable_PC,load_P, RAM,Program_Byte,clk_Fetch,reset_Fetch,enable_Fetch,Instr,Oprnd,PC);




initial begin
   #1 $display(" ");
   $display(" ");
   $display("Implementación de ejercicio 1");
   $display("CP  RP  LP  CF RF EP| PB IT OD");
   $display("____________________|_____");
   $monitor(" %b  %b  %b %b %b %b %b %b %b %b | ", clk_PC,reset_PC,load_PC,clk_Fetch,reset_Fetch,enable_PC,Program_Byte,Instr,Oprnd);
   end

   always
   #1 clk_PC = ~clk_PC;
   always
   #1 clk_Fetch = ~clk_Fetch;

  // RAM = 12'b000000000011;
  // clk_PC=0; clk_Fetch=0;









endmodule
