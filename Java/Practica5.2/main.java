package practicaej2;

import PaqueteLectura.Lector;

/**
 *
 * @author Igna
 */
public class Practicaej2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
       estacionamiento est=new estacionamiento ("Estacionamiento El Pepe", 33,7,22,3,3);
        /*for (int i=0;i<6;i++){
            System.out.println("Piso: ");
                int p=Lector.leerInt();
            System.out.println("Plaza: ");
                int pa=Lector.leerInt();
            System.out.println("Nombre del Due;o: ");
                String n=Lector.leerString();
            System.out.println("Patente: ");
                String pat=Lector.leerString();*/
            
            autos au=new autos("pablito","abc 123");
            est.metelopa(au,0,0);
            au=new autos("jorge","abe 123");
            est.metelopa(au,0,1);
            
            au=new autos("pepe","cde 333");
            est.metelopa(au,1,0);
            au=new autos("pepitoo","fff 777");
            est.metelopa(au,1,1);
            au=new autos("pocho","aaa 888");
            est.metelopa(au,1,2);
            
            au=new autos("Ultimo","zzz 999");
            est.metelopa(au,2,0);
        
        
        System.out.println(est.toString());
        System.out.println("La cantidad de autos en la plaza: " + 1 + " son: "+ est.autosEnY(1));
        System.out.println("Patente que se quiere buscar: ");
            String aux=Lector.leerString();
        System.out.println(est.buscarPatentee(aux));
    }
    
}
