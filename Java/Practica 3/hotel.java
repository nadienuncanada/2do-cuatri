package tema3;

import PaqueteLectura.GeneradorAleatorio;

/**
 *
 * @author josem
 */
public class Hotel {
    private Habitacion[] habit;
    private int dimF;
    private int dimL;
    
public Hotel(){
    this.dimL=0;
    this.habit= new Habitacion [dimF];
}

public void agregar_habitacion(Habitacion vhabit){
    this.habit[dimL] = vhabit;
    dimL++;
}
public void agregar_cliente_habitacion(Cliente c,int x){
        habit[x].setVcliente(c);
    }
@Override
public String toString(){
String aux = null;
for (int i=0;i<this.dimL;i++){
aux=("Habitacion: " + i + " costo: "+this.habit[i].getCosto());
    if(this.habit[i].isOcupada()){
     aux=aux+habit[i].getVcliente().toString();   
    }
}return aux;
}
   
}
