`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:26 01/09/2022
// Design Name:   MEMSTAGE
// Module Name:   C:/Users/Nefel/Desktop/University/project1/MEMSTAGE_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MEMSTAGE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MEMSTAGE_tb;

	// Inputs
	reg clk = 0;
	reg Mem_WrEn;
	reg [31:0] ALU_MEM_Addr;
	reg [31:0] MEM_DataIn;

	// Outputs
	wire [31:0] MEM_DataOut;

	// Instantiate the Unit Under Test (UUT)
	MEMSTAGE uut (
		.clk(clk), 
		.Mem_WrEn(Mem_WrEn), 
		.ALU_MEM_Addr(ALU_MEM_Addr), 
		.MEM_DataIn(MEM_DataIn), 
		.MEM_DataOut(MEM_DataOut)
	);
	
	always #1 clk = ~clk;

	initial begin
		
		//Write value '31' to addr 4
		Mem_WrEn = 1;
		ALU_MEM_Addr = 32'b00000000000000000000000000000100;
		//addr = 0000000001
		MEM_DataIn = 32'b00000000000000000000000000011111;
		#10;
		
		//Write value '16' to addr 1
		Mem_WrEn = 1;
		ALU_MEM_Addr = 32'b00000000000000000000000000000001;
		//addr = 0000000000
		MEM_DataIn = 32'b00000000000000000000000000010000;
		#10;
		
		//Read addr 4
		Mem_WrEn = 0;
		ALU_MEM_Addr = 32'b00000000000000000000000000000100;
		//addr = 0000000001
		#10;
		
		//Read addr
		ALU_MEM_Addr = 32'b00000000000000000000111111000011;
		//addr = 1111110000
		#10;
		
		

	end
      
endmodule

