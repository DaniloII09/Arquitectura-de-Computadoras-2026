org 200h

section .text

main:

CALL clean

MOV AX, -5d
;MOV AX, 15d
;MOV AX, 30d

CALL clasificar
MOV [0200h], AL

int 20h

clean:
XOR AX, AX
XOR BX, BX
XOR CX, CX
XOR DX, DX
RET

clasificar:
CMP AX, 0
JL es_frio
CMP AX, 25
JLE es_templado
CMP AX, 25
JG es_caliente
RET

es_frio:
MOV AL, 'F'
RET

es_templado:
MOV AL, 'T'
RET

es_caliente:
MOV AL, 'C'
RET