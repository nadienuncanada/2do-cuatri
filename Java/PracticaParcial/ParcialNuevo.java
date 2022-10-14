//principal
package parcial;

/**
 *
 * @author Igna
 */
public class Parcial {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Funcion Fun=new Funcion("Los tipos",13,2000,5,5);
        Fun.OcuparButaca(1,1);
        Fun.OcuparButaca(1,2);
        Fun.OcuparButaca(2,1);
        Fun.OcuparButaca(2,2);
        System.out.println(Fun.RepreB(2));
        System.out.println(Fun.RepreFull());
        Fun.DesocuparButacasFila(1);
         System.out.println(Fun.RepreFull());
    }
    
}
//class
package parcial;

/**
 *
 * @author Igna
 */
public class Funcion {
    private String Titulo;
    private int Fecha;
    private int Hora;
    private int nFilas;
    private int mColumnas;
    private Butaca[][] ButacaArray;
    
    public Funcion(String t,int f,int h,int filas,int colu){
        setTitulo(t);
        setFecha(f);
        setHora(h);
        setnFilas(filas);
        setmColumnas(colu);
        this.ButacaArray=new Butaca[nFilas][mColumnas];//creo el array
        for(int i=0;i<nFilas;i++)
            for(int j=0;j<mColumnas;j++){
                this.ButacaArray[i][j]=new Butaca(i,j);//lleno el array con butacas desocupadas con su precio y descriptor.
            }
    }
    public String OcuparButaca(int fila,int col){
        String aux;
        this.ButacaArray[fila][col].setEstado(true);
        aux="Precio: "+ this.ButacaArray[fila][col].getPrecio();
        return aux;
    }
    public void DesocuparButacasFila(int f){
        for (int j=0;j<mColumnas;j++){
            this.ButacaArray[f][j].setEstado(false);
        }
    }
    public String RepreB(int b){
        String aux="Representacion: ";
        for(int i=0;i<nFilas;i++){
                aux=aux+System.lineSeparator()+"Descriptor: " + this.ButacaArray[i][b].getDescriptor()
                        + " Precio: "+this.ButacaArray[i][b].getPrecio()+ " Estado: "+this.ButacaArray[i][b].isEstado();
            }
        return aux;
        }
    public String RepreFull(){
        String aux="Representacion: "+getTitulo()+getFecha()+getHora();
        for(int j=0;j<mColumnas;j++)
        for(int i=0;i<nFilas;i++){
                aux=aux+System.lineSeparator()+"Descriptor: " + this.ButacaArray[i][j].getDescriptor()
                        + " Precio: "+this.ButacaArray[i][j].getPrecio()+ " Estado: "+this.ButacaArray[i][j].isEstado();
    }
    return aux;
    }
    
    public String getTitulo() {
        return Titulo;
    }

    public void setTitulo(String Titulo) {
        this.Titulo = Titulo;
    }

    public int getFecha() {
        return Fecha;
    }

    public void setFecha(int Fecha) {
        this.Fecha = Fecha;
    }

    public int getHora() {
        return Hora;
    }

    public void setHora(int Hora) {
        this.Hora = Hora;
    }

    public int getnFilas() {
        return nFilas;
    }

    public void setnFilas(int nFilas) {
        this.nFilas = nFilas;
    }

    public int getmColumnas() {
        return mColumnas;
    }

    public void setmColumnas(int mColumnas) {
        this.mColumnas = mColumnas;
    }
    
}
//class 
package parcial;

/**
 *
 * @author Igna
 */
public class Butaca {
    private String Descriptor;
    private double Precio;
    private boolean Estado;
public Butaca(int fila,int j){
    String aux= " Butaca:" + fila +" " + j;
    setDescriptor(aux);
    setPrecio(800+(100*fila));
    
}
    public String getDescriptor() {
        return Descriptor;
    }

    public void setDescriptor(String Descriptor) {
        this.Descriptor = Descriptor;
    }

    public double getPrecio() {
        return Precio;
    }

    public void setPrecio(double Precio) {
        this.Precio = Precio;
    }

    public boolean isEstado() {
        return Estado;
    }

    public void setEstado(boolean Estado) {
        this.Estado = Estado;
    }
 
    
}
