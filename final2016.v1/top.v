module top
#(parameter Imemory = "ins.dat", Dmemory = "bin.dat")
(
	input clk,
	input rst_n,
	output halt
);

wire [31:0] Dmem_input;
wire [31:0] Dmem_output;
wire [31:0] Imem_input;
wire [10:0] Data_addr;
wire [10:0] instruction_addr;
wire Imem_oen;
wire Dmem_oen;
wire Dmem_wen;
wire [31:0] instruction;

assign instruction = Imem_input;

pipeline Pipeline(
	.clk(clk),
	.rst_n(rst_n),
	.Instruction(instruction),
	.Dmem_input(Dmem_input),
	.Dmem_output(Dmem_output),
	.InstrAddr(instruction_addr),
	.Data_addr(Data_addr),
	.InstrMemory_OEN(Imem_oen),
	.DataMemory_OEN(Dmem_oen),
	.DataMemory_WEN(Dmem_wen),
	.halt(halt)
);

RAM2Kx32 #(.preload_file(Imemory)) I_mem(
	.Q(Imem_input),
	.CLK(clk),
	.CEN(1'b0),
	.WEN(1'b1),
	.OEN(Imem_oen),
	.A(instruction_addr)
);

RAM2Kx32 #(.preload_file(Dmemory)) d_mem(
	.Q(Dmem_input),
	.CLK(clk),
	.CEN(1'b0),
	.WEN(Dmem_wen),
	.OEN(Dmem_oen),
	.A(Data_addr),
	.D(Dmem_output)
);
endmodule