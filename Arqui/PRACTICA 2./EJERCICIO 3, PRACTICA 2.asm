EJERCICIO 3, PRACTICA 2.
ORG 1000H 
a DB 41h
FIN DB ? 
 
ORG 2000H
 MOV BX, OFFSET a
 MOV AL, OFFSET FIN-OFFSET a 
INT 7
 mov cx,52; 26 sin la enie, mas 26 para mays
 loo: add byte ptr [bx],20h;pasas de A a a
 dec cx;sacas 1 letra del loop
 INT 7;printeas
 sub byte ptr [bx], 1Fh; te vas a B
 dec cx;sacas 1 letra del loop
 JZ fin; si cx llega a cero termina
 INT 7;ptinteas
 jmp loo
 fin: INT 0 
 END
