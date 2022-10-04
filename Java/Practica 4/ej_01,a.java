package tema4;


public class DemoFiguras {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Cuadrado cuad = new Cuadrado(10,"Rojo", "Negro");
        System.out.println("Color linea: " + cuad.getColorLinea()); 
        System.out.println("Area: " + cuad.calcularArea()); 
        System.out.println("Representacion del cuadrado: " + cuad.toString()); 
        Circulo circ = new Circulo (5, "Negro", "Naranja");
        System.out.println (circ.toString());
        circ.despintar();
        System.out.println (circ.toString());
        Trianguloo tri = new Trianguloo (3, 4, 5, "Azul", "Naranja");
        System.out.println(tri.toString());
        tri.despintar();
        System.out.println(tri.toString());
    }
  //class
  package tema4;

/**
 *
 * @author alumnos
 */
public class Trianguloo extends Figura {
    private double lado1;
    private double lado2;
    private double lado3;

public Trianguloo(double a,double b,double c,String unColorR, String unColorL){
super(unColorR,unColorL);
setLado1(a);
setLado2(b);
setLado3(c);
}

    public double getLado1() {
        return lado1;
    }

    public void setLado1(double lado1) {
        this.lado1 = lado1;
    }

    public double getLado2() {
        return lado2;
    }

    public void setLado2(double lado2) {
        this.lado2 = lado2;
    }

    public double getLado3() {
        return lado3;
    }

    public void setLado3(double lado3) {
        this.lado3 = lado3;
    }
     public double calcularArea(){
        double auxS= this.calcularPerimetro()/2;
        return Math.sqrt(auxS*(auxS-lado1)*(auxS-lado2)*(auxS-lado3));
    }
    
    public double calcularPerimetro(){
        return(lado1+lado2+lado3);
    }

}
