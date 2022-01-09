`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:20:07 01/04/2022
// Design Name:   IFSTAGE
// Module Name:   C:/Users/Nefel/Desktop/University/project1/IFSTAGE_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFSTAGE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IFSTAGE_tb;

	// Inputs
	reg [31:0] PC_Immed;
	reg PC_sel;
	reg PC_LdEn;
	reg Reset;
	reg Clk = 0;

	// Outputs
	wire [31:0] Instr;

	// Instantiate the Unit Under Test (UUT)
	IFSTAGE uut (
		.PC_Immed(PC_Immed), 
		.PC_sel(PC_sel), 
		.PC_LdEn(PC_LdEn), 
		.Reset(Reset), 
		.Clk(Clk), 
		.Instr(Instr)
	);

	always #1 Clk = ~Clk;

	initial begin
		
		PC_Immed = 0;
		PC_sel = 0;
		PC_LdEn = 1;
		Reset = 0;
		//See a lot of instructions pass
		#50;
		$display("PCout: %b", uut.PC_out);
		//Reset
		
		Reset = 1;
		$display("PCout after reset=1 before #2: %b", uut.PC_out);
		#2;
		$display("PCout after reset=1: %b", uut.PC_out);
		Reset = 0;
		$display("PCout after reset=0 before #10: %b", uut.PC_out);
		#10;
		$display("PCout after reset=0: %b", uut.PC_out);
		
		//Test branch instruction
		
		PC_Immed = 2;
		PC_sel = 1;
		#2;
		$display("PCout after PC_sel=1: %b", uut.PC_out);
		
		PC_sel = 0;
		#10;
		$display("PCout after PC_sel=0: %b", uut.PC_out);
		
		

	end
      
endmodule

