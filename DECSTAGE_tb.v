`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:46 01/09/2022
// Design Name:   DECSTAGE
// Module Name:   C:/Users/Nefel/Desktop/University/project1/DECSTAGE_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DECSTAGE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module DECSTAGE_tb;

	// Inputs
	reg [31:0] Instr;
	reg RF_WrEn;
	reg [31:0] ALU_out;
	reg [31:0] MEM_out;
	reg RF_WrData_sel;
	reg RF_B_sel;
	reg Clk = 0;

	// Outputs
	wire [31:0] Immed;
	wire [31:0] RF_A;
	wire [31:0] RF_B;

	// Instantiate the Unit Under Test (UUT)
	DECSTAGE uut (
		.Instr(Instr), 
		.RF_WrEn(RF_WrEn), 
		.ALU_out(ALU_out), 
		.MEM_out(MEM_out), 
		.RF_WrData_sel(RF_WrData_sel), 
		.RF_B_sel(RF_B_sel), 
		.Clk(Clk), 
		.Immed(Immed), 
		.RF_A(RF_A), 
		.RF_B(RF_B)
	);
	
	always #1 Clk = ~Clk;

	initial begin
	
		//Write value '7' to $r1
		Instr = 32'b11100000000000010000000000000111;
		RF_WrEn = 1;
		ALU_out = 32'b00000000000000000000000000000111;
		MEM_out = 1;
		RF_WrData_sel = 0;
		RF_B_sel = 0;
		#10;
		
		
		//Write value '5' to $r2
		Instr = 32'b11100000000000100000000000000101;
		RF_WrEn = 1;
		ALU_out = 32'b00000000000000000000000000000101;
		MEM_out = 1;
		RF_WrData_sel = 0;
		#10;
	
		//Instruction: add $r1 $r2 $r3
		//32'b10000000001000110001000000110000
		/*
		Instr = 32'b10000000001000110001000000110000;
		RF_WrEn = 1;
		ALU_out = 0;
		MEM_out = 0;
		RF_WrData_sel = 0;
		RF_B_sel = 0;
		#10;
		*/
		
		//Write value '12' to $r3
		ALU_out = 32'b00000000000000000000000000001100;
		RF_WrEn = 1;
		Instr = 32'b11100000000000110000000000000101;
		#10;
		
		//Read $r3
		RF_WrEn = 0;
		Instr = 32'b00000000011000000000000000000000;
		#10;
		
		
		
		

	end
      
endmodule

