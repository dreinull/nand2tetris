// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
(INIT)
  @2
  M=0
  
(START)
  // Read RAM[0]
  @0
  D=M
  // IF RAM[0] ist 0, goto end
  @END
  D;JEQ
  // Read RAM[1] and add to RAM[2]
  @1
  D=M
  @2
  M=D+M

  // Decrease RAM[0]
  @0
  M=M-1

  @START
  0;JMP


(END)
  @END
  0,JMP
