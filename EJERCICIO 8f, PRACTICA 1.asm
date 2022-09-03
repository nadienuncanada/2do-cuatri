EJERCICIO 8f, PRACTICA 1.
ORG 1000H
CADENA DB "abbcde!"
DB 0
REEMPLAZO DB 97;b
ORIGINAL DB 98;b
ORG 3000H
REEMPLAZAR_CAR: MOV bx,sp
add bx,2
mov dh,[bx];original
add bx,2
mov dl,[bx];reemplazo
add bx,2
mov bx,[bx];cadena
loop: cmp byte ptr [bx],0
jz fin
cmp dh,[bx]
jz cambiar
inc bx
jmp loop
fin:RET
cambiar:mov [bx],dl
inc bx 
jmp loop
ORG 2000H
MOV ax, OFFSET CADENA
 push ax
 mov ax,REEMPLAZO
 push ax
 mov ax, ORIGINAL 
 push ax
 CALL REEMPLAZAR_CAR
HLT
END 
