package tema3;

import PaqueteLectura.GeneradorAleatorio;
import PaqueteLectura.Lector;

/**
 *
 * @author josem
 */
public class ej_04 {

    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        System.out.println("Ingrese la cantidad de habitaciones que dispone el hotel: ");
        int x=Lector.leerInt();
         Hotel nuevo= new Hotel(x);
         for (int j=0;j<x;j++){
        nuevo.agregar_habitacion(datoHabitacion());
         }
        for (int i=0;i<nuevo.getHabitaciones();i++){
         System.out.println (nuevo.getHabit(i).toString());
                }
    }
    public static Habitacion datoHabitacion(){
    System.out.println("Nombre del Cliente: ");
        String c=Lector.leerString();
    int dni=GeneradorAleatorio.generarInt(6000)+467;
    int edad=GeneradorAleatorio.generarInt(67); 
  Cliente cli = new Cliente(c,dni,edad); 
      System.out.println("Costo: ");   
        double cos=Lector.leerDouble();
return new Habitacion(cos,cli);


}
    
}
//class
package tema3;

/**
 *
 * @author josem
 */
public class Hotel {
    private Habitacion[] habit;
    private int dimF;
    private int dimL;
    

public Hotel(int x){
    this.dimF=x;
    this.dimL=0;
    this.habit= new Habitacion [dimF];
}
public int getHabitaciones(){
    return this.dimL;
}
public int getHabitacionesTotales(){
    return this.dimF;
}

public void agregar_habitacion(Habitacion vhabit){
    this.habit[dimL] = vhabit;
    dimL++;
}
public void agregar_cliente_habitacion(Cliente c,int x){
        habit[x].setVcliente(c);
    }

    public Habitacion getHabit(int i) {
        
        return this.habit[i];
    }
  

}
package tema3;

import PaqueteLectura.GeneradorAleatorio;

/**
 *
 * @author josem
 */
public class Habitacion {
     private double costo=GeneradorAleatorio.generarInt(6000)+2000;;
     private boolean ocupada=false;;
     Cliente vcliente= new Cliente(); 

public Habitacion(double cos,Cliente cli){
    GeneradorAleatorio.iniciar();
    ocupada=true;
   vcliente=cli;
}

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public boolean isOcupada() {
        return ocupada;
    }

    public void setOcupada(boolean ocupada) {
        this.ocupada = ocupada;
    }

    public Cliente getVcliente() {
        return vcliente;
    }

    public void setVcliente(Cliente vcliente) {
        this.vcliente = vcliente;
    }
    public void setPrecio_Global(double x){
        costo=costo+x;
    }
    public String toString(){
        String aux;
        aux=("Costo: "+this.costo+" Ocupada: " +this.ocupada+ " Info cliente: "+this.vcliente.toString());
         return aux;
    }
  
}
package tema3;

/**
 *
 * @author josem
 */
public class Cliente {
    private String nombre;
    private int DNI;
    private int Edad;
    
    public Cliente(){}
    public Cliente(String unNombre, int unDNI, int unaEdad){
        nombre = unNombre;
        DNI = unDNI;
        Edad = unaEdad; 
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDNI() {
        return DNI;
    }

    public void setDNI(int DNI) {
        this.DNI = DNI;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }
    public String toString(){
        String aux;
        aux=(getEdad()+getDNI()+getNombre());
        return aux;
    }
}
