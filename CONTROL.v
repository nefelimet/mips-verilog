`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:43 01/14/2022 
// Design Name: 
// Module Name:    CONTROL 
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
module CONTROL(
	input [31:0] Instr,
	output reg PC_sel,
	output reg PC_LdEn,
	output reg Reset,
	output reg RF_WrEn,
	output reg RF_WrData_sel,
	output reg RF_B_sel,
	output reg ALU_Bin_sel,
	output reg [3:0] ALU_func,
	output reg Mem_WrEn
    );
	
	//Check for nop
	always @(*) begin
		if (Instr == 0) begin
			PC_sel = 0;
			PC_LdEn = 1;
			Reset = 0;
			RF_WrEn = 0;
			RF_WrData_sel = 0;
			RF_B_sel = 0;
			ALU_Bin_sel = 0;
			ALU_func = 0;
			Mem_WrEn = 0;
		end
	end
	
	



endmodule
