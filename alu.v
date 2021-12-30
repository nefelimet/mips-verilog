`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:27:43 12/30/2021 
// Design Name: 
// Module Name:    alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [3:0] Op,
    output [31:0] Out,
    output reg Zero
    );

	reg [31:0] alu_out;
	assign Out = alu_out;
	
	always@(*)
	begin
		case(Op)
		4'b0000:
			assign alu_out = A + B;
		default:
			assign alu_out = A;
		endcase
	end
	

endmodule
