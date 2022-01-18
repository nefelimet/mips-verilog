`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:44:13 01/18/2022
// Design Name:   get_byte
// Module Name:   C:/Users/Nefel/Desktop/University/project1/get_byte_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: get_byte
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module get_byte_tb;

	// Inputs
	reg [31:0] Din;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	get_byte uut (
		.Din(Din), 
		.Dout(Dout)
	);

	initial begin
		Din = 0;
		#5;
		
		Din = 31;
		#5;
		
		Din = 512;
		#5;
		
		Din = 32'b11111111100101010101011101010101;
		#5;
	
	//Simulation: 20ns
	end
      
endmodule

