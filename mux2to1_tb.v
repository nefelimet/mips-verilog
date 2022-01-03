`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:34:15 01/03/2022
// Design Name:   mux2to1
// Module Name:   C:/Users/Nefel/Desktop/University/draft/mux2to1_tb.v
// Project Name:  draft
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2to1_tb;

	// Inputs
	reg [31:0] D1;
	reg [31:0] D2;
	reg Sel;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	mux2to1 uut (
		.D1(D1), 
		.D2(D2), 
		.Sel(Sel), 
		.Dout(Dout)
	);

	initial begin
		D1 = 0;
		D2 = 1;
		Sel = 0;
		#50;
		
		D1 = 0;
		D2 = 1;
		Sel = 1;
		#50;


	end
      
endmodule

