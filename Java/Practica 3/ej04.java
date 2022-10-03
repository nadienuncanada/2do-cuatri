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
        Hotel nuevo= new Hotel();
        System.out.println("Ingrese la cantidad de habitaciones que dispone el hotel: ");
        int x=Lector.leerInt();
        nuevo.Habitaciones_totales(x);
        nuevo.agregar_habitacion(datoHabitacion());
    }
    public static Habitacion datoHabitacion(){
    System.out.println("Nombre del Cliente: ");
        String c=Lector.leerString();
    int dni=GeneradorAleatorio.generarInt(6000)+467;
    int edad=GeneradorAleatorio.generarInt(67); 
  Cliente cli = new Cliente(c,dni,edad); 
     System.out.println("Ocupada: ");
        boolean oc= Lector.leerBoolean();
      System.out.println("Costo: ");   
        double cos=Lector.leerDouble();
return new Habitacion(oc,cos,cli);


}
    
}
