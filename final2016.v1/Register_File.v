`timescale  1ns/100ps
module Register_File(
	input clk,
	input rst_n,
	input [31:0] instruction ,
	input [4:0] AA,
	input [4:0] BA,
	input [31:0] BUS_D,
	input RW,
	input [4:0] DA,
	output reg [31:0] A_data,
	output reg [31:0] B_data
);
reg [31:0] Register[31:0];
integer i ;


always @(posedge clk or negedge rst_n) 
	begin
		/*$display(" *****AA IS %d *****",AA);
		$display(" *****BA IS %d *****",BA);
		$display(" *****AD IS %d *****",A_data);*/
		if(!rst_n)
			for(i = 0 ; i <=31 ; i = i+1)Register[i] = 0 ;
		else
			begin
				if(RW == 1'b1)
					begin
					
					Register[DA] = BUS_D ;
					$display(" *****Register[1] IS %d *****" , Register[1]);
					$display(" *****Register[2] IS %d *****" , Register[2]);
				
					end
			end
    end
always @(*) 
	begin		
		A_data = Register[AA] ;
		B_data = Register[BA] ;
	
	end
	
endmodule 