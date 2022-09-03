EJERCICIO 5, PRACTICA 2.
ORG 1000H
MSJ DB "INGRESE UN NUMERO:" 
FIN DB ? 
MSJ2 DB "CARACTER NO VALIDO"
FIN2 DB ?
 ORG 1500H 
NUM DB ? 
ORG 3000H
ES_NUM:cmp cl,39H;comparo con 9
jns noes;si no da neg esta despues o antes del 9
cmp cl,30H;comparo con 0 por si paso q es menor a 9, 
          ;chekeo que este entre el 0 y 9
js noes
mov cl, 0ffH;es un numero
jmp fin; si es salta directo a fin,ya con el valor 0ffh 
noes: mov cl,00H;si noes devuelve 00h ret
 MOV BX, OFFSET MSJ2;le paso de donde empezar a leer el carac no val
 MOV AL,OFFSET FIN2-OFFSET MSJ2;cuantas letras tiene que leer
 INT 7;imprime
fin: ret
 ORG 2000H 
 MOV BX, OFFSET MSJ 
MOV AL, OFFSET FIN-OFFSET MSJ
 INT 7 
 MOV BX, OFFSET NUM 
INT 6
 MOV AL, 1 
 INT 7 
 MOV CL, NUM
 CALL ES_NUM
 INT 0 
 END
