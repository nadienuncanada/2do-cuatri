package tema1;

import PaqueteLectura.GeneradorAleatorio;

public class Ej01Tabla2 {

    /**
     * Carga un vector que representa la tabla del 2
     */
    public static void main(String[] args) {
        GeneradorAleatorio.iniciar();
        int DF=12;  
        int [] tabla2 = new int[DF]; // indices de 0 a 11
        int i;
        for (i=0;i<DF;i++) 
            tabla2[i]=2*i;
        System.out.println("2x" + "5" + "="+ tabla2[5]);
             int num= GeneradorAleatorio.generarInt(12);
                System.out.println(num);
                 System.out.println("2x" + num + "="+ tabla2[num]);
        while(num!= 11 ){
               num= GeneradorAleatorio.generarInt(12);
                System.out.println(num);
                 System.out.println("2x" + num + "="+ tabla2[num]);
        }
             
    }
    
}
