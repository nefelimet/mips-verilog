`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:07 01/02/2022 
// Design Name: 
// Module Name:    ALUSTAGE 
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
module ALUSTAGE(
    input [31:0] RF_A,
    input [31:0] RF_B,
    input [31:0] Immed,
    input ALU_Bin_sel,
	 input [31:0] lui_out,
	 input lui,
    input [3:0] ALU_func,
    output [31:0] ALU_out,
	 output Zero
    );
	 
	 wire [31:0] ALU_in_B;
	 wire [31:0] lui_mux_out;
	 
	 //Create MUX for lui
	 mux2to1 lui_mux (.D1(Immed), .D2(lui_out), .Sel(lui), .Dout(lui_mux_out));
	 
	 //Create MUX
	 mux2to1 mux_alu (.D1(RF_B), .D2(lui_mux_out), .Sel(ALU_Bin_sel), .Dout(ALU_in_B));
	 
	 //Create ALU
	 alu alu_stage (.A(RF_A), .B(ALU_in_B), .Op(ALU_func), .Out(ALU_out), .Zero(Zero));


endmodule
