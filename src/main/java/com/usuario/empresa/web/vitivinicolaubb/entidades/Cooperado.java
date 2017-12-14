package com.usuario.empresa.web.vitivinicolaubb.entidades;


public class Cooperado {
	
private String rut;
private String nombre;
private boolean vigente;
private int idDireccion;

public Cooperado() {
}

public Cooperado(String rut, String nombre, int direccion) {
	this.rut = rut;//se traspasa desde Usuario
	this.nombre = nombre;
	this.vigente = false;
	this.idDireccion = direccion;//obtener nro direcciones
}

public void activa() {
	this.vigente=true;
}

public void baja() {
	this.vigente=false;
}

public String getRut() {
	return rut;
}

public String getNombre() {
	return nombre;
}

public void setNombre(String nombre) {
	this.nombre = nombre;
}
public void setIdDireccion(int idDireccion) {
	this.idDireccion = idDireccion;
}

public void setVigente(boolean vigente) {
	this.vigente = vigente;
}

public void setRut(String rut) {
	this.rut =rut;
}

public boolean getVigente() {
	return vigente;
}

public int getIdDireccion() {
	return idDireccion;
}


}
