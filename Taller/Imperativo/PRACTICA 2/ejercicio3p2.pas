{3.- Escribir un programa que:
a. Implemente un módulo recursivo que genere una lista de números enteros “random” mayores a 0 y menores a 100. Finalizar con el número 0.
b. Implemente un módulo recursivo que devuelva el mínimo valor de la lista. 
c. Implemente un módulo recursivo que devuelva el máximo valor de la lista. 
d. Implemente un módulo recursivo que devuelva verdadero si un valor determinado se encuentra en la lista o falso en caso contrario. }
program ejer3p2;
type
lista=^nodo;
nodo=record
	dato:integer;
	sig:lista;
end;
procedure generarlista(var l:lista);
var num:integer;nuevo:lista;
begin
Randomize;
 write('Ingresar Numero: '); 
		readln(num);//genera numero 1 a 100 num:=random(100)+1
	if (num<>0) then begin//si es distinto de 0 sigue
	generarlista(l);//llama a generar lista
	new(nuevo); nuevo^.dato:=num; nuevo^.sig:=l;//pone los datos en la lista
	l:=nuevo
	end
		else
		l:=nil//termina
end;
	procedure sacarvalormin(l:lista;var min:integer);
	begin
	if (l<>nil) then begin///recorre hasta nil
		if (l^.dato<min) and (l^.dato<>0)then//compara el dato nuevo con el anterior mientras no sea 0
			min:=l^.dato;// lo setea
			sacarvalormin(l^.sig,min)// sigue hasta que l=nil
	end;
end;
	procedure sacarvalormax(l:lista;var max:integer);
	begin
	if (l<>nil) then begin///recorre hasta nil
		if (l^.dato>max) then//compara el dato nuevo con el anterior
			max:=l^.dato;//setea el maximo
			sacarvalormax(l^.sig,max)// se llama hasta que se cumpla la condicion del primer if
		end;
	end;	
procedure llamarbuscar (l:lista);
	function buscar (l:lista;buscado:integer):boolean;
	var esta:boolean;
	begin
	esta:=false;
	if (l<>nil) and (esta=false) then begin
		if (l^.dato=buscado) then
		esta:=true;
	buscar(l^.sig,buscado);
	end; 
		buscar:=esta;
	end;
var buscado:integer;
begin
writeln('Ingrese el numero que quiere buscar en la lista: ');
	readln(buscado);
	if (buscar(l^.sig,buscado)) then 
		write('el numero buscado esta')
	else
		write('no esta');
end;
var l:lista;min,max:integer;
begin
max:=-1;
min:=999;
	generarlista(l);
	sacarvalormin(l,min);
	sacarvalormax(l,max);
	writeln('El numero minimo en la lista es: ',min,'---');
	writeln('El numero maximo en la lista es: ',max,'---');
	llamarbuscar(l);
end.
