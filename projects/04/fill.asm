@8192
D=A
@len
M=D

//循环读入键盘
(LOOP1)
@KBD
D=M
//白色
@WHITE
D;JEQ
//黑色
@BLACK
D;JNE

(WHITE)
@i
M=0

(LOOP2)
@len
D=M
@i
D=D-M
@LOOP1
D;JEQ

@SCREEN
D=A
@i
A=D+M
M=0
@i
M=M+1
@LOOP2
0;JMP

(BLACK)
@i
M=0

(LOOP3)
@len
D=M
@i
D=D-M
@LOOP1
D;JEQ

@SCREEN
D=A
@i
A=D+M
M=-1
@i
M=M+1
@LOOP3
0;JMP

