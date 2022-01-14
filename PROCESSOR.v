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
    );
	 
	 //Internal signals for datapath
	 wire [31:0] Instr;
	 wire [31:0] Immed;
	 wire [31:0] RF_A;
	 wire [31:0] RF_B;
	 wire [31:0] ALU_out;
	 wire [31:0] MEM_out;
	 
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
	 
	 //Create control unit
	 CONTROL control_unit (.Instr(Instr), .PC_sel(PC_sel), .PC_LdEn(PC_LdEn), .Reset(Reset), .RF_WrEn(RF_WrEn), .RF_WrData_sel(RF_WrData_sel), .RF_B_sel(RF_B_sel), .ALU_Bin_sel(ALU_Bin_sel), .ALU_func(ALU_func), .Mem_WrEn(Mem_WrEn));
	 
	 //Create each stage and connect them
	 IFSTAGE if_stage (.PC_Immed(Immed), .PC_sel(), .PC_LdEn(), .Reset(), .Clk(), .Instr(Instr));
	 DECSTAGE dec_stage (.Instr(Instr), .RF_WrEn(), .ALU_out(ALU_out), .MEM_out(MEM_out), .RF_WrData_sel(), .RF_B_sel(), .Clk(), .Immed(Immed), .RF_A(RF_A), .RF_B(RF_B));
	 ALUSTAGE alu_stage (.RF_A(RF_A), .RF_B(RF_B), .Immed(Immed), .ALU_Bin_sel(), .ALU_func(), .ALU_out(ALU_out));
	 MEMSTAGE mem_stage (.clk(), .Mem_WrEn(), .ALU_MEM_Addr(ALU_out), .MEM_DataIn(RF_B), .MEM_DataOut(MEM_out));
	 
	 


endmodule
