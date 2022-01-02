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
	reg CLK;
	reg [31:0] Data;
	reg WE;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	register uut (
		.CLK(CLK), 
		.Data(Data), 
		.WE(WE), 
		.Dout(Dout)
	);

	initial begin
		CLK = 0;
		Data = 0;
		WE = 0;
		#25;
		
		CLK = ~CLK;
		WE = 1;
		Data = 32'b00000000000000000000000000000001;
		#25;
		
		CLK = ~CLK;
		WE = 0;
		Data = 32'b00000000000000000000000000000001;
		#25;
		
		CLK = ~CLK;
		WE = 0;
		Data = 32'b00000000000000000000000000000111;
		#25;
		
		CLK = ~CLK;
		WE = 1;
		Data = 32'b00000000000000000000000000000111;
		#25;
		
		CLK = ~CLK;
		WE = 1;
		Data = 32'b01000000110000000110000000000111;
		#25;
		
	end
	
      
endmodule

