`timescale 1ns / 1ps

// fpga4student.com: FPGA projects, Verilog projects, VHDL projects 
// Verilog code for decoder 
// 5-input AND gate 
module AND_5_input(g,a,b,c,d,e);

  output g;
  input a,b,c,d,e;
  and and1(f1,a,b,c,d),
            and2(g,f1,e);
endmodule

// fpga4student.com: FPGA projects, Verilog projects, VHDL projects 
// Verilog code for decoder 
// Decoder top level Verilog code using 5-input AND gates 
module dec5to32(Out,Adr);

	input [4:0] Adr; // Adr=Address of register
	output [31:0] Out;
	not Inv4(Nota, Adr[4]);
	not Inv3(Notb, Adr[3]);
	not Inv2(Notc, Adr[2]);
	not Inv1(Notd, Adr[1]);
	not Inv0(Note, Adr[0]);

	AND_5_input a0(Out[0],  Nota,Notb,Notc,Notd,Note); // 00000
	AND_5_input a1(Out[1],  Nota,Notb,Notc,Notd,Adr[0]); // 00001
	AND_5_input a2(Out[2],  Nota,Notb,Notc,Adr[1],Note); //00010
	AND_5_input a3(Out[3],  Nota,Notb,Notc,Adr[1],Adr[0]);
	AND_5_input a4(Out[4],  Nota,Notb,Adr[2],Notd,Note);
	AND_5_input a5(Out[5],  Nota,Notb,Adr[2],Notd,Adr[0]);
	AND_5_input a6(Out[6],  Nota,Notb,Adr[2],Adr[1],Note);
	AND_5_input a7(Out[7],  Nota,Notb,Adr[2],Adr[1],Adr[0]);
	AND_5_input a8(Out[8],    Nota,Adr[3],Notc,Notd,Note);
	AND_5_input a9(Out[9],    Nota,Adr[3],Notc,Notd,Adr[0]);
	AND_5_input a10(Out[10],  Nota,Adr[3],Notc,Adr[1],Note);
	AND_5_input a11(Out[11],  Nota,Adr[3],Notc,Adr[1],Adr[0]);
	AND_5_input a12(Out[12],  Nota,Adr[3],Adr[2],Notd,Note);
	AND_5_input a13(Out[13],  Nota,Adr[3],Adr[2],Notd,Adr[0]);
	AND_5_input a14(Out[14],  Nota,Adr[3],Adr[2],Adr[1],Note);
	AND_5_input a15(Out[15],  Nota,Adr[3],Adr[2],Adr[1],Adr[0]);
	AND_5_input a16(Out[16],  Adr[4],Notb,Notc,Notd,Note);
	AND_5_input a17(Out[17],  Adr[4],Notb,Notc,Notd,Adr[0]);
	AND_5_input a18(Out[18],  Adr[4],Notb,Notc,Adr[1],Note);
	AND_5_input a19(Out[19],  Adr[4],Notb,Notc,Adr[1],Adr[0]);
	AND_5_input a20(Out[20],  Adr[4],Notb,Adr[2],Notd,Note);
	AND_5_input a21(Out[21],  Adr[4],Notb,Adr[2],Notd,Adr[0]);
	AND_5_input a22(Out[22],  Adr[4],Notb,Adr[2],Adr[1],Note);
	AND_5_input a23(Out[23],  Adr[4],Notb,Adr[2],Adr[1],Adr[0]);
	AND_5_input a24(Out[24],  Adr[4],Adr[3],Notc,Notd,Note);
	AND_5_input a25(Out[25],  Adr[4],Adr[3],Notc,Notd,Adr[0]);
	AND_5_input a26(Out[26],  Adr[4],Adr[3],Notc,Adr[1],Note);
	AND_5_input a27(Out[27],  Adr[4],Adr[3],Notc,Adr[1],Adr[0]);
	AND_5_input a28(Out[28],  Adr[4],Adr[3],Adr[2],Notd,Note);
	AND_5_input a29(Out[29],  Adr[4],Adr[3],Adr[2],Notd,Adr[0]);
	AND_5_input a30(Out[30],  Adr[4],Adr[3],Adr[2],Adr[1],Note);
	AND_5_input a31(Out[31],  Adr[4],Adr[3],Adr[2],Adr[1],Adr[0]); // 11111

endmodule
