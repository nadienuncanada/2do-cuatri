package tema2;

import PaqueteLectura.Lector;

/**
 *
 * @author Igna
 * TO STRING 
 * public String  toString(){
        String aux;
        aux = "EQUIPO-LOCAL: "+ local+ "Goles Local: " + golesLocal + " VS EQUIPO-VISITANTE"+ visitante+":Goles Visitante: "+golesVisitante;
         return aux;
 */
public class ej_05 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int cant=5,i=0,cont=0;
       Partido [] par= new Partido[cant];
          while(i !=cant){
           System.out.println("Ingresar Nombre del Equipo Local: ");
            String el=Lector.leerString();
           System.out.println("Ingresar Nombre del Equipo Visitante: ");
            String ev=Lector.leerString();
             if(!"ZZZ".equals(ev)){
            System.out.println("Ingresar Goles del Equipo Local: ");
             int gl=Lector.leerInt();
            System.out.println("Ingresar Goles del Equipo Visitante: ");
             int gv=Lector.leerInt();
             par[i]=new Partido(el,ev,gl,gv);
             i++;
             cont++;
            }
             else{
                 i=cant;
             }
          }
          for(i=0;i<cont;i++){
             System.out.println(par[i].toString());
          }
          }
          
       }
