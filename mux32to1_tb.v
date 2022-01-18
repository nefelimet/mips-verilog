`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:56:05 01/03/2022
// Design Name:   mux32to1
// Module Name:   C:/Users/Nefel/Desktop/University/draft/mux32to1_tb.v
// Project Name:  draft
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux32to1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux32to1_tb;

	// Inputs
	reg [31:0] D0;
	reg [31:0] D1;
	reg [31:0] D2;
	reg [31:0] D3;
	reg [31:0] D4;
	reg [31:0] D5;
	reg [31:0] D6;
	reg [31:0] D7;
	reg [31:0] D8;
	reg [31:0] D9;
	reg [31:0] D10;
	reg [31:0] D11;
	reg [31:0] D12;
	reg [31:0] D13;
	reg [31:0] D14;
	reg [31:0] D15;
	reg [31:0] D16;
	reg [31:0] D17;
	reg [31:0] D18;
	reg [31:0] D19;
	reg [31:0] D20;
	reg [31:0] D21;
	reg [31:0] D22;
	reg [31:0] D23;
	reg [31:0] D24;
	reg [31:0] D25;
	reg [31:0] D26;
	reg [31:0] D27;
	reg [31:0] D28;
	reg [31:0] D29;
	reg [31:0] D30;
	reg [31:0] D31;
	reg [4:0] Sel;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	mux32to1 uut (
		.D0(D0), 
		.D1(D1), 
		.D2(D2), 
		.D3(D3), 
		.D4(D4), 
		.D5(D5), 
		.D6(D6), 
		.D7(D7), 
		.D8(D8), 
		.D9(D9), 
		.D10(D10), 
		.D11(D11), 
		.D12(D12), 
		.D13(D13), 
		.D14(D14), 
		.D15(D15), 
		.D16(D16), 
		.D17(D17), 
		.D18(D18), 
		.D19(D19), 
		.D20(D20), 
		.D21(D21), 
		.D22(D22), 
		.D23(D23), 
		.D24(D24), 
		.D25(D25), 
		.D26(D26), 
		.D27(D27), 
		.D28(D28), 
		.D29(D29), 
		.D30(D30), 
		.D31(D31), 
		.Sel(Sel), 
		.Dout(Dout)
	);

	initial begin
		// Initialize Inputs
		D0 = 0;
		D1 = 1;
		D2 = 2;
		D3 = 3;
		D4 = 4;
		D5 = 5;
		D6 = 6;
		D7 = 7;
		D8 = 8;
		D9 = 9;
		D10 = 10;
		D11 = 11;
		D12 = 12;
		D13 = 13;
		D14 = 14;
		D15 = 15;
		D16 = 16;
		D17 = 17;
		D18 = 18;
		D19 = 19;
		D20 = 20;
		D21 = 21;
		D22 = 22;
		D23 = 23;
		D24 = 24;
		D25 = 25;
		D26 = 26;
		D27 = 27;
		D28 = 28;
		D29 = 29;
		D30 = 30;
		D31 = 31;
		
		Sel = 0;
		#5;
		
		Sel = 1;
		#5;
		
		Sel = 2;
		#5;
		
		Sel = 3;
		#5;
		
		Sel = 4;
		#5;
		
		Sel = 5;
		#5;
		
		Sel = 30;
		#5;
		
		Sel = 31;
		#5;
		
	//Simulation time: 40ns
	end
      
endmodule

