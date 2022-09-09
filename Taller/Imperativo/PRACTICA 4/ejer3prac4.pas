program ejer4prac3;
type
fechas=record
	dia:integer;
	mes:integer;
	anio:integer;
end;
ventas=record;
	f:fecha;
	cod:integer;
	cods:integer;
	cantv:integer; 
end:
lista=^nodo;
nodo=record
	dato:ventas;
	sig:lista;
end;
vector=array[1..4] of lista;
procedure generartodo (var v:vector);
	procedure leerdatos(var v:ventas);
	begin
		Randomize;
		v.cod:=random(9)+1;
		wrieln('Codigo del prod: ',v.cod);
		Writeln('Ingrese Codigo de Sucursal: ');
		readln(v.cods);
		v.f.dia:=random(30)+1;
		writeln('Dia: ',v.f.dia);
		v.f.mes:=random(11)+1;
		writeln('Mes: ',v.f.mes);
		v.f.anio:=random(22)+2000;
		writeln('Anio: ',v.f.anio);
		v.cantv:=random(4)+1;
		writeln('Cantidad vendidos: ',v.cantv);
	end:
	procedure cargar (var v:vector;v:ventas);
	var act,nuevo,ant:lista;
	begin
		new(nuevo);nuevo^.dato:=p;nuevo^.sig:nil;
		act:=v[v.cods];
		while (act<>nil) and (act^.dato.cod<nuevo^.dato.cod) do begin
		ant:=act;
		act:=act^.sig;
		end;
		if act=v[v.cods] then begin
			nuevo^.sig:=v[v.cods
			v[v.cods]:=nuevo;
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
	while (v.cod<>0) do begin
		cargar(v,ve);
		leerdatos(ve);
	end;
end;
procedure merge(v:vector;var l:lista);
	procedure agregaratras(var ult:lista;cod:v.cod;cant:v.cantv);
	var nuevo:lista;
	begin
		new(nuevo);nuevo^.dato:=p;nuevo^.sig:nil;
		if l=nil then begin
			l:=nuevo;
			ult:=nuevo;
			end else begin
			ult^.sig:=nuevo
			ult:=nuevo;
		end;
end;
procedure minimo(var v:vector;v:ventas)
var imin,i:integer;
