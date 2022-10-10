//class
package practicaej2;

/**
 *
 * @author Igna
 */
public class estacionamiento {
    private String Nombre;
    private int Direc;
    private int Aper;
    private int Cierre;
    private  autos[][] aAutos;
    private int dimPi;
    private int dimPa;
    
    public  estacionamiento(String n,int di){
        this.dimPi=5;
        this.dimPa=10;
        this.aAutos=new autos[dimPi][dimPa];
        setAper(8);
        setCierre(21);
    }
     public estacionamiento(String n, int di, int ap, int ci, int x, int z){
       this.dimPi=x;
       this.dimPa=z;
       setNombre(n);
       setDirec(di);
       setAper(ap);
       setCierre(ci);
       this.aAutos=new autos[dimPi][dimPa];
    }
     
    public String buscarPatente(String patbus){
        String aux="Auto inexistente";
        int i=0;
        while (i!=dimPi){
            int j=0;
          while(j!=dimPa){
                if (this.aAutos[i][j]==null){
                      j++;
                      if(j==dimPa){
                            i++;
                            j=0;
                      }
                }
              if (this.aAutos[i][j].busqueda(patbus)==true ){
                return aux="Piso: "+ i + " Plaza:  "+ j + " ";
              }
              j++;
            } 
           i++; 
            }
        return aux;
    }
     
  /*  public String buscaaar(String aux){
        String b="Auto Inexistente";
        for(int i=0;i<this.dimPi;i++){
            for(int j=0;j<this.dimPa;j++){
             b=b+" "+ i + j;  
            } 
    }
         return b;
    } 
     */
  public String buscarPatentee(String patbus){
         boolean encontre=false;String aux="Auto inexistente";
    int j=0;
    int i=0;
    while((i<this.dimPi)&&(encontre==false)){
        while((j<this.dimPa)&&(encontre==false)){
            if((aAutos[i][j]!=null)&&(aAutos[i][j].getPat().equals(patbus))){
                encontre=true;
                 aux="Patente:  "+patbus+"  Piso: "+i+" Plaza: "+j;
        }
        j++;
    }
    j=0;
    i++;
}
    return aux;
  }    

    public void metelopa(autos vautos,int x,int z){
        this.aAutos[x][z]=vautos;
    }
   
    public int autosEnY(int y){
        int cont=0;
        for (int i=0;i<this.dimPi;i++){//recorre todos los pisos en la misma plaza 
            if(aAutos[i][y]!=null){//si es distinto de null hay auto
                cont++;
            }
        }
        return cont;
    }
    
    public String toString(){
        String aux="Estacionamiento"+System.lineSeparator();
          for(int i=0;i<this.dimPi;i++){
              aux= aux+" Piso: "+ i; 
            for(int j=0;j<this.dimPa;j++){
                if(aAutos[i][j]==null){
                    aux= aux + " Plaza: "+ j + " Libre";
                }
                else{
                    aux=aux +" Plaza: "+ j +aAutos[i][j].toString();
                }  
            }
            aux=aux + System.lineSeparator();
          }
          return aux;
          
    }   
    
    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getDirec() {
        return Direc;
    }

    public void setDirec(int Direc) {
        this.Direc = Direc;
    }

    public int getAper() {
        return Aper;
    }

    public void setAper(int Aper) {
        this.Aper = Aper;
    }

    public int getCierre() {
        return Cierre;
    }

    public void setCierre(int Cierre) {
        this.Cierre = Cierre;
    }

    public autos[][] getAutos() {
        return aAutos;
    }

    public void setAutos(autos[][] autos) {
        this.aAutos = autos;
    }

    public int getDimPi() {
        return dimPi;
    }

    public void setDimPi(int dimPi) {
        this.dimPi = dimPi;
    }

    public int getDimPa() {
        return dimPa;
    }

    public void setDimPa(int dimPa) {
        this.dimPa = dimPa;
    }
    
    
}
