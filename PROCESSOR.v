`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:32:59 01/14/2022 
// Design Name: 
// Module Name:    PROCESSOR 
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
module PROCESSOR(
	input clk,
	 output wire [31:0] Instr,
	 output wire [31:0] Immed,
	 output wire [31:0] RF_A,
	 output wire [31:0] RF_B_or_sb,
	 output wire [31:0] ALU_out,
	 output wire [31:0] MEM_out,
	 output wire [31:0] lui_out
    );
	 
	 //Internal signals for datapath
	
	 
	 //Internal control signals
	 wire Reset;
	 wire PC_sel;
	 wire PC_LdEn;
	 wire RF_WrEn;
	 wire RF_WrData_sel;
	 wire RF_B_sel;
	 wire ALU_Bin_sel;
	 wire [3:0] ALU_func;
	 wire Mem_WrEn;
	 wire Zero;
	 wire lui;
	 wire lb;
	 wire sb;
	 
	 
	 //Create control unit
	 CONTROL control_unit (.Instr(Instr), .Zero(Zero), .clk(clk), .PC_sel(PC_sel), .PC_LdEn(PC_LdEn), .Reset(Reset), .RF_WrEn(RF_WrEn), .RF_WrData_sel(RF_WrData_sel), .RF_B_sel(RF_B_sel), .ALU_Bin_sel(ALU_Bin_sel), .ALU_func(ALU_func), .Mem_WrEn(Mem_WrEn), .lui(lui), .lb(lb), .sb(sb));
	 
	 //Create each stage and connect them
	 IFSTAGE if_stage (.PC_Immed(Immed), .PC_sel(PC_sel), .PC_LdEn(PC_LdEn), .Reset(Reset), .Clk(clk), .Instr(Instr));
	 DECSTAGE dec_stage (.Instr(Instr), .RF_WrEn(RF_WrEn), .ALU_out(ALU_out), .RF_WrData_sel(RF_WrData_sel), .RF_B_sel(RF_B_sel), .Clk(clk), .sb(sb), .lb(lb), .Immed(Immed), .RF_A(RF_A), .lui_out(lui_out), .MEM_out(MEM_out), .RF_B_or_sb(RF_B_or_sb));
	 ALUSTAGE alu_stage (.RF_A(RF_A), .RF_B(RF_B_or_sb), .Immed(Immed), .ALU_Bin_sel(ALU_Bin_sel), .lui_out(lui_out), .lui(lui), .ALU_func(ALU_func), .ALU_out(ALU_out), .Zero(Zero));
	 MEMSTAGE mem_stage (.clk(clk), .Mem_WrEn(Mem_WrEn), .ALU_MEM_Addr(ALU_out), .MEM_DataIn(RF_B_or_sb), .MEM_DataOut(MEM_out));
	 

endmodule
