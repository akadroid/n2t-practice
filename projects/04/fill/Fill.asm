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

// Print White
    //i = 0
    @i
    M=0
(WHITE)
    // if i > 8192 goto KEY_UP
    @i
    D=M
    @8192
    D=D-A
    @KEY_UP
    D;JGT

    // print white on screen
    @i
    D=M
    @SCREEN
    A=D+A
    M=0
    @i
    M=M+1
    @WHITE
    0;JMP

(KEY_UP)
    // reset i
    @i
    M=0
    // if key is pressed, blacken screen
    @KBD
    D=M
    @BLACK
    D;JNE
    @KEY_UP
    0;JMP

// Print Black
    // j = 0
    @j
    M=0
(BLACK)
    // if j > 8192 goto stop
    @j
    D=M
    @8192
    D=D-A
    @KEY_DOWN
    D;JGT

    // print pixels on screen
    @j
    D=M
    @SCREEN
    A=D+A
    M=-1
    @j
    M=M+1
    @BLACK
    0;JMP

(KEY_DOWN)
    // reset j
    @j
    M=0
    // if key is not pressed, whiten screen
    @KBD
    D=M
    @WHITE
    D;JEQ
    @KEY_DOWN
    0;JMP

(END)
    @END
    0;JMP






