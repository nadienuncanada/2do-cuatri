package tema3;

/**
 *
 * @author vsanz
 */
public class Demo01ConstructoresLibro {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Autor Autor1=new Autor("Herbert Schildt"," Biografiaej"," Australia");
        Autor Autor2=new Autor( "John Horton"," Biografiaej2"," Dinamarca");
        Libro libro1= new  Libro( "Java: A Beginner's Guide", "Mcgraw-Hill", 2014, Autor1, "978-0071809252", 21.72);
        Libro libro2= new Libro("Learning Java by Building Android Games", "CreateSpace Independent Publishing", Autor2 , "978-1512108347");
        System.out.println(libro1.toString());
        System.out.println(libro2.toString());
        System.out.println("Precio del libro2: " +libro2.getPrecio());
        System.out.println("Año edición del libro2: " +libro2.getAñoEdicion());
        System.out.println("Datos del autor del libro: "+ libro1.getTitulo()+libro1.getPrimerAutor() );
         System.out.println("Datos del autor del libro: " + libro2.getTitulo() + libro2.getPrimerAutor() );
        
    }
    
}
//classes 
package tema3;

/**
 *
 * @author vsanz
 */
public class Libro {
   private String titulo;
   private Autor primerAutor; 
   private String editorial;
   private int añoEdicion;
   private String ISBN; 
   private double precio; 
     
    
    public Libro(  String unTitulo,  String unaEditorial, 
    int unAñoEdicion,  Autor unPrimerAutor, String unISBN, double unPrecio){
         titulo = unTitulo;
         editorial = unaEditorial; 
         añoEdicion= unAñoEdicion;
         primerAutor = unPrimerAutor;
         ISBN =  unISBN;
         precio = unPrecio;
    }
    
    public Libro(  String unTitulo,  String unaEditorial, Autor unPrimerAutor, String unISBN){
         titulo = unTitulo;
         editorial = unaEditorial; 
         añoEdicion= 2015;
         primerAutor = unPrimerAutor;
         ISBN =  unISBN;
         precio = 100;
    }
    
    public Libro(){
   
    }
        
    public String getTitulo(){
        return titulo;
    }
  
    public String getEditorial(){
        return editorial;
    }
    public int getAñoEdicion(){
        return añoEdicion;
    }
  
    public String getPrimerAutor(){
        String aux1;
        aux1= (primerAutor.getNombre() + primerAutor.getBiografia() + primerAutor.getOrigen());
        return aux1;
    } 
    public String getISBN(){
        return ISBN;
    } 
    public double getPrecio(){
        return precio;
    }
   
    public void setTitulo(String unTitulo){
        titulo = unTitulo;
    }
   
    public void setEditorial(String unaEditorial){
         editorial = unaEditorial;
    }
    public void setAñoEdicion(int unAño){
         añoEdicion = unAño;
    }
   
    public void setPrimerAutor(Autor unPrimerAutor){
         primerAutor=unPrimerAutor;
    } 
    public void setISBN(String unISBN){
         ISBN=unISBN;
    } 
    public void setPrecio(double unPrecio){
         precio=unPrecio;
    }
   
    
   @Override
    public String toString(){
        String aux;
        aux= titulo + " por " + primerAutor + " - " + añoEdicion + " - " + " ISBN: " + ISBN;
       return ( aux);
    }
        
}

package tema3;

/**
 *
 * @author Igna
 */
public class Autor {
 private String nombre;
 private String biografia;
 private String origen;

public  Autor(String vnombre, String vbiografia, String vorigen){
nombre=vnombre;
biografia=vbiografia;
origen=vorigen;
}
public String getNombre(){
return nombre;    
}
public String getBiografia(){
return biografia;    
}
public String getOrigen(){
return origen;    
}
public void setNombre(String vnombre){
    nombre=vnombre;
}
public void setBiografia(String vbiografia){
    biografia=vbiografia;
}
public void setOrigen(String vorigen){
    origen=vorigen;
}
public String toString(){
 String aux;
 aux=("Nombre del Autor: " +getNombre()+ " Biografia: "+ getBiografia()+ "  Origen: "+getOrigen());
 return aux;
}
}
