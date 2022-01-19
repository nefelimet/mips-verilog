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
		
		//add $r2 $r7 $r6
		Instr = 32'b10000000010001100011100000110000;
		#4;
		
		//sub $r31 $r0 $r2
		Instr = 32'b10000011111000100000000000110001;
		#4;
		
		//and $r1 $r2 $r3
		Instr = 32'b10000000001000110001000000110010;
		#4;
		
		//not $r1 $r3
		Instr = 32'b10000000001000110001000000110100;
		#4;
		
		//or $r1 $r2 $r3
		Instr = 32'b10000000001000110001000000110011;
		#4;
		
		//sra $r1 $r3
		Instr = 32'b10000000001000110001000000111000;
		#4;
		
		//sll $r1 $r3
		Instr = 32'b10000000001000110001000000111001;
		#4;
		
		//srl $r1 $r3
		Instr = 32'b10000000001000110001000000111010;
		#4;
		
		//rol $r1 $r3
		Instr = 32'b10000000001000110001000000111100;
		#4;
		
		//ror $r1 $r3
		Instr = 32'b10000000001000110001000000111101;
		#4;
		
		//li $r1 2
		Instr = 32'b11100000000000010000000000000010;
		#4;
		
		//lui $r1 
		Instr = 32'b11100100000000010000000001100010;
		#4;
		
		//addi $r1 $r3 7
		Instr = 32'b11000000001000110000000000000111;
		#4;
		
		//andi $r1 $r3 7
		Instr = 32'b11001000001000110000000000000111;
		#4;
		
		//ori $r1 $r3 7
		Instr = 32'b11001100001000110000000000000111;
		#4;
		
		//b 24
		Instr = 32'b11111100001000110000000000011000;
		#4;
		
		//beq $r1 $r3 3
		Instr = 32'b00000000001000110000000000000011;
		#4;
		
		//bne $r1 $r3 3
		Instr = 32'b00000100001000110000000000000011;
		#4;
		
		//lb $r1 $r3 3
		Instr = 32'b00001100001000110000000000000011;
		#4;
		
		//sb $r1 $r3 3
		Instr = 32'b00011100001000110000000000000011;
		#4;
		
		//lw $r1 $r3 3
		Instr = 32'b00111100001000110000000000000011;
		#4;
		
		//sw $r1 $r3 3
		Instr = 32'b01111100001000110000000000000011;
		#4;
		
		

	//Simulation time: 23*4 = 92ns
	end
      
endmodule

