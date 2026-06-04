org 200h

section .text

main:
CALL clean
CALL acumular
MOV [0200h], AX
MOV [0202h], CX

int 20h

clean:
XOR AX, AX
XOR BX, BX
XOR CX, CX
XOR DX, DX
RET

acumular:
ADD AX, 7d
INC CX
CMP AX, 40d
JG fin_acumular
JMP acumular
fin_acumular:
RET