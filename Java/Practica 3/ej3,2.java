
package tema3;


public class Estante {
    private int dimL;
    private final int dimF = 20;
    private Libro[] vector;
//-------------------constructor-----------
    
  package tema3;

import PaqueteLectura.Lector;

public class EJ3b {

    public static void main(String[] args) {
        Estante nuevo = new Estante();
        //leer un libro y cargarlo
        nuevo.agregar_libro(leerLibro());
        nuevo.agregar_libro(leerLibro());
        System.out.println(nuevo.buscar_titulo("Mujercitas").toString());
    }
    public static Libro leerLibro(){
        //AUTOR
        System.out.print("Ingrese el nombre del autor: ");
        String nombreautor = Lector.leerString();
        System.out.print("Ingrese su biografia: ");
        String biog= Lector.leerString();
        System.out.print("Ingrese su origen: ");
        String orig= Lector.leerString();
        AutorN au = new AutorN(nombreautor,biog,orig);
        
        //LIBRO
        System.out.print("Ingrese el titulo del Libro: ");
        String tit=Lector.leerString();
        System.out.print("Ingrese el editorial: ");
        String editorial = Lector.leerString();
        System.out.print("Ingrese el año de edicion:");
        int aedi= Lector.leerInt();
        System.out.print("Ingrese ISBN: ");
        String ISBN=Lector.leerString();
        System.out.print("Ingrese el precio: ");
        double precio=Lector.leerDouble();
        return new Libro(tit,editorial,aedi,au,ISBN,precio);
    }
}
  //class  
  public Estante() {
        this.dimL = 0;
        this.vector=new Libro[dimF];

    }
//------------------getters----------------
    public Libro[] getVector() {
        return vector;
    }
//-----------------setters-----------------
    public void setVector(Libro[] vector) {
        this.vector = vector;
    }
//----------------metodos------------------
    public void agregar_libro(Libro lib){
        this.vector[dimL]=lib;
        this.dimL++;
    }
    
    public int cant_libros(){
        return this.dimL;
    }
    public boolean lleno(){
        return (dimL==20);
    }
    public Libro buscar_titulo(String titulo){
        for (int i = 0; i < this.dimL; i++) {
            if (this.vector[i].getTitulo().equalsIgnoreCase(titulo)) {
                return this.vector[i];
            }
            
        }
        return null;
    }
}
