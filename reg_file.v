`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:30 01/02/2022 
// Design Name: 
// Module Name:    reg_file 
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
module reg_file(
    input [4:0] Ard1,
    input [4:0] Ard2,
    input [4:0] Awr,
    output [31:0] Dout1,
    output [31:0] Dout2,
    input [31:0] Din,
    input WrEn,
    input Clk
    );
	 
	 wire [31:0] W;
	 wire [31:0] andWire;
	 reg [31:0] Z [31:0];
	 integer i;
	 
	 //Creation of 5 to 32 decoder
	 dec5to32 u1 (.Adr(Awr), .Out(W));
	 for (genvar i = 0; i < 32; i=i+1) begin : andFor
		assign andWire[i] = WrEn & W[i];
	 end
	 
	 //Creation of 32 registers
	 register r0 (.CLK(Clk), .Data(32'b00000000000000000000000000000000), .WE(0), .Dout(Z[0]));
	 register r1 (.CLK(Clk), .Data(Din), .WE(andWire[1]), .Dout(Z[1]));
	 register r2 (.CLK(Clk), .Data(Din), .WE(andWire[2]), .Dout(Z[2]));
	 register r3 (.CLK(Clk), .Data(Din), .WE(andWire[3]), .Dout(Z[3]));
	 register r4 (.CLK(Clk), .Data(Din), .WE(andWire[4]), .Dout(Z[4]));
	 register r5 (.CLK(Clk), .Data(Din), .WE(andWire[5]), .Dout(Z[5]));
	 register r6 (.CLK(Clk), .Data(Din), .WE(andWire[6]), .Dout(Z[6]));
	 register r7 (.CLK(Clk), .Data(Din), .WE(andWire[7]), .Dout(Z[7]));
	 register r8 (.CLK(Clk), .Data(Din), .WE(andWire[8]), .Dout(Z[8]));
	 register r9 (.CLK(Clk), .Data(Din), .WE(andWire[9]), .Dout(Z[9]));
	 register r10 (.CLK(Clk), .Data(Din), .WE(andWire[10]), .Dout(Z[10]));
	 register r11 (.CLK(Clk), .Data(Din), .WE(andWire[11]), .Dout(Z[11]));
	 register r12 (.CLK(Clk), .Data(Din), .WE(andWire[12]), .Dout(Z[12]));
	 register r13 (.CLK(Clk), .Data(Din), .WE(andWire[13]), .Dout(Z[13]));
	 register r14 (.CLK(Clk), .Data(Din), .WE(andWire[14]), .Dout(Z[14]));
	 register r15 (.CLK(Clk), .Data(Din), .WE(andWire[15]), .Dout(Z[15]));
	 register r16 (.CLK(Clk), .Data(Din), .WE(andWire[16]), .Dout(Z[16]));
	 register r17 (.CLK(Clk), .Data(Din), .WE(andWire[17]), .Dout(Z[17]));
	 register r18 (.CLK(Clk), .Data(Din), .WE(andWire[18]), .Dout(Z[18]));
	 register r19 (.CLK(Clk), .Data(Din), .WE(andWire[19]), .Dout(Z[19]));
	 register r20 (.CLK(Clk), .Data(Din), .WE(andWire[20]), .Dout(Z[20]));
	 register r21 (.CLK(Clk), .Data(Din), .WE(andWire[21]), .Dout(Z[21]));
	 register r22 (.CLK(Clk), .Data(Din), .WE(andWire[22]), .Dout(Z[22]));
	 register r23 (.CLK(Clk), .Data(Din), .WE(andWire[23]), .Dout(Z[23]));
	 register r24 (.CLK(Clk), .Data(Din), .WE(andWire[24]), .Dout(Z[24]));
	 register r25 (.CLK(Clk), .Data(Din), .WE(andWire[25]), .Dout(Z[25]));
	 register r26 (.CLK(Clk), .Data(Din), .WE(andWire[26]), .Dout(Z[26]));
	 register r27 (.CLK(Clk), .Data(Din), .WE(andWire[27]), .Dout(Z[27]));
	 register r28 (.CLK(Clk), .Data(Din), .WE(andWire[28]), .Dout(Z[28]));
	 register r29 (.CLK(Clk), .Data(Din), .WE(andWire[29]), .Dout(Z[29]));
	 register r30 (.CLK(Clk), .Data(Din), .WE(andWire[30]), .Dout(Z[30]));
	 register r31 (.CLK(Clk), .Data(Din), .WE(andWire[31]), .Dout(Z[31]));
	 
	

endmodule
