ORG 1000H
MSJ DB  "INGRESE EL PRIMER NUMERO:"
FIN DB ?
MSJ2 DB  "INGRESE EL SEGUNDO NUMERO:"
FIN2 DB ?

ORG 1500H
NUM1 DB ?
NUM2 DB ?
RES DB ?
NL DB 0AH
ORG 2000H
MOV BX, OFFSET MSJ
MOV AL, OFFSET FIN-OFFSET MSJ
INT 7
MOV BX, OFFSET NUM1
INT 6
MOV BX, OFFSET NL
MOV AL,1
INT 7
MOV BX, OFFSET MSJ2
MOV AL, OFFSET FIN2-OFFSET MSJ2
INT 7
MOV BX, OFFSET NUM2
INT 6
MOV BX, OFFSET NL
MOV AL,1
INT 7
SUB NUM1, 30H
SUB NUM2, 30H
MOV AL, NUM1
ADD AL, NUM2
CMP AL, 10H
JNS IMPRIMIR
MOV RES, 31H
MOV BX, OFFSET RES
MOV AL, 1
INT 7
MOV AL, RES
SUB AL, 1H
SUB AL, 30H
MOV AH,AL
MOV RES, AL
MOV BX, OFFSET RES
MOV AL, 1
INT 7
JMP FINN
SUB AL, 9H
IMPRIMIR: ADD AL, 30H
MOV RES, AL
MOV BX, OFFSET RES
MOV AL, 2
INT 7
FINN: INT 0
END
