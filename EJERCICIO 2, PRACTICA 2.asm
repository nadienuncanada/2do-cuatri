EJERCICIO 2, PRACTICA 2.
ORG 1000H 
numero DB 01h
FIN DB ? 
 
ORG 2000H
 MOV BX, OFFSET numero
 MOV AL, OFFSET FIN-OFFSET numero 
INT 7
loo: inc byte ptr [bx]
 cmp byte ptr [bx], 0ffh
 jz fin
 INT 7
 jmp loo
 fin: INT 0 
 END
