package edt5tacondeoro1;

/**
 * La campa�a hace referencia a la temporada de venta. Hay dos campa�as por cada a�o, una para la primavera/Verano y otra para el oto�o/invierno. Se usa para agrupar los art�culos a la venta en un contenedor l�gico temporal. Puede abrirse al inicio de la temporada y cerrase al finalizar �sta, tambi�n se le pueden a�adir art�culos. No podemos cerrar una campa�a a menos que se hayan servido todos los pedidos que incluyan art�culos de la misma.
 */
public class Campanya {

	private int anyo;
	private String temporada;

	public void abrirCampanya() {
		// TODO - implement Campanya.abrirCampanya
		throw new UnsupportedOperationException();
	}

	public void cerrarCampanya() {
		// TODO - implement Campanya.cerrarCampanya
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param articulo
	 */
	public void addArticulo(Articulo articulo) {
		// TODO - implement Campanya.addArticulo
		throw new UnsupportedOperationException();
	}

	public int getAnyo() {
		return this.anyo;
	}

	/**
	 * 
	 * @param anyo
	 */
	public void setAnyo(int anyo) {
		this.anyo = anyo;
	}

	public String getTemporada() {
		return this.temporada;
	}

	/**
	 * 
	 * @param temporada
	 */
	public void setTemporada(String temporada) {
		this.temporada = temporada;
	}

	public Campanya() {
		// TODO - implement Campanya.Campanya
		throw new UnsupportedOperationException();
	}

}