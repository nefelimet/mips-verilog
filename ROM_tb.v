`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:05:38 01/04/2022
// Design Name:   ROM
// Module Name:   C:/Users/Nefel/Desktop/University/project1/ROM_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ROM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ROM_tb;

	// Inputs
	reg clk = 0;
	reg [9:0] addr;

	// Outputs
	wire [31:0] dout;

	// Instantiate the Unit Under Test (UUT)
	ROM uut (
		.clk(clk), 
		.addr(addr), 
		.dout(dout)
	);
	
	always #1 clk = ~clk;

	initial begin

		addr = 0;
		#5;
		addr = 17;
		#5;
		addr = 831;
		#5;
		
	end
      
endmodule

