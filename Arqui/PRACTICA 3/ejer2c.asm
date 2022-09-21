PA EQU 30h
PB EQU 31h
CA EQU 32h
CB EQU 33h
org 1000h
MSJ DB "Ingrese Caracteres"
FIN DB ?
car db ?
ORG 2000H
mov bx,offset MSJ
mov al, offset FIN-offset MSJ
int 7
mov cl,5
mov al, 0;configurar cb para que pb sea de salida de datos
out CB, al
mov al, 0FDh;1111 1101 strobe (segundo) salida busy (primero) entrada
out CA, al
loop: mov bx,offset car
int 6 
polling: IN al,PA;consulta el estado busy de la impresora
and al,1
jnz polling

in al,PA
and al, 0FDH; pone strobe en 0(para que la prox sepa q entro un dato nuevo)
out PA,al

mov al, [bx]; ponemos el dato de bx en al
out PB, al; lo mandamos a pb

in al,PA;toma el strobe 
or al,2;pone strobe en 1(para imprimir)
out PA, al

dec cl
cmp cl,0
jnz loop
INT 0
END
