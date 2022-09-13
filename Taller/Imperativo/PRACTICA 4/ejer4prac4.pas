{4.	Un teatro tiene funciones los 7 días de la semana. Para cada día se tiene una lista con las entradas vendidas. 
* Se desea procesar la información de una semana. Implementar un programa que:
a.	Genere 7 listas con las entradas vendidas para cada día. De cada entrada se lee día (de 1 a 7), código de la obra, asiento y monto.
*  La lectura finaliza con el código de obra igual a 0. Las listas deben estar ordenadas por código de obra de forma ascendente. 
b.	Genere una nueva lista que totalice la cantidad de entradas vendidas por obra. Esta lista debe estar ordenada por código de obra de forma ascendente.}
program ejer4prac4;
type
rdias=1..7;
lista=^nodo;
entradas=record
	dia:rdias;
	codo:integer;
	asiento:integer;
	monto:integer;
end;
nodo=record
	dato:entradas;
	sig:lista;
end;
lista2=^nodo2;
nodo2=record
	cod:integer;
	cant:integer;
	sig:lista2;
end;
vector=array[1..7] of lista;
procedure cargartodo (var v:vector);
procedure leerdatos(var e:entradas);
begin
Randomize;
	write('Ingresar codigo de obra: ');
		readln(e.codo);
	e.dia:=random(6)+1;
		writeln('Dia: ',e.dia);
	e.asiento:=random(9)+1;
		writeln('Numero de asiento: ',e.asiento);
	e.monto:=random(99)+1;
		writeln('El monto es: ',e.monto);
end;
procedure cargarlista(var v:vector;e:entradas);
var nuevo,act,ant:lista;
begin
		new(nuevo);nuevo^.dato:=e;nuevo^.sig:=nil;
		act:=v[e.dia];
	while (act<>nil) and (act^.dato.codo<nuevo^.dato.codo) do begin
	ant:=act;
	act:=act^.sig;
	end;
		if act=v[e.dia] then begin
			nuevo^.sig:=v[e.dia];
			v[e.dia]:=nuevo
			end
			else begin
			ant^.sig:=nuevo;
			nuevo^.sig:=act
			end;
	end;
	var i:integer;e:entradas;
	begin
		for i:=1 to 7 do 
			v[i]:=nil;
		leerdatos(e);
		while (e.codo<>0) do begin
		cargarlista(v,e);
		leerdatos(e);
	end;
end;
procedure merge (v:vector;var l:lista2); //.Genere una nueva lista que totalice la cantidad de entradas vendidas por obra. Esta lista debe estar ordenada por código de obra de forma ascendente.}
	procedure minimo(var v:vector;var min,cant:integer);//codo=imin;cant=entradas
	var imin,i:integer;
	begin
		min:=9999;
		for i:=1 to 7 do begin
			if(v[i]<>nil) then
				if(v[i]^.dato.codo<min) then begin
				imin:=i;
				min:=v[i]^.dato.codo;
				end;	
		end;
		if(min<>9999) then begin
			min:=v[imin]^.dato.codo;
			v[imin]:=v[imin]^.sig;
		end;
	end;
	procedure agregaratras(var ult:lista2;cod,cant:integer);
	var nuevo:lista2;
	begin
		new(nuevo);nuevo^.cod:=cod;nuevo^.cant:=cant;nuevo^.sig:=nil;
		if l=nil then begin
			l:=nuevo;
			ult:=nuevo;
			end else begin
			ult^.sig:=nuevo;
			ult:=nuevo;
		end;
	end;
	var ult:lista2;min,cantotal:integer;actual:entradas;
	begin
	l:=nil;
	ult:=nil;
	minimo(v,min,cantotal);
		while(min<>9999) do begin
			actual.codo:=min;cantotal:=0;
		while (actual.codo=min) do begin
			cantotal:=cantotal+1;
			agregaratras(ult,actual.codo,cantotal);
			minimo(v,min,cantotal);
		end;
	end;	
end;
	procedure imprimirvector(v:vector);
	var i:integer;
	begin
		for i:=1 to 7 do begin
		writeln('---- Dia: ',i,'----');
			while (v[i]<>nil) do begin
				writeln('Codigo de obra',v[i]^.dato.codo);
				v[i]:=v[i]^.sig;
			end;
		end;	
	end;
procedure imprimirlista(l:lista2);
begin
	writeln('lista con merge:');
	while l<>nil do begin
		write('codidgo de obra: ', l^.cod,' '); writeln('cantidad de entradas: ',l^.cant);
		l:=l^.sig;
	end;
end;
var v:vector;l:lista2;
begin
	cargartodo(v);
	imprimirvector(v);
	merge(v,l);
	imprimirlista(l);
end.
