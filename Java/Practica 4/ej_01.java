//CIRCULO
package tema4;

/**
 *
 * @author Igna
 */
public class Circulo extends Figura {
    private int Radio;
    
    public Circulo(int unRadio,String unColorR,String unColorL){
    super(unColorR,unColorL);
        setRadio(unRadio);
    }
    public int getRadio() {
        return Radio;
    }
    public void setRadio(int Radio) {
        this.Radio = Radio;
    }
    public double calcularArea(){
        return(this.Radio*this.Radio*3.1415);
    }
    public double calcularPerimetro(){
        return(2*3.1415*this.Radio);
    }
    
}
