`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:02:37 01/09/2022
// Design Name:   ALUSTAGE
// Module Name:   C:/Users/Nefel/Desktop/University/project1/ALUSTAGE_tb.v
// Project Name:  project1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUSTAGE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUSTAGE_tb;

	// Inputs
	reg [31:0] RF_A;
	reg [31:0] RF_B;
	reg [31:0] Immed;
	reg ALU_Bin_sel;
	reg [31:0] lui_out;
	reg lui;
	reg [3:0] ALU_func;

	// Outputs
	wire [31:0] ALU_out;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	ALUSTAGE uut (
		.RF_A(RF_A), 
		.RF_B(RF_B), 
		.Immed(Immed), 
		.ALU_Bin_sel(ALU_Bin_sel),
		.lui_out(lui_out),
		.lui(lui),
		.ALU_func(ALU_func), 
		.ALU_out(ALU_out),
		.Zero(Zero)
	);

	initial begin
		
		//RF_A = 15, RF_B = 1, Out = A + B
		RF_A = 32'b00000000000000000000000000001111;
		RF_B = 32'b00000000000000000000000000000001;
		Immed = 0;
		ALU_Bin_sel = 0;
		lui_out = 15;
		lui = 0;
		ALU_func = 4'b0000;
		#10;
		//$display("MUX result: %b", uut.ALU_in_B);
		
		//Out = A - B
		ALU_func = 4'b0001;
		#10;
		
		//Out = A & B
		ALU_func = 4'b0010;
		#10;
		
		//Out = A + immed
		ALU_func = 4'b0000;
		ALU_Bin_sel = 1;
		Immed = 32'b00000000000000000000000000000101;
		#10;
		
		//Out = A + lui
		lui = 1;
		RF_A = 0;
		#10;

	//Simulation time: 50ns
	end
      
endmodule

