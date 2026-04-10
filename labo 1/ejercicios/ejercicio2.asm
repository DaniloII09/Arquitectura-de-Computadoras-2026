org 100h

section .text

MOV AX, 5C7Eh
MOV [0300h], AX

MOV AX, 9AB2h
MOV [0302h], AX

MOV AX, 0F01h
MOV [0304h], AX

MOV BP, 300h

MOV AL, [BP + 0]
MOV AH, [BP + 1]

MOV BL, [BP + 2]
MOV BH, [BP + 3]

MOV CL, [BP + 4]
MOV CH, [BP + 5]

int 20h