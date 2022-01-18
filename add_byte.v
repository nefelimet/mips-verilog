`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:31:44 01/16/2022 
// Design Name: 
// Module Name:    get_byte 
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
module get_byte(
	input [31:0] Din,
	output [31:0] Dout
    );

	assign Dout = {24'b000000000000000000000000, Din[7:0]};

endmodule
