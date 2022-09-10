{1.- El administrador de un edificio de oficinas, cuenta en papel, con la información del pago de las expensas de dichas oficinas. 
Implementar un programa que:
a)	Genere un vector, sin orden, con a lo sumo las 300 oficinas que administra. De cada oficina se ingresa código de identificación, DNI del propietario y valor de la expensa. 
La lectura finaliza cuando llega el código de identificación -1.
b)	Ordene el vector, aplicando uno de los métodos de inserción vistos en la cursada, para obtener el vector ordenado por código de identificación de la oficina.
c)	Realice una búsqueda dicotómica que recibe el vector generado en b) y un código de identificación de oficina y retorne si dicho código está en el vector. 
En el caso de encontrarlo, se debe informar el DNI del propietario y en caso contrario informar que el código buscado no existe.
d)	Tenga un módulo recursivo que retorne el monto total de las expensas.
}
program ejer1prac5;
const
    df=10;
type
oficinas=record
    codi:integer;
    dni:integer;
    valor:integer;
end;
vector=array[1..df] of oficinas;
procedure generarvector (var v:vector;var dl:integer);
    procedure leerdatos(var o:oficinas);
    begin
        write('Ingresar cod de identificacion ');
            readln(o.codi);
        o.dni:=random(100)+3000;    
            writeln('El dni es: ',o.dni);
        o.valor:=random(500)+5000;
            writeln('El valor es: ',o.valor);
    end;
var o:oficinas;
begin
dl:=0;
    leerdatos(o);
    while (o.codi<>-1) and (dl<df) do begin
        dl:=dl+1;
		v[dl]:=o;
        leerdatos(o);
    end;
end;
procedure ordenarinser(var v:vector;dl:integer);//ordenado por código de identificación de la oficina
var i,j:integer;act:oficinas;
begin
    for i:=2 to dl do begin
    j:=i-1;act:=v[i];
        while(j>0) and (v[j].codi>act.codi) do begin
            v[j+1]:=v[j];
            j:=j-1;
        end;
    end;
    v[j+1]:=act;
end;
procedure imprimirvector (v:vector;dl:integer);
var i:integer;
begin
    for i:=1 to dl do begin
		writeln(i, ' | Codigo: ', v[i].codi);
    end;    
end;
procedure dicotomica(var v:vector;dl:integer);
procedure busquedadic(v:vector;dl:integer;dato:integer;var ok:boolean);
var pri,ult,medio:integer;
begin
    ok:=false;
    pri:=1;ult:=dl;medio:=(pri+ult) div 2;
    while (pri<=ult ) and (dato <> v[medio].codi) do begin
        if (dato<v[medio].codi) then 
        ult:=medio-1
        else pri:=medio+1;
    medio:=(pri+ult) div 2;
    end;
    if(pri<=ult) and (dato=v[medio].codi) then ok:=true;    
end;
var x:integer;ok:boolean;
begin
    writeln('Ingresar codigo de identificacion a buscar: ');
        readln(x);
        busquedadic(v,dl,x,ok);
    if (ok) then 
    writeln('El codigo de identificacion existe, y el dni del propietario es: ',v[x].dni)
    else
    writeln('El codigo de identificacion no existe')
end;
var v:vector;dl:integer;
begin
	generarvector(v,dl);
	imprimirvector(v,dl);
	ordenarinser(v,dl);
	dicotomica(v,dl);
	imprimirvector(v,dl);
end.
