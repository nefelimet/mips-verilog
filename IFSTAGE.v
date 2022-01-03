`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:05:42 01/02/2022 
// Design Name: 
// Module Name:    IFSTAGE 
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


module IFSTAGE(
	input [31:0] PC_Immed,
	input PC_sel,
	input PC_LdEn,
	input Reset,
	input Clk,
	output [31:0] Instr
	);
	
	wire [31:0] PC_out;
	wire [31:0] MUX_out;
	wire [31:0] PC_next;
	wire [31:0] PC_imm;
	
	//Create PC
	pc progcount (.Data(MUX_out), .Clk(Clk), .Reset(Reset), .LdEn(PC_LdEn), .Dout(PC_out));
	
	//Create adders
	assign PC_next = PC_out + 32'b00000000000000000000000000000100;
	assign PC_imm = PC_out + 32'b00000000000000000000000000000100 + PC_Immed << 2;
	
	//Create MUX
	mux2to1 mux_pc (.D1(PC_next), .D2(PC_imm), .Sel(PC_sel), .Dout(MUX_out));
	
	//Create instruction memory
	ROM imem (.clk(Clk), .addr(PC_out[11:2]), .dout(Instr));
	
	
endmodule
