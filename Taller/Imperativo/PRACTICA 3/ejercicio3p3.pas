{3.	Implementar un programa que contenga:
a. Un módulo que lea información de alumnos de Taller de Programación y almacene en una estructura de datos sólo a aquellos alumnos que posean año de ingreso posterior al 2010. De cada alumno se lee legajo, DNI y año de ingreso. 
La estructura generada debe ser eficiente para la búsqueda por número de legajo. 
b. Un módulo que reciba la estructura generada en a. e informe el DNI y año de ingreso de aquellos alumnos cuyo legajo sea inferior a un valor ingresado como parámetro. 
c. Un módulo que reciba la estructura generada en a. e informe el DNI y año de ingreso de aquellos alumnos cuyo legajo esté comprendido entre dos valores que se reciben como parámetro. 
d. Un módulo que reciba la estructura generada en a. y retorne el DNI más grande.
e. Un módulo que reciba la estructura generada en a. y retorne la cantidad de alumnos con legajo impar.}
program ejer3p3;
type
arbol=^nodo;
alumnos=record
	legajo:integer;
	dni:integer;
	anio:integer;
end;
nodo=record
	dato:alumnos;
	HI:arbol;
	HD:arbol;
end;
procedure generararbol (var a:arbol);// un solo modulo que llama a leer y crear
procedure crear(var a:arbol;al:alumnos);
begin
if (a=nil) then begin
	new(a); a^.dato:=al;a^.HI:=nil;a^.HD:=nil;//creo el nexo del arbol, e inicializo hi y hd
	end
	else//si no es la primera vez q se ingresa un dato
	if (al.legajo<a^.dato.legajo) then //se compara con el primero 
	crear(a^.HI,al)// si es menor va a la izquierda
	else//sino
	crear(a^.HD,al);//va a la derecha
end;
procedure leerdatos(var al:alumnos);
begin
Randomize;
	write('Legajo: ');
		read(al.legajo);
		if (al.legajo<>0) then begin
			al.dni:=random(9999)+1000;
		writeln('DNI: ',al.dni);
			al.anio:=random(15)+2005;
		writeln('Anio de ingreso:',al.anio);
	end;
end;
var al:alumnos;
begin
	leerdatos(al);
	while (al.legajo<>0) do begin
	if (al.anio>2010) then 
		crear(a,al);
		leerdatos(al);
	end;
end;
procedure imprimir(a:arbol); //b. Un módulo que reciba la estructura generada en a. e informe el DNI y año de ingreso de aquellos alumnos cuyo legajo sea inferior a un valor ingresado como parámetro. 
begin
		if (a<>nil) then begin/// mientras no sea el final del arbol y el legajo no sea mayor a el parametro imprime
			imprimir(a^.HI);
			writeln('dni : ',a^.dato.DNI,' | ingreso: ',a^.dato.anio,' | legajo: ',a^.dato.legajo);
			imprimir(a^.HD);
		end;
end;
procedure dniyanio(a:arbol;hasta:integer); //b. Un módulo que reciba la estructura generada en a. e informe el DNI y año de ingreso de aquellos alumnos cuyo legajo sea inferior a un valor ingresado como parámetro. 
begin
		if (a<>nil) then begin/// mientras no sea el final del arbol y el legajo no sea mayor a el parametro imprime
			dniyanio(a^.HI,hasta);
		if (a^.dato.legajo<hasta) then begin
			writeln('dni : ',a^.dato.DNI,' | ingreso: ',a^.dato.anio,' | legajo: ',a^.dato.legajo);
			dniyanio(a^.HD,hasta);
		end;
	end;
end;
procedure entrevalores(a:arbol;hasta,desde:integer); // Un módulo que reciba la estructura generada en a. e informe el DNI y año de ingreso de aquellos alumnos cuyo legajo esté comprendido entre dos valores que se reciben como parámetro. 
begin
		if (a<>nil) then begin
			entrevalores(a^.HI,hasta,desde);
		if (a^.dato.legajo>desde) and (a^.dato.legajo<hasta) then begin
			writeln('dni : ',a^.dato.DNI,' | ingreso: ',a^.dato.anio,' | legajo: ',a^.dato.legajo);
			entrevalores(a^.HD,hasta,desde);
		end;
		end;
end;
procedure maxdni(a:arbol;var dnimax:integer);
begin
	if (a<>nil) then begin
		maxdni(a^.hi,dnimax);
		maxdni(a^.hd,dnimax);
	if (a^.dato.dni>dnimax) then
	dnimax:=a^.dato.dni;
	end;
end;
procedure legajoimpar (a:arbol;var cont:integer);
begin
	if (a<>nil) then begin
	if(a^.dato.legajo MOD 2 = 1 )then
	cont:=cont+1;
		legajoimpar(a^.hi,cont);
		legajoimpar(a^.hd,cont);
	end;
end;
var a:arbol;hasta,desde,dnimax,cont:integer;///pp
begin
a:=nil;   
cont:=0;
dnimax:=-1;
generararbol(a);
	imprimir(a);
	writeln('Ingresar numero de legajo para buscar inferiores a el mismo: ');
		readln(hasta);
dniyanio(a,hasta);
	writeln('Ingresar numero de legajo desde el cual se quiere empezar a buscar: ');
	readln(desde);
	writeln('Ingresar numero de legajo para buscar inferiores a el mismo: ');
		readln(hasta);
entrevalores(a,hasta,desde);
maxdni(a,dnimax);
	writeln('el dni mas grande es: ', dnimax);
	legajoimpar(a,cont);
		writeln('La cantidad de legajos impares son: ',cont);
end.
