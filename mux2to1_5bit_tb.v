`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:58:25 01/18/2022
// Design Name:   mux2to1_5bit
// Module Name:   C:/Users/Nefel/Desktop/University/project1/mux2to1_5bit_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2to1_5bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2to1_5bit_tb;

	// Inputs
	reg [4:0] D1;
	reg [4:0] D2;
	reg Sel;

	// Outputs
	wire [4:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	mux2to1_5bit uut (
		.D1(D1), 
		.D2(D2), 
		.Sel(Sel), 
		.Dout(Dout)
	);

	initial begin
		D1 = 0;
		D2 = 15;
		Sel = 0;
		#5;
		
		Sel = 1;
		#5;
		
	//Simulation time: 10ns
	end
      
endmodule

