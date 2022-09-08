{	Escribir un programa que:
a. Implemente un módulo que lea información de ventas de un comercio. De cada venta se lee código de producto, fecha y cantidad de unidades vendidas. 
* La lectura finaliza con el código de producto 0. Un producto puede estar en más de una venta. Se pide:
i. Generar y retornar un árbol binario de búsqueda de ventas ordenado por código de producto.
ii. Generar y retornar otro árbol binario de búsqueda de productos vendidos ordenado por código de producto. Cada nodo del árbol debe contener el código de producto y la cantidad total vendida.
               Nota: El módulo debe retornar los dos árboles.
b. Implemente un módulo que reciba el árbol generado en i. y un código de producto y retorne la cantidad total de unidades vendidas de ese producto.
c. Implemente un módulo que reciba el árbol generado en ii. y un código de producto y retorne la cantidad total de unidades vendidas de ese producto.
}
program ejer2p3;
type
arbol=^nodo;
arbol2=^nodo2;
fecha=record
	dia:integer;
	mes:integer;
	anio:integer;
end;
ventas=record
	cod:integer;
	f:fecha;
	cant:integer;
end;
vendidos=record
	cod:integer;
	cant:integer;
end;
nodo2=record
	dato:vendidos;
	hi:arbol2;
	hd:arbol2;
end;
nodo=record
	dato:ventas;
	hi:arbol;
	hd:arbol;
end;
procedure generararbol (var a:arbol);
procedure crear (var a:arbol;v:ventas);
begin
if (a=nil) then begin
new(a);a^.dato:=v;a^.hi:=nil;a^.hd:=nil;
end
else
if(v.cod<a^.dato.cod) then
	crear(a^.hi,v)
	else
	crear(a^.hd,v);
end;
procedure crear2(var a2:arbol2,v:ventas);
begin
	if (a<>nil) then begin
	new(a);a^.dato:=v.cod;a^.hi:=nil;a^.hd:=nil;
	end
	else
	if (v.cod<a^.dato.cod)
end;
procedure leerdatos(var v:ventas);
begin
	Randomize;
	write('Codigo de producto: ');
		read(v.cod);
		if (v.cod<>0) then begin
			v.f.dia:=random(30)+1;
				writeln('dia: ',v.f.dia);
			v.f.mes:=random(11)+1;
				writeln('dia: ',v.f.mes);
			v.f.anio:=random(22)+2000;
				writeln('Anio: ',v.f.anio);
	end;
end;
var v:ventas;
begin
	leerdatos(v);
	while (v.cod<>0) do begin
		crear(a,v);
		leerdatos(v);
	end;
end;
procedure 

var a:arbol;//pp
begin
generararbol(a);
end.
