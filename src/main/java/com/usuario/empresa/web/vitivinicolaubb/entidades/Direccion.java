package com.usuario.empresa.web.vitivinicolaubb.entidades;

public class Direccion {

	private int idDireccion;
	private int nro;
	private String calle;
	private String ciudad;
	
	public Direccion(){}

	public Direccion(int idDireccion, int nro, String calle, String ciudad) {
		this.idDireccion = idDireccion;//se traspasa desde Cooperado o Viña
		this.nro = nro;
		this.calle = calle;
		this.ciudad = ciudad;
	}

	public int getIdDireccion() {
		return idDireccion;
	}

	public int getNro() {
		return nro;
	}

	public void setNro(int nro) {
		this.nro = nro;
	}

	public String getCalle() {
		return calle;
	}

	public void setCalle(String calle) {
		this.calle = calle;
	}

	public String getCiudad() {
		return ciudad;
	}		
	
	public void setCiudad(String c) {
		this.ciudad = c;
	}

}
