
module pipeline 
(
	input clk,
	input rst_n,
	input [31:0] Instruction,
	input [31:0] Dmem_input,
	output reg [31:0] Dmem_output,
	output reg [10:0] InstrAddr,
	output reg [10:0] Data_addr,
	output reg InstrMemory_OEN,
	output reg DataMemory_OEN,
	output reg DataMemory_WEN,
	output reg halt ,
	output reg [1:0] C_sel ,
	output reg [31:0]pc_next 
);

  reg [31:0] RAA  , BrA , Mux_C  ;
  reg [1:0] MC ;
  reg [31:0] pc , pc_1 , pc_2  ;
  reg DOF_flush;
  reg [31:0] Forward;
  reg halt_nextcycle ;
  
  integer i ;
  // signals for instruction memory IM
  reg DataMemory_OEN_preload;
  reg DataMemory_WNE_preload; 
  reg [31:0] instruction ;
  reg [31:0] instruction_next;
  wire [4:0] DA , AA , BA ;
  wire MB , RW , MW , PS , CS , MA ;
  wire [3:0] FS ;
  wire [1:0] MD  , BS;
  reg  [14:0] IM ;
  reg  [4:0] SH ;
  wire [31:0] Bus_A , Bus_B ; 
  reg [31:0] constant;
  
  
  wire DOF_RW; //For when to using D data
  wire [4:0] DOF_DA; //Destination Register
  wire [4:0] DOF_AA; //Source A
  wire [4:0] DOF_BA; //Sorece B
  wire [1:0] DOF_MD; //SEL of MUX_D
  wire [1:0] DOF_BS; //Branch sel
  wire DOF_PS; //Branch on Zero or Not
  wire DOF_MW; //Memory Write in Data Memory
  wire [3:0] DOF_FS; //Least signifiant 4 bits of Opcodes

  reg [4:0] DOF_SH; // IR[4:0] For Barrel shifter

  wire V, C, N, Z; //OverFlow, CarryOut, Negative, Zero
  wire [31:0] F; // Output of Function unit
  reg [31:0] EX_BUS_A, EX_BUS_B; // From BUS_A and BUS_B
  reg EX_RW, EX_PS, EX_MW;
  reg [1:0] EX_MD, EX_BS;
  reg [3:0] EX_FS;
  reg [4:0] EX_DA, EX_AA, EX_BA;
  reg [4:0] EX_SH;


reg EX_Hazard_A, EX_Hazard_B; //Data Hazard in EX


/*****WB STAGE*****/
reg WB_RW;
reg [1:0] WB_MD;
reg [4:0] WB_DA;
reg [31:0] WB_F, WB_DataIn, WB_SLT; //Function unit out, Read from Data memory
/** WB_SLT : {31'b0, N ^ V}  Compare R[AA] < R[BA] **/
wire [31:0] BUS_D; // Out From MUX_D to select from WB_F, WB_DataIn, WB_SLT
reg WB_Hazard_A, WB_Hazard_B; // Data Hazard in WB
/*****WB STAGE*****/


  always@(posedge clk or negedge rst_n)
	begin
		if (!rst_n) begin
		// reset
		InstrAddr = 11'b0;
		InstrMemory_OEN = 1'b0;
		halt = 1'b0;
		pc = 0;
		pc_1 = 0;
		pc_2 = 0;
		DOF_flush = 0;
		/*WB*/
		WB_RW = 0;
		WB_MD = 0;
		WB_DA = 0;
		WB_F = 0;
		WB_SLT = 0;
		WB_DataIn = 0;
		/*EX*/
		EX_FS = 0;
		EX_RW = 0;
		EX_DA = 0;
		EX_MD = 0;
		EX_BS = 0;
		EX_PS = 0;
		EX_BUS_B = 0 ;
		EX_BUS_A = 0 ;
		halt = 0 ;
	end
	else begin
		InstrMemory_OEN = 1'b0;
		pc_2 = pc_1;
		pc_1 = pc;
		pc = pc_next;
		InstrAddr = pc[10:0];
		/*DOF*/
				/*WB*/
		WB_RW = EX_RW;
		WB_DA = EX_DA;
		WB_MD = EX_MD;
		WB_F = F;
		WB_SLT = {31'b0, N^V};
		WB_DataIn = Dmem_input;
		/*EX*/
		EX_RW = DOF_RW;
		EX_DA = DOF_DA;
		EX_MD = DOF_MD;
		EX_BS = DOF_BS;
		EX_PS = DOF_PS;
		EX_MW = DOF_MW;
		EX_FS = DOF_FS;
		EX_SH = DOF_SH;
		EX_BUS_A = Bus_A;
		EX_BUS_B = Bus_B;
		DOF_flush = C_sel;
		Dmem_output = EX_BUS_B;
		halt = halt_nextcycle;
	end
end

always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		instruction <= 0;
	end else begin
		instruction <= instruction_next;
	end
	
end	


always @(*) begin

	if(C_sel != 2'b00 | DOF_flush | rst_n == 0) begin
		instruction_next  = 32'b0;
	end 
	else 
	begin
		instruction_next = Instruction;
	end
	if( &instruction_next | halt) begin
		halt_nextcycle = 1'b1;
	end
	else
		begin 
			halt_nextcycle = 0 ;
		end
end

	
  
always@(*)
	begin
		IM = instruction[14:0] ;
		DOF_SH = instruction[4:0] ;
	end
	
wire [31:0] A_data , B_data ;
	
	Register_File Register_file(
	.clk(clk),
	.rst_n(rst_n),
	.instruction(instruction),
	.AA(DOF_AA),
	.BA(DOF_BA),
	.BUS_D(BUS_D),
	.RW(WB_RW),
	.DA(WB_DA),
	.A_data(A_data), 
	.B_data(B_data)
);
	
	Decoder  instruction_decode(
	 .clk(clk),
	 .rst_n(rst_n),
     .instruction(instruction), 
	 .flush(|C_sel) ,
	 .RW(DOF_RW),
	 .MD (DOF_MD), 
	 .BS(DOF_BS) , 
	 .PS(DOF_PS) , 
	 .MW(DOF_MW) , 
	 .FS(DOF_FS) , 
	 .MB(MB) , 
	 .MA (MA), 
	 .CS(CS) , 
	 .DA(DOF_DA) , 
	 .AA(DOF_AA) , 
	 .BA(DOF_BA)
  );
  
	
	always@(*)
		begin
			if(CS == 1'b0)
				begin
					for(i = 0 ; i <=31 ; i = i+ 1 )
						begin	
							if(i < 15)
								constant[i] = IM[i] ;
							else	
								constant[i] = 0 ;
						end		
				end
			else
				begin
					for(i = 0 ; i <=31 ; i = i + 1 )
						begin	
							if(i < 15)
								constant[i] = IM[i] ;
								
								
							else	
									constant[i] = IM[14] ;
						end		
					
				end
		end
			
		
	MUX_A   Mux_A(
	.clk(clk),
	.rst_n(rst_n),
	.EX_Hazard_A(EX_Hazard_A),
	.WB_Hazard_A(WB_Hazard_A),
	.Forward(Forward),
	.BUS_D(BUS_D),
	.pc_1(pc_1),
	.A_data(A_data) ,
	.MA(MA),
	.Bus_A(Bus_A),
	.EX_MD(EX_MD)
	
	) ;
	MUX_B Mux_B(
	.constant(constant),
	.B_Data(B_data),
	.MB(MB) ,
	.Bus_B(Bus_B),
	.EX_Hazard_B(EX_Hazard_B),
	.WB_Hazard_B(WB_Hazard_B),
	.Forward(Forward),
	.BUS_D(BUS_D)
	) ;
	always @(posedge clk or negedge rst_n) begin
	if (!rst_n) begin
		// reset
		DataMemory_WEN = 1'b1;
		DataMemory_OEN = 1'b1;
	end
	else begin
		DataMemory_WEN = DataMemory_WNE_preload;
		DataMemory_OEN = DataMemory_OEN_preload;
	end
end
	
	always @(*)
	begin
			DataMemory_OEN_preload = 1'b1;
			DataMemory_WNE_preload = 1'b1;
		if(DOF_MW)
			begin //Data write to memory
				DataMemory_WNE_preload = 1'b0;
			end
		if(DOF_MD[0])
			begin //DataIN from memory
				DataMemory_OEN_preload = 1'b0;
			end
		if(DataMemory_WEN) 
			begin //Not going to Write
				Data_addr = Bus_A;
			end 
		else 
			begin
				Data_addr = EX_BUS_A;
			end
	end
	
	
	Function_Unit Function_unit(
	.clk(clk),
	.rst_n(rst_n),
	.A(EX_BUS_A),
	.B(EX_BUS_B),
	.FS(EX_FS),
	.SH(EX_SH),
	.Z(Z),
	.N(N),
	.C(C),
	.V(V),
	.F(F)
	
	) ;
	
	always @(*) begin
		EX_Hazard_A = 0 ;
		EX_Hazard_B = 0 ;
		WB_Hazard_A = 0 ;
		WB_Hazard_B = 0 ;
	
	if((EX_RW != 0) && (EX_DA != 5'b00000) && (MA == 0) && (EX_DA == DOF_AA))
		begin
			EX_Hazard_A = 1'b1;
		end 
	else 
		begin
			EX_Hazard_A = 1'b0;
		end
	if((EX_RW != 0) && (EX_DA != 5'b00000) && (MB == 0) && (EX_DA == DOF_BA))
		begin
			EX_Hazard_B = 1'b1;
		end
	else 
		begin
			EX_Hazard_B = 1'b0;
		end
	if((WB_RW != 0) && (WB_DA != 5'b00000) && (MA == 0) && (WB_DA == DOF_AA))
		begin
			WB_Hazard_A = 1'b1;
		end 
	else 
		begin
			WB_Hazard_A = 1'b0;
		end
	if((WB_RW != 0) && (WB_DA != 5'b00000) && (MB == 0) && (WB_DA == DOF_BA))
		begin
			WB_Hazard_B = 1'b1;
		end 
	else 
		begin
			WB_Hazard_B = 1'b0;
		end
end
	
	
	always @(*)begin
	Forward = 0;
	case(EX_MD)
		2'b00 : Forward = F;
		2'b01 : Forward = Dmem_input ;  
		2'b10 : Forward = {31'b0, N^V};
		default:Forward = 0;
	endcase
end

	
	
	always @(*)
		begin
			BrA = pc_2 + EX_BUS_B;
			RAA = EX_BUS_A;
		end
  
	MUX_D Mux_D(
	.clk(clk),
	.rst_n(rst_n),
	.WB_F(WB_F),
	.WB_DataIn(WB_DataIn),
	.WB_SLT(WB_SLT),
	.WB_MD(WB_MD) ,
	.BUS_D(BUS_D)	
	)	;
	
	
	always @(*) begin
		if(!DOF_flush) begin
			C_sel = {EX_BS[1], (((EX_PS ^ Z) | EX_BS[1])&EX_BS[0])};
		end else begin
			C_sel = 0;
		end
	end

/* MUXC */
	always @(*) begin	
		pc_next = pc + 1;
		case(C_sel)
			2'b01 : pc_next = BrA;
			2'b11 : pc_next = BrA;
			2'b10 : pc_next = RAA;
		endcase

	end
  endmodule
