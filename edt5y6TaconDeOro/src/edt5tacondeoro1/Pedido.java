package edt5tacondeoro1;

import java.util.*;

/**
 * Representa un conjunto de art�culos que compra un socio. De un pedido se almacena la fecha en que se realiza y el total a pagar, que se calcula en funci�n del precio y cantidad de los art�culos que forman el pedido.
 */
enum EstadoPedido{
    ENCREACION, PENDIENTE, ALMACEN, SERVIDO, CANCELADO;
}
public class Pedido {

	//private Date fecha;
        private Calendar fecha;
	private float total;
        private Socio socio;
	//Collection<LineaPedido> LineasPedidos;
        private ArrayList<LineaPedido> lineasPedidos;
        EstadoPedido estadoMiPedido;
        
        public Pedido() {	
            estadoMiPedido= EstadoPedido.ENCREACION;
            fecha= Calendar.getInstance();
	}
        public Pedido(Socio s) {
	    this.socio= s;
            estadoMiPedido= EstadoPedido.ENCREACION;
            fecha= Calendar.getInstance();
	}
        
        public Pedido(Socio s, ArrayList<LineaPedido> listalp) {
            lineasPedidos=listalp;
	    this.socio= s;
            estadoMiPedido= EstadoPedido.ENCREACION;
            fecha= Calendar.getInstance();
	}

	public void calcularTotal() {
		// TODO - implement Pedido.calcularTotal
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param articulo
	 */
	public void addArticulo(Articulo articulo) {
		// TODO - implement Pedido.addArticulo
		throw new UnsupportedOperationException();
	}

	public void asignarRuta() {
		// TODO - implement Pedido.asignarRuta
		throw new UnsupportedOperationException();
	}

	public Calendar getFecha() {
		return this.fecha;
	}

	/**
	 * 
	 * @param fecha
	 */
	public void setFecha(Calendar fecha) {
		this.fecha = fecha;
	}

	public float getTotal() {
		return this.total;
	}

	/**
	 * 
	 * @param total
	 */
	public void setTotal(float total) {
		this.total = total;
	}

	

	public void calcularFechaSalida() {
		// TODO - implement Pedido.calcularFechaSalida
		throw new UnsupportedOperationException();
	}

    public Socio getSocio() {
        return socio;
    }

    public void setSocio(Socio socio) {
        this.socio = socio;
    }

    public ArrayList<LineaPedido> getLineasPedidos() {
        return lineasPedidos;
    }

    public void setLineasPedidos(ArrayList<LineaPedido> lineasPedidos) {
        this.lineasPedidos = lineasPedidos;
    }

    public EstadoPedido getEstadoMiPedido() {
        return estadoMiPedido;
    }

    public void setEstadoMiPedido(EstadoPedido estadoMiPedido) {
        this.estadoMiPedido = estadoMiPedido;
    }
        

}