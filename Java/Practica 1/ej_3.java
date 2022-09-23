package tema1;

import PaqueteLectura.GeneradorAleatorio;//Paso 1. importar la funcionalidad para generar datos aleatorios
import PaqueteLectura.Lector;
public class Ej03Matrices {

    public static void main(String[] args) {
	    GeneradorAleatorio.iniciar();//Paso 2. iniciar el generador aleatorio     
	 
       int [][] matriz2 =new int [5] [5]; //Paso 3. definir la matriz de enteros de 5x5 e iniciarla con nros. aleatorios 
       int i,j,fil=0,col=0,cont=0;
       for (i=0;i<5;i++)
           for(j=0;j<5;j++)
                matriz2[i][j]= GeneradorAleatorio.generarInt(31);
       System.out.println("Elementos de la matriz numeros: ");
       for(i = 0; i < 5; i++) {
           for(j = 0; j < 5; j++) {
       System.out.print(matriz2[i][j] +  " "); 
           }
          System.out.println();
       }
       
       int f=1,suma=0; //Paso 5. calcular e informar la suma de los elementos de la fila 1
    for (j=0;j<5;j++)
        suma=suma+matriz2[f][j];
    System.out.println("La suma de la fila 1 es: "+suma);
    
      int [] vec = new int [5];  //Paso 6. generar un vector de 5 posiciones donde cada posición j contiene la suma de los elementos de la columna j de la matriz. 
              int cant;  //        Luego, imprima el vector.
         for(j=0;j<5;j++){
            cant=0;
          for(i=0;i<5;i++){
                cant=cant + matriz2[i][j];
                vec[j]=cant;
            }
        }
          for(j=0;j<5;j++)
              System.out.print(vec[j]+" ");
           System.out.println( );
          System.out.println("Ingrese Valor a buscar: ");
          cont=1;
           int v = Lector.leerInt();//Paso 7. lea un valor entero e indique si se encuentra o no en la matriz. En caso de encontrarse indique su ubicación (fila y columna)   y en caso contrario imprima "No se encontró el elemento".
             for (i = 0; i < 5 ; i++){
                  for ( j = 0; j < 5; j++){
                        if(matriz2 [i] [j] == v ){
                            cont++;
                             fil=i;
                             col=j;
                       }
                     }
                 }
             if (cont>=1){
                         System.out.println (" Se encontro el valor en la fila: "+ fil + " y la columna "+ col);
}else{
                   System.out.println("No se encontro el elemento");
            }  
          } 
                    
}
