`timescale  1ns/100ps
module MUX_B(constant, B_Data, MB, Bus_B,EX_Hazard_B,WB_Hazard_B,Forward,BUS_D);
	input [31:0] constant, B_Data,Forward;
	input MB , EX_Hazard_B , WB_Hazard_B;
	input [31:0]BUS_D ;
	output reg [31:0] Bus_B;
		
	always @(*) begin
		if (MB == 1'b0 && EX_Hazard_B == 0 && WB_Hazard_B == 0)
			Bus_B = B_Data;
		else if (MB == 1'b1 )
			Bus_B = constant;
		else if (MB == 0 && EX_Hazard_B == 1'b1 && WB_Hazard_B == 1'b0)
			Bus_B = Forward ;
		else if (MB == 0 && EX_Hazard_B == 1'b1 && WB_Hazard_B == 1'b1)
			Bus_B = Forward ;
		else if (MB == 0 && EX_Hazard_B == 1'b0 && WB_Hazard_B == 1'b1)
			Bus_B = BUS_D ;
		else	
			begin 
				Bus_B = 0 ;
			end
	end	
		
endmodule
