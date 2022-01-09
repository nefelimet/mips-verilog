`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:25:41 01/04/2022
// Design Name:   pc
// Module Name:   C:/Users/Nefel/Desktop/University/project1/pc_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pc_tb;

	// Inputs
	reg [31:0] Data;
	reg Clk = 0;
	reg Reset;
	reg LdEn;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	pc uut (
		.Data(Data), 
		.Clk(Clk), 
		.Reset(Reset), 
		.LdEn(LdEn), 
		.Dout(Dout)
	);

	always #1 Clk = ~Clk;

	initial begin
	
		Data = 31;
		Reset = 0;
		LdEn = 0;
		#5;
		
		#1;
		LdEn = 1;
		#10;
		
		Reset = 1;
		#5;
		
		Data = 2;
		#5;
		
		Reset = 0;
		LdEn = 0;
		#5;
		
		LdEn = 1;
		#5;
		

	end
      
endmodule

