//class
package practica;

/**
 *
 * @author Igna
 */
public class proyectos {
    private String Nombre;
    private int Codigo;
    private String NomDirec;
    private final int Max=50;
    private int dimL;
    private Investigador[] inv; 
    
    public proyectos(String n,int c,String nd){
          this.inv= new Investigador[Max];
        this.dimL=0;  
        setNombre(n);
        setCodigo(c);
        setNomDirec(nd);    
    }
    
    public void Agregar_Investigadores(Investigador inv){//luego de cargar un investigador con sus subsidios, se agregan al array dentro de proyectos.
        this.inv[dimL]=inv;
        dimL++;
    }
    
public double dineroTotalOtorgado(){
    double total=0;
    for (int i=0;i<this.dimL;i++)//reocorro todos los investigadores que se agregaron(max50).
     for(int j=0;j<inv[i].getDimL();j++){//consigo el total de subsidios que tiene el investigador.
       total = total+this.inv[i].getSub()[j].getMonto();// total se le va a sumar todos los montos de cada subsidio q los inv tengan.
    }
    return total;
}
    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getCodigo() {
        return Codigo;
    }

    public void setCodigo(int Codigo) {
        this.Codigo = Codigo;
    }

    public String getNomDirec() {
        return NomDirec;
    }

    public void setNomDirec(String NomDirec) {
        this.NomDirec = NomDirec;
    }
    
   public void otorgarTodo(String vn){
       int i=0;boolean ok=false;int j=0;
        while (i<this.dimL && ok!=true){
         if(inv[i].getNombre().equals(vn)){
           j=inv[i].getDimL();
           ok=true;
            for (int k=0;k<j;k++){
              inv[i].getSub()[j].setEntregado(true);
             } 
         }
       i++;        
        }
   }
      
    @Override
    public String toString(){
        String aux="Nombre del Proyecto: "+ getNombre() +" Codigo: "+ getCodigo() +" Nombre del Director: "+ getNomDirec() +" Dinero Total Otorgado: " + dineroTotalOtorgado();
        int j;
        for (int i=0;i<this.dimL;i++){
            double total=0;
          for( j=0;j<inv[i].getDimL();j++){  
              total=total+this.inv[i].getSub()[j].getMonto();
          }
           aux=aux+"Investigador:  "+ i +" Nombre: "+ inv[i].getNombre() + " Categoria: "+ inv[i].getCategoria() + " Dinero total en Subsidios:  "+ total +System.lineSeparator();
         }
         return aux;
    }
}
