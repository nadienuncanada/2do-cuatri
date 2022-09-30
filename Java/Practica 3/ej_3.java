//class
package tema3;

/**
 *
 * @author Igna
 */
public class Estantes {
    private int maxL=20;
    private Libro [] libro=new Libro[maxL];
    private int i=0;
    public Estantes(Libro vlibro){
        libro[i]=vlibro;
        i++;   
    }
    public int getEstantes(int maxL){
        return maxL;
    }
    
    public String getLleno(int maxL){
        if (maxL==20){
            return("estante lleno");
        }
        else{
            return("no esta lleno");
        }
    }
    public String getLibro(String unLibro){
        String aux2= "no se encuentra";
        for (int j=0;j<i;j++){
            if (libro[i].getTitulo().equals(unLibro)){
                 aux2=libro[j].toString();
            }     
        }
        return aux2;
    }
    public void setEstantes(Libro vlibro){
        libro[i]=vlibro;
        i++;
    }
    
}
//class2
package tema3;


public class Estante {
    private int dimL;
    private final int dimF = 20;
    private Libro[] vector;
//-------------------constructor-----------
    
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
