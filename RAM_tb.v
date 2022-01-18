`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:18:32 01/09/2022
// Design Name:   RAM
// Module Name:   C:/Users/Nefel/Desktop/University/project1/RAM_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RAM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RAM_tb;

	// Inputs
	reg clk = 0;
	reg we;
	reg [9:0] addr;
	reg [31:0] din;

	// Outputs
	wire [31:0] dout;

	// Instantiate the Unit Under Test (UUT)
	RAM uut (
		.clk(clk), 
		.we(we), 
		.addr(addr), 
		.din(din), 
		.dout(dout)
	);

	always #1 clk = ~clk;

	initial begin
		
		//Write value '31' to addr 4
		we = 1;
		addr = 10'b0000000100;
		din = 32'b00000000000000000000000000011111;
		#10;
		
		//Write value '16' to addr 1
		we = 1;
		addr = 10'b0000000001;
		din = 32'b00000000000000000000000000010000;
		#10;
		
		//Read addr 4
		we = 0;
		addr = 10'b0000000100;
		#10;
		
		//Read addr 3
		addr = 10'b0000000011;
		#10;
		
		//Read addr 1
		addr = 10'b0000000001;
		#10;

	//Simulation time: 50ns
	end
      
endmodule

