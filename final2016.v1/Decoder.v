`timescale  1ns/100ps
module Decoder(clk,rst_n,instruction , flush , RW , MD , BS , PS , MW , FS , MB , MA , CS , DA , AA , BA);

input [31:0] instruction;
input wire flush ; 
input clk , rst_n ;
reg [6:0] opcode ;
output reg[4:0] DA , AA , BA ;
output reg MB , RW , PS , MW  , CS , MA;
output reg[3:0] FS ; 
output reg[1:0] MD  , BS;


	

always@(*)
	begin
	opcode = 0;
	RW = 0;
	DA = 0;
	MD = 0;
	BS = 0;
	PS = 0;
	MW = 0;
	FS = 0;
	MA = 0;
	MB = 0;
	AA = 0;
	BA = 0;
	CS = 0;
	
	
	if(flush == 0)
		begin
		opcode = instruction [31:25] ;
		DA = instruction[24:20];
		AA = instruction[19:15];
		BA = instruction[14:10];
		case(opcode)
			7'b0000000:
				begin
					RW = 0 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0000 ;
					MB = 1'b0;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b1000000:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0000 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0000010:
				begin
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0010 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0000101:
				begin	
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0101 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0001000:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1000 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0001001:
				begin 
					RW = 1;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0;
					MW = 0 ;
					FS = 4'b1001 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0001010:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1010 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0001011:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1011 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			//immediate 
			7'b0100010:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0010 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b1 ; 
				end
			7'b0100101:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0101 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b1 ; 
				end
			7'b0101000:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1000 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0101001:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1001 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0101010:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1010 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b1000010:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0010 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b1000101:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0101;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			//other
			7'b0001100:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1100 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0001101:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1101 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0001110:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b1110 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0010000:
				begin 
					RW = 1 ;
					MD = 2'b01 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0000 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b0100000:
				begin 
					RW = 0 ;
					MD = 2'b00 ;
					BS = 0 ;
					PS = 1'b0;
					MW = 1 ;
					FS = 4'b0000 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b1110000:
				begin 
					RW = 0 ;
					MD = 2'b00 ;
					BS = 2'b10 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0000 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b1100101:
				begin 
					RW = 1 ;
					MD = 2'b10 ;
					BS = 0 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0101 ;
					MB = 1'b0 ;
					MA = 1'b0 ;
					CS = 1'b0 ; 
				end
			7'b1100000:
				begin 
					RW = 0 ;
					MD = 2'b00 ;
					BS = 2'b01 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0000 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b1 ; 
				end
			7'b1001000:
				begin 
					RW = 0 ;
					MD = 2'b00 ;
					BS = 2'b01 ;
					PS = 1'b1 ;
					MW = 0 ;
					FS = 4'b0000 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b1 ; 
				end
			7'b1101000:
				begin 
					RW = 0 ;
					MD = 2'b00 ;
					BS = 2'b11 ;
					PS = 1'b0;
					MW = 0 ;
					FS = 4'b0000 ;
					MB = 1'b1 ;
					MA = 1'b0 ;
					CS = 1'b1 ; 
				end
			7'b0110000:
				begin 
					RW = 1 ;
					MD = 2'b00 ;
					BS = 2'b11 ;
					PS = 1'b0 ;
					MW = 0 ;
					FS = 4'b0000 ;
					MB = 1'b1 ;
					MA = 1'b1 ;
					CS = 1'b1 ; 
				end	
					
		endcase
	
	end
end
endmodule