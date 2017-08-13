// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(START)
  @KBD
  D=M
  @WHITE
  D;JEQ
  @BLACK
  0;JMP

(WHITE)
  @SCREEN
  D=A
  @address
  M=D
(WHITE_LOOP)
  @address
  D=M
  A=D
  M=0
  @address
  D=D+1
  M=D
  @KBD
  D=A-D
  @START
  D;JEQ
  @WHITE_LOOP
  0;JMP

(BLACK)
  @SCREEN
  D=A
  @address
  M=D
(BLACK_LOOP)
  @address
  D=M
  A=D
  M=-1
  @address
  D=D+1
  M=D
  @KBD
  D=A-D
  @START
  D;JEQ
  @BLACK_LOOP
  0;JMP
