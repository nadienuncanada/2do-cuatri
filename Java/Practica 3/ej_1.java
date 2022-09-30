package tema3;

/**
 *
 * @author Igna
 */
public class ej_1b {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      triangulo t1 = new triangulo (3,3,4,"rojo","azul");
       System.out.println(t1.calcularPerimetro()); 
       System.out.println(t1.calcularArea());       
    }
    
}
//class
package tema3;

/**
 *
 * @author Igna
 */
public class triangulo {
    private double lado1;
    private double lado2;
    private double lado3;
    private String colorR;
    private String colorL;
    
public triangulo(){
        
    }
    public triangulo ( double vlado1,  double vlado2,  double vlado3, String vcolorR, String vcolorL ){
        lado1=vlado1;
        lado2=vlado2;
        lado3=vlado3;
        colorR=vcolorR;
        colorL=vcolorL;
    }
  
    public double getLado1(){
        return lado1;
    }
    public double getLado2(){
        return lado2;
    }
    public double getLado3(){
        return lado3;
    }
    public String getColorR(){
        return colorR;
    }
    public String getColorL(){
        return colorL;
    }
    public void setLado1(double vlado1){
        lado1=vlado1;
    }
    public void setLado2(double vlado2){
        lado2=vlado2;
    }
    public void setLado3(double vlado3){
        lado3=vlado3;
    }
    public void setColorR(String vcolorR){
        colorR=vcolorR;
    }
    public void setColorL(String vcolorL){
        colorL=vcolorL;
    }
    public double calcularPerimetro(){
        return(getLado1()+getLado2()+getLado3());
    }   
    public double calcularArea(){
     double s = (calcularPerimetro() / 2); 
     double area=Math.sqrt(s*(s-getLado1())*(s-getLado2())*(s-getLado3()));
     return(area);
    }
}
