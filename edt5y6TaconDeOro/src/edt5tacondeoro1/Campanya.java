package edt5tacondeoro1;

/**
 * La campaña hace referencia a la temporada de venta. Hay dos campañas por cada año, una para la primavera/Verano y otra para el otoño/invierno. Se usa para agrupar los artículos a la venta en un contenedor lógico temporal. Puede abrirse al inicio de la temporada y cerrase al finalizar ésta, también se le pueden añadir artículos. No podemos cerrar una campaña a menos que se hayan servido todos los pedidos que incluyan artículos de la misma.
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