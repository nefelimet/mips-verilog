`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:52:01 01/17/2022
// Design Name:   PROCESSOR
// Module Name:   C:/Users/Nefel/Desktop/University/project1/PROCESSOR_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PROCESSOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PROCESSOR_tb;

	// Inputs
	reg clk = 0;

	// Outputs
	wire [31:0] Instr;
	 wire [31:0] Immed;
	 wire [31:0] RF_A;
	  wire [31:0] RF_B;
	  wire [31:0] RF_B_or_sb;
	  wire [31:0] ALU_out;
	  wire [31:0] MEM_out;
	  wire [31:0] MEM_out_or_lb;
	  wire [31:0] lui_out;
	  
	// Instantiate the Unit Under Test (UUT)
	PROCESSOR uut (
		.clk(clk),
		.Instr(Instr),
		.Immed(Immed),
		.RF_A(RF_A),
		.RF_B(RF_B),
		.RF_B_or_sb(RF_B_or_sb),
		.ALU_out(ALU_out),
		.MEM_out(MEM_out),
		.MEM_out_or_lb(MEM_out_or_lb),
		.lui_out(lui_out)
	);

	always #1 clk = ~clk;

	initial begin
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		$display("Instr = %b", uut.Instr);
		$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", uut.PC_sel, uut.PC_LdEn, uut.RF_WrEn, uut.RF_WrData_sel, uut.RF_B_sel);
		$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", uut.ALU_Bin_sel, uut.ALU_func, uut.Mem_WrEn, uut.lui, uut.lb, uut.sb);
		$display("RF_A = %b, RF_B = %b, Immed = %b, ALU_out = %b", uut.RF_A, uut.RF_B, uut.Immed, uut.ALU_out);
		#2;
		
		
		
	end
      
endmodule

