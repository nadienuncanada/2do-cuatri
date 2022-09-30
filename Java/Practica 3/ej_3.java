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
