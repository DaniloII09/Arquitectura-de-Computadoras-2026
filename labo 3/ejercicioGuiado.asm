org 100h

section .text

MOV AL, 95d

CMP AL, 90d
JAE excelente

CMP AL, 90d
JAE muy_bueno

CMP AL, 80d
JAE bueno

CMP AL, 70d
JB mejorable

excelente:
MOV [200h], 'A'
int 20h

muy_bueno:
MOV [200h], 'B'
int 20h

bueno:
MOV [200h], 'C'
int 20h

mejorable:
MOV [200h], 'F'
int 20h