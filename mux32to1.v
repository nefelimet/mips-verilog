`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:48:57 01/02/2022 
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
	 
	 
	 
	 always@(*) begin
		case(Sel)
			5'b00000: Dout <= D0;
			5'b00001: Dout <= D1;
			5'b00010: Dout <= D2;
			5'b00011: Dout <= D3;
			5'b00100: Dout <= D4;
			5'b00101: Dout <= D5;
			5'b00110: Dout <= D6;
			5'b00111: Dout <= D7;
			5'b01000: Dout <= D8;
			5'b01001: Dout <= D9;
			5'b01010: Dout <= D10;
			5'b01011: Dout <= D11;
			5'b01100: Dout <= D12;
			5'b01101: Dout <= D13;
			5'b01110: Dout <= D14;
			5'b01111: Dout <= D15;
			5'b10000: Dout <= D16;
			5'b10001: Dout <= D17;
			5'b10010: Dout <= D18;
			5'b10011: Dout <= D19;
			5'b10100: Dout <= D20;
			5'b10101: Dout <= D21;
			5'b10110: Dout <= D22;
			5'b10111: Dout <= D23;
			5'b11000: Dout <= D24;
			5'b11001: Dout <= D25;
			5'b11010: Dout <= D26;
			5'b11011: Dout <= D27;
			5'b11100: Dout <= D28;
			5'b11101: Dout <= D29;
			5'b11110: Dout <= D30;
			5'b11111: Dout <= D31;
		endcase
	 
	 end


endmodule
