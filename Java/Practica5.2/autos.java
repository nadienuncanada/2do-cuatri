package practicaej2;

/**
 *
 * @author Igna
 */
public class autos {
    private String NomDue;
    private String Pat;

    public autos (String n, String p){
        setNomDue(n);
        setPat(p);
    }
    public String getNomDue() {
        return NomDue;
    }

    public void setNomDue(String NomDue) {
        this.NomDue = NomDue;
    }

    public String getPat() {
        return Pat;
    }

    public void setPat(String Pat) {
        this.Pat = Pat;
    }
    
    public boolean busqueda(String bus){
        boolean ok;
        if(getPat().equals(bus))
             ok=true;
        else
            ok=false;
         return ok;
    }
   

    public String toString(){
        String aux= " | "+ getNomDue() +" | "+ getPat();
        return aux;
    }
    
    
}
