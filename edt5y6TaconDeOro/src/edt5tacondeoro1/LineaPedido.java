package edt5tacondeoro1;

/**
 * Representa los art�culos que componen un pedido de un socio. En el detalle se almacena la cantidad de ese art�culo que se compra, que influir� en el c�lculo del total a pagar del pedido.
 */
public class LineaPedido {

	private int cantidad;
	private Articulo articulo;
	//private Pedido Pedido;

    public LineaPedido(Articulo articulo, int cantidad) {
        this.cantidad = cantidad;
        this.articulo = articulo;
    }
        

	public int getCantidad() {
		return this.cantidad;
	}

	/**
	 * 
	 * @param cantidad
	 */
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public LineaPedido() {
		// TODO - implement LineaPedido.LineaPedido
		throw new UnsupportedOperationException();
	}

}