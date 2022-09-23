package tema1;

/**
 *
 * @author Alumno
 */
import PaqueteLectura.Lector; 	
public class ej05 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    
        
        
    int [] [] calificaciones= new int [5][4];
    int i,j;
    int cli=5;
    int asp=4;
    while (cli != 0){
        for(i=0;i<5;i++){
            System.out.println("Cliente:" + i );
            for(j=0;j<4;j++){
                System.out.println("Categoria:" + j );
                int a = Lector.leerInt();
                calificaciones[i][j]=calificaciones[i][j]+a;
                
            }
            cli--;
        }
    }
    int suma;
    suma=0;
    for(j=0;j<4;j++){
        suma=0;
            for(i=0;i<5;i++)
                suma=suma+calificaciones[i][j];
            System.out.println(" La suma de la categoria: " + j + " es: " + suma);
     }
}
}    
