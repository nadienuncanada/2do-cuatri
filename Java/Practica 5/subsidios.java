//class
package practica;

/**
 *
 * @author Igna
 */
public class subsidios {
    private double monto;
    private String motivo;
    private boolean entregado=false;
    
public subsidios(double m, String mo){
    setMonto(m);
    setMotivo(mo);
}

    public boolean isEntregado() {
        return entregado;
    }

    public void setEntregado(boolean entregado) {
        this.entregado = entregado;
    }
    
    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }
    
    
}
