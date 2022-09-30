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
    private Libro[] libro;
    private int dimL;
    
    public Estantes(){
        this.dimL=0;   
        this.libro = new Libro[dimL];
      
    }
    public int getEstantes(){
        return this.dimL ;
    }
    public Libro[]getLibro(){
        return libro;
    }
    
    public boolean getLleno(){
        return (this.maxL==20);
    }
    public Libro getLibro(String titulo){
        Libro aux2= null;
        for (int j=0;j<this.dimL;j++){
            if (this.libro[j].getTitulo().equalsIgnoreCase(titulo)){
                 aux2=libro[j];
            }     
        }
        return aux2;
    }
    public void setLibro(Libro[] libro){
        this.libro=libro;
    }
    public void setEstantes(Libro vlibro){
        this.libro[dimL]=vlibro;
        this.dimL++;
    }
    
}
