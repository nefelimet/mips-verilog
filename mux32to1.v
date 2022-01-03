`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:45:28 01/03/2022 
// Design Name: 
// Module Name:    mux32to1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux32to1(

	input [31:0] D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D29, D30, D31,
   input [4:0] Sel,
   output reg [31:0] Dout
    );
	 /*
	 wire [31:0] A1;
	 wire [31:0] A2;
	 wire [31:0] A3;
	 wire [31:0] A4;
	 wire [31:0] A5;
	 wire [31:0] A6;
	 wire [31:0] A7;
	 wire [31:0] A8;
	 wire [31:0] B1;
	 wire [31:0] B2;

	mux2to1 M0 (.D0(B1), .D1(B2), .Sel(Sel[4]), .Dout(Dout));
	
	mux4to1 M1 (.D0(A1), .D1(A2), .D2(A3), .D3(A4), .Sel(Sel[3:2]), .Dout(B1));
	mux4to1 M2 (.D0(A5), .D1(A6), .D2(A7), .D3(A8), .Sel(Sel[3:2]), .Dout(B2));
	
	mux4to1 M3 (.D0(D0), .D1(D1), .D2(D2), .D3(D3), .Sel(Sel[1:0]), .Dout(A1));
	mux4to1 M4 (.D0(D4), .D1(D5), .D2(D6), .D3(D7), .Sel(Sel[1:0]), .Dout(A2));
	mux4to1 M5 (.D0(D8), .D1(D9), .D2(D10), .D3(D11), .Sel(Sel[1:0]), .Dout(A3));
	mux4to1 M6 (.D0(D12), .D1(D13), .D2(D14), .D3(D15), .Sel(Sel[1:0]), .Dout(A4));
	mux4to1 M7 (.D0(D16), .D1(D17), .D2(D18), .D3(D19), .Sel(Sel[1:0]), .Dout(A5));
	mux4to1 M8 (.D0(D20), .D1(D21), .D2(D22), .D3(D23), .Sel(Sel[1:0]), .Dout(A6));
	mux4to1 M9 (.D0(D24), .D1(D25), .D2(D26), .D3(D27), .Sel(Sel[1:0]), .Dout(A7));
	mux4to1 M10 (.D0(D28), .D1(D29), .D2(D30), .D3(D31), .Sel(Sel[1:0]), .Dout(A8));
	*/
	
	always@(*) begin
		case(Sel)
			0: Dout <= D0;
			1: Dout <= D1;
			2: Dout <= D2;
			3: Dout <= D3;
			4: Dout <= D4;
			5: Dout <= D5;
			6: Dout <= D6;
			7: Dout <= D7;
			8: Dout <= D8;
			9: Dout <= D9;
			10: Dout <= D10;
			11: Dout <= D11;
			12: Dout <= D12;
			13: Dout <= D13;
			14: Dout <= D14;
			15: Dout <= D15;
			16: Dout <= D16;
			17: Dout <= D17;
			18: Dout <= D18;
			19: Dout <= D19;
			20: Dout <= D20;
			21: Dout <= D21;
			22: Dout <= D22;
			23: Dout <= D23;
			24: Dout <= D24;
			25: Dout <= D25;
			26: Dout <= D26;
			27: Dout <= D27;
			28: Dout <= D28;
			29: Dout <= D29;
			30: Dout <= D30;
			31: Dout <= D31;
		endcase
	end

endmodule
