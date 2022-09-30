package tema3;

import PaqueteLectura.Lector;

/**
 *
 * @author alumnos
 */
public class ej_03 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Estantes nuevo = new Estantes();
        nuevo.setEstantes(datoLibro());
        System.out.println(nuevo.getLibro("Mujercitas"));

        
    }
    public static Libro datoLibro(){
    System.out.println("Ingresar Nombre de Autor: ");
        String nom= Lector.leerString();
    System.out.println("Ingresar Biografia: ");
        String bio= Lector.leerString();
    System.out.println("Ingresar Origen de Autor: ");
        String ori= Lector.leerString();    
    AutorN aut= new AutorN(nom,bio,ori);
        System.out.println("Nombre del Libro: ");
            String nl=Lector.leerString();
        System.out.println("Ingresar Editorial: ");
            String edi=Lector.leerString();
        System.out.println("Ingresar anio de Edicion: ");
            int anio=Lector.leerInt();
        System.out.println("Ingresar ISBN: ");
            String isbn=Lector.leerString();
        System.out.println("Ingresar Precio: ");
            double pre=Lector.leerDouble();
    return new Libro(nl,edi,anio,aut,isbn,pre);
}
    
}
//class
package tema3;

/**
 *
 * @author Igna
 */
public class Estantes {
    private final int maxL=20;
    private Libro [] libro;
    private int dimL=0;
    
    public Estantes(){
        this.libro= new Libro[dimL];
        this.dimL=0;   
    }
    public int getEstantes(int maxL){
        return maxL;
    }
    public Libro[]getLibro(){
        return this.libro;
    }
    
    public boolean getLleno(){
        return (this.maxL==20);
    }
    public String getLibro(String unLibro){
        String aux2= "no se encuentra";
        for (int j=0;j<dimL;j++){
            if (this.libro[dimL].getTitulo().equalsIgnoreCase(unLibro)){
                 aux2=this.libro[j].toString();
            }     
        }
        return aux2;
    }
    public void setEstantes(Libro vlibro){
        this.libro[dimL]=vlibro;
        this.dimL++;
    }
    
}
