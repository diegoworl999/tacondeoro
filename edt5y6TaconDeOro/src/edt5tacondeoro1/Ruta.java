package edt5tacondeoro1;

/**
 * Representa una ruta de envío de paquetes de los socios. Los pedidos se asignan a las rutas en función de la población del socio que ha hecho el pedido. Una ruta almacena un área de influencia y unos días de reparto.
 */
public class Ruta {

	private String[] areaInfluencia;
	private String[] diasReparto;
	EmpresaDeTransporte EmpresaDeTransportesRol;

	public String[] getAreaInfluencia() {
		return this.areaInfluencia;
	}

	/**
	 * 
	 * @param areaInfluencia
	 */
	public void setAreaInfluencia(String[] areaInfluencia) {
		this.areaInfluencia = areaInfluencia;
	}

	public String[] getDiasReparto() {
		return this.diasReparto;
	}

	/**
	 * 
	 * @param diasReparto
	 */
	public void setDiasReparto(String[] diasReparto) {
		this.diasReparto = diasReparto;
	}

	public Ruta() {
		// TODO - implement Ruta.Ruta
		throw new UnsupportedOperationException();
	}

}