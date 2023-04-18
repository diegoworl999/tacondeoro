package edt5tacondeoro1;

/**
 * Los socios son personas que se registran en el sistema. Un socio puede realizar pedidos de art�culos a la venta. Puede tener asociadas ninguna, una o varias tarjetas bancarias para pagar sus compras. De un socio se almacena su nombre, correo electr�nico, direcci�n y poblaci�n. Seg�n su poblaci�n se asignar�n sus pedidos a una ruta u otra.
 */
public class Socio {

	private String nombre;
	private String correoE;
	private String direccion;
	private String poblacion;

    public Socio(String nombre, String correoE, String direccion, String poblacion) {
        this.nombre = nombre;
        this.correoE = correoE;
        this.direccion = direccion;
        this.poblacion = poblacion;
    }

        
	public void verCatalogo() {
		// TODO - implement Socio.verCatalogo
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param nombre
	 * @param correoElectronico
	 * @param direccion
	 * @param poblacion
	 */
	public void registrarse(String nombre, String correoElectronico, String direccion, String poblacion) {
		// TODO - implement Socio.registrarse
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param nuevoNombre
	 * @param nuevoCorreoEletronico
	 * @param nuevaDireccion
	 * @param nuevaPoblacion
	 */
	public void modificarDatosPersonales(String nuevoNombre, String nuevoCorreoEletronico, String nuevaDireccion, String nuevaPoblacion) {
		// TODO - implement Socio.modificarDatosPersonales
		throw new UnsupportedOperationException();
	}

	public void hacerPedido() {
		// TODO - implement Socio.hacerPedido
		throw new UnsupportedOperationException();
	}

	public void cancelarPedido() {
		// TODO - implement Socio.cancelarPedido
		throw new UnsupportedOperationException();
	}

	public void comprobarEstadoPedido() {
		// TODO - implement Socio.comprobarEstadoPedido
		throw new UnsupportedOperationException();
	}

	public String getNombre() {
		return this.nombre;
	}

	/**
	 * 
	 * @param nombre
	 */
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreoE() {
		return this.correoE;
	}

	/**
	 * 
	 * @param correoE
	 */
	public void setCorreoE(String correoE) {
		this.correoE = correoE;
	}

	public String getDireccion() {
		return this.direccion;
	}

	/**
	 * 
	 * @param direccion
	 */
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getPoblacion() {
		return this.poblacion;
	}

	/**
	 * 
	 * @param poblacion
	 */
	public void setPoblacion(String poblacion) {
		this.poblacion = poblacion;
	}

	public Socio() {
		// TODO - implement Socio.Socio
		throw new UnsupportedOperationException();
	}

}