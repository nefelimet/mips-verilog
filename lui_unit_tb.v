`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:38:44 01/18/2022
// Design Name:   lui_unit
// Module Name:   C:/Users/Nefel/Desktop/University/project1/lui_unit_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lui_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module lui_unit_tb;

	// Inputs
	reg [15:0] immed;

	// Outputs
	wire [31:0] lui_out;

	// Instantiate the Unit Under Test (UUT)
	lui_unit uut (
		.immed(immed), 
		.lui_out(lui_out)
	);

	initial begin
		immed = 16'b000101010110101;
		#5;
		
		immed = 16'b000000000000000;
		#5;
		
		immed = 16'b100001111100010;
		#5;
		
		immed = 16'b110010000000010;
		#5;

	//Simulation time: 20ns
	end
      
endmodule

