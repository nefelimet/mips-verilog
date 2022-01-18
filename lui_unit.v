`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:27 01/16/2022 
// Design Name: 
// Module Name:    lui_unit 
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
module lui_unit(
	input [15:0] immed,
	output [31:0] lui_out
    );

	assign lui_out = {immed[15:0], 16'b0000000000000000};
	

endmodule
