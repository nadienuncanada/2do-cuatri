EJERCICIO 9a, PRACTICA 1.
ORG 1000H
VALOR DB 00100111B
ORG 3000H
ROTARIZ: add ah,ah
adc ah,0
RET
ORG 2000H
mov ah,VALOR
call ROTARIZ
HLT
END 
