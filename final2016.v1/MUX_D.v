`timescale  1ns/100ps
module MUX_D(clk,rst_n,WB_F, WB_DataIn,WB_SLT ,WB_MD, BUS_D);
	input [31:0] WB_F , WB_DataIn , WB_SLT;
	input [1:0]WB_MD;
	input clk ,rst_n ;
	output reg [31:0] BUS_D;
	
	
	always @(*)
	begin
		if (WB_MD == 2'b00)
			BUS_D <=  WB_F;
		else if (WB_MD == 2'b01)
			BUS_D <= WB_DataIn;
		else if (WB_MD == 2'b10)
			BUS_D <= WB_SLT;
		else
			BUS_D <= 0 ;
	end	
		
endmodule
