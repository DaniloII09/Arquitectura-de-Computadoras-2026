org 200h

section .text

main:

;Implementar una subrutina clean que ponga en cero los registros 
;AX, BX, CX y DX antes de realizar cualquier operación.
CALL clean

MOV AX, 240

;Crear la función calc_descuento que aplique la fórmula: (subtotal × 15) / 100.
;El resultado del descuento debe quedar en el registro AL.
CALL calc_descuento

;Crear la función calc_total que reste el monto del descuento al subtotal original.
;El resultado del total a pagar debe quedar en el registro BX.
CALL calc_total

;Crear la función guardar_resultados que escriba los valores finales en memoria:
;Descuento en la dirección [300H].
;Total final en la dirección [302H].
CALL guardar_resultados

;El main coordinará las llamadas en este orden: clean, carga del subtotal (240) en AX, 
;calc_descuento, calc_total y guardar_resultados.

int 20h

clean:
XOR AX, AX
XOR BX, BX
XOR CX, CX
XOR DX, DX
RET

calc_descuento:
MOV CX, AX ;CX auxiliar
MOV BL, 15d
MUL BL
MOV BL, 100d
DIV BL
RET

calc_total:
MOV BX, CX
MOV AH, 0 ;se limpia residuo de la división de calc_descuento para poder operar BX - AX
SUB BX, AX
RET

guardar_resultados:
MOV [0300h], AX
MOV [0302h], BX
RET