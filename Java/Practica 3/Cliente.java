package tema3;

/**
 *
 * @author josem
 */
public class Cliente {
    private String nombre;
    private int DNI;
    private int Edad;
    
    public Cliente(){}
    public Cliente(String unNombre, int unDNI, int unaEdad){
        nombre = unNombre;
        DNI = unDNI;
        Edad = unaEdad; 
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDNI() {
        return DNI;
    }

    public void setDNI(int DNI) {
        this.DNI = DNI;
    }

    public int getEdad() {
        return Edad;
    }

    public void setEdad(int Edad) {
        this.Edad = Edad;
    }
    public String toString(){
        String aux;
        aux=(getEdad()+getDNI()+getNombre());
        return aux;
    }
}
