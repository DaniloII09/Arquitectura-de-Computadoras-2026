org 200h

section .text

main:
CALL clean
CALL cargar_datos
CALL suma
CALL promedio

int 20h

clean:
XOR AX, AX
XOR BX, BX
XOR CX, CX
XOR DX, DX
RET

cargar_datos:
MOV BL, 8d
MOV CL, 15d
MOV DL, 9d
RET

suma:
ADD AL, BL
ADD AL, CL
ADD AL, DL
RET

promedio:
MOV BH, 3d
DIV BH
RET