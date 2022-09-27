public class ej_04 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        int p=3;
       // Persona[] personas =new Persona [p];
        Persona [][] casting = new Persona [5] [p]; //donde se van a guardas las 8 personas los 5 dias d1 1...8, d2 1...8
        int i=0,j=0,c=0,pe=0,corte=0;
        String n="a";
         while( i<5 && corte!=90 ){
           j=0;
                 while(j<p &&  !"ZZZ".equals(n)){
                    System.out.println("Ingresar Nombre: ");
                        n=Lector.leerString();
                        if (!"ZZZ".equals(n)){
                                 int dni =GeneradorAleatorio.generarInt(30000);
                            System.out.println("DNI: "+dni);
                                 int e=GeneradorAleatorio.generarInt(50);
                            System.out.println("Edad: "+e);
                            //personas[j]=new Persona(n,dni,e);
                             casting[i][j] = new Persona(n,dni,e);
                             System.out.println(casting[i][j].toString()+(i)+j);
                                j++; 
                               pe++;
                        }
                        else{
                           corte=90;
                         }
                 }
               i++;
                c=i;
          }
         int muerte=0;
                for (i=0;i<c;i++)
                    for(j=0;j<p;j++){
                        if(muerte!=pe){
                 System.out.println ("Dia: "+(i+1)+" Turno: "+(j+1) +" "+ casting[i][j].getNombre());
                 muerte++;
                    }
                        else{
                            i=c;
                            j=pe;
                        }
                    }
                 }
             } 
