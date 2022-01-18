`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:53:02 01/02/2022
// Design Name:   alu
// Module Name:   C:/Users/Nefel/Desktop/University/project1/alu_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] Op;

	// Outputs
	wire [31:0] Out;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.A(A), 
		.B(B), 
		.Op(Op), 
		.Out(Out), 
		.Zero(Zero)
	);

	initial begin
		//A + B
		A = 32'b00000000000000000000000000001010;
		B = 32'b00000000000000000000000000000001;
		Op = 4'b0000;
		#5;
		
		//A - B
		A = 32'b00000000000000000000000000001011;
		B = 32'b00000000000000000000000000001011;
		Op = 4'b0001;
		#5;
		
		//A & B
		A = 32'b00010010010000001100000001000100;
		B = 32'b00010001000000001000001000010001;
		Op = 4'b0010;
		#5;
		
		//A | B
		A = 32'b00111000000001000000001000010000;
		B = 32'b00010000100000000110000000000001;
		Op = 4'b0011;
		#5;
		
		//!A
		A = 32'b00110000000001110000100100111100;
		B = 32'b00000111100000001100001000000001;
		Op = 4'b0100;
		#5;
		
		//A >>> 1
		A = 32'b11001001000100001100001110100101;
		B = 32'b00000000000000000000000000000001;
		Op = 4'b1000;
		#5;
		
		//A >> 1
		A = 32'b11001001000100001100001110100101;
		B = 32'b00000000000000000000000000000001;
		Op = 4'b1010;
		#5;
		
		//A << 1
		A = 32'b11001001000100001100001110100101;
		B = 32'b00000000000000000000000000000001;
		Op = 4'b1001;
		#5;
		
		//A cyclic rotation to left
		A = 32'b11001001000100001100001110100101;
		B = 32'b00000000000000000000000000000001;
		Op = 4'b1100;
		#5;
		
		//A cyclic rotation to right
		A = 32'b11001001000100001100001110100101;
		B = 32'b00000000000000000000000000000001;
		Op = 4'b1101;
		#5;
		
	//Simulation time: 50ns
	end
      
endmodule

