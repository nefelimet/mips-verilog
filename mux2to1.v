`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:49:19 01/02/2022 
// Design Name: 
// Module Name:    mux2to1 
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
module mux2to1(
    input [31:0] D1,
    input [31:0] D2,
    input Sel,
    output reg [31:0] Dout
    );
	 
	 always@(*) begin
		case(Sel)
			1'b0: Dout <= D1;
			1'b1: Dout <= D2;
		endcase
	 end
	 


endmodule
