`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:12:15 01/02/2022 
// Design Name: 
// Module Name:    ROM 
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
module ROM(
	 input clk,
	 input [9:0] addr,
	 output reg [31:0] dout
	 );
 
	reg [31:0] rom_mem [1023:0];
	
	initial begin
		$readmemb("rom.data", rom_mem);
	end
	
	always @(posedge clk) begin
		dout <= rom_mem[addr];
	end
	
endmodule
