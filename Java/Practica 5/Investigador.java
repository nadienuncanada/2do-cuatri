//class
package practica;

/**
 *
 * @author Igna
 */
public class Investigador {
    private String Nombre;
    private int Categoria;
    private String Espe;
    private subsidios[] sub;
   private final int Max=5;
   private int dimL;
   
public Investigador(String n,int cat,String e){
   this.sub=new subsidios[Max];
   this.dimL=0;
   setNombre(n);
   setCategoria(cat);
   setEspe(e);
}    
    public subsidios[] getSub() {
        return sub;
    }

    public void setSub(subsidios[] sub) {
        this.sub = sub;
    }

    public int getDimL() {
        return dimL;
    }

    public void setDimL(int dimL) {
        this.dimL = dimL;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getCategoria() {
        return Categoria;
    }

    public void setCategoria(int Categoria) {
        this.Categoria = Categoria;
    }

    public String getEspe() {
        return Espe;
    }

    public void setEspe(String Espe) {
        this.Espe = Espe;
    }

    void agregarSubsidio(subsidios sub) {
        this.sub[dimL]=sub;
      dimL++;
    }


}
