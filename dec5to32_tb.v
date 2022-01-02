`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:19:51 01/02/2022
// Design Name:   dec5to32
// Module Name:   C:/Users/Nefel/Desktop/University/Notes/part1/dec5to32_tb.v
// Project Name:  part1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: dec5to32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dec5to32_tb;

	// Inputs
	reg [4:0] Adr;

	// Outputs
	wire [31:0] Out;

	// Instantiate the Unit Under Test (UUT)
	dec5to32 uut (
		.Out(Out), 
		.Adr(Adr)
	);

	initial begin
		Adr = 5'b00000;
		#25;
		
		Adr = 5'b00001;
		#25;
		
		Adr = 5'b00010;
		#25;
		
		Adr = 5'b00011;
		#25;
		
	end
      
endmodule

