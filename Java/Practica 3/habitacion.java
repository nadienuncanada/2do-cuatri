package tema3;

import PaqueteLectura.GeneradorAleatorio;

/**
 *
 * @author josem
 */
public class Habitacion {
    
     private double costo;
     private boolean ocupada;
     Cliente vcliente= new Cliente(); 


public Habitacion(){
    GeneradorAleatorio.iniciar();
    ocupada=false;
    costo=GeneradorAleatorio.generarInt(6000)+2000;
    
}

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public boolean isOcupada() {
        return ocupada;
    }

    public void setOcupada(boolean ocupada) {
        this.ocupada = ocupada;
    }

    public Cliente getVcliente() {
        return vcliente;
    }

    public void setVcliente(Cliente vcliente) {
        this.vcliente = vcliente;
    }
    public void setPrecio_Global(double x){
        costo=costo+x;
    }
    
}
