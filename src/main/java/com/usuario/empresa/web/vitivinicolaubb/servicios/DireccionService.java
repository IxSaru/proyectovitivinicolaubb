package com.usuario.empresa.web.vitivinicolaubb.servicios;

import com.usuario.empresa.web.vitivinicolaubb.entidades.Direccion;

public class DireccionService extends ServiceImpl {
	public Direccion getDireccion(int id) throws Exception {
		return (Direccion) sqlMap.queryForObject("getDireccion", id);
	}

	public int insertDireccion(Direccion direccion) throws Exception {
		return (Integer) sqlMap.insert("insertDireccion", direccion);
	}

}
