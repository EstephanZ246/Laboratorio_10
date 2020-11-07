module  Conjunto(clk_PC,reset_PC,enable_PC,load_PC,direccion,
  Program_Byte, clk_Fetch,reset_Fetch,enable_Fetch,Instr,Oprnd);

input wire clk_PC,reset_PC,enable_PC,load_PC,clk_Fetch,
reset_Fetch,enable_Fetch;

input wire [11:0] direccion;
output wire [7:0] Program_Byte;
output wire [3:0] Instr,Oprnd

wire [11:0] PC;


Program_counter P1(clk_PC, reset_PC, enable_PC, load_PC, direccion, PC);
Program_ROM P2(PC,Program_Byte);
Fetch p3(clk_Fetch,reset_Fetch, Program_Byte, Instr, Oprnd);

endmodule


module Program_counter(clk, reset, enable, load ,D,Q);

input wire clk, reset, enable, load;
input wire [11:0] Q;
output reg [11:0] Q

always @(posedge clk or posedge reset or posedge load)
   begin
     if (reset) Q <= 0;
     else if (load) Q <= D;
     else if (enable) Q <= Q+1;
     else Q <= Q;
   end
endmodule

module Program_ROM(direccion,OUT);

input wire [11:0] direccion;
output wire [7:0] OUT;

reg [7:0] memory[0:4095];

initial begin
  $readmemb("memory.list",memory);
end

assign OUT = memory[direccion];

endmodule
