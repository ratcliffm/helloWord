//Maliah Ratcliff 
// CS 314 Lab 5 
// Part 4 HACK 

// Hello and worth will both print seperately.
// Here was my idea for the key press 

(HELLO) // PRINTS HELLO 
@9
D=A
@16389 // increment by one for each hex 
M=D
//E 0000110 - working E 
@6
D=A
@16388
M=D
// L 0111000 1000111
@71 
D=A
@16387
M=D
// L 0111000 
@71 
D=A
@16386
M=D 
// O 1000000 
@64
D=A
@16385
M=D

@16384
M=-1

(HELLOKEY) // CHECK FOR KEY PRESS 

@24576
D=M
@currentkey 
M=D

@1 // for key3 
D=A
@currentkey
D=D-M
@WORLD // IF PRESSED GO TO WORLD 
D; JEQ
@HELLO // ELSE GO BACK TO HELLO 
0;JMP

(WORLD) // PRINTS WORLD 
@1
D=A
@16389 // increment by one for each hex 
M=D
@35 
D=A
@16388 // increment by one for each hex 
M=D
@47
D=A
@16387 // increment by one for each hex 
M=D
@71
D=A
@16386 // increment by one for each hex 
M=D
@33
D=A
@16385 // increment by one for each hex 
M=D
@16384 // increment by one for each hex 
M=-1

(WORLDKEY) // CHECK FOR KEY PRESS 
@24576
D=M
@currentkey 
M=D

@1 
D=A
@currentkey
D=D-M
@HELLO // IF PRESS GO TO HELLO 
D; JEQ
@WORLD // ELSE GO TO WORLD 
0;JMP


(end) // infinite loop just in case 
@end
0; JMP 
