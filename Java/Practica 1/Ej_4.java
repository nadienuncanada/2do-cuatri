package tema1;

/**
 *
 * @author Alumno
 */
import PaqueteLectura.Lector; 		
public class Ej04 {
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    
    int[][] oficinas= new int [8][4];
    int i,j;
     for (i = 0; i < 8; i++) {
      for (j = 0; j < 4; j++) {
        oficinas[i][j]=0;  
        }
      }
    System.out.println("Quiere ingresar datos? Ingrese 1 para si,9 para no: ");
            int p = Lector.leerInt();
    while (p != 9){
        System.out.println("Ingrese nro de piso: ");
             p = Lector.leerInt();
            if(p!=9){ 
        System.out.println("Ingrese nro de oficina: ");
            int o = Lector.leerInt();
        System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
    oficinas[p-1][o-1]=oficinas[p-1][o-1]+1;
            }
    }
    
     System.out.println("Elementos de la matriz numeros: ");
    for (i = 0; i < 8; i++) {
      for (j = 0; j < 4; j++) {
        System.out.print(oficinas[i][j] + " ");
        }
      System.out.println();
      }
  }
}
