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
        System.out.println("Ingrese la cantidad de libros que quiere agregar: ");
        int cant=Lector.leerInt();
        for(int i=0;i<cant;i++){
        nuevo.agregar_libro(datoLibro());
        }
        System.out.println(nuevo.buscar_libro("Mujercitas"));

        
    }
    public static Libro datoLibro(){
    System.out.println("Ingresar Nombre de Autor: ");
        String nom= Lector.leerString();
    System.out.println("Ingresar Biografia: ");
        String bio= Lector.leerString();
    System.out.println("Ingresar Origen de Autor: ");
        String ori= Lector.leerString();    
    Autor aut= new Autor(nom,bio,ori);
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
 * @author josem
 */
public class Estantes {
    private int dimL;
    private final int dimF=20;
    private Libro[] libro;
    
public Estantes(){
    this.dimL=0;
    this.libro=new Libro[dimF];
}

    public int getDimL() {
        return this.dimL;
    }

    public Libro[] getLibro() {
        return libro;
    }

    public void setLibro(Libro[] libro) {
        this.libro = libro;
    }
    public void agregar_libro(Libro vlibro){
        this.libro[dimL]=vlibro;
        this.dimL++;
    }
    public boolean lleno(){
        return (dimL==20);
    }
    public Libro buscar_libro(String titulo){
        for(int i=0;i<this.dimL;i++){
            if(this.libro[i].getTitulo().equalsIgnoreCase(titulo)){
                return this.libro[i];
            }
        }
        return null;
    }
}
