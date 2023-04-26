package edt5tacondeoro1;

/**
 * Un tipo de art�culo. Los zapatos tiene, adem�s de los atributos de los art�culos, su tipo y su n�mero.
 */
public class Zapato extends Articulo {

	private int numero;
	private String tipo;

    public Zapato(int numero, String tipo) {
        this.numero = numero;
        this.tipo = tipo;
    }

    public Zapato(int numero, String tipo, String nombre, float precio, String descripcion, String material, int stock, String fotografia) {
        super(nombre, precio, descripcion, material, stock, fotografia);
        this.numero = numero;
        this.tipo = tipo;
    }

    public Zapato(int numero, String tipo, String nombre, float precio) {
        super(nombre, precio);
        this.numero = numero;
        this.tipo = tipo;
    }
        
        

	public float getNumero() {
		return this.numero;
	}

	/**
	 * 
	 * @param numero
	 */
	public void setNumero(int numero) {
		this.numero = numero;
	}

	public String getTipo() {
		return this.tipo;
	}

	/**
	 * 
	 * @param tipo
	 */
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Zapato() {
		// TODO - implement Zapato.Zapato
		throw new UnsupportedOperationException();
	}

    @Override
    public String toString() {
        return  super.getNombre()+" ,talla: "+ numero +" , precio: "+super.getPrecio() +"€";
    }
        
        

}