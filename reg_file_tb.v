`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:25:57 01/02/2022
// Design Name:   reg_file
// Module Name:   C:/Users/Nefel/Desktop/University/project1/reg_file_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: reg_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module reg_file_tb;

	// Inputs
	reg [4:0] Ard1;
	reg [4:0] Ard2;
	reg [4:0] Awr;
	reg [31:0] Din;
	reg WrEn;
	reg Clk = 0;

	// Outputs
	wire [31:0] Dout1;
	wire [31:0] Dout2;

	// Instantiate the Unit Under Test (UUT)
	reg_file uut (
		.Ard1(Ard1), 
		.Ard2(Ard2), 
		.Awr(Awr), 
		.Dout1(Dout1), 
		.Dout2(Dout2), 
		.Din(Din), 
		.WrEn(WrEn), 
		.Clk(Clk)
	);

	always #1 Clk = !Clk;
	
	initial begin
	
		
		WrEn = 0;
		Ard1 = 10;
		Ard2 = 3;
		Awr = 3;
		Din = 32;
		#5;
		
		/*
		$display("Block 1.");
		$display("WrEn = %b, Awr = %b, Ard1 = %b, Ard2 = %b, Din = %b", WrEn, Awr, Ard1, Ard2, Din);
		$display("Decoder output: %b", uut.W);
		$display("WE of reg 10: %b, of reg 3: %b", uut.andWire[10], uut.andWire[3]);
		$display("Output of reg 10: %b, of reg 3: %b", uut.Z[10], uut.Z[3]);
		$display("Dout1 = %b, Dout2 = %b", Dout1, Dout2);
		*/
		
		WrEn = 1;
		#5;
		
		WrEn = 0;
		Din = 2;
		#5;
		
		Awr = 10;
		WrEn = 1;
		#5;
		
	end
      
endmodule

