EJERCICIO 10, PRACTICA 1.
ORG 1000H
N1 DW 7
N2 DW 3
ORG 3000H
SWAP: mov bx,sp
add bx,4
mov ax,[bx];direc n1
sub bx,2
mov dx,[bx];direc n2
mov bx,ax;le pasa direc de n1
mov ax,[bx];ax toma el valor de n1
mov cx,bx; guardamos bx cuando tiene la direc de n1
mov bx,dx;le pasa direc de n2
mov dx,[bx];dx toma el valor de n2
mov word ptr [bx],ax;pongo la dir de n2 el valor de ax=n1
mov bx,cx;le damos lo que guardamos=direc de n1
mov word ptr [bx],dx
RET
ORG 2000H
MOV AX, OFFSET N1
PUSH AX
MOV AX, OFFSET N2
PUSH AX
call SWAP
HLT
END 
