package edt5tacondeoro1;

import java.util.*;

/**
 * Representa la empresa que hace el reparto de los paquetes con los pedidos de los socios. De una empresa de transporte se guarda su nombre, CIF y dirección fiscal. Mantiene un conjunto de rutas de reparto.
 */
public class EmpresaDeTransporte {

	private String nombre;
	private String CIF;
	private String domicilioFiscal;
	Collection<Ruta> RutasRol;

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

	public String getCIF() {
		// TODO - implement EmpresaDeTransporte.getCIF
		throw new UnsupportedOperationException();
	}

	/**
	 * 
	 * @param CIF
	 */
	public void setCIF(String CIF) {
		// TODO - implement EmpresaDeTransporte.setCIF
		throw new UnsupportedOperationException();
	}

	public String getDomicilioFiscal() {
		return this.domicilioFiscal;
	}

	/**
	 * 
	 * @param domicilioFiscal
	 */
	public void setDomicilioFiscal(String domicilioFiscal) {
		this.domicilioFiscal = domicilioFiscal;
	}

	public EmpresaDeTransporte() {
		// TODO - implement EmpresaDeTransporte.EmpresaDeTransporte
		throw new UnsupportedOperationException();
	}

}