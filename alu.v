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
		4'b0001:
			assign alu_out = A - B;
		4'b0010:
			assign alu_out = A & B;
		4'b0011:
			assign alu_out = A | B;
		4'b0100:
			assign alu_out = ~A;
		4'b1000:
			assign alu_out = {A[31], A[31:1]};
		4'b1010:
			assign alu_out = {1'b0, A[31:1]};
		4'b1001:
			assign alu_out = {A[30:0], 1'b0};
		4'b1100:
			assign alu_out = {A[30:0], A[31]};
		4'b1101:
			assign alu_out = {A[0], A[31:1]};
		endcase
	end


endmodule
