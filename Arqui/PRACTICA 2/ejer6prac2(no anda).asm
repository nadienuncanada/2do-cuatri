org 1000h
MSJ  DB "INGRESE UN NUMERO:"
FIN DB ?
NUMERITOS DB "CERO  "
DB "UNO   "
DB "DOS   "
DB "TRES  "
DB "CUATRO"
DB "CINCO "
DB "SEIS  "
DB "SIETE "
DB "OCHCO "
DB "NUEVE "
NFIN DB ?
BASE DB 30h
org 1500h
NUM DB ?
org 3000h
subrut: mov ch,BASE
aki:cmp cl,ch
jz mult
jnz unomas
unomas:inc ch
 inc dl
 cmp ch,40h
 jz fin
 jmp aki
print:MOV AL,6
INT 7
jmp fin 
mult: MOV bx,offset NUMERITOS
add bx,6
dec dl
jz print
jnz mult
 fin: RET 
org 2000h
MOV CL, 0 
OTRO: MOV BX, OFFSET MSJ
 MOV AL, OFFSET FIN-OFFSET MSJ
 INT 7
 mov dh,0
 salto: cmp dh,2
 jz ffin
 MOV BX, OFFSET NUM
 INT 6
 mov cl,NUM
 call subrut
 jmp salto
 ffin: INT 0
 END; arreglar no funciona je
