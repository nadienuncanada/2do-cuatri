{4.- Escribir un programa que:
a. Implemente un módulo recursivo que genere un vector de 20 números enteros “random” mayores a 0 y menores a 100. 
b. Implemente un módulo recursivo que devuelva el máximo valor del vector. 
c. Implementar un módulo recursivo que devuelva la suma de los valores contenidos en el vector.}
program ejercico4p2;
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
procedure llamarmax (v:vector;var max:integer);
procedure maxvalor (v:vector;var max:integer;i:integer);
begin
	if (i<dimF) then begin
		i:=i+1;
		if (v[i]>max) then
			max:=v[i];
			maxvalor(v,max,i);
		end;
end;
var i:integer;
begin
	i:=0;
maxvalor(v,max,i);
end;
procedure llamarsumavec (v:vector;var suma:integer);
procedure sumavec (v:vector;var suma,i:integer);
begin
	if (i<dimF) then begin
		i:=i+1;
		suma:=suma+v[i];
		sumavec(v,suma,i);
	end;
end;
var i:integer;
begin
	i:=0;
	sumavec(v,suma,i);
end;
{procedure ImprimirVector (v: vector; dimL: integer);
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
End;}         
var v:vector;dimL,max,suma:integer;
begin
suma:=0;
 max:=-1;
	llamarcargavector(v,dimL);
	//ImprimirVector(v,dimL);
	llamarmax(v,max);
	writeln('El numero maximo del vector es: ',max,'---');
	llamarsumavec(v,suma);
	writeln('El resultado de la suma de todos los valores del vector son: ',suma,'---');
end.

