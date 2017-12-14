package com.usuario.empresa.web.vitivinicolaubb.entidades;


public class Usuario {
	private int id;
	private String nombre;
	private int edad;

	// contructor
	
	public Usuario() {
		
	}
	public Usuario(int id, String nombre, int edad) {
		this.id = id;
		this.nombre=nombre;
		this.edad=edad;
	}

	// getters
	public int getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public int getEdad() {
		return edad;
	}

	// setters
	public void setId(int id) {
		this.id = id;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setEdad(int edad) {
		this.edad = edad;
	}
}
