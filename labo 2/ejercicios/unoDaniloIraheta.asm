org 200h

section .text

main:

CALL clean

;Implementar una subrutina cargar_datos que asigne los valores iniciales 
;(12 para el ancho y 7 para el alto) a los registros AL y BL respectivamente.
CALL cargar_datos

;Crear la función calc_area que calcule ancho × alto utilizando la instrucción MUL.
;El resultado final debe quedar en AX.
;El main debe invocar esta subrutina y guardar el valor en la dirección [200H].
CALL calc_area
MOV [0200h], AX

CALL cargar_datos

;Crear la función calc_perimetro que realice el cálculo 2 × (ancho + alto).
;Puedes utilizar un registro auxiliar (como CL) para almacenar el factor 2 
;antes de multiplicar.
;El main debe invocar esta subrutina y guardar el valor resultante en la dirección [202H].
CALL calc_perimetro
MOV [0202h], AX

;El main debe coordinar las llamadas secuencialmente, asegurándose de que los registros 
;tengan los valores correctos antes de realizar cada cálculo (recuerda que instrucciones 
;como MUL modifican el registro AX).

int 20h

clean:
XOR AX, AX
XOR BX, BX
XOR CX, CX
XOR DX, DX
RET

cargar_datos:
MOV AL, 12d
MOV BL, 7d
RET

calc_area:
MUL BL
RET

calc_perimetro:
ADD AL, BL
MOV CL, 2d
MUL CL
RET