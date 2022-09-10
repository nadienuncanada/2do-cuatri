{3.	Implementar un programa que procese la información de las ventas de productos de una librería que tiene 4 sucursales. 
* De cada venta se lee fecha de venta, código del producto vendido, código de sucursal y cantidad vendida.
*  El ingreso de las ventas finaliza cuando se lee el código de sucursal 0. Implementar un programa que:
a.	Almacene las ventas ordenadas por código de producto y agrupados por sucursal, en una estructura de datos adecuada.
b.	Contenga un módulo que reciba la estructura generada en el punto a y retorne una estructura donde esté acumulada la cantidad total vendida para cada código de producto.
}
program ejer3prac4;
type
fechas=record
	dia:integer;
	mes:integer;
	anio:integer;
end;
ventas=record
	f:fechas;
	cod:integer;
	cods:integer;
	cantv:integer; 
end;
lista=^nodo;
nodo=record
	dato:ventas;
	sig:lista;
end;
incisob=record
	cod:integer;
	cv:integer;
end;
lista2=^nodo2;
nodo2=record
	dato:incisob;
	sig:lista2;
end;
vector=array[1..4] of lista;
procedure generartodo (var v:vector);
	procedure leerdatos(var v:ventas);
	begin
		Randomize;
		v.cod:=random(4)+1;
		writeln('Codigo del prod: ',v.cod);
		write('Ingrese Codigo de Sucursal: ');
		readln(v.cods);
		v.f.dia:=random(30)+1;
		writeln('Dia: ',v.f.dia);
		v.f.mes:=random(11)+1;
		writeln('Mes: ',v.f.mes);
		v.f.anio:=random(22)+2000;
		writeln('Anio: ',v.f.anio);
		v.cantv:=random(4)+1;
		writeln('Cantidad vendidos: ',v.cantv);
	end;
	procedure cargar (var v:vector;ve:ventas);
	var act,nuevo,ant:lista;
	begin
		new(nuevo);nuevo^.dato:=ve;nuevo^.sig:=nil;
		act:=v[ve.cods];
		while (act<>nil) and (act^.dato.cod<nuevo^.dato.cod) do begin
		ant:=act;
		act:=act^.sig;
		end;
		if act=v[ve.cods] then begin
			nuevo^.sig:=v[ve.cods];
			v[ve.cods]:=nuevo;
			end
			else begin
			ant^.sig:=nuevo;
			nuevo^.sig:=act
			end;
	end;
var i:integer;ve:ventas;
begin
		for i:=1 to 4 do
		v[i]:=nil;
	leerdatos(ve);
	while (ve.cods<>0) do begin
		cargar(v,ve);
		leerdatos(ve);
	end;
end;
procedure merge(v:vector;var l:lista2);
	procedure agregaratras(var ult:lista2;cod,cant:integer);
	var nuevo:lista2;
	begin
		new(nuevo);nuevo^.dato.cod:=cod;nuevo^.dato.cv:=cant;nuevo^.sig:=nil;
		if l=nil then begin
			l:=nuevo;
			ult:=nuevo;
			end else begin
			ult^.sig:=nuevo;
			ult:=nuevo;
		end;
end;
procedure minimo(var v:vector;var min:integer;var cant:integer);
var imin,i:integer;
begin
min:=9999;
for i:=1 to 4 do begin
	if(v[i]<>nil) then 
		if(v[i]^.dato.cod<min) then begin
			imin:=i;
			min:=v[i]^.dato.cod;
		end;
	end;
		if(min<>9999) then begin
			min:=v[imin]^.dato.cod;
			cant:=v[imin]^.dato.cantv;
			v[imin]:=v[imin]^.sig;
		end;
	end;
var min,cant,cantotal:integer; ult:lista2;actual:ventas;
begin
	l:=nil;
	ult:=nil;
	minimo(v,min,cant);
	while (min<>9999) do begin
	actual.cod:=min;cantotal:=0;
	while (min<>9999) and (actual.cod=min)do begin
		cantotal:=cantotal+cant;
		minimo(v,min,cant);
		end;
		agregaratras(ult,actual.cod,cantotal);
	end;
end;
procedure imprimirvector(v:vector);
var i:integer;
begin
	for i:=1 to 4 do
	begin
		writeln('~~~~~~~~Codigo de Sucursal ', i, '~~~~~~~~');
		while v[i]<>nil do 
		begin
			writeln('codigo: ', v[i]^.dato.cod,' ');
			v[i]:=v[i]^.sig;
		end;
	end;
end;
procedure imprimirlista(l:lista2);
begin
	writeln('lista con merge:');
	while l<>nil do begin
		write('codidgo de producto: ', l^.dato.cod,' '); writeln('cantidad vendidas: ',l^.dato.cv);
		l:=l^.sig;
	end;
end;
var v:vector;l:lista2;
begin
generartodo(v);
imprimirvector(v);
merge(v,l);
imprimirlista(l);
end.
