package edt5tacondeoro1;

/**
 * Un tipo de art�culo. Un complemento tiene, adem�s de los atributos de los art�culos su talla.
 */
public class Complemento extends Articulo {

	private int talla;
        private String tipo; //Cinturones y guantes
        
    public Complemento() {
	
    }
    
    public Complemento(String tipo,int talla) {
        this.tipo=tipo;
        this.talla = talla;
    }

    public Complemento(String tipo,int talla, String nombre, float precio, String descripcion, String material, int stock, String fotografia) {
        super(nombre, precio, descripcion, material, stock, fotografia);
        this.tipo= tipo;
        this.talla = talla;
    }

    public Complemento(int talla, String tipo, String nombre, float precio) {
        super(nombre, precio);
        this.talla = talla;
        this.tipo = tipo;
    }
    
        

	public int getTalla() {
		return this.talla;
	}

	/**
	 * 
	 * @param talla
	 */
	public void setTalla(int talla) {
		this.talla = talla;
	}

    @Override
    public String toString() {
        return tipo+" ,"+super.getNombre()+" , precio: "+super.getPrecio() +"€";
    }
        
        
}