`timescale  1ns/100ps
module Function_Unit(clk,rst_n,A, B,SH, FS, F, V, C, N, Z);
	input [31:0] A, B;
	reg [31:0] S ;
	input [3:0] FS;
	input [4:0] SH ;
	input clk , rst_n ;
	output reg [31:0] F;
	output reg V, C, N, Z;
		
		
		
	always @(*) 
		begin
		
		F = 0 ;
		C = 0 ;

		if (FS == 4'b0000) 
				begin
					S = 0 ;
					{C , F} = A;
				end
		else if (FS == 4'b1011)
				 begin
					S = 0 ;
					{C , F}  = ~A ;
				end
		else if (FS == 4'b0010)
				begin
					{C , F} = A + B;
					S = B ;
				end
		else if (FS == 4'b1100)
				begin
					{C , F} = B ;
					S = B  ;
				end
		else if (FS == 4'b1101)
				begin
 					S = B ; 
					{C , F} = B >> SH  ;
 					

		  		end
		else if (FS == 4'b0101)
				begin
					S = ~B + 1 ;
					{C , F} = A + S ;
				end

		else if (FS == 4'b1110)
				begin
					S = B ;
					{C , F} = B << SH;
				end
		else if (FS == 4'b1000)
				begin
					S = B ;
					{C , F} = A & B ;
				end
		else if (FS == 4'b1001)
				begin
					S = B ;
					{C , F} = A | B ;
				end
		else if (FS == 4'b1010)
				begin
					S = B ;
					{C , F} = A ^ B ;
				end
		else 
				begin 
					S = B ;
					{C , F} = B ;
				end
 
		end

    always@(*)
		begin
			V = 0 ;
			N = 0 ;
			Z = 0 ;
			if(A[15] == 0  && S[15] == 0 && F[15] == 1)
				V = 1 ;
			else if (A [15] == 1  && S[15]  == 1  && F[15]  == 0 )
				V = 1 ;
			else
				V = 0 ;
			
			if(F[15] == 1)
				begin 
					N = 1 ;
				end
			else if ( F[15]  ==  0 )
				begin
					N = 0 ;
				end
			else 
				begin 
					N = 0 ;
				end 
	
			if(F == 0 )
				Z = 1 ;
			else
				Z = 0;

		end

		
endmodule
