DATA SEGMENT
NUM DW 27H
N1 DB 10,13 'Number is EVEN$'
N2 DB 10,13 'Number is ODD$'
DATA ENDS

CODE SEGMENT

ASSUME CS:CODE,DS:DATA

START: MOV AX,DATA

MOV DS,AX
MOV AX,NUM

MOV BL,02H
DIV BL

CMP AH,0H

JNZ ExitFromProgram

LEA DX,N1
MOV AH,09H
INT 21H

LAST:MOV AH,4CH
INT 21H

CODE ENDS
END START