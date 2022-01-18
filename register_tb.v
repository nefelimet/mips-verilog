`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:39:58 01/02/2022
// Design Name:   register
// Module Name:   C:/Users/Nefel/Desktop/University/project1/register_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module register_tb;

	// Inputs
	reg CLK = 0;
	reg [31:0] Data;
	reg WE = 1;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.CLK(CLK), 
		.Data(Data), 
		.WE(WE), 
		.Dout(Dout)
	);

	always #1 CLK = !CLK;
	
	initial begin
	
		#5;
		Data = 4;
		#5;
		Data = 8;
		#5;
		WE = 0;
		#5;
		Data = 32;
		#5;
	//Simulation time: 25ns
	end
	
      
endmodule

