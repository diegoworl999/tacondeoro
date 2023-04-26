package edt5tacondeoro1;

/**
 * Un tipo de art�culo. Un bolso tiene, adem�s de los atributos de los art�culos, su tipo.
 */
public class Bolso extends Articulo {

	private String tipo;//bandolera, mochila, fiesta

    public Bolso(String tipo) {
        this.tipo = tipo;
    }

    public Bolso(String tipo, String nombre, float precio, String descripcion, String material, int stock, String fotografia) {
        super(nombre, precio, descripcion, material, stock, fotografia);
        this.tipo = tipo;
    }

    public Bolso(String tipo, String nombre, float precio) {
        super(nombre, precio);
        this.tipo = tipo;
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

    @Override
    public String toString() {
        return tipo+" ,"+super.getNombre()+" , precio: "+super.getPrecio() +"€";
    }

	
        

}