{5.- Implementar un módulo que realice una búsqueda dicotómica en un vector, utilizando el siguiente encabezado:
   	Procedure busquedaDicotomica (v: vector; ini,fin: indice; dato:integer; var pos: indice); 
Nota: El parámetro “pos” debe retornar la posición del dato o -1 si el dato no se encuentra en el vector.}
program ejercicio5p2;
const
dimF=5;
type
vector=array[1..5] of integer;
procedure llamarcargavector (var v:vector;var dimL:integer);
procedure cargarvector (var v:vector;var dimL:integer);
var num:integer;
begin
	if (dimL<dimF)  then begin
		writeln('Ingresar numero: ');
			readln(num);
			dimL:=dimL+1;
			v[dimL]:=num;
		cargarvector(v,dimL);
		end;
end;
begin
	dimL:=0;
	cargarvector(v,dimL);
end;
procedure ordenarinsercion(var v:vector;dimL:integer);
var i,j:integer; act:integer;
begin
	for i:=2 to dimL do begin
		act:=v[i];
		j:=i-1;
	while (j>0) and (v[j]>act) do begin
		v[j+1]:=v[j];
		j:=j-1;
		end;
	v[j+1]:=act;
	end;
end;
procedure ImprimirVector (v: vector; dimL: integer);
var
   i: integer;
begin
     for i:= 1 to dimL do
         write ('----');
     writeln;
     write (' ');
     for i:= 1 to dimL do begin
        write(v[i], ' | ');
     end;
     writeln;
     for i:= 1 to dimL do
         write ('----');
     writeln;
     writeln;
End;
Procedure busquedaDicotomica (v: vector; ini,fin: integer; dato:integer; var pos: integer;dimL:integer;var ok:boolean); 
begin
	pos:=(ini+fin)div 2;
	while(ini<=fin) and (dato<>v[pos]) do begin
		if (dato<v[pos]) then
			fin:=pos-1
		else
			ini:=pos+1;
			pos:=(ini+fin)div 2;
		end;
	if(ini<=fin) and (dato=v[pos]) then
	ok:=true
	else
	pos:=-1;
end;
var v:vector;dimL,pos,dato,ini,fin:integer;ok:boolean;
begin
	ok:=false;
	llamarcargavector(v,dimL);
	ImprimirVector(v,dimL);
	ordenarinsercion(v,dimL);
	ImprimirVector(v,dimL);
		writeln('Ingrese valor a buscar en el vector');//para la busqueda
			readln(dato);//pide el numero a buscar
			ini:=1;fin:=dimL;//inicializo ini y fin 
	busquedaDicotomica(v,ini,fin,dato,pos,dimL,ok);
	if(pos=-1) then
		writeln('El dato buscado no se encuentra en el vector')
		else
	writeln('La posicion del dato es: ',pos);
end.


