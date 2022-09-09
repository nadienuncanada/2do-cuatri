{2.- Realizar un programa que lea números hasta leer el valor 0 e imprima, para cada número leído, sus dígitos en el orden en que aparecen en el número. 
* Debe implementarse un módulo recursivo que reciba el número e imprima lo pedido. Ejemplo si se lee el valor 256, se debe imprimir 2  5  6}
program ejer2p2;
type
lista=^nodo;
nodo=record
	dato:integer;
	sig:lista;
end;
procedure cargarlista(var l:lista);
var num:integer; nuevo:lista;
begin
	write('Ingresar Numero:');
		readln(num);
	if (num<>0) then begin
	cargarlista(l);
		new(nuevo);nuevo^.dato:=num;nuevo^.sig:=l;
		l:=nuevo
	end
		else 
			l:=nil;
end;
procedure cifra(num:integer);
	begin
			if (num<>0) then begin
				write('--',num mod 10,'--');
				cifra(num div 10);
			end;
end;
procedure imprimir (l:lista);
	begin
		if (l<>nil) then begin
			cifra(l^.dato);
			imprimir(l^.sig);
		end;
end;
var l:lista;
begin
cargarlista(l);
imprimir(l);
end.
