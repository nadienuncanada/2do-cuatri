PA EQU 30h
PB EQU 31h
CA EQU 32h
CB EQU 33h
org 1000h
MSJ DB "Abcde"
FIN DB ?

ORG 2000H
mov al, 0;configurar cb para que pb sea de salida de datos
out CB, al
mov al, 0FDh;1111 1101 strobe (segundo) salida busy (primero) entrada
out CA, al
mov bx, offset MSJ
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

inc bx;avanza en cadena 
cmp bx, offset FIN;hasta que llegue al final
jnz polling;si no esta en el final hace todo de nuevo
INT 0
END
