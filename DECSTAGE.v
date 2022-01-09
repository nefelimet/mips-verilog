`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:09:47 01/02/2022 
// Design Name: 
// Module Name:    DECSTAGE 
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
module DECSTAGE(
    input [31:0] Instr,
    input RF_WrEn,
    input [31:0] ALU_out,
    input [31:0] MEM_out,
    input RF_WrData_sel,
    input RF_B_sel,
    input Clk,
    output [31:0] Immed,
    output [31:0] RF_A,
    output [31:0] RF_B
    );

	wire [4:0] instr1 = Instr[25:21];
	wire [4:0] instr2 = Instr[15:11];
	wire [4:0] instr3 = Instr[20:16];
	wire [15:0] instr4 = Instr[15:0];
	wire [4:0] read_reg2;
	wire [31:0] write_data;
	
	//Create output Immed
	wire [31:0] temp = {16'b0000000000000000, instr4};
	assign Immed = temp;
	
	//Create MUXs
	mux2to1_5bit mux1 (.D1(instr2), .D2(instr3), .Sel(RF_B_sel), .Dout(read_reg2));
	mux2to1 mux2 (.D1(ALU_out), .D2(MEM_out), .Sel(RF_WrData_sel), .Dout(write_data));
	
	//Create register file
	reg_file RF (.Ard1(instr1), .Ard2(read_reg2), .Awr(instr3), .Dout1(RF_A), .Dout2(RF_B), .Din(write_data), .WrEn(RF_WrEn), .Clk(Clk));

endmodule
