`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:43 01/14/2022 
// Design Name: 
// Module Name:    CONTROL 
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
module CONTROL(
	input [31:0] Instr,
	input Zero,
	input clk,
	output reg PC_sel,
	output reg PC_LdEn,
	output reg Reset,
	output reg RF_WrEn,
	output reg RF_WrData_sel,
	output reg RF_B_sel,
	output reg ALU_Bin_sel,
	output reg [3:0] ALU_func,
	output reg Mem_WrEn,
	output reg lui,
	output reg lb,
	output reg sb
    );
	 
	 initial begin
		PC_sel = 0;
		PC_LdEn = 1;
		Reset = 0;
		RF_WrEn = 0;
		RF_WrData_sel = 0;
		RF_B_sel = 0;
		ALU_Bin_sel = 0;
		ALU_func = 0;
		Mem_WrEn = 0;
		lui = 0;
		lb = 0;
		sb = 0;
	 end
	 
	 always @(Instr, Zero) begin
	
		//Nop
		if (Instr == 0) begin
			PC_sel = 0;
			RF_WrEn = 0;
			RF_WrData_sel = 0;
			RF_B_sel = 0;
			ALU_Bin_sel = 0;
			ALU_func = 0;
			Mem_WrEn = 0;
			lui = 0;
			lb = 0;
			sb = 0;
		end
		
		else begin
		
		//Non-immediate instructions
		if (Instr[31:26] == 6'b100000) begin
			PC_sel = 0;
			RF_WrEn = 1;
			RF_WrData_sel = 0;
			RF_B_sel = 0;
			ALU_Bin_sel = 0;
			ALU_func = Instr[3:0];
			Mem_WrEn = 0;
			lui = 0;
			lb = 0;
			sb = 0;
		end
		
		//Immediate instructions
		case(Instr[31:26])
		
			6'b111000: begin //li
				 PC_sel = 0;
				 RF_WrEn = 1;
				RF_WrData_sel = 0;
				RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 0;
				Mem_WrEn = 0;
				lui = 0;
				lb = 0;
				sb = 0;
			end
			
			6'b111001: begin //lui
				PC_sel = 0;
				RF_WrEn = 1;
				RF_WrData_sel = 0;
				RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 0;
				Mem_WrEn = 0;
				lui = 1;
				lb = 0;
				sb = 0;
			end
			
			6'b110000: begin //addi
				PC_sel = 0;
				RF_WrEn = 1;
				RF_WrData_sel = 0;
				RF_B_sel = 1;
				 ALU_Bin_sel = 1;
				ALU_func = 0;
				Mem_WrEn = 0;
				lui = 0;
				lb = 0;
				sb = 0;
			end
			
			6'b110010: begin //andi
				PC_sel = 0;
				RF_WrEn = 1;
				RF_WrData_sel = 0;
				RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 4'b0010;
				 Mem_WrEn = 0;
				lui = 0;
				lb = 0;
				sb = 0;
			end
			
			6'b110011: begin //ori
				PC_sel = 0;
				RF_WrEn = 1;
				RF_WrData_sel = 0;
				RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 4'b0011;
				Mem_WrEn = 0;
				lui = 0;
				lb = 0;
				sb = 0;
			end
			
			6'b111111: begin //b
				PC_sel = 1;
				RF_WrEn = 1;
				RF_WrData_sel = 0;
				RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 0;
				Mem_WrEn = 0;
				lui = 0;
				lb = 0;
				sb = 0;
			end
			
			6'b000000: begin //beq
				RF_WrEn = 1;
				RF_WrData_sel = 0;
				RF_B_sel = 1;
				ALU_Bin_sel = 0;
				ALU_func = 4'b0001;
				Mem_WrEn = 0;
				lui = 0;
				lb = 0;
				sb = 0;
				
				if(Zero) PC_sel = 1;
				else PC_sel = 0;
			end
			
			6'b000001: begin //bne
				RF_WrEn = 1;
				RF_WrData_sel = 0;
				RF_B_sel = 1;
				ALU_Bin_sel = 0;
				ALU_func = 4'b0001;
				Mem_WrEn = 0;
				lui = 0;
				lb = 0;
				sb = 0;
				
				if(!Zero) PC_sel = 1;
				else PC_sel = 0;
			end
			
			6'b000011: begin //lb
				PC_sel = 0;
				RF_WrEn = 1;
				RF_WrData_sel = 1;
				RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 0;
				Mem_WrEn = 0;
				lui = 0;
				lb = 1;
				sb = 0;
			end
			
			6'b000011: begin //sb
				PC_sel = 0;
				RF_WrEn = 1;
				RF_WrData_sel = 1;
				 RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 0;
				Mem_WrEn = 1;
				lui = 0;
				lb = 0;
				sb = 1;
			end
			
			6'b001111: begin //lw
				PC_sel = 0;
				RF_WrEn = 1;
				RF_WrData_sel = 1;
				RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 0;
				Mem_WrEn = 0;
				lui = 0;
				lb = 0;
				sb = 0;
			end
			
			6'b011111: begin //sw
				PC_sel = 0;
				RF_WrEn = 0;
				RF_WrData_sel = 0;
				 RF_B_sel = 1;
				ALU_Bin_sel = 1;
				ALU_func = 0;
				Mem_WrEn = 1;
				lui = 0;
				lb = 0;
				sb = 0;
			end
			
		endcase
		
		//$display("Instr = %b", Instr);
		//$display("PC_sel = %b, PC_LdEn = %b, RF_WrEn = %b, RF_WrData_sel = %b, RF_B_sel = %b", PC_sel, PC_LdEn, RF_WrEn, RF_WrData_sel, RF_B_sel);
		//$display("ALU_Bin_sel = %b, ALU_func = %b, Mem_WrEn = %b, lui = %b, lb = %b, sb = %b", ALU_Bin_sel, ALU_func, Mem_WrEn, lui, lb, sb);
		end
	end



endmodule
