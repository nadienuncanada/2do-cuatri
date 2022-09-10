{.- Una agencia dedicada a la venta de autos ha organizado su stock y, dispone en papel de la información de los autos en venta.
Implementar un programa que:
a)	Genere un árbol binario de búsqueda ordenado por patente identificatoria del auto en venta. Cada nodo del árbol debe contener patente, año de fabricación (2010..2018), la marca y el modelo.
b)	Invoque a un módulo que reciba el árbol generado en a) y una marca y retorne la cantidad de autos de dicha marca que posee la agencia. Mostrar el resultado. 
c)	Invoque a un módulo que reciba el árbol generado en a) y retorne una estructura con la información de los autos agrupados por año de fabricación.
d)	Contenga un módulo que reciba el árbol generado en a) y una patente y devuelva el año de fabricación del auto con dicha patente. Mostrar el resultado. 
}
program ejer2prac5;
type
rango=2010..2018;
arbol=^nodo;
autos=record
	pat:integer;
	anio:rango;
	mar:string;
	mo:string;
end;
lista=^nodo2;
nodo2=record
	dato:autos;
	sig:lista;
end;
nodo=record
	dato:autos;
	hi:arbol;
	hd:arbol;
end;
vector=array[2010..2018] of lista;
procedure cargararbol (var a:arbol);
	procedure leerdatos(var au:autos);
		begin
		writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~');
			write('Ingresar patente: ');
				readln(au.pat);
				if (au.pat<>-1) then begin
			au.anio:=random(8)+2010;
				writeln('El anio de fabricacion es: ', au.anio);
			write('Ingresar marca: ');
				readln(au.mar);
			write('Ingresar modelo: ');
				readln(au.mo);
		end;
	end;
	procedure crear (var a:arbol;au:autos);
	begin
	if (a=nil) then begin
	new(a);a^.dato:=au;a^.hi:=nil;a^.hd:=nil;
	end
	else
	if(au.pat<a^.dato.pat) then
		crear(a^.hi,au)
	else
	crear(a^.hd,au);
	end;
	var au:autos;
	begin
		leerdatos(au);
		while (au.pat<>-1) do begin
			crear(a,au);
			leerdatos(au);
		end;
	end;
	procedure llamarbuscar (a:arbol);
	procedure buscar(a:arbol; x:string;var total:integer);
	begin
	if (a<>nil) then begin
		if (a^.dato.mar=x) then 
			total:=total+1;
		buscar(a^.hi,x,total);
		buscar(a^.hd,x,total);
	end;
	end;
	var x:string;total:integer;
	begin
		total:=0;
		writeln('~~~Ingrese marca a buscar: ~~~');
		readln(x);
		buscar(a,x,total);
		if (total<>0) then
		writeln('La cantidad de autos de la marca ',x,' son: ',total)
		else
		writeln('No se encuentran autos de esa marca');
	end;
procedure generarvector (var v:vector;a:arbol); ///retorne una estructura con la información de los autos agrupados por año de fabricación. tipo merge
	procedure agregaratras(var l:lista;a:autos);
	Var nuevo,aux:lista;
Begin
    new (nuevo); nuevo^.dato:= a; nuevo^.sig:=nil; 
    if (l = nil) then l:= nuevo
    else begin
        aux:= l;
        while (aux^.sig <> nil) do
        aux:= aux^.sig;
        aux^.sig:=nuevo;       
    end;
end;
begin
	if a<>nil then begin
		generarvector(v,a^.hi);
		agregaratras(v[a^.dato.anio],a^.dato);
		generarvector(v,a^.hd);
	end;
end;
procedure inicializarvec (var v:vector); 
	var i:integer;
	begin
		for i:=2010 to 2018 do begin 
			v[i]:=nil;
		end;
	end;
procedure imprimirarbol(a:arbol);
begin
    if a<>nil then begin
    imprimirarbol(a^.hi);
        writeln('Patente: ', a^.dato.pat,'| Marca: ', a^.dato.mar,' | Anio: ', a^.dato.anio);
    imprimirarbol(a^.hd);
    end;
end;
procedure imprimirvector(v:vector);
var i:integer;
begin
    for i:=2010 to 2018 do 
    begin
        writeln('-------Anio: ', i,'-------');
        while v[i]<>nil do begin
        writeln('Patente: ', v[i]^.dato.pat,'/Marca: ', v[i]^.dato.mar,'/ Modelo: ',v[i]^.dato.mo);
        v[i]:=v[i]^.sig;
        end;
    end;
end;
var a:arbol;v:vector;
begin
	inicializarvec(v);
	cargararbol(a);
	imprimirarbol(a);
	llamarbuscar(a);
	generarvector(v,a);
	imprimirvector(v);
end.
