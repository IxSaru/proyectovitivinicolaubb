package com.usuario.empresa.web.vitivinicolaubb.servicios;

import java.util.List;

import com.usuario.empresa.web.vitivinicolaubb.entidades.Cooperado;

public class CooperadoService extends ServiceImpl {
	@SuppressWarnings("unchecked")
	
	public List<Cooperado> getCooperados() throws Exception {
		return (List<Cooperado>) sqlMap.queryForList("getCooperados");
	}

	public Cooperado getCooperado(String rut) throws Exception {
		return (Cooperado) sqlMap.queryForObject("getCooperado", rut);
	}

	public int insertCooperado(Cooperado cooperado) throws Exception {
		return (Integer) sqlMap.insert("insertCooperado", cooperado);
	}
	/*
	public void updateCooperado(Cooperado cooperado) throws Exception {
		sqlMap.update("updateCooperado", cooperado);
	}
*/ 
	/*
	public void bajaCooperado(String rut) throws Exception {
		sqlMap.delete("bajaCooperado", rut);
	}
	*/ 
	/*
	public void altaCooperado(String rut) throws Exception {
		sqlMap.delete("altaCooperado", rut);
	}
	*/ 
}
