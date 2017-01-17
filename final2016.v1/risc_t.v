`ifndef IPATH
	`define IPATH \"testcase.dat\" //"
`endif

`ifndef DPATH
	`define DPATH \"testcase.dat\" //"
`endif

`ifndef CYC
	`define CYC 300
`endif


module Pipeline;

reg clk, rst_n;
reg [31:0] instr;
wire [31:0] Dmem_input;
wire [31:0] Dmem_output;
wire [31:0] Imem_input;
wire [10:0] Data_addr;
wire [10:0] instruction_addr;
wire Imem_oen;
wire Dmem_oen;
wire Dmem_wen;
wire [31:0] instruction;
wire [1:0]C_sel ;
wire [31:0] pc_next ;
reg [31:0] IA_BUF , DA_BUF ;
parameter period = 20;

always@(*) #1 DA_BUF = Data_addr ;
always@(*) #1 IA_BUF = instruction_addr ;


pipeline Pipeline(
	.clk(clk),
	.rst_n(rst_n),
	.Instruction(Imem_input),
	.Dmem_input(Dmem_input),
	.Dmem_output(Dmem_output),
	.InstrAddr(instruction_addr),
	.Data_addr(Data_addr),
	.InstrMemory_OEN(Imem_oen),
	.DataMemory_OEN(Dmem_oen),
	.DataMemory_WEN(Dmem_wen),
	.halt(halt),
	.C_sel(C_sel),
	.pc_next(pc_next)
);

RAM2Kx32 #(.preload_file(`IPATH)) I_mem(
	.Q(Imem_input),
	.CLK(clk),
	.CEN(1'b0),
	.WEN(1'b1),
	.OEN(0),
	.A(IA_BUF)
);

RAM2Kx32 #(.preload_file(`DPATH)) d_mem(
	.Q(Dmem_input),
	.CLK(clk),
	.CEN(1'b0),
	.WEN(Dmem_wen),
	.OEN(Dmem_oen),
	.A(DA_BUF),
	.D(Dmem_output)
);

	always #(period/2)clk = ~clk;

	initial begin
    `ifdef NETLIST
			$sdf_annotate("pipeline.sdf", Pipeline);
			$fsdbDumpfile("pipeline_syn.fsdb");
		`else 
			$fsdbDumpfile("pipeline.fsdb");
		`endif
		$fsdbDumpvars;
	
	end

	initial begin
		clk = 0;
		instr = 0;
		rst_n = 0;
		#(period);
		#(period/2) rst_n = 1;
		#(`CYC*period)
		$display(`IPATH);
		$display(`DPATH);
		$finish;
	end
endmodule
