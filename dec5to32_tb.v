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
		#5;
		
		Adr = 5'b00001;
		#5;
		
		Adr = 5'b00010;
		#5;
		
		Adr = 5'b00011;
		#5;
		
		Adr = 4;
		#5;
		
		Adr = 5;
		#5;
		
		Adr = 6;
		#5;
		
		Adr = 7;
		#5;
		
		Adr = 8;
		#5;
		
		Adr = 9;
		#5;
		
		Adr = 10;
		#5;
		
		Adr = 11;
		#5;
		
		Adr = 12;
		#5;
		
		Adr = 13;
		#5;
		
		Adr = 14;
		#5;
		
		Adr = 15;
		#5;
		
		Adr = 16;
		#5;
		
		Adr = 17;
		#5;
		
		Adr = 18;
		#5;
		
		Adr = 19;
		#5;
		
		Adr = 20;
		#5;
		
		Adr = 21;
		#5;
		
		Adr = 22;
		#5;
		
		Adr = 23;
		#5;
		
		Adr = 24;
		#5;
		
		Adr = 25;
		#5;
		
		Adr = 26;
		#5;
		
		Adr = 27;
		#5;
		
		Adr = 28;
		#5;
		
		Adr = 29;
		#5;
		
		Adr = 30;
		#5;
		
		Adr = 31;
		#5;
		

	//Simulation time: 160ns
	end
      
endmodule

