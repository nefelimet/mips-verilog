`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:42:33 01/02/2022 
// Design Name: 
// Module Name:    RAM 
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
module RAM(
	input clk,
	input we,
	input [9:0] addr,
	input [31:0] din,
	output reg [31:0] dout
	);
	
	reg [31:0] ram_mem [1023:0];
	always @(posedge clk) begin
		
		if(we)
			ram_mem[addr] = din;
		//dout = ram_mem[addr];
		
	end
	
	always @(clk==0) begin
		dout = ram_mem[addr];
	end
	
endmodule

