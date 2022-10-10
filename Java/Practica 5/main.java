package practica;

/**
 *
 * @author Igna
 */
        import PaqueteLectura.Lector;
public class porfavorjesucristoenvoscreo {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        proyectos pro=new proyectos("Proyecto papu",42069,"El Papu");
        System.out.println("Ingrese la cantidad de Investigadores:  ");
          int z=Lector.leerInt();
            int j=0;
         while (j!=z){
          System.out.print("Ingrese el nombre del Investigador: ");
                String nombre = Lector.leerString();
          System.out.print("Ingrese Categoria: ");
                int cat = Lector.leerInt();
          System.out.print("Ingrese Especialidad: ");
                String esp = Lector.leerString(); 
        Investigador investigador=new Investigador(nombre,cat,esp);
           
        System.out.println("Cantidad de Subsidios: ");
            int x=Lector.leerInt();
            int i=0;
         while (i!=x){
             System.out.print("Ingrese Monto: ");
                double mont = Lector.leerDouble();
            System.out.print("Ingrese el Motivo: ");
                String mo = Lector.leerString();
            
   subsidios sub= new subsidios(mont,mo);
         
        investigador.agregarSubsidio(sub);
        i++;
         }
        pro.Agregar_Investigadores(investigador);
        j++;
         }
        System.out.println(pro.toString());
    
    }
}
