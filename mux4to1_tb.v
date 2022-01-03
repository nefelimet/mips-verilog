`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:43:29 01/03/2022
// Design Name:   mux4to1
// Module Name:   C:/Users/Nefel/Desktop/University/draft/mux4to1_tb.v
// Project Name:  draft
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4to1_tb;

	// Inputs
	reg [31:0] D0;
	reg [31:0] D1;
	reg [31:0] D2;
	reg [31:0] D3;
	reg [1:0] Sel;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	mux4to1 uut (
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.Sel(Sel), 
		.Dout(Dout)
	);

	initial begin
		D0 = 0;
		D1 = 1;
		D2 = 2;
		D3 = 3;
		Sel = 0;
		#50;
		
		D0 = 0;
		D1 = 1;
		D2 = 2;
		D3 = 3;
		Sel = 1;
		#50;
		
		D0 = 0;
		D1 = 1;
		D2 = 2;
		D3 = 3;
		Sel = 2;
		#50;
		
		D0 = 0;
		D1 = 1;
		D2 = 2;
		D3 = 3;
		Sel = 3;
		#50;
		

	end
      
endmodule

