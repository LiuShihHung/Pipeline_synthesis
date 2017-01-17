module MUX_A(clk,rst_n,EX_Hazard_A,WB_Hazard_A,Forward,BUS_D,pc_1, A_data, MA, Bus_A , EX_MD);
	input [31:0] pc_1 , A_data , Forward , BUS_D;
	input MA,clk ,rst_n;
	input EX_Hazard_A , WB_Hazard_A ;
	input [1:0] EX_MD ;
	output reg [31:0] Bus_A ;
		
	always @(*)
	begin
		if (MA == 1'b0 && EX_Hazard_A == 0 && WB_Hazard_A == 0)
			Bus_A =  A_data;
		else if (MA == 1'b1 && EX_Hazard_A == 0 && WB_Hazard_A == 0)
			Bus_A = pc_1;
		else if (MA == 1'b0 && EX_Hazard_A == 1'b1 && WB_Hazard_A ==0)
			Bus_A = Forward ;
		else if (MA == 1'b0 && EX_Hazard_A == 1'b1 && WB_Hazard_A ==1'b1)
			Bus_A = Forward ;
		else if (MA == 1'b0 && EX_Hazard_A == 1'b0 && WB_Hazard_A ==1'b1)
			Bus_A = BUS_D ;
		else
			begin
			Bus_A  = 0 ;
			end
		
	end	
	

endmodule
