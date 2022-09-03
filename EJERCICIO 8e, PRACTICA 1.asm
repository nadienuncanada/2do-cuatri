EJERCICIO 8e, PRACTICA 1.
ORG 1000H
CADENA DB "abbcde!"
 DB 0
CARACTER DB 98
ORG 3000H
CONTAR_CAR: MOV cx,0
MOV bx,sp
add bx,2
mov dh,[bx];caracter
add bx,2
mov bx,[bx];cadena
loop: cmp byte ptr [bx],0
jz fin
cmp [bx],dh
jz sumar
inc bx
jmp loop
fin:RET
sumar:inc cx
inc bx 
jmp loop
ORG 2000H
MOV ax, OFFSET CADENA
 push ax
 mov ax,CARACTER
 push ax
 CALL CONTAR_CAR
HLT
END
