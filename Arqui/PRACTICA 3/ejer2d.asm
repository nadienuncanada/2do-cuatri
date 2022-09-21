PA EQU 30h
PB EQU 31h
CA EQU 32h
CB EQU 33h
INT0 EQU 24h
EOI EQU 20h
IMR EQU 21h

org 3000h
rut_10: push ax
mov bx, offset car
jmp polling
mov al,20h
out EOI,al
pop ax
IRET
org 1000h
MSJ DB "Ingrese Caracteres"
FIN DB ?
suma db 0
car db ?
ORG 2000H
MOV AX, rut_10
MOV BX, 20
MOV [BX], AX; PONEMOS EN LA POS 20 EL VALOR 3000H(CONTAR)

CLI
MOV AL, 11111110B;ACTIVO F10 
OUT IMR, AL

MOV AL, 5
OUT INT0, AL
STI
mov bx,offset MSJ
mov al, offset FIN-offset MSJ
int 7

mov al, 0;configurar cb para que pb sea de salida de datos
out CB, al
mov al, 0FDh;1111 1101 strobe (segundo) salida busy (primero) entrada
out CA, al
mov bx,offset car
loop: int 6 
inc suma
inc bx
jmp loop
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

inc bx 
dec suma
jnz polling
INT 0
END
