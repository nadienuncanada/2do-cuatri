EOI EQU 20H
IMR EQU 21H
INT0 EQU 24H
DATO EQU 40H
ESTADO EQU 41H

ORG 20
R_IMP DW POLLING

ORG 1000H
DNI DB "43905995"
FIN DB ?

ORG 3000H
POLLING: IN AL,ESTADO ;checkear busy, si busy 1 polling sino imprimir
AND AL,1
JNZ POLLING

MOV AL,[BX]; en al queda el primer numero del dni el cual después va a cambiar al siguiente
OUT DATO,AL ; le paso lo que tiene que printear

INC BX; avanzo por el dni

CMP BX,OFFSET FIN; me fijo de que no haya terminado de imprimir
JNZ POLLING; si no termino le sigo pasando numero o esperando a que deje de estar busy

 MOV AL,20H; indico al pic que termino la int
OUT EOI,AL

IRET

ORG 2000H
CLI
MOV AL,0FEH; active f10
OUT IMR,AL 

MOV AL,5; le paso 5 a imr para que consiga la dirección de imprimir la cual esta en 20(5x4)
OUT INT0,AL

IN AL,ESTADO; desactivamos las ints de handshake sin alterar lo demas
AND AL,01111111B
OUT ESTADO,AL
STI

MOV BX,OFFSET DNI; consigo la direc de dni
LOOPEAR: CMP BX,OFFSET FIN
JZ FINN
JMP LOOPEAR;hasta no tocar f10 no sale del loop, uma vez que salga imprime

FINN: INT 0
END
