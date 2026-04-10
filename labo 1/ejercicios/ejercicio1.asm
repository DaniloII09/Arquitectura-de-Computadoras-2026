org 100h

section .text

MOV AL, 0F3h
MOV AH, 2Dh

MOV BX, AX

MOV CL, BH

MOV DL, 45d
MOV DH, 101101b

int 20h