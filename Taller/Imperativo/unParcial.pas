program tbt1;
type
compras=record
	dia:integer;
	cantp:integer;
	mont:real;
end;
lista=^nodo;
nodo=record 
	dato:compras;
	sig:lista;
end;
cliente=record
	cod:integer;
	c:lista;
end;
arbol=^nodo2;
nodo2=record
	dato:cliente;
	hi:arbol;
	hd:arbol;
end;
procedure crearArbol(var a:arbol);
	procedure leerDato(var cl:cliente;var co:compras);
	begin
		writeln('Ingrese cantidad de productos: ');
			readln(co.cantp);
		if(co.cantp<>0) then begin
			cl.cod:=random(20)+1;
			writeln('Codigo de cliente: ',cl.cod);
			co.dia:=random(30)+1;
			co.mont:=random(500)+150.80;
			writeln('Monto: ',co.mont:0:2);
			writeln('~~~~~~~~~~~');
		end;
	end;
	procedure Agregar(var l:lista;c:compras);
	var nuevo:lista;
	begin
		new(nuevo);
		nuevo^.dato:=c;
		nuevo^.sig:=l;
		l:=nuevo;
	end;
	procedure crear(var a:arbol;var cl:cliente;co:compras);
	begin
		if(a=nil) then begin
			new(a);a^.dato:=cl;a^.hi:=nil;a^.hd:=nil;a^.dato.c:=nil;
			Agregar(a^.dato.c,co);
		end
		else
			if(a^.dato.cod=cl.cod) then 
				Agregar(a^.dato.c,co)
			else begin
				if(cl.cod<a^.dato.cod) then
					crear(a^.hi,cl,co)
				else
					crear(a^.hd,cl,co);
			end;
	end;
var cl:cliente;co:compras;
begin
	leerDato(cl,co);
	while(co.cantp<>0) do begin
		crear(a,cl,co);
		leerDato(cl,co);
	end;
end;

procedure retorne(a:arbol;var lis:lista);
	procedure buscar(a:arbol;bus:integer;var lis:lista);
	begin
		if(a=nil) then
			lis:=nil
		else begin
			if(a^.dato.cod=bus) then 
				lis:=a^.dato.c
			else begin
				if(bus<a^.dato.cod) then
					buscar(a^.hi,bus,lis)
				else
					buscar(a^.hd,bus,lis);
			end;
		end;
	end;
var bus:integer;
begin
	writeln('Ingrese codigo a buscar: ');
		readln(bus);
	buscar(a,bus,lis);
	if(lis=nil) then
		writeln('El cliente no realizo ninguna compra.')
	else
		writeln('El cliente realizo compras y tenemos la lista disponible.',lis^.dato.mont:0:2);
end;
procedure imprimirarbol(a:arbol);
	procedure imprimirlista(l:lista);
	begin
		while(l<>nil) do begin 
			writeln(' ~~~~ Cantidad de Prod: ',l^.dato.cantp,' /Monto: ',l^.dato.mont:0:2,' ~~~~~~~~~~');
			l:=l^.sig;
		end;
	end;
begin
	if(a<>nil) then begin
		imprimirarbol(a^.hi);
			writeln('~~~~~ Codigo: ',a^.dato.cod);
			imprimirlista(a^.dato.c);
		imprimirarbol(a^.hd);
		end;
end;
procedure recur(l:lista);
begin
	if(l<>nil) then begin
		writeln('~~~~ Dia: ',l^.dato.dia,' Monto: ',l^.dato.mont:0:2,' CantCompras: ',l^.dato.cantp,'~~~~~');
		recur(l^.sig);
	end;
end;
var a:arbol;lis:lista;
begin 
	lis:=nil;
	a:=nil;
	crearArbol(a);
	imprimirarbol(a);
	retorne(a,lis);
	recur(lis);
end.
