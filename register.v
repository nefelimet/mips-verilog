`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:01 01/02/2022 
// Design Name: 
// Module Name:    register 
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
module register(
    input CLK,
    input [31:0] Data,
    input WE,
    output reg [31:0] Dout
    );

	always@(posedge CLK) begin
		if (WE) begin
			Dout <= Data;
		end
	end

endmodule
