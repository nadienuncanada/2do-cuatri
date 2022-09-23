package tema1;

import PaqueteLectura.Lector; //Paso 1: Importar la funcionalidad para lectura de datos


public class Ej02Jugadores {

  
    public static void main(String[] args) {
        
       int DF=5; //Paso 2: Declarar la variable vector de double 
        
      int [] alturas=new int [DF];  //Paso 3: Crear el vector para 15 double 
        
        int i,suma;//Paso 4: Declarar indice y variables auxiliares a usar
         suma=0;
      for (i=0;i<DF;i++){ //Paso 6: Ingresar 15 numeros (altura), cargarlos en el vector, ir calculando la suma de alturas
          System.out.println("Ingrese altura del jugador "+ i);
             int alt=Lector.leerInt();//altura que se ingrese altura que se va a guardar en la poscion i en el vector de 15 personas
            alturas[i]=alt;
           suma=suma+alt;//suma de las alturas totales
         System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~");
      }    
        int  promedio=suma/DF;
             System.out.println("El promedio de alturas es: "+ promedio); //Paso 7: Calcular el promedio de alturas, informarlo
   
        int cant;
        cant=0;
      for(i=0;i<DF;i++){  //Paso 8: Recorrer el vector calculando lo pedido (cant. alturas que están por encima del promedio)
            if (alturas[i]>promedio)
               cant=cant+1;
            }
        System.out.println("La cantidad de alturas por encima del promedio son: "+cant); //Paso 9: Informar la cantidad.
        }
    }
