CONT EQU 10H
COMP EQU 11H
EOI EQU 20H
IMR EQU 21H
INT1 EQU 25H
PA EQU 30H;estado
PB EQU 31H;dato
CA EQU 32H
CB EQU 33H
ORG 40
IP_RUT DW POLLING

ORG 1000H
CODIGO DB "DSADSFD75483"
FINC DB ? 

ORG 3000H
POLLING: IN AL, PA
    AND AL,1; checkea que no este busy
    JNZ POLLING

IMPRIMIR:IN AL,PA
    AND AL,01B; ponemos strobe en 0
    OUT PA,AL

MOV AL,[BX]
OUT PB,AL; le pasamos el dato para q imprima

INC BX;avanza

IN AL,PA 
OR AL,10B; le indicamos a strobe que le entro un dato e imprima
OUT PA,AL

MOV AL,0; reiniciamos el contador
OUT CONT,AL

MOV AL,20H 
OUT EOI,AL
IRET
ORG 2000H

MOV BX,OFFSET CODIGO

CLI
;IMPRESORA

MOV AL,01B; strobe entrada,busy salida
OUT CA,AL

MOV AL,0; ponemos a cb en modo dato (le vamos a madar lo que imprime)
OUT CB,AL 
;TIMER 

MOV AL,11111101B; activamos el timer
OUT IMR, AL

MOV AL,10;va al org 40
OUT INT1,AL

MOV AL,1;compara cada 1
OUT COMP,AL

MOV AL,0;empieza en 0 el timer
OUT CONT,AL
STI

LOOPEAR: CMP BX,OFFSET FINC
    JZ FIN
JMP LOOPEAR
FIN:INT 0
END
