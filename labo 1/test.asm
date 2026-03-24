org 100h

section .text

start:

mov byte [200h], 068h
mov byte [201h], 06Fh
mov byte [202h], 06Ch
mov byte [203h], 061h

int 20h
