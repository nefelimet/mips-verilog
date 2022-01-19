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
	reg sb;
	reg lb;

	// Outputs
	wire [31:0] Immed;
	wire [31:0] RF_A;
	wire [31:0] RF_B_or_sb;
	wire [31:0] lui_out;

	// Instantiate the Unit Under Test (UUT)
	DECSTAGE uut (
		.Instr(Instr), 
		.RF_WrEn(RF_WrEn), 
		.ALU_out(ALU_out), 
		.MEM_out(MEM_out), 
		.RF_WrData_sel(RF_WrData_sel), 
		.RF_B_sel(RF_B_sel), 
		.Clk(Clk),
		.sb(sb),
		.lb(lb),
		.Immed(Immed), 
		.RF_A(RF_A), 
		.RF_B_or_sb(RF_B_or_sb),
		.lui_out(lui_out)
	);
	
	always #1 Clk = ~Clk;

	initial begin
	
		//#li 7 $r1
		Instr = 32'b11100000000000010000000000000111;
		RF_WrEn = 1;
		ALU_out = 32'b00000000000000000000000000000111;
		MEM_out = 1;
		RF_WrData_sel = 0;
		RF_B_sel = 1;
		sb = 0;
		lb = 0;
		#10;
		
		//#li 5 $r2
		Instr = 32'b11100000000000100000000000000101;
		RF_WrEn = 1;
		ALU_out = 32'b00000000000000000000000000000101;
		MEM_out = 1;
		RF_WrData_sel = 0;
		RF_B_sel = 1;
		sb = 0;
		lb = 0;
		#10;
		
		//#add $r1 $r2 $r3
		Instr = 32'b10000000001000110001000000110000;
		RF_WrEn = 1;
		ALU_out = 32'b00000000000000001100000000001111;
		MEM_out = 1;
		RF_WrData_sel = 0;
		RF_B_sel = 0;
		sb = 0;
		lb = 0;
		#10;
		
		//#sb 
		Instr = 32'b00011100001000110000000000000101;
		RF_WrEn = 0;
		ALU_out = 0;
		MEM_out = 0;
		RF_WrData_sel = 0;
		RF_B_sel = 1;
		sb = 1;
		lb = 0;
		#10;
		//$display("RF_B: %b, sb_out: %b", uut.RF_B, uut.sb_out);
		
		//#lb
		Instr = 32'b00001100001001000000000000000101;
		RF_WrEn = 1;
		ALU_out = 0;
		MEM_out = 32'b11001111011001000111100001010101;
		RF_WrData_sel = 1;
		RF_B_sel = 1;
		sb = 0;
		lb = 1;
		#10;
		
		//#lui
		Instr = 32'b11100100000001011101100000000111;
		RF_WrEn = 1;
		ALU_out = 32'b11011000000001110000000000000000;
		MEM_out = 0;
		RF_WrData_sel = 0;
		RF_B_sel = 1;
		sb = 0;
		lb = 0;
		#10;
		
		//beq $r1 $r2 10
		Instr = 32'b00000000001000100000000000001010;
		RF_WrEn = 0;
		ALU_out = 0;
		MEM_out = 0;
		RF_WrData_sel = 0;
		RF_B_sel = 1;
		sb = 0;
		lb = 0;
		#10;
		
	//Simulation time: 70ns
	end
      
endmodule

