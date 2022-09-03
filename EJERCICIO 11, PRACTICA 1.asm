EJERCICIO 11,PRACTICA 1.
ORG 1000H
n1 db 2;divisor
n2 db 4;dividendo
ORG 3000H
div: mov dx,0
mov bx,sp
add bx,2;n2
mov ch,[bx];n2
add bx,2;n1
mov cl,[bx];n1
loop:cmp ch,cl;si lo que queremos dividir no es mas chico q el otro
js fin
sub ch,cl
inc dx
jz fin
jmp loop
fin: add bx,4
push dx
push bx
RET
ORG 2000H
mov ax,n1
push ax
mov ax,n2
push ax
call div
pop dx
END 
