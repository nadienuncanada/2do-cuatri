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
