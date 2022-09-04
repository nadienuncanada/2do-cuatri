EJERCICIO 8d, PRACTICA 1.
ORG 1000H
CADENA DB "contar1#!"
DB 0
ORG 3000H
CONTAR_VOC: MOV cx,0
loop: mov ah,[bx]
cmp ah,0
JZ FIN
CMP ah, 97;a
jz ESS
CMP ah, 101;e
jz ESS
CMP ah, 105;i
jz ESS
CMP ah, 111;o
jz ESS
CMP ah, 117;u
jz ESS
CMP ah, 65;A
jz ESS 
CMP ah, 69;E
jz ESS
CMP ah, 73;I
jz ESS
CMP ah, 85;U
jz ESS
salto: inc bx
jmp loop
FIN:RET
ESS: inc cx
jmp salto
ORG 2000H
 MOV bx, offset CADENA
 CALL CONTAR_VOC
HLT
END 
