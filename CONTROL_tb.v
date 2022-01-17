`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:51:38 01/17/2022
// Design Name:   CONTROL
// Module Name:   C:/Users/Nefel/Desktop/University/project1/CONTROL_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CONTROL
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CONTROL_tb;

	// Inputs
	reg [31:0] Instr;
	reg Zero;
	reg clk = 0;

	// Outputs
	wire PC_sel;
	wire PC_LdEn;
	wire Reset;
	wire RF_WrEn;
	wire RF_WrData_sel;
	wire RF_B_sel;
	wire ALU_Bin_sel;
	wire [3:0] ALU_func;
	wire Mem_WrEn;
	wire lui;
	wire lb;
	wire sb;

	// Instantiate the Unit Under Test (UUT)
	CONTROL uut (
		.Instr(Instr), 
		.Zero(Zero),
		.clk(clk),
		.PC_sel(PC_sel), 
		.PC_LdEn(PC_LdEn), 
		.Reset(Reset), 
		.RF_WrEn(RF_WrEn), 
		.RF_WrData_sel(RF_WrData_sel), 
		.RF_B_sel(RF_B_sel), 
		.ALU_Bin_sel(ALU_Bin_sel), 
		.ALU_func(ALU_func), 
		.Mem_WrEn(Mem_WrEn), 
		.lui(lui), 
		.lb(lb), 
		.sb(sb)
	);

	always #1 clk = ~clk;

	initial begin
		//nop
		Instr = 32'b00000000000000000000000000000000;
		Zero = 0;
		#4;
		
		//li $1, 2
		Instr = 32'b11100000000000010000000000000010;
		#4;
		
		//add $6, $2, $2
		Instr = 32'b10000000010001100001000000110000;
		#4;
		
		//beq $14, $2, 3
		Instr = 32'b00000001110000100000000000000011;
		#4;

	end
      
endmodule

