`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:21:41 01/04/2022 
// Design Name: 
// Module Name:    PC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pc(
	input [31:0] Data,
	input Clk,
	input Reset,
	input LdEn,
	output reg [31:0] Dout
	);
	
	always@(posedge Clk) begin
		if (LdEn) begin
			Dout <= Data;
		end
		
		if(Reset) begin
			Dout <= 0;
		end
		
	end
	
endmodule
