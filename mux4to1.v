`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:51 01/03/2022 
// Design Name: 
// Module Name:    mux4to1 
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
module mux4to1(
		input [31:0] D0,
		input [31:0] D1,
		input [31:0] D2,
		input [31:0] D3,
		input [1:0] Sel,
		output reg [31:0] Dout
    );
	 
	 always@(*) begin
		case(Sel)
			2'b00: Dout <= D0;
			2'b01: Dout <= D1;
			2'b10: Dout <= D2;
			2'b11: Dout <= D3;
			
		endcase
	end


endmodule
