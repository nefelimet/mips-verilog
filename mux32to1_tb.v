`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:48:35 01/02/2022
// Design Name:   mux32to1
// Module Name:   C:/Users/Nefel/Desktop/University/project1/mux32to1_tb.v
// Project Name:  project1
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
		D0 = 32'b01000100000001100000000100001101;
		D1 = 32'b01011100111101100111110100001101;
		D2 = 32'b00000100000000100000000000000101;
		D3 = 32'b11111100000001100000000100001101;
		D4 = 32'b11000100000001100000000100001101;
		D5 = 32'b01000100000001100000000100001111;
		D6 = 32'b01111111000001100000000100001101;
		D7 = 32'b01000100000001100011001100101111;
		D8 = 32'b01110100000001110000000000000101;
		D9 = 32'b01000100000001100000000100000000;
		D10 = 32'b01000100000010100000000100001101;
		D11 = 32'b11000100000001100000000100001100;
		D12 = 32'b11111111101011100000000100001101;
		D13 = 32'b01100100011001100110011100001101;
		D14 = 32'b01000100000001100000000110000001;
		D15 = 32'b11000100001001101111000100001111;
		D16 = 32'b00000000000000000000000000000001;
		D17 = 32'b00000000000000000000000000000000;
		D18 = 32'b00000000000000000000000000000011;
		D19 = 32'b00000000000000000000000000000010;
		D20 = 32'b00000000000000000000000000001001;
		D21 = 32'b10000000000000000000000000000001;
		D22 = 32'b10000000000000000000000000000101;
		D23 = 32'b10000000000000000000000000000011;
		D24 = 32'b00000000010000000000000000010001;
		D25 = 32'b00010000000000000000000110000001;
		D26 = 32'b00000000010000000000000000010001;
		D27 = 32'b01000000000000000000000000000011;
		D28 = 32'b10000000000000000000010000000001;
		D29 = 32'b10000000000000000000000001110001;
		D30 = 32'b00000000001100000000000000000001;
		D31 = 32'b00000000000001000000000000000001;
		Sel = 00000;
		#25;
		
		Sel = 00001;
		#25;
		
		Sel = 11111;
		#25;
		
		Sel = 11110;
		#25;
		
		Sel = 11101;
		#25;
		
		Sel = 11100;
		#25;
		
		Sel = 11011;
		#25;

       

	end
      
endmodule

