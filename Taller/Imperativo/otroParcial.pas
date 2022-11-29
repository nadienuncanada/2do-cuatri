program turnoCtema2;
type
rango=1..8;
rd=0..31;
rm=1..12;
empleado=record
	nume:integer;
	dia:rd;
	mes:rm;
	cht:rango;
end;
arbol=^nodo;
nodo=record
	dato:empleado;
	hi:arbol;
	hd:arbol;
end;
procedure crearArbol(var a:arbol);
	procedure leerDato(var e:empleado);
	begin
		writeln('Ingrese dia: ');
			readln(e.dia);
		if(e.dia<>0) then begin
			e.mes:=random(11)+1;
			writeln('Mes: ',e.mes);
			e.nume:=random(24)+1;
			writeln('Numero de Empleado: ',e.nume);
			e.cht:=random(7)+1;
			writeln('Cantidad de Horas Trabajadas: ',e.cht);
		end;
	end;
	procedure crear(var a:arbol;e:empleado);
	begin
		if(a=nil) then begin
			new(a);a^.dato:=e;a^.hi:=nil;a^.hd:=nil;
		end
		else
			if(e.nume<a^.dato.nume) then
				crear(a^.hi,e)
			else
				crear(a^.hd,e);
	end;
var e:empleado;
begin
	leerDato(e);
	while(e.dia<>0) do begin
		crear(a,e);
		leerDato(e);
	end;
end;

procedure imprimirarbol(a:arbol);
begin
	if (a<>nil) then begin
		imprimirarbol(a^.hi);
		writeln('Nume: ',a^.dato.nume);
		writeln('Cant Horas: ',a^.dato.cht);
		imprimirarbol(a^.hd);
	end;
end;

procedure entre(a:arbol);
	procedure buscar(a:arbol;x,y:integer);
	begin
		if(a<>nil) then begin
			buscar(a^.hi,x,y);
			if(a^.dato.nume>=x)and(a^.dato.nume<=y) then begin
				writeln('~~~~~~~ Numero: ',a^.dato.nume,' Cant Horas: ',a^.dato.cht,' ~~~~~~~~');
				buscar(a^.hd,x,y);
			end;
		end;
	end;
var x,y:integer;
begin
	writeln('Ingrese numero de empleado desde el cual se va  buscar: ');
		readln(x);
	writeln('Ingrese numero de empleado hasta el cual se va a buscar');
		readln(y);
	buscar(a,x,y);
end;
procedure totalh(a:arbol);
	function calcular(a:arbol):integer;
	begin
		if(a<>nil) then begin
			calcular:=calcular(a^.hi)+calcular(a^.hd)+a^.dato.cht;
		end
		else
			calcular:=0;
	end;
begin
	writeln('Horas totales trabajadas: ',calcular(a));
end;
var a:arbol;
begin
	a:=nil;
	crearArbol(a);
	imprimirarbol(a);
	entre(a);
	totalh(a);
end.
