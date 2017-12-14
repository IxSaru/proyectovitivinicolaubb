package com.usuario.empresa.web.vitivinicolaubb.entidades;

public class ClaveUsuario {

	private String user;
	private String password;
	private String rut;
	
	public ClaveUsuario(String user, String password, String rut) {
		this.user = user;
		this.password = password;
		this.rut = rut;
	}
	
	public ClaveUsuario() {
		
	}
	public String getUser() {
		return user;
	}
	
	public void setUser(String u) {
		this.user = u;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getRut() {
		return rut;
	}	
	
	public void setRut(String r) {
		this.rut = r;
	}
}
